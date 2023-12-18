# Description: Dockerfile for MySQL 8.0 database with initial data of swedish cities
FROM mysql:8
COPY ./sql /docker-entrypoint-initdb.d
EXPOSE 3306