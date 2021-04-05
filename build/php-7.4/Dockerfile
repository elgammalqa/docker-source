FROM php:7.4-fpm

# Arguments defined in docker-compose.yml

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer




#RUN usermod -u 1000 www-data

#SYMFONY


#COMPOSER
#RUN composer global require "phpunit/phpunit"
#ENV PATH /root/.composer/vendor/bin:$PATH
#RUN ln -s /root/.composer/vendor/bin/phpunit /usr/bin/phpunit


#COPY ./composer.sh /tmp/
#RUN sh /tmp/composer.sh
# ##########################
# #add User
COPY ./user.sh /tmp/
RUN sh /tmp/user.sh
# #########################
WORKDIR /home/haseel/public_html
USER haseel
EXPOSE 9000
CMD ["php-fpm"]
