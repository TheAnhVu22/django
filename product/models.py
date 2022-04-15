from django.db import models

# Create your models here.
class product(models.Model):
    ten = models.CharField(max_length=30)
    gia = models.CharField(max_length=30)
    mota = models.CharField(max_length=30)
    anh = models.ImageField(upload_to="images", null=False, default=None)
    cate_id = models.IntegerField(null=False, default=None)
    def __str__(self):
    	return f"{self.ten},{self.gia},{self.mota},{self.anh},{self.cate_id}"

class category(models.Model):
    ten = models.CharField(max_length=30)
    mota = models.CharField(max_length=255)
    def __str__(self):
        return f"{self.ten},{self.mota}"    