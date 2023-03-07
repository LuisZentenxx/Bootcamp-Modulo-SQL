INSERT INTO ventas (comprador,vendedor,cant_articulos,subtotal,impuesto,total)
VALUES
("LUIS", "SONIA GARRIDO", 5, 2500, 1000, 3500),
("LUCAS", "SONIA GARRIDO", 3, 4000, 1000, 5000),
("LUCAS", "MARIA", 10, 8500, 2000, 10500),
("ANDREA", "ISMAEL", 2, 890, 500, 1390),
("JOCELYN", "MARIA", 4, 1000, 1000, 2000),
("FRANCO" , "SONIA GARRIDO", 2, 4000, 2000, 6000),
("ASHLEY", "AMBAR", 3, 1500, 1000, 2500),
("MIKEL", "SARA", 4, 4000, 1500, 5500),
("FABIOLA", "KEVIN", 10, 8000, 2000, 10000);

/*1.-Una consulta que permita obtener todos los registros de la tabla tales que la cantidad de 
artículos sea mayor que 2, devolviendo todos sus campos */

SELECT * FROM ventas
WHERE cant_articulos > 2;

/*2.-Una consulta que permita obtener todos los registros de la tabla tales que el subtotal sea 
menor que 1000, desplegando solo el ID de venta, el comprador y la cantidad de artículos*/

SELECT idventa, comprador, cant_articulos FROM ventas
WHERE subtotal < 1000;

/*3.-Una consulta que permite obtener los registros tales que el vendedor tiene el nombre 
“SONIA GARRIDO”, y que el valor total de la venta es mayor o igual a 5000. Debe indicar 
todos los campos de la tabla, pero en orden inverso al que se indica en la figura*/

SELECT total, impuesto, subtotal, cant_articulos, vendedor, comprador, idventa FROM ventas
WHERE vendedor = "SONIA GARRIDO";

/*4.-Una consulta que retorne los registros de la tabla tales que el comprador es “LUCAS”, o bien 
que el vendedor es “MARIA”. Despliegue solo los campos vendedor, comprador y total, en 
ese orden*/

SELECT vendedor, comprador, total FROM ventas
WHERE comprador = "LUCAS" OR vendedor = "MARIA";

/*5.-Una consulta que despliegue todos los campos de todos los registros tales que el 
identificador está en el siguiente conjunto: 2,5,6 y 9*/

SELECT * FROM ventas
WHERE idventa = 2 or idventa = 5 or idventa = 6 or idventa = 9;