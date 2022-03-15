FROM httpd:2.4
MAINTAINER Richardxiao

ARG version=1.0.0

RUN echo $version > version.txt

COPY index.html /usr/local/apache2/htdocs/

# Hostname of Docker server
ENV hosting_instance=server-name

EXPOSE 80

CMD ["httpd-foreground"]
