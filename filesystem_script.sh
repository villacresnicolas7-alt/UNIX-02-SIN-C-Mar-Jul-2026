#cambiamos directorio
cd /dev
#vemos la lista de archivos
ls
#Cambio a proc
cd /proc
#veo la lista de archivos
ls
#veo informacion del cpu
cat cpuinfo
#volvemos al directorio raiz
cd /
#vemos la lista de archivos
ls
#cambiamos a bin
cd bin
#vemos los archivos
ls
#cambiamos file systems
cd /workspaces/UNIX-02-SIN-C-Mar-Jul-2026/saludo
#vemos los archivos
ls

gcc saludo.c -o saludo_bin

sudo mv saludo_bin /bin

cd /bin