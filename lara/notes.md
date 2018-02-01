# Laravel pre-setup

- curl -L https://github.com/laravel/laravel/archive/v5.5.0.tar.gz | tar xz     

- mv laravel_v5.5.0 laravel

- cd laravel

//run composer for first time

- docker run --rm -u $UID -v $(pwd):/app composer/composer install  

//build stack

- docker-compose up -d --build    

//generate laravel's key

- docker-compose exec fpm php artisan key:generate 

- go to localhost:8080  
