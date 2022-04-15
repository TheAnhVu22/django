from django.db import models



# Create your models here.

class category(models.Model):
    cate_name = models.CharField(max_length=255, default=None)
    cate_desc = models.CharField(max_length=255,default=None)
    def __str__(self):
        return f"{self.cate_name},{self.cate_desc}"    

class brand(models.Model):
    brand_name = models.CharField(max_length=255, default=None)
    brand_desc = models.CharField(max_length=255,default=None)
    def __str__(self):
        return f"{self.brand_name},{self.brand_desc}" 

class product(models.Model):
    pro_name = models.CharField(max_length=255,default=None)
    pro_price = models.IntegerField(default=None)
    pro_quantity = models.IntegerField(default=None)
    pro_desc = models.CharField(max_length=255,default=None)
    pro_image = models.ImageField(upload_to="images", null=False, default=None)
    category_id = models.ForeignKey(category, on_delete=models.CASCADE)
    brand_id = models.ForeignKey(brand, on_delete=models.CASCADE)
    def __str__(self):
    	return f"{self.pro_name},{self.pro_price},{self.pro_quantity},{self.pro_desc},{self.pro_image}"

class gallery(models.Model):
    product_id = models.ForeignKey(product, on_delete=models.CASCADE)
    gallery_image =models.ImageField(upload_to="images", null=False, default=None)
    gallery_name = models.CharField(max_length=255)
    def __str__(self):
        return f"{self.gallery_image},{self.gallery_name}" 

class rating(models.Model):
    product_id = models.ForeignKey(product, on_delete=models.CASCADE)
    rating = models.IntegerField()
    def __str__(self):
        return f"{self.rating}" 

class comment(models.Model):
    comment_name = models.CharField(max_length=255)
    comment_content = models.CharField(max_length=255)
    product_id = models.ForeignKey(product, on_delete=models.CASCADE)
    comment_parent_id = models.IntegerField(null=False, default=None)
    def __str__(self):
        return f"{self.comment_name},{self.comment_content},{self.comment_parent}" 

class customer(models.Model):
    cus_name = models.CharField(max_length=255)
    cus_email = models.CharField(max_length=255)
    cus_phone = models.CharField(max_length=30)
    cus_password = models.CharField(max_length=50)
    def __str__(self):
        return f"{self.cus_name},{self.cus_email},{self.cus_phone},{self.cus_password}" 

class shipping(models.Model):
    ship_name = models.CharField(max_length=255)
    ship_email = models.CharField(max_length=255)
    ship_phone = models.CharField(max_length=30)
    ship_address = models.CharField(max_length=30)
    ship_note=models.CharField(max_length=255)
    ship_method=models.CharField(max_length=30)
    def __str__(self):
        return f"{self.ship_name},{self.ship_email},{self.ship_phone},{self.ship_address},{self.ship_note},{self.ship_method}" 

class order(models.Model):
    cus_id = models.IntegerField(null=False, default=None)
    shipping_id = models.IntegerField(null=False, default=None)
    order_code = models.CharField(max_length=50)
    order_status = models.CharField(max_length=255)
    def __str__(self):
        return f"{self.order_code},{self.cus_id},{self.shipping_id},{self.order_status}" 


class order_detail(models.Model):
    order_code = models.CharField(max_length=50)
    product_id = models.IntegerField(null=False, default=None)
    product_name = models.CharField(max_length=255)
    product_price = models.IntegerField()
    product_sale_quantity = models.IntegerField()
    def __str__(self):
        return f"{self.order_code},{self.product_id},{self.product_name},{self.product_price},{self.product_sale_quantity}" 

class cate_post(models.Model):
    cate_post_name = models.CharField(max_length=255)
    cate_post_status = models.CharField(max_length=255)
    def __str__(self):
        return f"{self.cate_post_name},{self.cate_post_status}" 

class post(models.Model):
    post_name = models.CharField(max_length=255)
    post_content= models.CharField(max_length=255)
    post_image = models.ImageField(upload_to="images", null=False, default=None)
    post_author = models.CharField(max_length=255)
    cate_post_id = models.ForeignKey(cate_post, on_delete=models.CASCADE)
    def __str__(self):
        return f"{self.post_name},{self.post_content},{self.post_image},{self.post_author}" 

