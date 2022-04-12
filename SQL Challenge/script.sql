BEGIN;

\set id_producto 10
\set cantidad 10
\set id_cliente 5

-- Verificar el stock disponible 
SELECT * FROM products WHERE id = :id_producto AND CAST(stock AS Integer) > 0 ;

-- Verificar si se puede vender el producto
SELECT * FROM products WHERE id = :id_producto AND  available_for_selling = 'true' ;

-- Actualizando "stock" en producto.
UPDATE products SET stock = CAST(stock AS Integer) - :cantidad WHERE id = :id_producto;  

-- Registrando la venta en la tabla "ventas".
INSERT INTO ventas (id_cliente, id_producto, cantidad) VALUES (:id_cliente, :id_producto, :cantidad)