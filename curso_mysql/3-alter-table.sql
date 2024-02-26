USE metro_cdmx;

ALTER TABLE `stations`
MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(`id`);
-- ADD CONSTRAINT 'modulo_procesadores_id_foreign' 
--FOREING KEY ('LINE_ID') REFERENCES 'line'('id');

ALTER TABLE `modulo_procesadores` `serie` to `nombre`;

ALTER TABLE `modulo_procesadores` CHANGE `serie` `id` VARCHAR(50);
--corregida por la IA jajajaj
-- /CHANGE/ se utilzia para cambiar nombres de columnas
--cambie "nombre por "id" porque ya tenia "nombre" jajajjaj