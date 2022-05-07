from email import message
from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from .forms import *

# Create your views here.

def index(request):
    return render(request, 'capture/index.html')

def login(request):
    return render(request, 'capture/login.html')

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

