# Use the latest version of WordPress
FROM wordpress:latest

# Install general utilities
RUN apt-get -y update && apt-get install -y \
    nano
# set term to xterm for nano to work
ENV TERM xterm

# Install WP CLI
RUN curl -O "https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar" && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# Copy the whole WordPress installation
#COPY ./wordpress /var/www/html

# Copy only WordPress plugins
#COPY ./wordpress/wp-content/plugins /var/www/html/wp-content/plugins

