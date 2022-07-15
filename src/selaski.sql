-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 15-07-2022 a las 01:02:39
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `selaski`
--
CREATE DATABASE IF NOT EXISTS `selaski` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `selaski`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `IdOrder` int(11) NOT NULL AUTO_INCREMENT,
  `IdUser` int(11) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `DateTime` datetime NOT NULL,
  `ProviderName` varchar(255) NOT NULL,
  `DateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Observation` text NOT NULL,
  `TotalValue` float NOT NULL,
  `Status` varchar(255) NOT NULL,
  PRIMARY KEY (`IdOrder`),
  KEY `IdUser` (`IdUser`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`IdOrder`, `IdUser`, `OrderNumber`, `DateTime`, `ProviderName`, `DateCreated`, `Observation`, `TotalValue`, `Status`) VALUES
(1, 1, 4000, '2022-07-21 10:20:00', 'FEDEX', '2022-07-07 21:40:32', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10.45, '1'),
(2, 1, 5001, '2022-07-08 00:00:00', 'ZOOM', '2022-07-08 04:03:39', 'TEST', 100, 'Ingresado'),
(3, 1, 4001, '2022-07-08 00:00:00', 'DOMESA', '2022-07-08 05:33:38', 'TEST', 100, 'Ingresado'),
(4, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:14:06', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(5, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:14:37', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(6, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:15:13', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(7, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:15:55', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(9, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:18:28', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(10, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:20:37', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(11, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:20:51', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(12, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 14:21:50', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(13, 1, 5000, '2022-07-11 00:00:00', 'FEDEX', '2022-07-11 15:10:39', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(14, 1, 13456, '2022-07-11 00:00:00', 'Smirsoft', '2022-07-11 15:17:06', 'asdasdsad', 123, 'Ingresado'),
(16, 1, 5000, '2022-07-11 00:00:00', 'FEDEX', '2022-07-11 15:21:00', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(17, 1, 5000, '2022-07-08 00:00:00', 'FEDEX', '2022-07-11 15:22:22', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(18, 1, 5000, '2022-07-08 11:32:00', 'FEDEX', '2022-07-11 15:32:32', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(19, 1, 231, '2022-12-15 01:15:00', 'SmirSoft', '2022-07-11 15:37:48', 'test', 123, 'Ingresado'),
(20, 1, 5000, '2022-07-08 11:32:00', 'FEDEX', '2022-07-11 15:50:57', 'ESTA ORDEN ES ALTAMENTE FRAGIL POR FAVOR TENER PRECAUCIÓN.', 10, 'Ingresado'),
(21, 1, 12, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:54:15', 'asd', 12, 'asd'),
(22, 1, 12123213, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:54:22', 'asd', 12, 'asd'),
(23, 1, 12, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:26', 'asd', 12, 'asd'),
(24, 1, 123, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:34', 'asd', 12, 'asd'),
(25, 1, 123, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:37', 'asd', 123, 'asd'),
(26, 1, 123, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:39', 'asd', 1234, 'asd'),
(27, 1, 1234, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:42', 'asd', 1234, 'asd'),
(28, 1, 12345, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:45', 'asd', 12345, 'asd'),
(29, 1, 123456, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:47', 'asd', 12345, 'asd'),
(30, 1, 123456, '2022-07-20 11:54:00', 'asd', '2022-07-11 15:56:51', 'asd', 123456, 'asd'),
(32, 1, 1, '2022-02-01 12:03:00', 'asdasdasd', '2022-07-11 16:03:10', 'adasdasdsad', 123, 'asdasdasd'),
(34, 1, 1, '2022-07-12 12:06:00', 'aasdas', '2022-07-11 16:06:09', 'asdasdasd', 123, 'asdasd1'),
(35, 1, 1, '2022-07-12 12:06:00', 'aas', '2022-07-11 16:09:22', 'as', 123, 'as1'),
(36, 1, 12, '2022-07-13 12:13:00', 'ELPEPE', '2022-07-11 16:10:20', 'ESTE PRODUCTO ES DE ALTA CALIDAD TENER CUIDADO!!!', 10, 'Ingresado'),
(37, 2, 12, '2022-12-14 12:12:00', 'Smirsoft', '2022-07-11 16:10:57', 'EL PEPE PEPE', 12, 'Enviado'),
(38, 1, 2000, '2022-07-11 14:24:00', 'Smirsoft', '2022-07-11 17:24:03', 'EL PEPE', 1000, 'Ingresado'),
(39, 2, 3000, '2022-07-11 14:24:00', 'Smirsoft2', '2022-07-11 17:24:54', 'EL PEPE2', 1000, 'Ingresado2'),
(40, 1, 1000, '2022-07-12 15:28:00', 'Smirsoft', '2022-07-11 17:26:43', 'PEPE', 1000, 'Ingresado'),
(41, 1, 1200, '2022-07-13 13:34:00', 'Smirsoft2', '2022-07-11 17:33:52', 'Smirsss', 1000, 'Ingresado'),
(42, 1, 1, '2022-07-12 15:37:00', 'asdasd', '2022-07-11 17:36:00', 'asdasd', 123, 'asdasd'),
(43, 1, 123, '2022-07-14 15:43:00', 'Smirsoft', '2022-07-11 17:39:17', 'ELPEPE', 120, 'Ingresado'),
(44, 1, 5000, '2022-07-11 12:12:00', 'Selaski', '2022-07-11 17:43:55', 'Prueba', 1, 'Enviado'),
(45, 1, 1000, '2022-07-13 19:01:00', 'Jose Kaspar', '2022-07-11 18:00:09', 'EL PEPE', 100, '1'),
(46, 1, 1000, '2022-07-20 02:20:00', 'smirsoft', '2022-07-11 18:04:37', 'esto es inflamable', 10, '1'),
(47, 2, 12, '2022-07-15 14:10:00', 'Smirsoft2', '2022-07-11 18:06:24', 'asd23', 10, 'Ingresado'),
(48, 1, 1, '2022-07-22 17:12:00', 'Smirsoft', '2022-07-11 18:09:22', 'ELPEPE', 100, 'Ingresado'),
(49, 2, 10, '2022-07-12 17:13:00', 'asd12sad', '2022-07-11 18:10:54', '23asdasd', 10, 'Ingresado'),
(50, 2, 10, '2022-07-14 16:13:00', 'asdasd', '2022-07-11 18:12:04', 'asdasdads', 123213, 'Ingresado'),
(51, 1, 12, '2022-07-14 17:59:00', 'Advisor', '2022-07-11 19:57:20', 'El pepe', 12, 'Ingresado'),
(52, 8, 11, '2022-07-12 15:59:00', 'EL CHIGUIRE', '2022-07-11 19:57:48', 'EL PEPE', 10, 'INGRESADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordersproducts`
--

DROP TABLE IF EXISTS `ordersproducts`;
CREATE TABLE IF NOT EXISTS `ordersproducts` (
  `IdOrdersProducts` int(11) NOT NULL AUTO_INCREMENT,
  `IdOrder` int(11) NOT NULL,
  `ValueUnit` int(11) NOT NULL,
  `Unit` int(11) NOT NULL,
  `Description` text NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `QtyBox` int(11) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Volumen` int(11) NOT NULL,
  `Mark` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`IdOrdersProducts`),
  KEY `IdOrder` (`IdOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ordersproducts`
--

INSERT INTO `ordersproducts` (`IdOrdersProducts`, `IdOrder`, `ValueUnit`, `Unit`, `Description`, `SKU`, `Quantity`, `QtyBox`, `Weight`, `Volumen`, `Mark`, `Status`) VALUES
(1, 1, 100, 1, 'este producto es inflamable', '000312', 10, 3, 1000, 1000, 'GLUE TANK', 1),
(5, 45, 12, 1, 'asdasd', 'asd12', 1, 1, 12, 12, 'asdasd', 1),
(6, 45, 12, 1, 'asdasd', 'asd12', 1, 1, 12, 12, 'asdasd', 1),
(7, 46, 12, 12, 'asdasd', '1das', 12, 1, 1000, 1500, 'asd2', 1),
(8, 46, 12, 12, 'asdasd', '1das', 12, 1, 1000, 1500, 'asd2', 1),
(9, 49, 1, 1, 'asdds', 'asd12sa', 1, 1, 1, 1, 'asdsa123', 1),
(10, 1, 456, 564, 'asd564', '654asd', 654, 654, 654, 654, 'asd654', 1),
(11, 1, 456, 564, 'asd564', '654asd', 654, 654, 654, 654, 'asd654', 1),
(12, 1, 456, 564, 'asd564', '654asd', 654, 654, 654, 654, 'asd654', 1),
(14, 1, 654, 564, 'asd654', '654asd', 654, 654, 654, 564, '654asd', 1),
(15, 1, 654, 564, 'asd654', '654asd', 654, 654, 654, 564, '654asd', 1),
(16, 1, 1, 2, '3', '4', 5, 6, 7, 8, '9', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `IdUser` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`IdUser`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`IdUser`, `Name`, `Email`, `Status`) VALUES
(1, 'Jose Kaspar', 'jkasparm@gmail.com', 0),
(2, 'Pepe Gonzales', 'pgonzales@hotmail.com', 0),
(3, 'Angel Zambrano', 'azambrano@gmail.com', 1),
(5, 'Jose Trujillo', 'jtrujillo@gmail.com', 1),
(6, 'admin', 'admin@gmail.com', 1),
(7, 'admin2', 'admin2@gmail.com', 0),
(8, 'Pepe', 'pepe@gmail.com', 1),
(9, 'test123', 'asdasd@gmail.com', 1),
(12, 'test55', 'test55@outlook.com', 2),
(15, 'jk2', 'jk2@gmail.com', 1),
(17, 'josekaspar', 'jkasparm@gmail.com', 1),
(18, 'asdasdsad', 'asdasdasd', 0),
(19, 'jose kaspar', 'jkaspar123@gmail.com', 0);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `user` (`IdUser`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `ordersproducts`
--
ALTER TABLE `ordersproducts`
  ADD CONSTRAINT `ordersproducts_ibfk_1` FOREIGN KEY (`IdOrder`) REFERENCES `orders` (`IdOrder`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
