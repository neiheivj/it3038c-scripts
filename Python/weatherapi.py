import json
import requests
zip = input()
r = requests.get('http://sample.openweathermap.org/data/2.5/weather?zip=%s,us&appid=b1b15e88fa797225412429c1c50c122a1' % zip)
data=r.json()
print(data['weather'][0]['description'])
