from django.urls import URLPattern, path
from . import views
from django.contrib.auth import views as auth_view


app_name = 'capture_app'
urlpatterns = [
    path('',views.index, name="index"),
    path('iniciar_sesion/',views.login, name="iniciar_sesion"),
    path('inicio/', views.home, name="inicio"),
    path('expediente/', views.proccedings, name="expediente"),
    path('editar-expediente/<int:id>', views.edit_proccedings, name="editar-expediente"),
    path('expediente-editado/<int:id>', views.editing_proccedings, name="expediente-editado"),
    path('eliminar-expediente/<int:id>', views.delete_proccedings, name="eliminar-expediente"),
]
