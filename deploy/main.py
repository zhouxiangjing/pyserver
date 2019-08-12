
import hashlib

sha1 = hashlib.sha1()
sha1.update(b'865295386@qq.com')
sha1.update(b':')
sha1.update(b'123456')

str = sha1.hexdigest()

nn = 0