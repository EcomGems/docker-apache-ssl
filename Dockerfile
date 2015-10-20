FROM httpd:2.4

MAINTAINER Igor Goltsov <riversy@gmail.com>

# Replace native config
# with customized one
ADD conf/httpd.conf $HTTPD_PREFIX/conf/httpd.conf
ADD conf/extra/httpd-ssl.conf $HTTPD_PREFIX/conf/extra/httpd-ssl.conf

# Create empty folder
# for SSL Certificates
RUN mkdir $HTTPD_PREFIX/conf/certs/

EXPOSE 80
EXPOSE 443
