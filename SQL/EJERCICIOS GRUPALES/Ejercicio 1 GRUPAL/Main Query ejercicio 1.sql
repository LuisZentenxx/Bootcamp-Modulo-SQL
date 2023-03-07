/*1.- Ingrese manualmente a la tabla a lo menos 10 registros.*/

INSERT INTO capacitacion(idcapacitacion,rut,dia,hora,lugar,duracion,cant_asistentes)
VALUES (001, "20.013.606-3", "Lunes", "22:20", "La Florida", 120, 60),
	   (002, "11.355.643-6", "Viernes", "14:30", "Santiago", 80, 40),
       (003, "56.112.054-K", "Jueves", "12:20", "La Florida", 100, 35),
       (004, "67.124.350-1", "Miercoles", "11:40", "Viña del Mar", 45, 20),
       (005, "78.345.232-5", "Lunes", "15:30", "Villa Alemana", 60, 15),
       (006, "20.145.342-3", "Martes", "20:15", "La Florida", 30, 25),
       (007, "80.324.233-3", "Viernes", "19:35", "Iquique", 15, 5),
       (008, "23.103.980-K", "Miercoles", "10:30", "Valdivia", 20, 60),
       (009, "33.130.345-4", "Lunes", "12:00", "Valparaiso", 10, 70),
       (010, "12.012.435-5", "Viernes", "11:40", "Tobalaba", 15, 50);
       
       UPDATE capacitacion
       SET cant_asistentes = 40
       WHERE idcapacitacion = 005;
       
/*2.- 1. Una consulta que obtenga todos los registros de la tabla sin filtro alguno, mostrando las 
columnas identificador, hora, dia y rut de cliente*/

SELECT idcapacitacion, hora, dia, rut FROM capacitacion;

/*3.- 2. Una consulta que obtenga todas las capacitaciones que duran una hora, y que tuvieron más de 
30 asistentes. Debe desplegar todas las columnas sin un orden solicitado*/

SELECT idcapacitacion, rut, dia, hora, lugar, duracion, cant_asistentes FROM capacitacion
WHERE duracion = 60 AND cant_asistentes > 30;

/*4. Una consulta que obtenga todas las capacitaciones que han durado más de media hora, 
pero menos de una hora y media, o bien que sus asistentes es menos que 10 personas. Se pide 
mostrar el identificador de una tabla, y los campos indicados en la consulta.*/

SELECT idcapacitacion, duracion, cant_asistentes from capacitacion 
WHERE duracion between 30 and 90 or cant_asistentes < 10;

/*5. Una consulta que obtenga las capacitaciones de los lunes, miércoles y viernes, que 
tengan más de 50 asistentes y que hayan durado menos de media hora. Debe desplegar los 
campos que estime prudente.*/

SELECT idcapacitacion, dia, duracion, cant_asistentes from capacitacion
WHERE dia IN ('Lunes', 'Miercoles', 'Viernes') and cant_asistentes > 50 and duracion < 30;