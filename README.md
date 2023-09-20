# Database for [WeatherApi project](https://github.com/knottem/WeatherApi)

## Description

This is a database for the [WeatherApi project](https://github.com/knottem/WeatherApi) that is written by using Dockerfile and sql scripts. The database is a MySQL database and it is used to store city information(Name, Longitute and Latitute) and also a user table for the users of the WeatherApi.

### Database structure

The database has two tables: city and user. The city table has the following columns:

- id: The id of the city
- name: The name of the city
- lon: The longitude of the city
- lat: The latitude of the city

The user table has the following columns:

- id: The id of the user
- username: The username of the user
- password: The password of the user
- role: The role that the user has (Can be USER, SUPERUSER or ADMIN)

## Made by

- [Erik](https://github.com/knottem)
