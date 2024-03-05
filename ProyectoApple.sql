DROP DATABASE IF EXISTS apple;
CREATE DATABASE apple;
SHOW DATABASES;
USE apple;

CREATE TABLE cliente( 
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30),
	apellidos VARCHAR(30),
	email VARCHAR(30),
	fecha_compra DATE

);

DESCRIBE cliente;


CREATE TABLE producto(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_producto VARCHAR(30),
	tipo_producto INT
);


DESCRIBE producto;


CREATE TABLE vendedor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_completo VARCHAR(50),
	tipo_empleado INT,
	tienda BOOLEAN
);

DESCRIBE vendedor;


CREATE TABLE proveedor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_completo VARCHAR(50)	
);

DESCRIBE proveedor;


CREATE TABLE categoria (
	id_categoria PRIMARY KEY AUTO_INCREMENT,
	nombre_categoria VARCHAR(20)
);

DESCRIBE categorias;


CREATE TABLE iphone(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_modelo VARCHAR(30),
	color_modelo VARCHAR(20),
	precio DECIMAL (5,2)
);

DESCRIBE iphone;


CREATE TABLE ipad(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_modelo VARCHAR(30),
	color_modelo VARCHAR(20),
	precio DECIMAL(5,2)

);


DESCRIBE ipad;



CREATE TABLE macbook(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_modelo VARCHAR(30),
	color_modelo VARCHAR(20),
	precio DECIMAL(5,2)

);

DESCRIBE macbook;


CREATE TABLE airpod(
	id INT PRIMARY KEY AUTO_INCREMENT,
	nombre_completo VARCHAR(30),
	color_modelo VARCHAR(20),
	precio DECIMAL(5,2)

);



DESCRIBE airpod;