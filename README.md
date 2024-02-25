# Database for [WeatherApi project](https://github.com/knottem/WeatherApi)

## Description

This is a database for the [WeatherApi project](https://github.com/knottem/WeatherApi) that is written by using Dockerfile and sql scripts. The database is a MySQL database and it is used to store city information(Name, Longitute and Latitute) and also a user table for the users of the WeatherApi.

### Database structure

The database has 4 tables: city, user, weather and weather_data. The city table has the following columns:

- id: The id of the city
- name: The name of the city
- lon: The longitude of the city
- lat: The latitude of the city

The user table has the following columns:

- id: The id of the user
- username: The username of the user
- password: The password of the user
- role: The role that the user has (Can be USER, SUPERUSER or ADMIN)

The weather table has the following columns:

- id: The id of the weather
- timestamp: The timestamp of the weather
- message: The key of the weather for the backend
- city: the city id that the weather is for

The weather_data table has the following columns:

- id: The id of the weather data
- precipitation: The precipitation of the weather
- temperature: The temperature of the weather
- weather_code: The weather code of the weather
- wind_direction: The wind direction of the weather
- wind_speed: The wind speed of the weather
- valid_time: The valid time of the weather
- weather_id: The weather id that the weather data is for

## Made by

- [Erik](https://github.com/knottem)
