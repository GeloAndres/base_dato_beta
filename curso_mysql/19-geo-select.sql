--Calculamos en metros
SELECT ST_Distance_Sphere(
    POINT(-99.12541151, 19.42546738),
    POINT(-99.054375, 19.472534)
) AS distance;

--calculamos en kilometros

SELECT ST_Distance_Sphere(
    POINT(-99.12541151, 19.42546738),
    POINT(-99.054375, 19.472534)
) / 1000 AS distance;