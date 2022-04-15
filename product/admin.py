from django.contrib import admin
from .models import  category, brand,product,gallery,rating,comment,customer,order,shipping,order_detail,post,cate_post

class CategoryAdmin(admin.ModelAdmin):
	list_display = ('cate_name','cate_desc')
	search_fields = ['cate_name']
	list_filter = ('cate_name','cate_desc')
admin.site.register(category,CategoryAdmin)

class BrandAdmin(admin.ModelAdmin):
	list_display = ('brand_name','brand_desc')
	search_fields = ['brand_name']
	list_filter = ('brand_name','brand_desc')
admin.site.register(brand,BrandAdmin)

class ProductAdmin(admin.ModelAdmin):
	list_display = ('pro_name','pro_price','pro_quantity','pro_desc','pro_image')
	search_fields = ['pro_name']
	list_filter = ('pro_name','pro_price','pro_desc','category_id','brand_id')
admin.site.register(product,ProductAdmin)


class GalleryAdmin(admin.ModelAdmin):
	list_display = ('product_id','gallery_image','gallery_name')
	search_fields = ['gallery_name']
	list_filter = ('product_id','gallery_name')
admin.site.register(gallery,GalleryAdmin)

class RatingAdmin(admin.ModelAdmin):
	list_display = ('product_id','rating')
	search_fields = ['product_id']
	list_filter = ('product_id','rating')
admin.site.register(rating,RatingAdmin)

class CommentAdmin(admin.ModelAdmin):
	list_display = ('comment_name','comment_content','product_id','comment_parent_id')
	search_fields = ['comment_name']
	list_filter = ('comment_name','comment_content','product_id')
admin.site.register(comment,CommentAdmin)

class CustomerAdmin(admin.ModelAdmin):
	list_display = ('cus_name','cus_email','cus_phone')
	search_fields = ['cus_name']
	list_filter = ('cus_name','cus_email','cus_phone')
admin.site.register(customer,CustomerAdmin)

class ShippingAdmin(admin.ModelAdmin):
	list_display = ('ship_name','ship_email','ship_phone','ship_address','ship_note','ship_method')
	search_fields = ['ship_name','ship_email']
	list_filter = ('ship_name','ship_email','ship_phone','ship_method')
admin.site.register(shipping,ShippingAdmin)

class OrderAdmin(admin.ModelAdmin):
	list_display = ('cus_id','shipping_id','order_code','order_status')
	search_fields = ['order_code']
	list_filter = ('order_code','order_status')
admin.site.register(order,OrderAdmin)



class OrderDetailAdmin(admin.ModelAdmin):
	list_display = ('order_code','product_id','product_name','product_price','product_sale_quantity')
	search_fields = ['order_code']
	list_filter = ('order_code','product_id','product_name','product_price')
admin.site.register(order_detail,OrderDetailAdmin)

class CatePostAdmin(admin.ModelAdmin):
	list_display = ('cate_post_name','cate_post_status')
	search_fields = ['cate_post_name']
	list_filter = ('cate_post_name','cate_post_status')
admin.site.register(cate_post,CatePostAdmin)

class PostAdmin(admin.ModelAdmin):
	list_display = ('post_name','post_content','post_image','post_author','cate_post_id')
	search_fields = ['post_name','post_author']
	list_filter = ('post_name','post_author')
admin.site.register(post,PostAdmin)