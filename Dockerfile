FROM openjdk:11.0.12 AS build

COPY . /app

WORKDIR /app

RUN sh /app/karate -e dev --output rapidtox src/rapidtox

FROM httpd:2.4

COPY --from=build /app/rapidtox ./rapidtox

RUN ls -la ./rapidtox

COPY ./rapidtox /usr/local/apache2/htdocs/rapidtox
