USE apple;

-- Consultas Simples
-- ¿Cuántos productos hay en la tienda de la Avenida de Andalucía?
SELECT COUNT(*) AS total_productos FROM disponer
WHERE id_tienda = 2;


-- ¿Cuál es el precio del iPhone 14  de 256GB?
SELECT * FROM iphone;
SELECT * FROM iphone
WHERE modelo = "Iphone 14" AND almacenamiento ="256GB"  ;

-- Consultas Complejas
-- 1. Listar los nombres de los clientes que han comprado un iPhone 14 o un iPhone 13.
SELECT nombre_completo
FROM cliente cl
JOIN pedido pd ON cl.id = pd.id_cliente
JOIN producto pt ON pd.id_producto = pt.id
WHERE pt.id = 1;

-- 2. Mostrar la información de los pedidos realizados en la tienda de la Calle La Plata.
SELECT * FROM pedido pd
JOIN tienda td ON td.id = pd.id_tienda
WHERE pd.id_tienda = 1;

-- 3. Obtener el total de ventas por producto.
SELECT pt.nombre_producto, SUM(pd.coste_total) AS total_ventas FROM pedido pd
JOIN producto pt ON pd.id_producto = pt.id
GROUP BY pt.nombre_producto;

-- 4. Listar los modelos de iPhone disponibles en la tienda de la Avenida de Andalucía, ordenados por precio.
SELECT ip.modelo, ip.precio FROM iphone ip
JOIN disponer dp ON ip.id_producto = dp.id_producto
WHERE ip.id_tienda = 2
ORDER BY ip.precio ASC;


-- 5. Mostrar el nombre del cliente que ha realizado el pedido de mayor importe.
SELECT cl.nombre_completo FROM cliente cl
JOIN pedido pd ON cl.id = pd.id_cliente
ORDER BY pd.coste_total DESC
LIMIT 1;

-- Calcular el beneficio total obtenido por la venta de iPads.
SELECT SUM(pd.coste_total) AS beneficio_total
FROM pedido pd
JOIN producto pr ON pd.id_producto = pr.id
WHERE pr.nombre_producto = "Ipad";


-- Mostrar el nombre del cliente que ha comprado más productos.
SELECT cl.nombre_completo, COUNT(*) AS total_productos
FROM cliente cl 
JOIN pedido pd ON cl.id = pd.id_cliente
GROUP BY cl.id
ORDER BY total_productos DESC
LIMIT 1;


-- Obtener la lista de productos que no se han vendido en ninguna tienda.
SELECT pr.nombre_producto
FROM producto pr
JOIN pedido pd ON pr.id = pd.id_producto
WHERE pd.cod_pedido IS NULL;


