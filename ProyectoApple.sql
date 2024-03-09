DROP DATABASE IF EXISTS apple;
CREATE DATABASE apple;
SHOW DATABASES;
USE apple;

CREATE TABLE tienda(
	id INT PRIMARY KEY AUTO_INCREMENT,
	direccion VARCHAR(100),
	num_trabajadores INT 


);

DESCRIBE tienda;

CREATE TABLE producto(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_producto VARCHAR(20)

);

DESCRIBE producto;

CREATE TABLE disponer(
	id_tienda INT ,
	id_producto INT,
	direccion_tienda VARCHAR(100),


CONSTRAINT pk_disponer PRIMARY KEY(id_tienda, id_producto),
CONSTRAINT fk_tienda FOREIGN KEY(id_tienda) REFERENCES tienda(id),
CONSTRAINT fk_producto FOREIGN KEY(id_producto) REFERENCES producto(id)
);

DESCRIBE disponer;

CREATE TABLE cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_completo VARCHAR(100),
	email VARCHAR(100),
	fecha_compra DATE

);

DESCRIBE cliente;


CREATE TABLE comprar(
	id_cliente INT ,
	id_producto INT,


CONSTRAINT pk_comprar PRIMARY KEY(id_cliente,id_producto),
CONSTRAINT fk_comprar_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id),
CONSTRAINT fk_comprar_producto FOREIGN KEY (id_producto) REFERENCES producto(id)
 
);

DESCRIBE comprar;

CREATE TABLE pedido(
	cod_pedido INT PRIMARY KEY AUTO_INCREMENT,
	fecha_pedido DATE,
	id_producto INT,
	direccion_entrega VARCHAR(100),
	coste_total DECIMAL(5,2),
	id_cliente INT,


CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id),
CONSTRAINT fk_producto_pedido FOREIGN KEY(id_producto) REFERENCES producto(id)
);

DESCRIBE pedido;


CREATE TABLE plataforma(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_plataforma VARCHAR(30),
	coste_mensual DECIMAL(5,2)

);

DESCRIBE plataforma;



CREATE TABLE proveedor(
	id_proveedor INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30),
	dni CHAR(9)
);

DESCRIBE proveedor;


CREATE TABLE iphone(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT ,
	modelo VARCHAR(20),
	color VARCHAR(20),
	almacenamiento VARCHAR(20),
	precio DECIMAL(6,2),

CONSTRAINT fk_iphone FOREIGN KEY (id_producto) REFERENCES producto(id) 	
);

DESCRIBE iphone;

CREATE TABLE macbook(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT,
	modelo VARCHAR(20),
	color VARCHAR(20),
	almacenamiento VARCHAR(20),
	tipo_chip VARCHAR(20),
	precio DECIMAL(6,2),

CONSTRAINT fk_macbook FOREIGN KEY (id_producto) REFERENCES producto(id) 	
);

DESCRIBE macbook;


CREATE TABLE ipad(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT ,
	modelo VARCHAR(20),
	color VARCHAR(20),
	almacenamiento VARCHAR(20),
	precio DECIMAL(6,2),

CONSTRAINT fk_ipad FOREIGN KEY (id_producto) REFERENCES producto(id) 	
);

DESCRIBE ipad;


CREATE TABLE airpod(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT ,
	modelo VARCHAR(30),
	color VARCHAR(20),
	precio DECIMAL(6,2),

CONSTRAINT fk_airpod FOREIGN KEY (id_producto) REFERENCES producto(id) 	
);

DESCRIBE airpod;



CREATE TABLE watch(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT,
	modelo VARCHAR(30),
	tipo_correa VARCHAR(30),
	precio DECIMAL(6,2),

CONSTRAINT fk_watch FOREIGN KEY (id_producto) REFERENCES producto(id) 	
);

DESCRIBE watch;


CREATE TABLE tvstore(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_producto INT ,
	modelo VARCHAR(20),
	color VARCHAR(20),
	precio DECIMAL(6,2),

CONSTRAINT fk_tvstore FOREIGN KEY (id_producto) REFERENCES producto(id) 	
);

DESCRIBE tvstore;

INSERT INTO tienda (direccion, num_trabajadores) VALUES
	('Calle La PLata, 23', 10),
	('Avenida de Andalucía, 56', 15);


SELECT * FROM tienda;

INSERT INTO producto (nombre_producto) VALUES
	('iPhone'),
	('Macbook'),
	('iPad'),
	('Airpod'),
	('Apple Watch'),
	('Apple TV');

