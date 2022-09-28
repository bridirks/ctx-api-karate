FROM openjdk:11.0.12 AS build

WORKDIR /app

COPY . /app

ARG APP_ENV

RUN sh /app/karate -e $APP_ENV --output rapidtox src/rapidtox

FROM httpd:2.4

RUN mkdir -p /usr/local/apache2/htdocs/rapidtox/

COPY --from=build /app/rapidtox /usr/local/apache2/htdocs/rapidtox/
COPY --from=build /app/httpd.conf /usr/local/apache2/conf/

EXPOSE 80
