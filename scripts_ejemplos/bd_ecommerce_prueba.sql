show databases;
CREATE DATABASE ecommerce_C;
use ecommerce_c;
CREATE TABLE usuario (id INT auto_increment primary key,
nombre varchar (70) not null,
email varchar (150) unique not null,
pass varchar(100) not null,
createdo date default (current_date())
);

select * from usuario;
describe usuario;

CREATE TABLE productos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	descripcion TEXT,
	precio DECIMAL(10,2)  CHECK (precio > 0),
	stock INT DEFAULT 0,
	createado DATE DEFAULT (CURRENT_DATE)
);
select * from productos;
describe productos;
SELECT VERSION(), CURRENT_DATE;

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	user_id INT NOT NULL,
	product_id INT NOT NULL,
	cantidad INT DEFAULT 1,
	total DECIMAL(10,2),
	fecha_orden DATE DEFAULT (CURRENT_DATE),
	FOREIGN KEY (user_id) REFERENCES usuario(id),
	FOREIGN KEY (product_id) REFERENCES productos(id)
);

describe pedidos;

select * from usuario;
show tables;
DESCRIBE usuario;


INSERT INTO usuario (nombre, email, pass,telefono)
VALUES 
('Claudio Peña', 'info@sergiecode.com', 'ABCabc123,.-','7665354'),
('Ricardo Darin', 'ricardo@darin.com', 'elsecretodetusojos','766589745'),
('Jenna Ortega', 'wednesday@addams.com', 'merlinamiercoles','766125896');

INSERT INTO usuario (nombre, email, pass)
VALUES 
('Jose Angel Arteaga', 'info@gmail.com', 'abc123Jose');

drop table usuario;

drop table productos;

drop table pedidos;

show tables;

ALTER TABLE usuario ADD COLUMN telefono VARCHAR(20);

ALTER TABLE usuario DROP COLUMN telefono;

ALTER TABLE pedidos ADD CONSTRAINT cantidad CHECK (cantidad > 0);
DESCRIBE pedidos;

show create table pedidos;
