FROM openjdk:11.0.12 AS build

WORKDIR /app

COPY . /app

ARG APP_ENV

RUN sh /app/karate -e $APP_ENV --output rapidtox src/rapidtox

FROM httpd:2.4

RUN echo ServerName ccte-karate-dev.epa.gov >> httpd.conf

COPY --from=build /app/rapidtox /usr/local/apache2/htdocs/rapidtox 
