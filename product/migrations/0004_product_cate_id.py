# Generated by Django 4.0.2 on 2022-03-13 02:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0003_category'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='cate_id',
            field=models.IntegerField(default=None),
        ),
    ]
