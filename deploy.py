import os, re, tarfile, datetime
from fabric import Connection, Config

try:
    from www.config import configs
except ImportError:
    pass

_TAR_FILE = 'dist-pyserver.tar.gz'
_REMOTE_TMP_DIR = '/zxj/tmp'
_REMOTE_TMP_TAR = '/zxj/tmp/%s' % _TAR_FILE
_REMOTE_BASE_DIR = '/zxj/pyserver'

def build():
    # includes = ['static', 'templates', 'transwarp', 'favicon.ico', '*.py']
    # excludes = ['test', '.*', '*.pyc', '*.pyo']
    # local('del dist\\%s' % _TAR_FILE)                   # 删除旧压缩包
    dist_path = 'deploy/dist/'
    if not os.path.exists(dist_path):
        os.makedirs(dist_path)
    tar = tarfile.open(dist_path + _TAR_FILE, "w:gz")    # 创建新压缩包
    for root, _dir, files in os.walk("www/"):             # 打包www文件夹
        for f in files:
            if not (('.pyc' in f) or ('.pyo' in f)):    # 排除开发过程调试产生的文件，为了简单点实现，此处没有完全照搬廖老师的参数
                fullpath = os.path.join(root,f)
                tar.add(fullpath)
    tar.close()


def deploy():
    remote_config = configs.remote_host;
    fabric_config = Config(overrides={'run': {'warn': True}})
    with Connection(host=remote_config['host'], user=remote_config['user'], config=fabric_config, connect_kwargs={'password': remote_config['password']}) as conn:
        wwwdir = 'www_%s' % datetime.datetime.now().strftime('%Y-%m-%d-%H:%M:%S')

        conn.run('rm -rf %s' % _REMOTE_TMP_DIR)
        conn.run('mkdir %s' % _REMOTE_TMP_DIR)
        conn.put('deploy/dist/%s' % _TAR_FILE, _REMOTE_TMP_TAR)
        with conn.cd(_REMOTE_BASE_DIR):
            conn.run('mkdir %s' % wwwdir)
        with conn.cd('%s/%s' % (_REMOTE_BASE_DIR, wwwdir)):
            conn.run('tar -xzvf %s' % _REMOTE_TMP_TAR)     # 解压
            conn.run('mv www/* .')          # 解压后多一层www文件夹，因此向上移动一层
            conn.run('rm -rf www')          # 删除空文件夹www
            conn.run('dos2unix app.py')     # 解决windows和linux行尾换行不同问题
            conn.run('chmod a+x app.py')    # 使app.py可直接执行
        with conn.cd(_REMOTE_BASE_DIR):
            conn.run('rm -rf www')                     # 删除旧软链接
            conn.run('ln -s %s www' % wwwdir)          # 创建新链接
            conn.run('chown root:root www')            # user改为你的linux服务器上的用户名
            conn.run('chown -R root:root %s' % wwwdir)     # 同上

        conn.sudo('sudo supervisorctl stop all')
        conn.sudo('sudo supervisorctl start all')


if __name__ == '__main__':
    print('start deploy.')
    build()
    deploy()
    # rollback()
    # backup()
    # restore2local()
    print('end deploy.')
