from django.shortcuts import render,redirect
from movie_apis.models import Movies
from bs4 import BeautifulSoup
import requests
import time

def index(request):
    return render(request, 'add_movies.html')
def add_movies(request):
    try:

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
            
            
            
            try:
                if Movies.objects.filter(name__iexact=name).exists():
                    continue 
                else:
                    movies = Movies.objects.create(name=name,rating=float(rating),description=description,release_date=release_date,duration=duration)
                    # print("movie name ==========", movies.name, type(name))
                    # print("movie rating ======== ", movies.rating,type(rating))
                    # print("movie description === ", movies.description,type(description))
                    # print("movie release date == ", movies.release_date,type(release_date))
                    # print("movie duration ======", movies.duration,type(duration))
                    # print("===================================================================")
            except Exception as e:
                print("inner exception is : ",e)
                return redirect('index')
        return redirect('movie_list')
    except Exception as e:
        print("outer exception is : ", e)
        return redirect('index')