-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2021 a las 19:41:16
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `arkfate`
--
CREATE DATABASE IF NOT EXISTS `arkfate` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `arkfate`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidadascension`
--

DROP TABLE IF EXISTS `habilidadascension`;
CREATE TABLE `habilidadascension` (
  `Cantidad` int(11) NOT NULL,
  `NomHabAsc` char(30) COLLATE utf8_spanish_ci NOT NULL,
  `CodHabAsc` int(11) NOT NULL,
  `CodSer` int(11) NOT NULL,
  `CodObj` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--

DROP TABLE IF EXISTS `objeto`;
CREATE TABLE `objeto` (
  `CodObj` int(11) NOT NULL,
  `NomObj` char(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`CodObj`, `NomObj`) VALUES
(1, 'Polvo de Hueso'),
(2, 'Santo Grial'),
(4, 'brazalete de plata'),
(5, 'Pluma de Fenix'),
(6, 'Espejo Putrefacto'),
(8, 'cadenas del loco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servant`
--

DROP TABLE IF EXISTS `servant`;
CREATE TABLE `servant` (
  `CodSer` int(11) NOT NULL,
  `NomSer` char(30) COLLATE utf8_spanish_ci NOT NULL,
  `ClasSer` char(20) COLLATE utf8_spanish_ci NOT NULL,
  `AtkSer` int(11) NOT NULL,
  `HPSer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servant`
--

INSERT INTO `servant` (`CodSer`, `NomSer`, `ClasSer`, `AtkSer`, `HPSer`) VALUES
(1, 'Jinako-Ganesha', 'Moon Cancer', 12034, 21549),
(2, 'Wu Zetian', 'Assasin', 10874, 13267),
(4, 'Scheherazade', 'Caster', 12084, 19360),
(5, 'BB', 'Moon Cancer', 9900, 1600),
(6, 'Arashu', 'archer', 12, 12);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `habilidadascension`
--
ALTER TABLE `habilidadascension`
  ADD PRIMARY KEY (`CodHabAsc`),
  ADD UNIQUE KEY `CodSer` (`CodSer`,`CodObj`),
  ADD KEY `CodObj` (`CodObj`);

--
-- Indices de la tabla `objeto`
--
ALTER TABLE `objeto`
  ADD PRIMARY KEY (`CodObj`);

--
-- Indices de la tabla `servant`
--
ALTER TABLE `servant`
  ADD PRIMARY KEY (`CodSer`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habilidadascension`
--
ALTER TABLE `habilidadascension`
  ADD CONSTRAINT `habilidadascension_ibfk_1` FOREIGN KEY (`CodSer`) REFERENCES `servant` (`CodSer`),
  ADD CONSTRAINT `habilidadascension_ibfk_2` FOREIGN KEY (`CodObj`) REFERENCES `objeto` (`CodObj`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
