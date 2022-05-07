from django.shortcuts import render, redirect
from ..capture.models import *
from django.contrib import messages
from ..superuser.forms import *

# Create your views here.

def login(request):
    return render(request, 'superuser/login.html')

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

def delete_user(request):
    return

def edit_user(request):
    return

def show_user(request):
    return


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
