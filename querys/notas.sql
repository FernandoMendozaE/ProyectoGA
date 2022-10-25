-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2022 a las 15:06:44
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lugaresturisticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `Id` int(10) NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nota` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`Id`, `usuario`, `nota`) VALUES
(1, 'Angela Carretero', '10/13'),
(2, 'Pablo Acha', '12/13'),
(3, 'Ailynn Aguilar', '1/13'),
(4, 'Alex Alave', '4/13'),
(5, 'Paola Almendras ', '10/13'),
(6, 'Sergio Anave', '5/13'),
(7, 'Paula Andrade ', '6/13'),
(8, 'Jhasmin Arce', '8/13'),
(9, 'Evelyn Barrios ', '9/13'),
(10, 'Narda Barron ', '1/13'),
(11, 'Diego Cabrera', '10/13'),
(12, 'Paulina Caceres ', '12/13'),
(13, 'Sabrina Calatayud', '11/13'),
(14, 'Andres Calvo', '4/13'),
(15, 'Gisela Canchari', '5/13'),
(16, 'Angel Castillo ', '1/13'),
(17, 'Alexandra Encinas ', '10/13'),
(18, 'Andrea Fernandez', '10/13'),
(19, 'Danilo Fernandez', '10/13'),
(20, 'Maite Flores', '10/13'),
(21, 'Alejandra Huanca', '9/13'),
(22, 'Hassan Lopez', '10/13'),
(23, 'Tatiana Matias', '8/13'),
(24, 'Diego Medina ', '7/13'),
(25, 'Valeria Miranda ', '10/13'),
(26, 'Zenobio Ortiz', '10/13'),
(27, 'Andy Ortuño', '6/13'),
(28, 'Marco Padilla ', '10/13'),
(29, 'Iker Parrado', '10/13'),
(30, 'Amilkar Poma', '3/13'),
(31, 'Boris Pozo', '2/13'),
(32, 'Geraldine Rocha', '10/13'),
(33, 'Camilo Rodriguez', '5/13'),
(34, 'Martina Saavedra ', '10/13'),
(35, 'Paolo Ticona ', '9/13'),
(36, 'Michelle Vargas', '8/13'),
(37, 'Rafael Zapata ', '10/13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
