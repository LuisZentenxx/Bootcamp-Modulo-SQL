/*1.- Ingrese manualmente a la tabla Capacitación a lo menos 5 registros, mientras que en la tabla Asistentes debe ingresar manualmente 
al menos 10 registros, asociados a diferentes registros de capacitaciones*/

INSERT INTO capacitacion (idcapacitacion,rutcliente,dia,hora,lugar,duracion,cantidadasistentes)
VALUES (1,"12.122.232-4", "lunes", "12:20", "Valparaiso", 60, 40),
	   (2, "23.423.546-k", "miercoles", "11:40", "Viña del mar", 30, 20),
       (3, "34.342.113-1", "viernes", "10:50", "Coquimbo", 50, 50),
       (4, "45.113.034-3", "jueves", "12:40", "Iquique", 10, 10),
       (5, "12.214.595-4", "lunes", "23:00", "Online", 40, 20),
       (6, "23.345.342-k", "lunes", "11:50", "Lo Barnechea", 90, 40);

INSERT INTO asistentes (idasistente, nombres, edad, capacitacion_idcapacitacion)
VALUES(1, "Marcus Dawson", 40, 1),
	  (2, "Rick Flair", 65, 4),
      (3, "Shawn Michaels", 45, 2),
      (4, "Diego Maradona", 50, 3),
      (5, "Andrea Pirlo", 34, 5),
      (6, "Michelle Black", 30, 1),
      (7, "Pierre Jesaq", 23, 3),
      (8, "Mikel Zteven", 19, 1),
      (9, "Fleur Deuchant", 21, 1),
      (10, "Katerine Salcedo", 37, 3),
      (11, "Jansen Perez", 42, 3);

/*2.- Una consulta que despliegue todas las capacitaciones realizadas un lunes, que hayan
durado menos de una hora y media.*/

SELECT * from capacitacion
WHERE dia = 'lunes' AND duracion < 90;

/*3.- Una consulta que despliegue el listado de asistentes, mostrando el apellido y el nombre, 
y el RUT del cliente, lugar y duración de la capacitación a la que asistió.*/

SELECT a.nombres, c.rutcliente, c.lugar, c.duracion
FROM capacitacion c
JOIN asistentes a
ON a.capacitacion_idcapacitacion = c.idcapacitacion;

/*4.- Una consulta que despliegue el listado de capacitaciones mostrando RUT del cliente, día 
y hora, tales que la cantidad de asistentes registrada en el campo cantasistentes no 
coincidacon la cantidad existente en la tabla Asistentes.*/

SELECT c.rutcliente, c.dia, c.hora FROM capacitacion c
WHERE c.cantidadasistentes <> (SELECT COUNT(*) FROM asistentes a
    WHERE a.capacitacion_idcapacitacion = c.idcapacitacion);

/*5.- Una consulta que muestre el listado de capacitaciones que tengan más de tres 
asistentes registrados en la tabla respectiva. De la tabla de capacitaciones debe mostrar 
el lugar, la duración, el día y la hora.*/

SELECT c.lugar, c.duracion, c.dia, c.hora
FROM capacitacion c
INNER JOIN (
    SELECT capacitacion_idcapacitacion, COUNT(*) as cantidadAsistentes
    FROM asistentes
    GROUP BY capacitacion_idcapacitacion
    HAVING COUNT(*) > 3) a ON c.idcapacitacion = a.capacitacion_idcapacitacion;

