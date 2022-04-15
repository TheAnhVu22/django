from django.contrib import admin
from .models import product, category
class ProductAdmin(admin.ModelAdmin):
	list_display = ('ten','gia','mota','anh','cate_id')
	search_fields = ['ten']
	list_filter = ('ten','gia','mota','cate_id')
admin.site.register(product,ProductAdmin)

class CategoryAdmin(admin.ModelAdmin):
	list_display = ('ten','mota')
	search_fields = ['ten']
	list_filter = ('ten','mota')
admin.site.register(category,CategoryAdmin)