CREATE TABLE `Region` (
	`Nombre` TEXT(30) NOT NULL,
	`Nro_region` int(2) NOT NULL AUTO_INCREMENT UNIQUE,
	PRIMARY KEY (`Nro_region`)
);

CREATE TABLE `Tipo comida` (
	`Nombre` TEXT(30) NOT NULL,
	`Id_comida` int(2) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`Id_comida`)
);

CREATE TABLE `Restaurant` (
	`Nombre` TEXT(50) NOT NULL,
	`Id_restaurant` int(4) NOT NULL AUTO_INCREMENT,
	`Id_comida` int(2) NOT NULL,
	`Nro_region` int(2) NOT NULL,
	PRIMARY KEY (`Id_restaurant`)
);

CREATE TABLE `Pedido` (
	`Nombre_cliente` TEXT(50) NOT NULL,
	`Id_pedido` int(4) NOT NULL AUTO_INCREMENT,
	`Id_restaurant` int(4) NOT NULL AUTO_INCREMENT,
	`Direccion` TEXT(50) NOT NULL,
	`Monto_pedido` int(6) NOT NULL,
	PRIMARY KEY (`Id_pedido`)
);

CREATE TABLE `Producto` (
	`Nombre_producto` TEXT(50) NOT NULL,
	`Id_restaurant` int(4) NOT NULL,
	`Id_producto` bigint NOT NULL AUTO_INCREMENT,
	`Precio_producto` int(6) NOT NULL,
	PRIMARY KEY (`Id_producto`)
);

CREATE TABLE `Cliente` (
	`Nombre_cliente` TEXT(50) NOT NULL,
	`Id_cliente` int(5) NOT NULL AUTO_INCREMENT,
	`Edad` int(3) NOT NULL,
	`Direccion` TEXT(50) NOT NULL,
	PRIMARY KEY (`Id_cliente`)
);

ALTER TABLE `Restaurant` ADD CONSTRAINT `Restaurant_fk0` FOREIGN KEY (`Id_comida`) REFERENCES `Tipo comida`(`Id_comida`);

ALTER TABLE `Restaurant` ADD CONSTRAINT `Restaurant_fk1` FOREIGN KEY (`Nro_region`) REFERENCES `Region`(`Nro_region`);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk0` FOREIGN KEY (`Id_restaurant`) REFERENCES `Restaurant`(`Id_restaurant`);

ALTER TABLE `Pedido` ADD CONSTRAINT `Pedido_fk1` FOREIGN KEY (`Direccion`) REFERENCES `Cliente`(`Direccion`);

ALTER TABLE `Producto` ADD CONSTRAINT `Producto_fk0` FOREIGN KEY (`Id_restaurant`) REFERENCES `Restaurant`(`Id_restaurant`);

