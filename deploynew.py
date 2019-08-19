import os
import re
import tarfile
import datetime
from fabric import Connection, Config

_TAR_FILE = 'dist-pyserver.tar.gz'

_LOCAL_ROOT_DIR = os.path.dirname(__file__) + '/deploy/'
_LOCAL_DIST = _LOCAL_ROOT_DIR + 'dist/'
_LOCAL_TAR = _LOCAL_DIST + _TAR_FILE

_REMOTE_ROOT_DIR = '/zxj/'
_REMOTE_TMP_DIR = _REMOTE_ROOT_DIR + 'tmp'
_REMOTE_TMP_TAR = _REMOTE_TMP_DIR + _TAR_FILE
_REMOTE_BASE_DIR = _REMOTE_ROOT_DIR + 'pyserver'

nn = 0

def build():

    if not os.path.exists(_LOCAL_ROOT_DIR):
        os.makedirs(_LOCAL_ROOT_DIR)
    if not os.path.exists(_LOCAL_DIST):
        os.makedirs(_LOCAL_DIST)
    if os.path.exists(_LOCAL_TAR):
        os.remove(_LOCAL_TAR)

    tar = tarfile.open(_LOCAL_TAR, "w:gz")    # 创建新压缩包
    for root, _dir, files in os.walk("www/"):             # 打包www文件夹
        for f in files:
            if not (('.pyc' in f) or ('.pyo' in f)):    # 排除开发过程调试产生的文件，为了简单点实现，此处没有完全照搬廖老师的参数
                fullpath = os.path.join(root,f)
                tar.add(fullpath)
    tar.close()


if __name__ == '__main__':
    print('start deploy.')
    build()
    # deploy()
    # rollback()
    # backup()
    # restore2local()
    print('end deploy.')