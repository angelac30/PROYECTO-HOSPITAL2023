CREATE DATABASE hospital;

USE hospital;

CREATE TABLE `medicos` (
  `cedula` int PRIMARY KEY,
  `nombres` varchar(50),
  `apellidos` varchar(50),
  `especialidad` varchar(50),
  `consultorio` char(3),
  `correo` varchar(50)
);

CREATE TABLE `pacientes` (
  `cedula` int PRIMARY KEY,
  `nombre` varchar(50),
  `apellido` varchar(100),
  `edad` int,
  `telefono` int
);

CREATE TABLE `cita_medica` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `cedula_paciente` int,
  `cedula_medico` int,
  `fecha` date
);

ALTER TABLE `cita_medica` ADD FOREIGN KEY (`cedula_paciente`) REFERENCES `pacientes` (`cedula`);

ALTER TABLE `cita_medica` ADD FOREIGN KEY (`cedula_medico`) REFERENCES `medicos` (`cedula`);

/*Prueba validar el funcionamiento del formulario agredar pacientes con edad negativa*/
INSERT INTO `pacientes` (`cedula`,`nombre`,`apellido`,`edad`,`telefono`) VALUES (1212232443, ''prueba'', ''negativa'', -15, 3128239)