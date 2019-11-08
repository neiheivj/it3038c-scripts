import json
import requests
zip = input()
r = requests.get('http://samples.openweathermap.org/data/2.5/weather?zip=%s,us&appid=b6907d289e10d714a6e88b30761fae22' % zip)
data=r.json()
print(data['weather'][0]['description'])