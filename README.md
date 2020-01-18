Iniciar aplicacion
1. sudo apt  install docker-compose
2. git clone git@github.com:sebascp/apptest.git
3. mkdir apptest
4. sudo docker-compose build
5. sudo docker-compose run web /bin/bash
 - dcbundle
 - yarn install --check-files (or sudo docker-compose run web yarn install --check-files)
 - bin/rails db:create
 - bin/rails db:migrate
6. sudo docker-compose up

Punto 1:
Estructura: 
- estilos: app/assets/stylesheets/*
- controladores: app/controllers/*
- vistas: app/views/*
- modelos: app/models/*
- pruebas: spec/*
- librerias: lib/*

Alias:
alias run-compose='sudo docker-compose'
alias run-any='run-compose run web'
alias dcbundle="run-any bundle"

