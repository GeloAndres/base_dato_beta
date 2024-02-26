USE metro_cdmx;

--creacion de la tabla lines_stations

CREATE TABLE `lines_stations` (
    id BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ,
    `lineas_id` BIGINT(20) UNSIGNED NOT NULL,
    `estacion_id` BIGINT(20) UNSIGNED NOT NULL,
    PRIMARY KEY(`id`),

    CONSTRAINT `lines_stations_lines_id_forenign`
    FOREIGN KEY (`lineas_id`) REFERENCES `lines`(`id`),

    CONSTRAINT `lines_stations_stations_id_forenign`
    FOREIGN KEY (`estacion_id`) REFERENCES `stations`(`id`)
)
DEFAULT CHARSET = utf8mb4;

INSERT INTO `lines_stations` (lineas_id, estacion_id)
VALUES
(
    (
        SELECT `lines`.`id` 
        FROM `lines`
        WHERE `lines`.`name` = "Línea 12"
    ),
    (
        SELECT `stations`.`id` 
        FROM `stations`
        WHERE `stations`.`name` = "Xola"
    )
),
(
    (
        SELECT `lines`.`id` 
        FROM `lines`
        WHERE `lines`.`name` = "Línea 12"
    ),
    (
        SELECT `stations`.`id` 
        FROM `stations`
        WHERE `stations`.`name` = "Portales"
    )
);

--funciono, ojo con que las QUERY no pillen el dato o tirara NULL y nos dara error

