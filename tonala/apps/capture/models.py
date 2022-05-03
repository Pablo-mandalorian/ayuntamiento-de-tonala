from django.db import models
from django.forms import CharField


# Create your models here.


class Privilege(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    # Privilege
    privilege = models.CharField(max_length=30)


class User(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    username = models.CharField(max_length=100)
    privilege = models.ForeignKey(Privilege, null=True, blank=True, on_delete=models.CASCADE)
    password = models.CharField(max_length=256)


# Tipo de titularidad
class Ownership_Type(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    ownership_type = models.CharField(null=False)


# Acreditación Predio
class Property_Accreditation(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    #document_pdf
    document_pdf_name = models.CharField(null=False)
    ownership_type = models.ForeignKey(Ownership_Type,null=True, blank=True, on_delete=models.CASCADE)


# Solicitud
class Request(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    request_pdf_name = models.CharField(null=False)


class Status(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    # Array ?
    status = models.CharField(null=False)


class Not_Applicable(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    not_applicable = models.CharField(null=False)


# Carta Poder
class Power_Letter(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    power_letter_pdf_name = models.CharField(null=True)
    not_applicable = models.ForeignKey(Not_Applicable, null=True, blank=True, on_delete=models.CASCADE)


class Constitutive_Act(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    act_pdf_name = models.CharField(null=False)
    not_applicable = models.ForeignKey(Not_Applicable, null=True, blank=True, on_delete=models.CASCADE)


class Identification_Type(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    # Array type?
    identification_type = models.CharField(null=False)


class Identification(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    identification_type = models.ForeignKey(Identification_Type, null=True, blank=True, on_delete=models.CASCADE)


class Location(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    #image?
    photo_ubication_name = models.CharField(null=False)
    location_link = models.CharField(null=False)


#Plano
class Plane(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    plane_pdf_name = models.CharField(null=False)
    description = models.TextField(null=False)


#expediente
class Proceedings(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    status = models.ForeignKey(Status, null=True, blank=True, on_delete=models.CASCADE)
    request = models.ForeignKey(Request,null=True, blank=True, on_delete=models.CASCADE)
    accreditation = models.ForeignKey(Property_Accreditation, null=True, blank=True, on_delete=models.CASCADE)
    constitutive_act = models.ForeignKey(Constitutive_Act, null=True, blank=True, on_delete=models.CASCADE)
    identification = models.ForeignKey(Identification, null=True, blank=True, on_delete=models.CASCADE)
    location = models.ForeignKey(Location, null=True, blank=True, on_delete=models.CASCADE)
    plane = models.ForeignKey(Plane, null=True, blank=True, on_delete=models.CASCADE)
    comments = models.TextField(null=False)


#expediente
class User_Proceedings(models.Model):
    id_user = models.ForeignKey(User,null=True, blank=True, on_delete=models.CASCADE)
    id_proceedings = models.ForeignKey(Proceedings,null=True, blank=True, on_delete=models.CASCADE)