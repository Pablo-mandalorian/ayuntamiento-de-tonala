from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from .forms import *
from django.urls import reverse

# Create your views here.


def index(request):
    return render(request, 'capture/index.html')


def login(request):
    return render(request, 'capture/login.html')


def proccedings(request):
    proccedings = Proceedings.objects.all()
    messages.success(request,'Expedientes Listados Correctamente')
    return render(request, 'capture/proccedings.html', {"proccedings":proccedings})


def edit_proccedings(request, id):
    proccedings = Proceedings.objects.get(id=id)
    return render(request, 'capture/edit_proccedings.html', {"proccedings":proccedings})


def editing_proccedings(request):
    id = request.POST['id']
    status = request.POST['status']
    request = request.POST['request']
    accreditation = request.POST['accreditation']
    constitutive_act = request.POST['constitutive_act']
    identification = request.POST['identification']
    location = request.POST['location']
    plane = request.POST['plane']
    comments = request.POST['comments']
    #procceding = Proceedings.objects.get(id=id)
    procceding = Proceedings.objects.filter(id=id).update(
        status_proceedings = status,
        request_proceedings = request,
        accreditation_proceedings = accreditation,
        constitutive_act_proceedings = constitutive_act,
        identification_proceedings = identification,
        location_proceedings = location,
        plane_proceedings = plane,
        comments = comments
    )
    procceding.save()
    return redirect('/')


def delete_proccedings(request, id):
    proccedings = Proceedings.objects.get(id=id)
    proccedings.delete()
    return redirect('/')
'''''
def save_user(request):
    username = request.POST['username']
    privilege = request.POST['privilege']
    password = request.POST['password']

    if username and privilege and password and request.method == 'POST':
        User = User.objects.create(
            username = username, privilege = privilege, password = password
        )
        messages.success(request,'User Saved!')
        return redirect('/')
'''


def home(request):
    if request.method == "POST":
        form = UserLogin(request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            try:
               user = User.objects.get(username=username, password=password)
               return render (request, 'capture/home.html', {'username': username})
            except:
               messages.error(request, 'Usuario o Contraseña Incorrecto')
        else:
           form = UserLogin()
           messages.error(request, 'Usuario o Contraseña Incorrecto')
        return render(request, 'capture/login.html', {'form': form})


'''
def uploadFile(request):
    if request.method == 'POST':
        filename = request.POST['filename']
        owner = request.POST['owner']
        pdf = request.FILES['pdf']
        cover = request.FILES['cover']

        a = Files(filename=filename, owner=owner, pdf=pdf, cover=cover)
        a.save()
        messages.success(request, 'Files Submitted successfully!')
        return redirect('files')
    else:
    	messages.error(request, 'Files was not Submitted successfully!')
    	return redirect('form')
'''

