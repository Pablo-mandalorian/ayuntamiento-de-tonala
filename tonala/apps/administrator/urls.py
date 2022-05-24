from django.urls import path
from . import views


app_name = 'administrator_app'
urlpatterns = [
    path('administrador-iniciar-sesion/',views.login, name="administrador_iniciar_sesion"),
    path('administrador-inicio/', views.home, name="inicio_administrador"),
]
