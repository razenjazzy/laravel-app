**Prerequisites**
1. Docker & Docker Compose installed
2. Laravel project ready (or you can create a new one using laravel new project-name)

**Folder Structure**
Assume your Laravel project is named laravel-app/

laravel-app/
├── app/ (Laravel codebase)
├── docker/
│   ├── php/
│   │   └── Dockerfile
│   ├── nginx/
│   │   └── default.conf
│   └── mysql/ (optional for DB volumes)
├── .env
├── docker-compose.yml
├── scripts.bash
├── README.md


**Create Dockerfile for PHP**
docker/php/Dockerfile

**Nginx Configuration**
docker/nginx/default.conf

**Docker Compose File**
docker-compose.yml

**Run the Scripts**
In your Laravel root directory, run commands from scripts
