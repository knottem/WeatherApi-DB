-- noinspection SqlNoDataSourceInspectionForFile
USE `weatherdb`;
-- Create the Cache table

CREATE TABLE `weather` (
`id` VARCHAR(36) NOT NULL,
`time_stamp` datetime(6) DEFAULT NULL,
`message` varchar(255) DEFAULT NULL,
`city` varchar(255) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `weather_data` (
`id` VARCHAR(36) NOT NULL,
`precipitation` float DEFAULT NULL,
`temperature` float DEFAULT NULL,
`weather_code` int DEFAULT NULL,
`wind_direction` float DEFAULT NULL,
`wind_speed` float DEFAULT NULL,
`valid_time` datetime(6) DEFAULT NULL,
`weather_id` VARCHAR(36) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `FKntehu79l7lrpw6um6ivv4q2ep` (`weather_id`),
CONSTRAINT `FKntehu79l7lrpw6um6ivv4q2ep` FOREIGN KEY (`weather_id`)
REFERENCES `weather` (`id`)
ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

