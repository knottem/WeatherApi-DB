-- noinspection SqlNoDataSourceInspectionForFile

-- NOT FINISHED, started this if I want the cache to be saved on the db instead of just in the program.

USE `weatherdb`;

-- Create the Cache table

CREATE TABLE `weather` (
`id` bigint NOT NULL AUTO_INCREMENT,
`message` varchar(255) DEFAULT NULL,
`time_stamp` datetime NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Create the Weather Entity table
CREATE TABLE `weather_data` (
`id` bigint NOT NULL AUTO_INCREMENT,
`valid_time` datetime NOT NULL,
`temperature` float NOT NULL,
`weather_code` int NOT NULL,
`wind_speed` float NOT NULL,
`wind_direction` float NOT NULL,
`precipitation` float NOT NULL,
`weather_entity_id` bigint NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_weather_entity_id` FOREIGN KEY (`weather_entity_id`) REFERENCES `weather` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `weather_cache` (
`id` bigint NOT NULL AUTO_INCREMENT,
`key` varchar(255) UNIQUE NOT NULL,
`timestamp` datetime NOT NULL,
`weather_entity_id` bigint NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_weather_entity_id` FOREIGN KEY (`weather_entity_id`) REFERENCES `weather` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


