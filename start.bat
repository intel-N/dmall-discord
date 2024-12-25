@echo off

:: Définit le titre de la console
title Aka Dmall

:: Vérifie si Node.js est installé
node -v >nul 2>&1
IF ERRORLEVEL 1 (
    echo Node.js n'est pas installé. Veuillez l'installer depuis https://nodejs.org/ et réessayez.
    pause
    exit /b
)

:: Vérifie si le fichier aka.js existe
if not exist aka.js (
    echo Le fichier aka.js n'a pas été trouvé dans le répertoire actuel.
    pause
    exit /b
)

:: Démarre aka.js avec Node.js
echo Démarrage de Aka Dmall...
node aka.js

:: Pause pour maintenir la console ouverte en cas d'erreur
pause
