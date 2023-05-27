# Generated by Django 4.1.5 on 2023-05-27 22:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('academico', '0009_alter_cupo_creditos_creditos_disponibles'),
    ]

    operations = [
        migrations.CreateModel(
            name='Pago_Semestre',
            fields=[
                ('Id_Pago', models.AutoField(primary_key=True, serialize=False, unique=True)),
                ('Fecha', models.DateField()),
                ('Verificacion', models.BooleanField()),
                ('Historial', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='academico.historial_academico')),
            ],
            options={
                'verbose_name': 'Pago_Semestre',
                'verbose_name_plural': 'Pagos_Semestre',
                'db_table': 'Pago_Semestre',
            },
        ),
    ]
