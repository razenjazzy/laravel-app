# run the containers
docker-compose up -d --build

# composer installation
docker exec -it laravel-app composer install

# artisan commands
docker exec -it laravel-app php artisan migrate
docker exec -it laravel-app php artisan key:generate

# Generate Self-Signed Certs (optional)

mkdir -p docker/nginx/ssl

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout docker/nginx/ssl/server.key \
  -out docker/nginx/ssl/server.crt \
  -subj "/C=US/ST=State/L=City/O=Company/CN=localhost"

# Run Commands for production deploy:
php artisan config:cache
php artisan route:cache
php artisan view:cache
Monitor logs (storage/logs/)

# Restrict file permissions:
chmod -R 755 storage bootstrap/cache
chown -R www-data:www-data .