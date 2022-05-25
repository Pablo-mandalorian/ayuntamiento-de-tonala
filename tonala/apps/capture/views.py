from django.shortcuts import render, redirect
from .models import *
from django.contrib import messages
from .forms import *


# Create your views here.


def login(request):
    return render(request, 'capture/login.html')

def lineatiempo(request):
    return render(request,'capture/timeline.html')

def proccedings(request):
    proccedings = Proceedings.objects.all()
    messages.success(request,'Expedientes Listados Correctamente')
    return render(request, 'capture/proccedings.html', {"proccedings":proccedings})


def edit_proccedings(request, id):
    proccedings = Proceedings.objects.get(id=id)
    return render(request, 'capture/edit_proccedings.html', {"proccedings":proccedings})


def editing_proccedings(request,id):
    Status.objects.filter(id=id).update(status = request.POST['status'])
    Request.objects.filter(id=id).update(request_pdf = request.POST['request'])
    Property_Accreditation.objects.filter(id=id).update(document_pdf = request.POST['accreditation'])
    Constitutive_Act.objects.filter(id=id).update(act_pdf = request.POST['constitutive_act'])
    Identification_Type.objects.filter(id=id).update(identification_type = request.POST['identification'])
    Location.objects.filter(id=id).update(photo_ubication = request.POST['location'])
    Plane.objects.filter(id=id).update(plane_pdf = request.POST['plane'])
    Proceedings.objects.filter(id=id).update(comments = request.POST['comments'])
    return redirect('/')


def delete_proccedings(request, id):
    proccedings = Proceedings.objects.get(id=id)
    proccedings.delete()
    return redirect('/')


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
