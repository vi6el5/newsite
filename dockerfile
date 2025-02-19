# Use the official PHP image as the base image
FROM php:7.4-apache

# Copy the contents of the current directory to /var/www/html in the container
COPY . /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
