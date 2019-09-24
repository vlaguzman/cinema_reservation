Iniciar aplicacion
1. sudo apt  install docker-compose
2. git clone git@github.com:sebascp/apptest.git
3. mkdir apptest
4. sudo docker-compose build
5. sudo docker-compose run web /bin/bash
 - bundle install
 - yarn install --check-files (or sudo docker-compose run web yarn install --check-files)
 - bin/rails db:create
 - bin/rails db:migrate
6. sudo docker-compose up

1. Punto
Estructura: 
estilos: app/assets/stylesheets/*
controladores: app/controllers/*
vistas: app/views/*
modelos: app/models/*
pruebas: spec/*
librerias: lib/*

2. Punto
Libreria: lib/sum_arrays.rb
Prueba: spec/lib/sum_arrays_spec.rb
Como ejecutar la prueba:sudo docker-compose run web bundle exec rspec spec/lib/sum_arrays_spec.rb
