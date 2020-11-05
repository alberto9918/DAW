drop database proyectojsp;
create database proyectojsp;
use proyectojsp;
CREATE TABLE `USUARIOS` (
	`ID` integer AUTO_INCREMENT,
  `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20)  NOT NULL,
  `USUARIO` varchar(20) NOT NULL,
  `CONTRASENA` varchar(20) NOT NULL,
  `PAIS` varchar(20),
  `TECNOLOGIA` varchar(20),
   PRIMARY KEY (`ID`)
);

CREATE TABLE `EMPLEADOS` (
	`IDEMP` integer AUTO_INCREMENT,
    `NOMBRE` varchar(20) NOT NULL,
  `APELLIDO` varchar(20)  NOT NULL,
  `PUESTO` varchar(20) NOT NULL,
  `SALARIO` LONG NOT NULL,
   PRIMARY KEY (`IDEMP`)
);



insert into EMPLEADOS (nombre,apellido,puesto,salario) value ("luis","gómez","jefe ventas",4000);
insert into EMPLEADOS (nombre,apellido,puesto,salario) value ("Eloisa","Pómez","directora comercial",4400);
insert into EMPLEADOS (nombre,apellido,puesto,salario) value ("Andrés","Ilo","comercial",1500);




CREATE TABLE `CORREDORES` (
  `dorsal` varchar(5) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `marca` double DEFAULT NULL,
  `carrera` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Dorsal`)
);

INSERT INTO `CORREDORES` (`Dorsal`,`Nombre`,`Apellidos`,`Marca`,`Carrera`) VALUES ('1036','Manuel','Sanchez',3,'Maraton Sevilla');
INSERT INTO `CORREDORES` (`Dorsal`,`Nombre`,`Apellidos`,`Marca`,`Carrera`) VALUES ('1304','Ana','Gamaza',1,'Maraton Sevilla');
INSERT INTO `CORREDORES` (`Dorsal`,`Nombre`,`Apellidos`,`Marca`,`Carrera`) VALUES ('2030','Jesus','Lopez',2,'Media Sevilla');
INSERT INTO `CORREDORES` (`Dorsal`,`Nombre`,`Apellidos`,`Marca`,`Carrera`) VALUES ('2304','Javier','Gonzalez',1,'Media Sevilla');
INSERT INTO `CORREDORES` (`Dorsal`,`Nombre`,`Apellidos`,`Marca`,`Carrera`) VALUES ('3045','Susana','Martin',2,'Maraton Sevilla');
