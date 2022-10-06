#/bin/bash

filename_c="sl.c"
filename_patch="scriptPatch.patch"

echo - n "Observamos git status para saber los cambios que se agregaran a el parche"

git status

echo -n "Creamos con estos cambios el parche"

ls -a 

sleep 2

git diff > $filename_patch

echo -n "Quitamos los cambios para dejar solamente el parche con los cambios"

git checkout $filename_c

sleep 10

echo -n "Comprobamos que nuestro archivo de parche existe"

ls -a 

echo -n "Aplicamos nuestro parche con git apply $filename_patch"

git apply $filename_patch

