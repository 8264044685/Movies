from bs4 import BeautifulSoup
import requests
import time
from datetime import datetime


url = 'https://www.imdb.com/chart/top?ref_=nv_mv_250'

response = requests.get(url)
data = response.text
soup  = BeautifulSoup(data,'html.parser')
tags = soup.find_all('td', {'class':'titleColumn'})

links = [a.attrs.get('href') for a in soup.select('td.titleColumn a')]

make_url = 'https://www.imdb.com/'

for link in links:
    movie_url = make_url + link
    response = requests.get(movie_url)
    data = response.text
    soup  = BeautifulSoup(data,'html.parser')
    movie_info = soup.find_all('div', {'class':'title_wrapper'})

    
    subtext =  movie_info[0].find('div', {'class':'subtext'})
    name = movie_info[0].find('h1').get_text().strip()
    duration = subtext.find('time').get_text().strip()
    release_date = subtext.find_all('a')[-1].get_text().strip()
    rating = soup.find('span', {'itemprop':'ratingValue'}).get_text().strip()
    description = soup.find('div', {'class':'summary_text'}).get_text().strip()
    
    print('name', name, type(name))
    print('duration', duration, type(duration))
    print("release date", release_date, type(release_date))
    print('rating', rating, type(rating))
    print('description',description, type(description))
    print("===========================================================")
