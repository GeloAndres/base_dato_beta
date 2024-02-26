USE metro_cmdx;

--cracion de la talba de locations

CREATE TABLE `locations`(
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `station_id` BIGINT(20) UNSIGNED NOT NULL,
    location point NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT `locations_station_id`
    FOREIGN KEY(`station_id`) REFERENCES `stations` (`id`)
);