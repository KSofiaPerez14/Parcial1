FROM httpd:latest
LABEL authors="sofiaPerez"

RUN useradd -m www

RUN echo "Alias /parcial1 /usr/local/apache2/htdocs/parcial1/html.html" >> /usr/local/apache2/conf/httpd.conf

COPY . /usr/local/apache2/htdocs/parcial1

EXPOSE 8080
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]