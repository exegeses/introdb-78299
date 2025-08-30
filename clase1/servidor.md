# Chequear si mi servidor de MySQL está funcionando

> Una vez que instalamos el servidor de base de datos este de manera predeterminada está iniciado (modo automático)
> vamos a ver cómo chequear si está funcionando

## Windows
> Para chequear que el servidor esté funcionando necesitamos utilizar el "Administrador de servicios"

1. Pulsar la combinación de teclas WIN + R
2. Esto abrirá la ventana "ejecutar"
3. Ahí vamos a escribir "services.msc" y pulsar "OK"
4. Se va a abrir el administrador de servicios
5. Buscar el servicio llamado MySQL8.0

> Una vez ahí podemos chequear si está funcionando o no y también si está en el modo automático o manual

## macOS

> En macOS vamos a ir a la Configuración del Sistema

1. ir a Configuración del Sistema
2. En el panel lateral izquierdo ir hacia abajo de todo
3. Ahí encontraremos el servicio MySQL
4. En la parte central tenemos las opciones para iniciar y detener

## Debian

> para iniciar el servidor de base de datos de MySQL en debian
> puedo utilizar una terminal de comandos

1. Abrir la Terminal
2. Ejecutar el siguiente comando:

   systemctl start mysql

> para detener el servicio, ejecutar:

    systemctl stop mysql

> para verificar el estado del servicio, ejecutar

    systemctl status mysql

