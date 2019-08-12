import requests
import json
import time
import socket
import uuid


def get_mac_address():
    mac = uuid.UUID(int=uuid.getnode()).hex[-12:]
    return ":".join([mac[e:e+2] for e in range(0, 11, 2)])


class RequestsWrapper():
    def __init__(self):
        self.headers = {"User-Agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:51.0) Gecko/20100101 Firefox/51.0"}

    def get(self, url):
        try:
            r = requests.get(url, headers=self.headers)
            r.encoding = 'UTF-8'
            json_response = json.loads(r.text)
            return json_response
        except Exception as e:
            print('get请求出错,出错原因:%s'%e)
            return {}

    def post(self, url, post_params):
        #data = json.dumps(post_params)
        try:
            r = requests.post(url, json=post_params, headers=self.headers)
            json_response = json.loads(r.text)
            return json_response
        except Exception as e:
            print('post请求出错,原因:%s' % e)

    def delfile(self, url, params):
        try:
            del_word = requests.delete(url, params, headers=self.headers)
            json_response = json.loads(del_word.text)
            return json_response
        except Exception as e:
            print('del请求出错,原因:%s' % e)
            return {}

    def putfile(self, url, params):
        try:
            data = json.dumps(params)
            me = requests.put(url, data)
            json_response = json.loads(me.text)
            return json_response
        except Exception as e:
            print('put请求出错,原因:%s'%e)
            return json_response




req = RequestsWrapper()

url1 = 'http://127.0.0.1:9000/api/online_devices'
url2 = 'http://127.0.0.1:9000/api/devices'

# url1 = 'http://zhouxiangjing.top/api/online_devices'
# url2 = 'http://zhouxiangjing.top/api/devices'


#print(req.get(url1))

myname = socket.getfqdn(socket.gethostname())
myaddr = socket.gethostbyname(myname)
mymac = get_mac_address()

post_params = {
    'name': myname,
    'addr': myaddr,
    'mac': mymac
}

while True:
    print(req.post('url2', post_params))
    time.sleep(3)