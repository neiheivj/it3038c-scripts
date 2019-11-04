import requests, re 
from bs4 import BeautifulSoup
r = requests.get("https://www.microcenter.com/category/4294967288/laptops-notebooks").content
soup = BeautifulSoup(r, "lxml")
print(soup.prettify()[:100])
for name in soup.find_all('a', attrs={'data-name':re.compile('[A-z0-9]')}): 
	print(name.get('data-name'), name.get('data-price'))
