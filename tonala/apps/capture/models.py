from secrets import choice
from django.db import models


# Create your models here.


class Privilege(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    # Privilege
    privilege = models.CharField(max_length=30)


class User(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    username = models.CharField(max_length=100)
    privilege = models.ForeignKey(Privilege, null=False, blank=False, on_delete=models.CASCADE)
    password = models.CharField(max_length=256)


# Tipo de titularidad
class Ownership_Type(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    ownership_type = models.CharField(max_length=100 ,null=False)


# Acreditación Predio
class Property_Accreditation(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    #document_pdf
    document_pdf = models.BinaryField(null=False)
    ownership_type = models.ForeignKey(Ownership_Type,null=False, blank=False, on_delete=models.CASCADE)


# Solicitud
class Request(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    request_pdf = models.BinaryField(null=False)


class Status(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    # Array ?
    type = [
        ('Validado','Validado'),
        ('No Validado','No Validado')
    ]
    status = models.CharField(max_length=50,null=False, choices=type)


class Not_Applicable(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    not_applicable = models.CharField(max_length=50,null=False)


# Carta Poder
class Power_Letter(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    power_letter_pdf = models.BinaryField(null=False)
    not_applicable = models.ForeignKey(Not_Applicable, null=False, blank=False, on_delete=models.CASCADE)


class Constitutive_Act(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    act_pdf = models.BinaryField(null=False)
    not_applicable = models.ForeignKey(Not_Applicable, null=False, blank=False, on_delete=models.CASCADE)


class Identification_Type(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    type = [
        ('Alto','Alto'),
        ('Media','Media'),
        ('Baja','Baja'),
    ]
    identification_type = models.CharField(max_length=20,null=False, choices=type)


class Identification(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    identification_type = models.ForeignKey(Identification_Type, null=False, blank=False, on_delete=models.CASCADE)


class Location(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    photo_ubication = models.ImageField(null=False)
    location_link = models.CharField(max_length=200,null=False)


#Plano
class Plane(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    plane_pdf = models.BinaryField(null=False)
    description = models.TextField(null=False)


#expediente
class Proceedings(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    status = models.ForeignKey(Status, null=False, blank=False, on_delete=models.CASCADE)
    request = models.ForeignKey(Request,null=False, blank=False, on_delete=models.CASCADE)
    accreditation = models.ForeignKey(Property_Accreditation, null=False, blank=False, on_delete=models.CASCADE)
    constitutive_act = models.ForeignKey(Constitutive_Act, null=False, blank=False, on_delete=models.CASCADE)
    identification = models.ForeignKey(Identification, null=False, blank=False, on_delete=models.CASCADE)
    location = models.ForeignKey(Location, null=False, blank=False, on_delete=models.CASCADE)
    plane = models.ForeignKey(Plane, null=False, blank=False, on_delete=models.CASCADE)
    comments = models.TextField(null=False)


#expediente
class User_Proceedings(models.Model):
    id_user = models.ForeignKey(User,null=False, blank=False, on_delete=models.CASCADE)
    id_proceedings = models.ForeignKey(Proceedings,null=False, blank=False, on_delete=models.CASCADE)