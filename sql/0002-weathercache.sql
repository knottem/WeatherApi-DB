-- noinspection SqlNoDataSourceInspectionForFile
USE `weatherdb`;
-- Create the Cache table

create table weather
(
    id         varchar(36)                            not null
        primary key,
    time_stamp datetime(6)                            null,
    message    varchar(255)                           null,
    city_id    varchar(36) collate utf8mb4_unicode_ci null,
    constraint FK_weather_city
        foreign key (city_id) references city (id)
);

create table weather_data
(
    id             varchar(36) not null
        primary key,
    precipitation  float       null,
    temperature    float       null,
    weather_code   int         null,
    wind_direction float       null,
    wind_speed     float       null,
    valid_time     datetime(6) null,
    weather_id     varchar(36) null,
    constraint FKntehu79l7lrpw6um6ivv4q2ep
        foreign key (weather_id) references weather (id)
            on delete cascade
);


