# Generated by Django 4.0.2 on 2022-03-11 09:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='anh',
            field=models.ImageField(default=None, upload_to='images'),
        ),
    ]
