# Prueba BICE VIDA

### Autor: Eduardo Pérez

## Instalación
* Clonar el repo usando ```git clone https://github.com/eperezf/BICE-test.git```
* Ir a la carpeta en donde se descargó el repo
* Inicializar terraform con ```terraform init````

## Variables
Por defecto los recursos utilizarán las variables guardadas en [vars.tf](vars.tf).

Las variables pueden ser modificadas en el archivo [terraform.tfvars](terraform.tfvars).

Las variables permitidas son las siguientes:
* ```bice_vpc_id```: ID de la VPC. Por defecto: ```vpc-XXXXXXXXX```
* ```bice_name_application```: Nombre de la aplicación de Elastic Beanstalk. Por defecto: ```BiceTestApp```
* ```bice_environment```: Nombre del ambiente de la aplicación de Elastic Beanstalk. Por defecto: ```BiceTestAppEnv```
*  ```bice_solution_stack_name```: Nombre del stack que se aplicará por defecto a Elastic Beanstalk. Por defecto: ```64bit Amazon Linux 2 v5.4.9 running Node.js 14``` (Amazon Linux 2 de 64 bits con NodeJS v14).

## Validación
* Inicializar tflint con ```tflint --init```
* Validar con ```terraform validate```
* Validar con ```tflint```

## Ejecución
Para ejecutar correctamente la implementación se debe tener configurada la CLI de AWS.

* Ejecutar ```terraform plan``` para visualizar el plan de ejcución
* Ejecutar ```terraform apply```para aplicar el plan de ejecución

## Eliminación
* Ejecutar ```terraform destroy```para eliminar los recursos creados
