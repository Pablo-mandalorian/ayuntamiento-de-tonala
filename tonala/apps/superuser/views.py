from django.shortcuts import render, redirect
from ..capture.models import *
from django.contrib import messages
from ..superuser.forms import *

# Create your views here.

def login(request):
    return render(request, 'superuser/login.html')

def delete_user(request, id):
    user = User.objects.get(id=id)
    user.delete()
    return redirect('/')

def edit_user(request, id):
    user = User.objects.get(id=id)
    return render(request, 'superuser/edit_user.html', {"user":user})

def editing_user(request):
    id = request.POST['id']
    username = request.POST['username']
    privilege = request.POST['privilege']
    password = request.POST['password']
    user = User.objects.get(id=id)
    user.username = username
    user.privilege = privilege
    user.password = password
    user.save()
    return redirect('superadmin-usuarios/')

def show_user(request):
    users = User.objects.all()
    messages.success(request,'Expedientes Listados Correctamente')
    return render(request, 'superuser/users.html', {"users":users})

def create_user(request):
    return render(request,'superuser/create_user.html')

def creating_user(request):
    username = request.POST['username']
    privilege = request.POST['privilege']
    password = request.POST['password']
    if username and privilege and password and request.method == 'POST':
        user = User(            
            username = username,
            privilege = privilege, 
            password = password
        )
        user.save()
        messages.success(request,'User Saved!')
        return redirect('/home')

def home(request):
    if request.method == "POST":
        form = UserLogin(request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            try:
                user = User.objects.get(username=username, password=password)
                return render (request, 'superuser/home.html', {'username': username})
            except:
                messages.error(request, 'Usuario o Contraseña Incorrecta')
        else:
           form = UserLogin()
        return render(request, 'superuser/login.html', {'form': form})
