# Use the official PHP image from the Docker Hub
FROM php:7.4-apache

# Copy the PHP files to the appropriate directory in the image
COPY index.php /var/www/html/
COPY empty.php /var/www/html/

# Expose port 80 to allow web traffic
EXPOSE 80

# Add permissions to the www-data user
RUN chown -R www-data:www-data /var/www/html

# Start Apache server in the foreground
CMD ["apache2-foreground"]


