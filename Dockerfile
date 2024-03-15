# Utiliser l'image de base officielle PHP avec Apache
FROM php:7.4-apache

# Installer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Activer le mod_rewrite d'Apache
RUN a2enmod rewrite

# Copier les fichiers du site web dans le conteneur
COPY ./public-html/ /var/www/html/
