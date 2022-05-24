from django.shortcuts import render
from .forms import *
from ..capture.models import *
from django.contrib import messages
# Create your views here.

def login(request):
    return render(request, 'administrator/login.html')

def home(request):
    if request.method == "POST":
        form = UserLogin(request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            try:
               user = User.objects.get(username=username, password=password)
               getting_user_privilege = User.objects.filter(username=username, password=password).last()
               print(getting_user_privilege)
               return render (request, 'administrator/home.html', {'username': username})
            except:
               messages.error(request, 'Usuario o Contraseña Incorrecto')
        else:
           form = UserLogin()
           messages.error(request, 'Usuario o Contraseña Incorrecto')
        return render(request, 'administrator/login.html', {'form': form})