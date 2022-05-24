from django.urls import path
from . import views


app_name = 'superadmin_app'
urlpatterns = [
    path('superadmin-iniciar-sesion/',views.login, name="superadmin-iniciar-sesion"),
    path('superadmin-home/', views.home, name="superadmin-home"),
    path('superadmin-crear-usuario/', views.create_user, name="superadmin-crear-usuario"),
    path('superadmin-creando-usuario/', views.creating_user, name="creando-usuario"),
    path('superadmin-usuarios/', views.show_user, name="superadmin-usuarios"),
    path('superadmin-editar-usuario/<int:id>', views.edit_user, name="superadmin-editar-usuario"),
    path('superadmin-editando-usuario', views.editing_user, name="superadmin-usuario-editado"),
    path('superadmin-eliminar-usuario/<int:id>', views.delete_user, name="superadmin-eliminar-usuario"),
]
