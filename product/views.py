from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import product, category
from django.core.serializers import serialize
from django.views.decorators.csrf import csrf_exempt
 #json chuỗi string
from django.http import JsonResponse

import os
from django.contrib import messages

def getpro(request):
    lists = product.objects.order_by('-id')[0:2]
    cate = category.objects.all()
    
    #data2 = serialize("json", lists)
    return HttpResponse(serialize("json", lists), content_type="application/json")

def getproID(request,id):
	pro = product.objects.filter(id = id)
	return HttpResponse(serialize("json", pro), content_type="application/json")    

def getcate(request):
	cate = category.objects.all()
	data = serialize("json", cate)
	return HttpResponse(data, content_type="application/json")

def getproviacate(request,id):
	pro = product.objects.filter(cate_id = id)
	return HttpResponse(serialize("json", pro), content_type="application/json")  



# def them(request):
#     lists = category.objects.all
#     return render(request,'product/create.html',{'list':lists})

# @csrf_exempt
# def add(request):
# 	if request.method == "POST":
# 		pro_name = request.POST['ten']
# 		pro_price = request.POST['gia']
# 		pro_desc = request.POST['mota']
# 		anh = request.POST['anh']
# 		cate_id = request.POST['cate_id']
# 		products = product.objects.create(ten = pro_name, gia=pro_price, mota=pro_desc,anh=anh,cate_id=cate_id)
# 		products.save()
# 		#return JsonResponse("json", pro_name)
# 		messages.success(request, "Add product successfully")
# 		return redirect('index')

# def xoa(request,id):
# 	if request.method == "GET":
# 		pro = product.objects.get(id = id)
# 		os.remove(pro.anh.path)
# 		pro.delete()
# 		messages.info(request, "Delete successfully")
# 		return redirect('index')

# def sua(request,id):
# 	dulieu = product.objects.get(id = id)
# 	lists = category.objects.all()

# 	#return HttpResponse(serialize("json", [dulieu]), content_type="application/json")
# 	return render(request,'product/sua.html',{'dulieu':dulieu, 'list':lists})

# def update(request):
# 	if request.method == "POST":
# 		pro_id = request.POST['id']
# 		pro_name = request.POST['ten']
# 		pro_price = request.POST['gia']
# 		pro_desc = request.POST['mota']
# 		cate_id = request.POST['cate_id']
# 		pro = product.objects.get(id = pro_id)
# 		if len(request.FILES) != 0:
# 			if len(pro.anh)>0:
# 				os.remove(pro.anh.path)
# 			pro.anh = request.FILES['anh']
# 		pro.ten = pro_name
# 		pro.gia = pro_price
# 		pro.mota = pro_desc
# 		pro.cate_id = cate_id
# 		pro.save()
# 		messages.success(request, "Update successfully")
# 		return redirect('index')

# 	context = {"pro":pro}
# 	return render(request, 'product/sua.html', context)

