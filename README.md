**Prerequisites**
1. Docker & Docker Compose installed
2. Laravel project ready (or you can create a new one using laravel new project-name)

**Folder Structure**
Assume your Laravel project is named laravel-app

**Create Dockerfile for PHP**
docker/php/Dockerfile

**Nginx Configuration**
docker/nginx/default.conf

**Docker Compose File**
docker-compose.yml

**Run the Scripts**
In your Laravel root directory, run commands from scripts

**Composer Optimization for Production**
In your Dockerfile, update the build step to run Composer in production mode:

Update docker/php/Dockerfile
# This ensures vendor/ gets built in the image, minimizing container startup time and excluding dev dependencies.

**Add Nginx TLS Support**
Folder Structure (New)
# Use self-signed certs for development or real certs from Let’s Encrypt for production.

# Update docker/nginx/default.conf for HTTPS

# Update docker-compose.yml → nginx section

**Optional: Let’s Encrypt TLS (Production with Certbot)**
# If you are hosting on a real server with a domain, you can use a Certbot container:
Then adjust the Nginx TLS paths to match /etc/letsencrypt/live/yourdomain.com.

🔄 Rebuild and Relaunch
✅ HTTP → http://localhost → redirects to HTTPS
✅ HTTPS → https://localhost