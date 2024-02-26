CREATE TABLE linea_estaciones (
  linea_id INTEGER NOT NULL,
  estacion_id INTEGER NOT NULL,
  FOREIGN KEY(linea_id) REFERENCES lineas(id),
  FOREIGN KEY(estacion_id) REFERENCES estaciones(id),
  PRIMARY KEY(linea_id, estacion_id)
);

