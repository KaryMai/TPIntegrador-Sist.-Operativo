
# Trabajo Integrador.sh

Este proyecto es una aplicación de línea de comandos desarrollada en Bash para automatizar tareas de administración en sistemas Linux. Permite realizar respaldos, generar informes de recursos, actualizar el sistema y limpiar archivos temporales, todo desde un solo archivo ejecutable. Se orienta a estudiantes y usuarios de nivel intermedio interesados en optimizar la administración de sistemas de manera práctica y sencilla.

## Funcionalidades

1. **Respaldo de Directorios**: Realiza un respaldo comprimido de un directorio especificado y elimina archivos antiguos para mantener el espacio optimizado.
2. **Informe de Recursos**: Genera un informe sobre el uso de CPU, memoria y espacio en disco del sistema.
3. **Actualización del Sistema**: Ejecuta una actualización automática de los paquetes instalados en el sistema.
4. **Limpieza del Sistema**: Libera espacio eliminando archivos temporales y no necesarios.

## Instrucciones de Uso

Para utilizar este script, es necesario tener permisos de administrador (sudo). El script se ejecuta en un entorno de consola en sistemas basados en Debian y derivados (como Ubuntu). Sigue los siguientes pasos:

### 1. Clona el Repositorio
Descarga con tu terminal de GIT este proyecto, entre otras cosas, tendrás un archivo ".sh", donde se contienen todas las funcionaliades que nuestro software hace.
A continuación, abre una terminal de Bash para el resto de pasos.

### 2. Concede Permisos de Ejecución

```bash
chmod +x TPIntegrador.sh
```
Esto con el fin de evitar problemas de permisos y que nuestro software trabaje bien.

### 3. Ejecuta el Script

Inicia el script usando:

```bash
./TPIntegrador.sh.sh
```

A continuación, el menú principal te permitirá seleccionar una de las siguientes opciones para ejecutar la funcionalidad deseada.

### Ejemplos de Uso

**Respaldo de Directorios**  
Selecciona la opción 1. Se te pedirá especificar un directorio y el nombre del archivo de respaldo:
```bash
Introduce el directorio a respaldar: /ruta/al/directorio
Introduce el nombre del archivo de respaldo (sin extensión): respaldo_1
```
Resultado esperado:
```plaintext
Respaldo completado: respaldo_1.tar.gz
```

**Informe de Recursos**  
Selecciona la opción 2 para generar un informe del uso de recursos del sistema:
```plaintext
Generando informe de recursos...
Informe generado: reporte_recursos_YYYY-MM-DD.log
```

**Actualizar Sistema**  
Selecciona la opción 3. El sistema ejecutará actualizaciones de paquetes.
```plaintext
Verificando actualizaciones...
Actualización completada.
```

**Limpiar Sistema**  
Selecciona la opción 4. El sistema eliminará archivos temporales.
```plaintext
Eliminando archivos temporales y caché...
Limpieza completada.
```

## Contribuciones

Apreciamos tus contribuciones. Para colaborar, sigue estos pasos:

1. Realiza un fork del repositorio.
2. Crea una nueva rama con la mejora o corrección que deseas implementar.
3. Envía un pull request. Nos encargaremos de revisar tus propuestas.

Dado que este es un repositorio público, las contribuciones son bienvenidas. Ten en cuenta que no se permiten modificaciones al código base para mantener la integridad del proyecto, pero puedes distribuirlo libremente y sugerir mejoras.

## Licencia

Este proyecto se distribuye bajo la licencia [MIT](https://opensource.org/licenses/MIT). La visualización es gratuita, y cualquier usuario puede distribuir el código conforme a los términos de la licencia.

---

**Nota:** Este proyecto está destinado únicamente a fines educativos.
