/*1. Calcula el número total de productos que hay en la tabla productos.*/

SELECT COUNT(id) 'Total Productos' FROM producto;

/*2. Calcula el número total de fabricantes que hay en la tabla fabricante.*/

SELECT COUNT(id) 'Total Fabricantes' FROM fabricante;

/*3. Calcula el número de valores distintos de identificador de fabricante aparecen en la tabla productos*/

SELECT id_fabricante FROM producto
GROUP BY id_fabricante;

/*4. Calcula la media del precio de todos los productos.*/

SELECT AVG(precio) 'Precio Promedio Productos' FROM producto;

/*5. Calcula el precio más barato de todos los productos.*/

SELECT MIN(precio) 'Precio Más Bajo Producto' FROM producto;

/*6. Calcula el precio más caro de todos los productos.*/

SELECT MAX(precio) 'Precio Más Alto Producto' FROM producto;

/*7. Lista el nombre y el precio del producto más barato.*/

SELECT nombre Producto, precio FROM producto
WHERE precio = (SELECT MIN(precio) FROM producto);

/*8. Lista el nombre y el precio del producto más caro.*/

SELECT nombre Producto, precio Precio FROM producto
WHERE precio = (SELECT MAX(precio) FROM producto);

/*9. Calcula la suma de los precios de todos los productos.*/

SELECT SUM(precio) 'Total de precios' FROM producto;

/*10. Calcula el número de productos que tiene el fabricante Asus.*/

SELECT COUNT(p.nombre) 'Cantidad Productos' FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante
WHERE f.nombre IN ('Asus');

/*11. Calcula la media del precio de todos los productos del fabricante Asus.*/

SELECT AVG(p.precio) 'Promedio Precio ASUS' FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante
WHERE f.nombre IN ('Asus');

/*12. Calcula el precio más barato de todos los productos del fabricante Asus.*/


SELECT MIN(p.precio) 'Minimo Precio ASUS' FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante
WHERE f.nombre IN ('Asus');

/*13. Calcula el precio más caro de todos los productos del fabricante Asus.*/

SELECT MAX(p.precio) 'Maximo Precio ASUS' FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante
WHERE f.nombre IN ('Asus');

/*14. Calcula la suma de todos los productos del fabricante Asus.*/

SELECT SUM(p.precio) 'Total Precio ASUS' FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante
WHERE f.nombre IN ('Asus');


/*15. Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene
el fabricante Crucial.*/

/*16. Muestra el número total de productos que tiene cada uno de los fabricantes. El listado también
debe incluir los fabricantes que no tienen ningún producto. El resultado mostrará dos columnas,
una con el nombre del fabricante y otra con el número de productos que tiene. Ordene el
resultado descendentemente por el número de productos.*/

SELECT f.nombre Fabricante, COUNT(p.id) 'Cantidad Productos' FROM fabricante f
LEFT JOIN producto p ON f.id = p.id_fabricante
GROUP BY f.nombre 
ORDER BY 'Cantidad Productos' DESC;

/*17. Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los
fabricantes. El resultado mostrará el nombre del fabricante junto con los datos que se solicitan.*/

SELECT f.nombre, MAX(p.precio) 'Mayor Precio', MIN(p.precio) 'Menor Precio', AVG(p.precio) 'Promedio Precio' FROM producto p
INNER JOIN fabricante f ON f.id = p.id_fabricante
GROUP BY f.nombre;

/*18. Muestra el precio máximo, precio mínimo, precio medio y el número total de productos de los
fabricantes que tienen un precio medio superior a 200. No es necesario mostrar el nombre del
fabricante, con el identificador del fabricante es suficiente.*/


SELECT f.id, MAX(precio) 'Mayor Precio', MIN(precio) 'Menor Precio', AVG(precio) Promedio, COUNT(p.id) 'Producto sobre 200' FROM producto p 
INNER JOIN fabricante f ON f.id = p.id_fabricante 
GROUP BY f.id HAVING Promedio > 200;

/*19. Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio y
el número total de productos de los fabricantes que tienen un precio medio superior a 200. Es
necesario mostrar el nombre del fabricante.*/

SELECT f.nombre, MAX(p.precio) 'Mayor Precio', MIN(p.precio)'Menor Precio', AVG(p.precio) Promedio, COUNT(p.id) 'Producto sobre 200' FROM producto p 
INNER JOIN fabricante f ON f.id = p.id_fabricante 
GROUP BY f.id HAVING Promedio > 200;

/*20. Calcula el número de productos que tienen un precio mayor o igual a 180.*/

SELECT COUNT(id) 'Cantidad Productos mayor a 180' FROM producto 
WHERE precio >= 180;

/*21. Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180.*/

SELECT COUNT(p.id_fabricante) FROM producto p
JOIN fabricante f ON f.id = p.id_fabricante
WHERE p.precio >= 180;

/*22. Lista el precio medio los productos de cada fabricante, mostrando solamente el identificador del fabricante.*/

/*23. Lista el precio medio los productos de cada fabricante, mostrando solamente el nombre del
fabricante.*/

/*24. Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150.*/

/*25. Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos.*/

/*26. Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada
uno con un precio superior o igual a 220 . No es necesario mostrar el nombre de los fabricantes
que no tienen productos que cumplan la condición.*/
