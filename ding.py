import requests
import time
import hmac
import hashlib
import base64
import urllib.parse
import sys

para = sys.argv(1)
timestamp = str(round(time.time() * 1000))
secret = 'SECd5f300e3344b5ce2e02f5cefa3b15153633f4aedda79a1726156a223a0b1ca05'
secret_enc = secret.encode('utf-8')
string_to_sign = '{}\n{}'.format(timestamp, secret)
string_to_sign_enc = string_to_sign.encode('utf-8')
hmac_code = hmac.new(secret_enc, string_to_sign_enc, digestmod=hashlib.sha256).digest()
sign = urllib.parse.quote_plus(base64.b64encode(hmac_code))
print(timestamp)
print(sign)
 
 
url='https://oapi.dingtalk.com/robot/send?access_token=5d7c13d44a0b050b65d2de9d88aa6dff046f55169032b09ebfccf64080ed3048&timestamp={}&sign={}'.format(timestamp, sign)
 
 
print (url)
headers={
    'Content-Type':'application/json'
}
json={"msgtype": "text",
    "text": {
        "content":para
    } }
resp=requests.post(url=url,headers=headers,json=json)
print (resp.text)
