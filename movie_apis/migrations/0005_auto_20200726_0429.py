# Generated by Django 3.0.8 on 2020-07-26 04:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('movie_apis', '0004_auto_20200726_0204'),
    ]

    operations = [
        migrations.RenameField(
            model_name='movies',
            old_name='release_Date',
            new_name='release_date',
        ),
    ]
