# MongoDB Docker

Este proyecto configura una instancia de MongoDB utilizando Docker. A continuación, se detallan los pasos para construir y ejecutar la imagen Docker, así como la necesidad de un archivo de inicialización `init-mongo.js` para la configuración inicial.

## Construcción de la Imagen Docker

### Requisitos 📋

Antes de construir la imagen Docker, asegúrate de tener los siguientes archivos en tu proyecto:

- `Dockerfile`: El archivo de configuración de Docker que define la imagen MongoDB.
- `mongod.conf`: El archivo de configuración para MongoDB.
- `init-mongo.js`: El archivo de inicialización de MongoDB que contiene datos confidenciales y debe ser incluido en la construcción del contenedor. **Asegúrate de que este archivo esté en el mismo directorio que el Dockerfile**.

### Instalación 🔧

Una guía paso a paso sobre cómo construir y ejecutar la imagen Docker:

1. **Abre una terminal o consola** en el directorio donde se encuentran los archivos `Dockerfile`, `mongod.conf` e `init-mongo.js`.

2. **Construir la imagen Docker**:

    ```bash
   docker build -t dar-db-local .
    ```
3. **Ejecutar el contenedor Docker**:

    ```bash
   docker run -d -p 28000:27017 --name dar-db-local-contenedor dar-db-local
    ```
4. **URI de conexion local**

    El user y password estan en el archivo init-mongo.js
    ```bash
    mongodb://user:password@localhost:28000
    ```

### Despliegue 📦
Si deseas desplegar esto en un entorno de producción, asegúrate de seguir las mejores prácticas de seguridad para la configuración de MongoDB y Docker.

---

© 2024 [CODE GNIUS](https://github.com/gnius-pe). Todos los derechos reservados.

Este proyecto está alojado en el repositorio [dar-db-local](https://github.com/gnius-pe/data-base-dar). El uso del código y los recursos de este proyecto están sujetos a los términos de la licencia [Licencia MIT](./LICENSE).