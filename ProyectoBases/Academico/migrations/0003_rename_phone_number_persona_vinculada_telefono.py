# Generated by Django 4.1.5 on 2023-05-20 01:34

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Academico', '0002_remove_persona_vinculada_telefono_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='persona_vinculada',
            old_name='phone_number',
            new_name='Telefono',
        ),
    ]