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
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Id` int(10) NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`Id`, `usuario`, `clave`) VALUES
(1, 'Angela Carretero', 'carretero1325'),
(2, 'Pablo Acha', 'acha1226'),
(3, 'Ailynn Aguilar', 'aguilar1127'),
(4, 'Alex Alave', 'alave128'),
(5, 'Paola Almendras ', 'almendras9029'),
(6, 'Sergio Anave', 'anave8030'),
(7, 'Paula Andrade ', 'andrade7031'),
(8, 'Jhasmin Arce', 'arce532'),
(9, 'Evelyn Barrios ', 'barrios5032'),
(10, 'Narda Barron ', 'barron4034'),
(11, 'Diego Cabrera', 'cabrera3035'),
(12, 'Paulina Caceres ', 'caceres2036'),
(13, 'Sabrina Calatayud', 'navia1037'),
(14, 'Andres Calvo', 'calvo0038'),
(15, 'Gisela Canchari', 'canchari0140'),
(16, 'Angel Castillo ', 'castillo0141'),
(17, 'Alexandra Encinas ', 'encinas0141'),
(18, 'Andrea Fernandez', 'ramallo0143'),
(19, 'Danilo Fernandez', 'fernandez0144'),
(20, 'Maite Flores', 'flores0145'),
(21, 'Alejandra Huanca', 'huanca0146'),
(22, 'Hassan Lopez', 'lopez0147'),
(23, 'Tatiana Matias', 'matias0148'),
(24, 'Diego Medina ', 'medina0149'),
(25, 'Valeria Miranda ', 'miranda0250'),
(26, 'Zenobio Ortiz', 'ortiz0251'),
(27, 'Andy Ortuño', 'ortuño0252'),
(28, 'Marco Padilla ', 'padilla0253'),
(29, 'Iker Parrado', 'parrado0254'),
(30, 'Amilkar Poma', 'poma0255'),
(31, 'Boris Pozo', 'pozo0256'),
(32, 'Geraldine Rocha', 'rocha0357'),
(33, 'Camilo Rodriguez', 'rodriguez0358'),
(34, 'Martina Saavedra ', 'saavedra0359'),
(35, 'Paolo Ticona ', 'ticona0360'),
(36, 'Michelle Vargas', 'vargas0361'),
(37, 'Rafael Zapata ', 'zapata0362');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
