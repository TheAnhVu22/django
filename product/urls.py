from django.urls import path
from . import views 
urlpatterns = [
    path('', views.getpro, name='getpro'),
    # path('them/', views.them, name='them'),
    # path('add/', views.add, name='add'),
    # path('xoa/<int:id>/', views.xoa, name='xoa'),
    # path('sua/<int:id>/', views.sua, name='sua'),
    # path('update/', views.update, name='update'),

    #api
    path('products/', views.getpro, name='getpro'),
    path('products/<int:id>/', views.getproID, name='getproID'),

    path('categories/', views.getcate, name='getcate'),
    path('getproviacate/<int:id>/', views.getproviacate, name='getproviacate'),
]