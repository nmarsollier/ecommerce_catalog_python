# Si queres sabes mas sobre mi:

[Nestor Marsollier](https://github.com/nmarsollier/profile)

## Microservicio de Catalogo de Productos

Es un microservicio que permite manejar el catalogo de artículos, precios y stock, es un proyecto académico, esta simplificado al máximo; que en un ambiente de microservicios, tanto precios como stock deberian llevarse en un microservicio separado.

[Documentación de API](./README-API.md)

La documentación de las api también se pueden consultar desde el home del microservicio
que una vez levantado el servidor se puede navegar en [localhost:3002](http://localhost:3002/)

## Dependencias

### Auth

El catálogo sólo puede usarse por usuario autenticados, algunas operaciones como agregar un artículo nuevo requieren que el usuario sea "admin", ver la arquitectura de microservicios de [ecommerce](https://github.com/nmarsollier/ecommerce).

### MongoDb

Ver tutorial de instalación en [ecommerce](https://github.com/nmarsollier/ecommerce) en la raíz.

### RabbitMQ

La comunicación con Catalog y Auth es a través de rabbit.

Ver tutorial de instalación en [ecommerce](https://github.com/nmarsollier/ecommerce) en la raíz.

### Pip

Pip es un gestor de paquetes que nos va a permitir instalar las dependencias de python. [pypi.org](https://pypi.org/project/pip/)

Es recomendable instalarlo y aprender a usarlo si vamos a desarrollar en python

### Python 3.7+

Ahora vamos a instalar las librerías de nuestro proyecto. Parados en el directorio catalog ejecutamos

```bash
pip install -U -r requirements.txt
```

Ahora deberíamos ser capaces de ejecutar el proyecto

```bash
python run.py
```

## Apidoc

Apidoc es una herramienta que genera documentación de apis para proyectos node (ver [Apidoc](http://apidocjs.com/)).
Este proyecto utiliza apidoc para documentar los servicios rest.

El microservicio muestra la documentación como archivos estáticos si se abre en un browser la raíz del servidor [localhost:3002](http://localhost:3002/)

Ademas se genera la documentación en formato markdown.

Para que funcione correctamente hay que instalarla globalmente con npm

```bash
npm install -g apidoc
npm install -g apidoc-markdown2
```

Luego podemos generar la documentación usando

```bash
apidoc -o public
apidoc-markdown2 -p public -o README-API.md
```

Esto nos genera una carpeta con la documentación, esta carpeta debe estar presente desde donde se ejecute el servidor, el mismo busca ./public para localizarlo, aunque se puede configurar desde el archivo de properties.

## Variables de entorno

SERVER_PORT : Puerto en escucha de este servidor (3002)
AUTH_SERVICE_URL : Auth service host (localhost)
AUTH_SERVICE_PORT : Auth service port (3000)
RABBIT_URL : Rabbit host (localhost)
MONGO_URL : Url de Mongo (localhost)
MONGO_PORT : Puerto de Mongo (27017)

### Pyenv

Pyenv nos permite tener varias versiones de python instaladas en nuestro sistema. Es util para no generar conflicto con los programas que tengamos funcionando actualmente. [github.com/pyenv/](https://github.com/pyenv/pyenv-installer)

## Docker

```bash
docker build --no-cache -t dev-catalog-python .
```

### El contenedor

```bash
# Mac | Windows
docker run -it --name dev-catalog-python -p 3002:3002 -v $PWD:/app dev-catalog-python

# Linux
docker run -it --add-host host.docker.internal:172.17.0.1 --name dev-catalog-python -p 3002:3002 -v $PWD:/app dev-catalog-python
```
