from secrets import choice
from django.db import models


# Create your models here.


class Privilege(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    # Privilege
    privilege = models.CharField(max_length=30)
    
   
    def __str__(self):
        return "{1}".format(self.id, self.privilege)

class User(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    username = models.CharField(max_length=100)
    privilege = models.ForeignKey(Privilege, null=False, blank=False, on_delete=models.CASCADE)
    password = models.CharField(max_length=256)
    
    
    def __str__(self):
        return "{1}".format(self.id, self.username)

# Tipo de titularidad
class Ownership_Type(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    ownership_type = models.CharField(max_length=100 ,null=False)


    def __str__(self):
        return "{1}".format(self.id, self.ownership_type)

# Acreditación Predio
class Property_Accreditation(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    #document_pdf
    document_pdf = models.FileField(upload_to='store/document_pdf/',null=False)
    ownership_type = models.ForeignKey(Ownership_Type,null=False, blank=False, on_delete=models.CASCADE)


    def __str__(self):
        return "{1}".format(self.id, self.document_pdf)

# Solicitud
class Request(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    request_pdf = models.FileField(upload_to='store/request_pdf/',null=False)


    def __str__(self):
        return "{1}".format(self.id, self.request_pdf)

class Status(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    # Array ?
    type = [
        ('Validado','Validado'),
        ('No Validado','No Validado')
    ]
    status = models.CharField(max_length=50,null=False, choices=type)


    def __str__(self):
        return "{1}".format(self.id, self.status)

class Not_Applicable(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    not_applicable = models.CharField(max_length=50,null=False)


    def __str__(self):
        return "{1}".format(self.id, self.not_applicable)

# Carta Poder
class Power_Letter(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    power_letter_pdf = models.FileField(upload_to='store/power_letter_pdf/',null=False)
    not_applicable = models.ForeignKey(Not_Applicable, null=False, blank=False, on_delete=models.CASCADE)

    def __str__(self):
        return "{1}".format(self.id, self.power_letter_pdf)

class Constitutive_Act(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    act_pdf = models.FileField(upload_to='store/act_pdf/',null=False)
    not_applicable = models.ForeignKey(Not_Applicable, null=False, blank=False, on_delete=models.CASCADE)

    def __str__(self):
        return "{1}".format(self.id, self.act_pdf)

class Identification_Type(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    type = [
        ('Alto','Alto'),
        ('Media','Media'),
        ('Baja','Baja'),
    ]
    identification_type = models.CharField(max_length=20,null=False, choices=type)

    def __str__(self):
        return "{1}".format(self.id, self.identification_type)
    

class Identification(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    identification_type = models.ForeignKey(Identification_Type, null=False, blank=False, on_delete=models.CASCADE)

    def __str__(self):
        return "{1}".format(self.id, self.identification_type)

class Location(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    photo_ubication = models.ImageField(upload_to='store/photo_ubication/',null=False)
    location_link = models.CharField(max_length=200,null=False)


    def __str__(self):
        return "{1}".format(self.id, self.photo_ubication)

#Plano
class Plane(models.Model):
    id = models.PositiveSmallIntegerField(primary_key=True)
    plane_pdf = models.FileField(upload_to='store/plane_pdf/',null=False)
    description = models.TextField(null=False)


    def __str__(self):
        return "{1}".format(self.id, self.plane_pdf)

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


    def __str__(self):
        return "{0}".format(self.id)

#expediente
class User_Proceedings(models.Model):
    id_user = models.ForeignKey(User,null=False, blank=False, on_delete=models.CASCADE)
    id_proceedings = models.ForeignKey(Proceedings,null=False, blank=False, on_delete=models.CASCADE)

    def __str__(self):
        return "{1}".format(self.id_user, self.id_proceedings)