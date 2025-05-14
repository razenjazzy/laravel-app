FROM php:8.2-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    git curl libpng-dev libonig-dev libxml2-dev zip unzip \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

# Copy only necessary files first to leverage Docker layer caching
COPY composer.json composer.lock ./

# Install optimized Composer dependencies
RUN composer install --no-dev --optimize-autoloader --no-interaction

# Now copy the rest of the app
COPY . .

# Permissions
RUN chown -R www-data:www-data /var/www \
    && chmod -R 755 /var/www