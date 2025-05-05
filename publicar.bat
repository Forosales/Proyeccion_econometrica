@echo off
echo -----------------------------------
echo RENDERIZANDO EL LIBRO EN QUARTO...
echo -----------------------------------
quarto render

echo -----------------------------------
echo REALIZANDO COMMIT Y PUSH A GITHUB...
echo -----------------------------------
git add .
git commit -m "Actualización automática del libro"
git push

echo -----------------------------------
echo PUBLICANDO EN GITHUB PAGES...
echo -----------------------------------
quarto publish gh-pages

echo -----------------------------------
echo ✅ ¡LIBRO ACTUALIZADO Y PUBLICADO!
echo -----------------------------------
pause
