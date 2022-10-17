FROM openjdk:11.0.12 AS build

WORKDIR /app

COPY . /app

ARG APP_ENV

RUN sh /app/karate -e $APP_ENV --output rapidtox src/rapidtox
RUN sh /app/karate -e $APP_ENV --output impact src/impact

FROM httpd:2.4

RUN mkdir -p /usr/local/apache2/htdocs/rapidtox/
RUN mkdir -p /usr/local/apache2/htdocs/impact/

RUN ls /usr/local/apache2/htdocs

COPY --from=build /app/rapidtox /usr/local/apache2/htdocs/rapidtox/
COPY --from=build /app/impact /usr/local/apache2/htdocs/impact/

RUN rm /usr/local/apache2/htdocs/index.html

COPY --from=build /app/index.html /usr/local/apache2/htdocs/index.html
COPY --from=build /app/httpd.conf /usr/local/apache2/conf/

EXPOSE 80
