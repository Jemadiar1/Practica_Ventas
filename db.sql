create database if not exists clientes_clientesdb;
use clientes_db;

create table clientes(
id int auto_increment primary key,
nombre varchar(100),
email varchar(100),
telefono varchar(20)
);

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nombre_prod VARCHAR(100),
    stock INT,
    precio DECIMAL(10, 2)
);

CREATE TABLE ventas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL,
  id_producto INT NOT NULL,
  cantidad INT NOT NULL,
  precio_unitario DECIMAL(10,2) NOT NULL,
  total DECIMAL(10,2),
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id),
  FOREIGN KEY (id_producto) REFERENCES productos(id)
);