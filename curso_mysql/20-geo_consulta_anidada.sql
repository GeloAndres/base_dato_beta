-- consultas anidadas, ver distancias de una estacion por medio del nombre de la estacion.

SELECT stations.id, stations.name,  locations.location FROM stations
INNER JOIN locations
on stations.id = locations.station_id
WHERE stations.id = 85;

SELECT 
ST_Distance_Sphere(
    (
        SELECT `locations`.`location` 
        FROM `locations`
        INNER JOIN `stations`
        on `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Balderas";
    ),
    (
        SELECT `locations`.`location` 
        FROM `locations`
        INNER JOIN `stations`
        on `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Pino Suarez";
    )
) / 1000 AS distance;


--- coigo d eplatzi
-- Calculamos en kilometros con consultas anidadas
SELECT
ST_Distance_Sphere(
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Balderas"
    ),
    (
        SELECT `locations`.`location`
        FROM `locations`
        INNER JOIN `stations`
        ON `stations`.`id` = `locations`.`station_id`
        WHERE `stations`.`name` = "Pino Suarez"
    )
) / 1000 AS distance;