from django.contrib import admin
from .models import *
# Register your models here.
@admin.register(Persona_vinculada)
class Admin_persona(admin.ModelAdmin):
    exclude=('Correo_institucional',)
    

@admin.register(estudiante)
class admin_estudiante(admin.ModelAdmin):
    exclude=(' Id_estudiante',)
    
@admin.register(Residencia)
class admin_residencia(admin.ModelAdmin):
    exclude=('Id_residencia',)
    
    
@admin.register(Sede)
class admin_residencia(admin.ModelAdmin):
    exclude=('Id_sede',)
    
        
@admin.register(Departamento)
class admin_residencia(admin.ModelAdmin):
    exclude=('Id_departamento',)
        
@admin.register(Facultad)
class admin_residencia(admin.ModelAdmin):
    exclude=('Id_Facultad',)
        
@admin.register(Programa)
class admin_residencia(admin.ModelAdmin):
    pass

@admin.register(Docente)
class admin_residencia(admin.ModelAdmin):
    exclude=('Id_docente',)
    
@admin.register(Decano)
class admin_residencia(admin.ModelAdmin):
    exclude=('Id_decano',)
    
@admin.register(Asignatura)
class admin_residencia(admin.ModelAdmin):
    pass

@admin.register(Grupo)
class admin_grupo(admin.ModelAdmin):
    pass