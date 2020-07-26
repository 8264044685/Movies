from django.contrib.auth.models import User
from movie_apis.models import Movies
from rest_framework import serializers



class MovieListSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movies
        fields = '__all__'

class MovieSearchListSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movies
        fields = ['name', 'rating', 'release_date', 'duration']