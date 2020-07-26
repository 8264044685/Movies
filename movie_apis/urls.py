from django.urls import path
from django.conf.urls import url
from movie_apis.apis import MovieList, MovieSearchList
urlpatterns = [
    url(r'apis/movies_list/$', MovieList.as_view(), name='movie_list'),
    url(r'apis/movies_searchList/$', MovieSearchList.as_view(), name='movie_search_list'),
]
