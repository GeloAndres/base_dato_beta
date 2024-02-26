USER metro_cdmx;

SELECT * FROM `lines`;

SELECT 2 + 2 AS geloncio;

SELECT AVG(year) FROM `trains`;


--juntar TABLESPACE
SELECT 
`line`.`name`,
`trains`.`serial_number`
FROM `lines`
INNER JOIN `trains`
ON `lines`.`id` = `trains`.`line_id`; 