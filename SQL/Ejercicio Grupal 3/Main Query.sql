/*1. Haga las consultas necesarias para convertir las llaves primarias de cada tabla en campos
autonuméricos.*/

ALTER TABLE `empresa`.`capacitacion` 
CHANGE COLUMN `idcapacitacion` `idcapacitacion` INT NOT NULL AUTO_INCREMENT ;

ALTER TABLE `empresa`.`asistentes` 
CHANGE COLUMN `idasistentes` `idasistentes` INT NOT NULL AUTO_INCREMENT ;

/*2. Genere 3 consultas que permitan ingresar datos sobre la tabla Capacitación, sin asignar el
campo idcapacitacion en la consulta misma.*/

INSERT INTO capacitacion (rutcliente,dia,hora,lugar,duracion,cantidad_asistentes)
VALUES("12.234.253-5", "Lunes", "23:00", "Valparaiso", 120, 40),
	  ("23.103.001-K", "Viernes", "19:00", "Concepcion", 50, 20),
      ("11.135.345-4", "Miercoles", "20:30", "Viña del Mar", 30, 10),
      ("14.444.242-2", NULL, NULL, "Peñablanca", 45, 15),
      ("34.311.434-1", NULL, NULL, "La Florida", 60, 45),
      ("12.234.123-2", NULL, NULL, "Sin Lugar", 0, 0),
      ("10.122.546-2" , NULL, NULL, "Sin Lugar", 0, 0);
      
/*3. Genere 5 consultas que permitan ingresar datos sobre la xtabla Asistentes, sin asignar
elcampo idasistente en la consulta misma*/

INSERT INTO asistentes (nombres,edad,cap_idcapacitacion)
VALUES("Jorge Gonzales", 50, 1),
	  ("Claudio Narea", 40, 2),
      ("Miguel Tapia", 45, 3),
      ("Augusto Pinochet", 80, 2),
      ("Sebastian Piñera", 64, 1);
      
/*4. Realice una consulta que permita establecer una restricción de tipo única sobre el campo
nombres de la tabla Asistentes*/

ALTER TABLE `empresa`.`asistentes` 
CHANGE COLUMN `nombres` `nombres` VARCHAR(100) NULL;

/*5. Realice una consulta que permita actualizar los campos dia a “01/01/2020” y hora a “00:00”
de la tabla capacitación, para todos aquellos registros tales que el día y la hora son igual a
un valor nulo*/

UPDATE capacitacion
SET dia = "01/01/2020", hora = "00:00"
WHERE dia IS NULL AND hora IS NULL;

/*6. Realice una consulta que permita eliminar todas aquellas capacitaciones que no tienen
asistentes. Esto es, aquellas capacitaciones con el campo cantidadasistentes igual a 0, y sin
registros relacionados en la tabla*/

DELETE FROM capacitacion
WHERE cantidad_asistentes = 0;