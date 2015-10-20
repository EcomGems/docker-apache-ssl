docker run \
        -d \
        -p 80:80 \
        -p 443:443 \
        -v /home/riversy/Repos/www_ecomgems:/usr/local/apache2/htdocs/ \
        -v /home/riversy/Repos/docker-apache-ssl/certs:/usr/local/apache2/conf/certs/ \
        --name webserver \
        ecomgems/apache-ssl
