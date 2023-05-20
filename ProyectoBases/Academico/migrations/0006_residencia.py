# Generated by Django 4.1.5 on 2023-05-20 02:08

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Academico', '0005_alter_persona_vinculada_options_and_more'),
    ]

    operations = [
        migrations.CreateModel(
            name='Residencia',
            fields=[
                ('Id_residencia', models.AutoField(primary_key=True, serialize=False, unique=True)),
                ('Estrato', models.IntegerField(validators=[django.core.validators.MinValueValidator(0), django.core.validators.MaxValueValidator(5)])),
                ('Ciudad', models.CharField(max_length=50)),
                ('Calle', models.CharField(max_length=255)),
                ('Numero', models.IntegerField()),
                ('name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='Academico.estudiante')),
            ],
            options={
                'verbose_name': 'Residencia',
                'verbose_name_plural': 'Residencias',
                'db_table': 'Residencia',
            },
        ),
    ]
