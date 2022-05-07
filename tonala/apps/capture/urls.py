from django.urls import URLPattern, path
from . import views
from django.contrib.auth import views as auth_view


app_name = 'capture_app'
urlpatterns = [
    path('',views.index, name="index"),
    path('login/',views.login, name="login"),
    path('home/', views.home, name="home"),
]
