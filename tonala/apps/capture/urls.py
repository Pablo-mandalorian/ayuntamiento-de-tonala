from django.urls import path
from . import views


app_name = 'capture_app'
urlpatterns = [
    path('capturista-iniciar-sesion/',views.login, name="capturista-iniciar-sesion"),
    path('inicio/', views.home, name="inicio"),
    path('expediente/', views.proccedings, name="expediente"),
    path('editar-expediente/<int:id>', views.edit_proccedings, name="editar-expediente"),
    path('expediente-editado/<int:id>', views.editing_proccedings, name="expediente-editado"),
    path('eliminar-expediente/<int:id>', views.delete_proccedings, name="eliminar-expediente"),
    path('lineatiempo/', views.lineatiempo, name="lineatiempo")
]
