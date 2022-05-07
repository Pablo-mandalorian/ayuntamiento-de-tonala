from django.urls import path
from . import views
#from django.contrib.auth import views as auth_view

app_name = 'superuser_app'
urlpatterns = [
    path('superuser-tonala/',views.login, name="login"),
    path('superuser-tonala-home/', views.home, name="home"),
]
