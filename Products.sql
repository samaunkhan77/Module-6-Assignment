-- Active: 1698769016556@@127.0.0.1@3306@test
CREATE TABLE `products` (
    `id` BIGINT ( 20 ) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `category_id` BIGINT ( 20 ) UNSIGNED NOT NULL,
    FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
    `name` VARCHAR ( 255 ) NOT NULL,
    `description` VARCHAR ( 255 ) NOT NULL,
    `price` BIGINT ( 20 ) NOT NULL
);