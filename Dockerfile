FROM openjdk:11.0.12 AS build

COPY . /app

WORKDIR /app

ARG TEST_APP

ENV TEST_APP=$TEST_APP

RUN sh /app/karate -e dev --output rapidtox src/rapidtox

FROM httpd:2.4

COPY --from=build /app/rapidtox ./rapidtox

COPY ./rapidtox /usr/local/apache2/htdocs/rapidtox
