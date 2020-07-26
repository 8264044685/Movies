from django.db import models

from django.conf import settings
from django.db.models.signals import post_save
from django.dispatch import receiver
from rest_framework.authtoken.models import Token
# Create your models here.


class Movies(models.Model):
    name = models.CharField(max_length=100)
    rating = models.FloatField(max_length=10)
    release_date = models.DateField()
    duration = models.CharField(max_length=25)
    description = models.TextField(max_length=500)

    def __str__(self):
        return self.name



@receiver(post_save, sender=settings.AUTH_USER_MODEL)
def create_auth_token(sender, instance=None, created=False, **kwargs):
    if created:
        Token.objects.create(user=instance)