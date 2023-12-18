-- Added a few users for testing purposes, can be extended with more users.

USE `weatherdb`;
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`
(
`id` VARCHAR(36) NOT NULL,
`username` VARCHAR(255) NOT NULL,
`password` VARCHAR(255) NOT NULL,
`role`     ENUM ('ADMIN', 'USER', 'SUPERUSER') NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `auth` (`id`,`username`, `password`, `role`) VALUES
    ('232d5741-f551-443a-a1b0-b7b1eb26ba9f','admin','$2a$10$Eq3yxcRlqmIaxBv7w9qkDuZCfw7lhgYS12ndADouoUogkNMWGmELK', 'ADMIN' ), -- pass123 for testing
    ('2f42da30-7b17-4718-8782-563b4cc6c4c7','user','$2a$10$OMsvTvB3K5kHX6cTrSDEIuMFfKj2XASnIUPe/jPw.Fk6Vk9zQNK5W', 'USER'); -- pass123 for testing