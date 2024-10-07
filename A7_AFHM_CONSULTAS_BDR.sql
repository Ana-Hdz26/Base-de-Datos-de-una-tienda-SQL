SELECT * FROM pedido
ORDER BY fecha;

SELECT id, nombre, apellido1, apellido2 FROM cliente;

SELECT cliente.id, cliente.nombre, cliente.apellido1, cliente.apellido2
FROM cliente
JOIN pedido ON cliente.id = pedido.id_cliente;

SELECT
  cliente.id AS id_cliente,
  cliente.nombre AS nombre_cliente,
  cliente.apellido1 AS apellido1_cliente,
  cliente.apellido2 AS apellido2_cliente,
  pedido.id AS id_pedido,
  pedido.total,
  pedido.fecha,
  comercial.nombre AS nombre_comercial,
  comercial.apellido1 AS apellido1_comercial,
  comercial.apellido2 AS apellido2_comercial
FROM cliente
JOIN pedido ON cliente.id = pedido.id_cliente
JOIN comercial ON pedido.id_comercial = comercial.id;

SELECT
  pedido.id AS id_pedido,
  pedido.total,
  pedido.fecha,
  cliente.nombre AS nombre_cliente,
  cliente.apellido1 AS apellido1_cliente,
  cliente.apellido2 AS apellido2_cliente
FROM pedido
JOIN cliente ON pedido.id_cliente = cliente.id
WHERE cliente.nombre = 'Adela' AND cliente.apellido1 = 'Salas' AND cliente.apellido2 = 'Díaz';

SELECT COUNT(*) AS numero_pedidos
FROM pedido
JOIN comercial ON pedido.id_comercial = comercial.id
WHERE comercial.nombre = 'Daniel' AND comercial.apellido1 = 'Sáez' AND comercial.apellido2 = 'Vega';
