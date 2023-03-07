/*1.-Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los
productos de la base de datos*/

SELECT p.nombre Producto, p.precio Precio, f.nombre Fabricante FROM producto p
JOIN fabricante f;

/*2.-Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los
productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden
alfabético.*/

SELECT p.nombre Producto, p.precio Precio, f.nombre Fabricante FROM producto p
JOIN fabricante f
ORDER BY f.nombre;

/*3.-. Devuelve una lista con el identificador del producto, nombre del producto, identificador del
fabricante y nombre del fabricante, de todos los productos de la base de datos*/

SELECT p.id, p.nombre, f.id, f.nombre FROM producto p
JOIN fabricante f;

/*4.-Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato*/

SELECT p.nombre, p.precio, f.nombre FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE p.precio = (SELECT MIN(precio) FROM producto);

/*5.-Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.*/

SELECT p.nombre, p.precio, f.nombre FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id
WHERE p.precio = (SELECT MAX(precio) FROM producto);

/*6.-Devuelve una lista de todos los productos del fabricante Lenovo.*/

SELECT * FROM producto
JOIN fabricante f ON f.nombre LIKE '%Lenovo%';

/*7.-Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200*/

SELECT * FROM producto p
JOIN fabricante f ON f.nombre LIKE '%Crucial%' AND p.precio > 200;

/*8.-Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Sin utilizar el operador IN.*/

SELECT * FROM producto p
JOIN fabricante f ON f.nombre LIKE '%Hewlett-Packard%' OR f.nombre LIKE '%Seagate%' OR f.nombre LIKE'%Asus%';

/*9.-Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett-Packard y Seagate. Utilizando el operador IN.*/

SELECT * FROM producto p
JOIN fabricante f ON f.nombre IN ('Hewlett-Packard', 'Seagate', 'Asus');

/*10.-Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e.*/

SELECT p.nombre, p.precio, f.nombre Fabricante FROM producto p
JOIN fabricante f ON f.nombre LIKE '%e';

/*11. Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre*/

SELECT p.nombre, p.precio, f.nombre Fabricante FROM producto p
JOIN fabricante f ON f.nombre LIKE '%w%';

/*12. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180.
Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).*/

SELECT p.nombre, p.precio, f.nombre Fabricante FROM producto p
JOIN fabricante f ON p.precio >=180
ORDER BY p.precio desc, p.nombre asc;

/*13. Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos
fabricantes que tienen productos asociados en la base de datos.*/

SELECT f.id, f.nombre FROM fabricante f
JOIN producto p ON f.id = p.id_fabricante
GROUP BY f.id;
