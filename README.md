# Automatizador de Descargas en Linux

Este es un sencillo script de bash que automatiza el proceso de descargar archivos de internet. El script admite descargas desde ,  y enlaces magnéticos de BitTorrent utilizando el gestor de descargas .

## Requisitos
- Shell bash
- aria2c (se puede instalar utilizando el administrador de paquetes en su distribución de Linux)

## Uso
1. Clona este repositorio o descarga el script.
2. Haz que el script sea ejecutable ejecutando  en tu terminal.
3. Ejecuta el script ejecutando  en tu terminal.
4. El script te solicitará la cantidad de descargas que deseas realizar, seguido de los enlaces de los archivos que deseas descargar.
5. Luego, el script te preguntará por el directorio donde deseas guardar los archivos descargados. Puedes proporcionar un directorio existente o crear uno nuevo.
6. Finalmente, el script descargará los archivos utilizando aria2c y mostrará un resumen de los archivos descargados junto con el tiempo de descarga.

## Notas
- El script solo admite descargar enlaces con los protocolos ,  y magnético de BitTorrent.
- El script te pedirá que vuelvas a ingresar un enlace si no es un protocolo válido.
- El script solo creará una nueva carpeta si aún no existe en el directorio proporcionado.
- El script no iniciará la compartición del archivo torrent si es un enlace magnético de BitTorrent.
