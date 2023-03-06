/*1.- Una consulta que permita obtener todas las ventas tales que la suma entre el subtotal y el
impuesto difieren del total.*/

SELECT * FROM ventas
WHERE subtotal + impuesto != total;

/*2.- Una consulta que permita conocer la suma del total de todas las ventas registradas*/

SELECT SUM(total)  AS "TOTAL VENTAS REGISTRADAS" FROM ventas;

/*3.- Una consulta que permita conocer el listado de ventas de la cliente de nombre “Antonia Aranda”.*/

SELECT ventas.* FROM ventas
JOIN clientes ON ventas.clientes_idcliente = idcliente
WHERE clientes.idcliente = 1;

/*4.- Una consulta que despliegue el identificador del cliente, junto con su nombre y apellidos
juntos en un solo campo. Debe desplegar solo los clientes que no tienen una dirección registrada*/

SELECT idcliente, CONCAT(nombres, ' ', apellidos) AS nombre 
FROM clientes
WHERE direccion IS NULL;

/*5.- Una consulta que permita saber, al mismo tiempo, el monto de la mínima venta y máxima
venta registrada en la tabla respectiva.*/

SELECT MIN(total) "MONTO MÍNIMO VENTA", MAX(total) "MONTO MÁXIMO VENTA" FROM ventas;