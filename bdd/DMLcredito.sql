BEGIN TRANSACTION;

CREATE TABLE producto
(
  pr_producto INTEGER PRIMARY KEY,
  pr_nombre varchar(32) NOT NULL,
  pr_fecha_ini varchar(16) NOT NULL,
  pr_fecha_fin varchar(16) NULL,
  pr_estado  varchar(10) NOT NULL
);
INSERT INTO `producto` (pr_producto, pr_nombre, pr_fecha_ini, pr_fecha_fin, pr_estado) VALUES (1, 'INT','01/01/2017',NULL,'VIGENTE');
INSERT INTO `producto` (pr_producto, pr_nombre, pr_fecha_ini, pr_fecha_fin, pr_estado) VALUES (2, 'IMO','01/01/2017',NULL,'VIGENTE');



CREATE TABLE rubro
(
  ru_producto INTEGER NOT NULL,
  ru_fecha_ini varchar(16) NOT NULL,
  ru_fecha_fin varchar(16) NULL,
  ru_estado varchar(10) NOT NULL,
  ru_porcentaje numeric NOT NULL,
  ru_maximo numeric NOT NULL, 
  ru_minimo numeric NOT NULL
);
INSERT INTO `rubro` (ru_producto,ru_fecha_ini,ru_fecha_fin,ru_estado,ru_porcentaje,ru_maximo,ru_minimo) VALUES (1, '01/01/2017',NULL,'VIGENTE', 8.0,12.0, 5);
INSERT INTO `rubro` (ru_producto,ru_fecha_ini,ru_fecha_fin,ru_estado,ru_porcentaje,ru_maximo,ru_minimo) VALUES (1, '01/01/2017',NULL,'VIGENTE',15.0,18.0,13);
COMMIT;
