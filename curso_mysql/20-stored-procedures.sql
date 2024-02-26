use metro_cdmx;

DELIMITER //
CREATE PROCEDURE calculate_distance_betewwn_lines(
    IN stations_one POINT,
    IN station_two POINT,
    IN meters BOOLEAN
)
BEGIN

    IF meters THEN
    
        SELECT 
        ST_Distance_Sphere(stations_one, station_two) AS distances;
    ELSE

        SELECT
        ST_Distance_Sphere(stations_one, station_two) /1000 AS distances;
    
    END IF;

END //
DELIMITER ;

CALL  calculate_distance_betewwn_lines(POINT(-99.14433718,19.40705104),POINT(-99.173702, 19.40702104), false);