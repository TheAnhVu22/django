# Generated by Django 4.0.2 on 2022-04-15 11:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0007_alter_product_brand_id_alter_product_cate_id'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='brand_id',
            new_name='brand',
        ),
        migrations.RenameField(
            model_name='product',
            old_name='cate_id',
            new_name='category',
        ),
    ]
