# Emisión 1: Deployments
## Saludo
## Puntos a tratar
### ¿Qué es un deployment?
### Partes de un deployment
### Casos de uso

### ¿Qué es un deployment?
Es un controlador, un objeto parte del core de kubernetes, que permite la gestión de nuestras aplicaciones. Con esto me refiero a que permite el despliegue, actualización, escalamiento y gestión de "versiones" de nuestras aplicaciones.

El termino aplicaciones hace referencia al uso de contenedores. Estos contenedores pueden estar basados en docker o en cualquier otra tecnología como podman.

### Partes de un deployment
Podemos distinguir cuatro grupos principales: la metadata y el spec. <br>
La **metadata** es donde se coloca el nombre y las etiquetas del deployment. Estas etiquetas pueden ser cualquier cosa siempre y cuando estén basadas en el formato clave valor y pueden ser usadas a futuro para seleccionar uno o mas deployments con las mismas etiquetas. <br>
El **spec** es donde agregaremos la configuración del deployment, la cual está orientada a la gestión de los pods que este manejará. Dentro del spec podemos configurar cosas como las replicas, los selectores de los contenedores que queremos usar y el pod que queremos que nuestro deployment administre. Debo resaltar que dentro de la configuración del pod también podemos configurar los contenedores que queremos administrar dentro del deployment

### Casos de uso
Los casos de uso mas frecuentes son:
- Desplegar pods
- Escalar horizontalmente una aplicación
- Hacer rollback a un despliegue

