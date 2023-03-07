/*Resuelva todas las consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN.*/

/*1. Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los
productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados.*/

SELECT f.nombre Fabricante, p.nombre Producto FROM fabricante f 
LEFT JOIN producto p ON f.id = p.id_fabricante;

/*2. Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado.*/

SELECT f.nombre Fabricante, p.nombre Producto FROM fabricante f
LEFT JOIN producto p ON f.id = p.id_fabricante 
WHERE p.id_fabricante IS NULL;

/*3. ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta*/

-- R: Al ejecutar la consulta se evidencia que en nuestra base de datos, si o si cada producto está relacionado con un fabricante.

SELECT * FROM producto p
LEFT JOIN fabricante f ON p.id_fabricante = f.id 
WHERE f.id IS NULL;
