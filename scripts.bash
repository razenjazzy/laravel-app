# run the containers
docker-compose up -d --build

# composer installation
docker exec -it laravel-app composer install

# artisan commands
docker exec -it laravel-app php artisan migrate
docker exec -it laravel-app php artisan key:generate