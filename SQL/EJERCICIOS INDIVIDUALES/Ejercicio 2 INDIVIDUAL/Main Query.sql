/*1. Genere tres consultas de inserción de clientes; en las primeras dos deben ir incorporados
todos los datos, mientras que la restante debe estar considerado solo el identificador de
cliente, nombres y apellidos*/

INSERT INTO clientes (idcliente, nombres, apellidos, direccion, telefono)
VALUES (1, "Pedro", "Huerta", "Av 234", 34989534),
	   (2, "Andrea", "Perez", "Casas Rojas", 2320945);
       
INSERT INTO clientes (idcliente, nombres, apellidos)
VALUES (3, "Mario", "Mutis");

/*2. Genere cinco consultas de inserción de registros en la tabla ventas. No se pide un formato
específico de consulta de inserción. Estas ventas deben estar asociadas lógicamente a
alguno de los clientes antes creados.*/

INSERT INTO ventas (idventa, comprador, vendedor, cant_articulos, total, clientes_idcliente)
VALUES(1, "Pedro Huerta", "Web Store", 4, 20000, 1),
	  (2, "Andrea Perez", "Spider Store", 10, 100000, 2),
      (3, "Mario Mutis", "Audiomusica", 1, 200000, 3),
      (4, "Mario Mutis", "Music Anglo", 2, 60000, 3),
      (5, "Jennifer Diaz", "IKEA", 1, 20000, 1);

/*3. Genere una consulta que permita actualizar el campo total de la tabla ventas, igualándolo
a la suma del subtotal y el impuesto*/

UPDATE ventas
SET total = subtotal + impuesto;

/*4. Genere una consulta en la que se elimine un cliente a través de su identificador
(idcliente), y posterior a eso otra consulta que elimine todas las ventas asociadas a dicho
cliente (siempre de acuerdo con el campo idcliente)*/


DELETE FROM clientes
WHERE idcliente = 1;

DELETE FROM ventas
WHERE clientes_idcliente = 1;


