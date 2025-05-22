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