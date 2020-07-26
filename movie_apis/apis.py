from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from movie_apis.serializers import MovieListSerializer, MovieSearchListSerializer
from movie_apis.models import Movies
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import OrderingFilter, SearchFilter
from rest_framework.generics import ListAPIView
from rest_framework.authentication import SessionAuthentication, BasicAuthentication
from rest_framework.permissions import IsAuthenticated


class MovieList(APIView):
    authentication_classes = [SessionAuthentication, BasicAuthentication]
    permission_classes = [IsAuthenticated]


    def get(self, request):
        movies_obj = Movies.objects.all()
        serializer = MovieListSerializer(movies_obj, many=True)
        return Response(serializer.data)

class MovieSearchList(ListAPIView):
    authentication_classes = [SessionAuthentication, BasicAuthentication]
    permission_classes = [IsAuthenticated]
    
    queryset = Movies.objects.all()
    serializer_class = MovieSearchListSerializer
    filter_backends = (DjangoFilterBackend, OrderingFilter, SearchFilter)
    search_fields = ('name','rating','release_date','duration')
    odering = ('name', 'rating', 'release_date', 'duration')

    