SELECT * FROM producto;


INSERT INTO disponer (id_tienda, id_producto, direccion_tienda) VALUES
	(1, 1, 'Calle La Plata, 23'),
	(1, 2, 'Calle Duquesa de Alba, 48'),
	(2, 3, 'Avenida de Andalucía, 56');

SELECT * FROM disponer;


INSERT INTO cliente (nombre_completo, email, fecha_compra) VALUES
	('Pablo Conde', 'pablocondemellado04@gmail.com', '2024-03-08'),
	('Fran Ruiz', 'franruiz04@gmail.com', '2024-03-07');

SELECT * FROM cliente;


INSERT INTO pedido (fecha_pedido, id_producto, direccion_entrega, coste_total, id_cliente) VALUES
	('2024-03-08', 1, 'Calle del Olmo, 4', 750.00, 1),
	('2024-03-08', 1, 'Calle Roberto Leal, 4', 999.00, 2);


SELECT * FROM pedido;

INSERT INTO plataforma (nombre_plataforma, coste_mensual) VALUES
	('AppleTV', 39.99),
	('AppleMusic', 34.95);

SELECT * FROM plataforma;


INSERT INTO proveedor (nombre, dni) VALUES
	('Suministros Apple', '12345678B'),
	('MacLife', '87654321C');

SELECT * FROM proveedor;


INSERT INTO iphone (id_producto, modelo, color,almacenamiento, precio) VALUES
	(1, "Iphone 15", " Azul","128GB" ,959.00),
	(1, "Iphone 15", " Rosa","256GB", 1089.00 ),
	(1, "Iphone 15", " Amarillo","512GB", 1339.00 ),
	(1, "Iphone 14", " Blanco estrella ","128GB", 859.00 ),
	(1, "Iphone 14", " Purpura","256GB", 989.00 ),
	(1, "Iphone 14", " Medianoche","512GB", 1239.00 ),
	(1, "Iphone 13", " Blanco estrella","256GB", 869.00 ),
	(1, "Iphone 13", " Azul", "128GB", 739.00 ),
	(1, "Iphone 13", " RED","256GB", 869.00 );

SELECT * FROM iphone;

INSERT INTO ipad (id_producto, modelo, color,almacenamiento, precio) VALUES
	(2, "Ipad Air ", " Azul","64GB" ,769.70),
	(2, "Ipad Air ", " Rosa","64GB" ,769.70),
	(2, "Ipad Air ", " Purpura","256GB" ,969.70),
	(2, "Ipad Pro ", " Plata","128GB" ,1049.70),
	(2, "Ipad Pro ", " Gris espacial","128GB" ,1049.70),
	(2, "Ipad Pro ", " Gris espacial","512GB" ,1429.70 ),
	(2, "Ipad Pro ", " Plata","1TB" ,1929.70 );
	

SELECT * FROM ipad;



INSERT INTO macbook (id_producto, modelo, color,almacenamiento,tipo_chip, precio) VALUES
	(3, "Macbook 13 pulgadas ", " Medianoche","256GB","CHIP M2" ,1199.00),
	(3, "Macbook 13 pulgadas ", " Blanco estrella","256GB","CHIP M2" ,1199.00),
	(3, "Macbook 13 pulgadas ", " Medianoche","512GB","CHIP M2" ,1429.00),
	(3, "Macbook 13 pulgadas ", " Medianoche","256GB","CHIP M3" ,1299.00),
	(3, "Macbook 13 pulgadas ", " Medianoche","512GB","CHIP M3" ,1529.00),
	(3, "Macbook 15 pulgadas ", " Medianoche","256GB","CHIP M3" ,1599.00);
	

SELECT * FROM macbook;

INSERT INTO airpod (id_producto, modelo, color, precio) VALUES
	(4, "Airpod 2 generacion ", " Blanco",149.00),
	(4, "Airpod 3 generacion ", " Blanco",209.00),
	(4, "AirpodPro 2 generacion ", " Blanco",279.00);
	
	

SELECT * FROM airpod;



INSERT INTO watch (id_producto, modelo, tipo_correa, precio) VALUES
	(5, "AppleWacth 9 ", " Aluminio",449.00),
	(5, "AppleWacth 9 ", " Acero inoxidable",779.00),
	(5, "AppleWacth Ultra 2 ", " Correa Loop Alpine",899.00),
	(5, "AppleWacth Ultra 2 ", " Correa Ocean",899.00);
	
	

SELECT * FROM watch;