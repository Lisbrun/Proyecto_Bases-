# Generated by Django 4.1.5 on 2023-05-20 01:22

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Persona_vinculada',
            fields=[
                ('Documento', models.IntegerField(primary_key=True, serialize=False)),
                ('Tipo_Documento', models.CharField(max_length=20)),
                ('Nombre', models.CharField(max_length=50)),
                ('Apellido', models.CharField(max_length=50)),
                ('Sexo', models.CharField(max_length=1)),
                ('Correo_Personal', models.EmailField(max_length=254)),
                ('Telefono', models.IntegerField(max_length=10)),
                ('Nacionalidad', models.CharField(max_length=50)),
                ('Correo_institucional', models.EmailField(blank=True, max_length=254, null=True)),
                ('Fecha_Vinculacion', models.DateField()),
                ('Usuario', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]