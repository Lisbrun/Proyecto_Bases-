from django.db import models
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator,MinValueValidator

from phone_field import PhoneField
class Persona_vinculada(models.Model):
    Documento = models.IntegerField(primary_key=True,null=False,blank=False,unique=True)
    Usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    Tipo_Documento= models.CharField(max_length=20,null=False,blank=False)
    Nombre = models.CharField(max_length=50,null=False,blank=False)
    Apellido = models.CharField(max_length=50,null=False,blank=False)
    Sexo = models.CharField(max_length=1,null=False,blank=False)
    Correo_Personal = models.EmailField(max_length=254,null=False,blank=False)
    Telefono= PhoneField(blank=True, help_text='Contact phone number')
    Nacionalidad = models.CharField(max_length=50,null=False,blank=False)
    Correo_institucional = models.EmailField(max_length=254,null=True,blank=True)
    Fecha_Vinculacion = models.DateField(null=False,blank=False)


    def save (self,*args, **kwargs):
        self.Correo_institucional=f"{self.Nombre}@unal.edu.co"
        super().save(*args, **kwargs)
        
    class Meta: 
        db_table = 'Persona_vinculada'
        verbose_name = 'Persona_vinculada'
        verbose_name_plural = 'Persona_vinculadas'
        
    def __str__(self):
        return "Nombre: {} ".format(self.Nombre)
    


class estudiante (models.Model):
    Id_estudiante = models.AutoField(primary_key=True,unique=True,null=False,blank=True)
    Peama = models.BooleanField(help_text="Pertenece al grupo Peama")
    Persona_Vinculada = models.ForeignKey(Persona_vinculada, on_delete=models.CASCADE)
    
    
    class Meta: 
        db_table ='Estudiante'
        verbose_name = 'Estudiante'
        verbose_name_plural= 'Estudiantes'
        
        
        
        
class Residencia(models.Model):
    Id_residencia = models.AutoField(primary_key=True,unique=True,null=False,blank=True)
    Estrato = models.IntegerField(validators=[MinValueValidator(0),MaxValueValidator(5)])
    Ciudad = models.CharField(max_length=50)
    Calle= models.CharField(max_length=255)
    Numero= models.IntegerField()
    Estudiante = models.ForeignKey(estudiante, on_delete=models.CASCADE)
    
    class Meta: 
        db_table ='Residencia'
        verbose_name = 'Residencia'
        verbose_name_plural= 'Residencias'
        
class Sede (models.Model):
    ID_sede = models.AutoField(primary_key=True,unique=True)
    Nombre = models.CharField(max_length=60)
    
    class Meta: 
        db_table ='Sede'
        verbose_name = 'Sede'
        verbose_name_plural= 'Sedes'
        
        
class Docente (models.Model):
    Id_docente = models.AutoField(primary_key=True,unique=True)
    Persona_Vinculada = models.ForeignKey(Persona_vinculada, on_delete=models.CASCADE)
    Sede = models.ForeignKey(Sede,on_delete=models.CASCADE)
    Ocasional = models.BooleanField(default=False)
    
    class Meta:
        db_table ='Docente'
        verbose_name = 'Docente'
        verbose_name_plural= 'Docentes'
        
        
class Decano (models.Model):
    Id_decano = models.AutoField(primary_key=True,unique=True)
    Docente= models.ForeignKey(Docente,on_delete=models.CASCADE)
    Ejerciendo = models.BooleanField(default=True)

    class Meta: 
        db_table ='Decano'
        verbose_name = 'Decano'
        verbose_name_plural= 'Decanos'

class Departamento (models.Model):
    Id_departamento = models.AutoField(primary_key=True,unique=True)
    Nombre = models.CharField(max_length=100)
    Sede = models.ForeignKey(Sede,on_delete=models.CASCADE)    
    class Meta: 
        db_table ='Departamento'
        verbose_name = 'Departamento'
        verbose_name_plural= 'Departamentos'
        
        
class Facultad(models.Model):
    Id_Facultad = models.AutoField(primary_key=True)
    Nombre = models.CharField(max_length=60)
    Departamento= models.ForeignKey(Departamento,on_delete=models.CASCADE)
    class Meta: 
        db_table ='Facultad'
        verbose_name = 'Facultad'
        verbose_name_plural= 'Facultades'
        
        
class Programa(models.Model):
    OPCIONES_GRADO = (
        ('pregrado', 'Pregrado'),
        ('posgrado', 'Posgrado'),
        ('maestria', 'Maestría'),
        ('doctorado', 'Doctorado'),
    )
    Codigo_SNIES= models.IntegerField(primary_key=True,unique=True)
    Nombre = models.CharField(max_length=100)
    Creditos_exigidos=models.IntegerField()
    Grado_licenciatura= models.CharField(max_length=60,choices=OPCIONES_GRADO)
    Facultad = models.ForeignKey(Facultad,on_delete=models.CASCADE)
    
    class Meta: 
        db_table ='Programa'
        verbose_name = 'Programa'
        verbose_name_plural= 'Programas'
        

class Asignatura(models.Model):
    Codigo= models.AutoField(primary_key=True,unique=True)
    Nombre = models.CharField(max_length=100)
    Tipologia = models.CharField(max_length=100)
    Creditos = models.IntegerField()
    Programa = models.ForeignKey(Programa,on_delete=models.CASCADE)
    
    
    class Meta:
        db_table='Asignatura'
        verbose_name = 'Asignatura'
        verbose_name_plural = 'ASignaturas'
        
        
class Grupo(models.Model):
    Id_grupo = models.AutoField(primary_key=True,unique=True)
    Numero_grupo=models.IntegerField()
    Cupos = models.IntegerField()
    Asignatura = models.ForeignKey(Asignatura,on_delete=models.CASCADE)
    
    
    class Meta: 
        db_table ='Grupo'
        verbose_name = 'Grupo'
        verbose_name_plural= 'Grupos'