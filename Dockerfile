FROM openjdk:11.0.12 AS build

WORKDIR /app

COPY . /app

ARG APP_ENV

# `|| true` so build doesn't fail when a test fails
RUN for app in rapidtox ccd impact genra; do \
     sh /app/karate -e $APP_ENV --output result/$app src/$app || true; \
  done

FROM httpd:2.4.56

COPY --from=build /app/result /usr/local/apache2/htdocs/result
COPY --from=build /app/index.html /usr/local/apache2/htdocs/index.html
COPY --from=build /app/httpd.conf /usr/local/apache2/conf/

EXPOSE 80
