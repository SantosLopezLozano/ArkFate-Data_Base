-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2021 a las 17:21:02
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--

CREATE TABLE `objeto` (
  `CodObj` int(11) NOT NULL,
  `NomObj` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`CodObj`, `NomObj`) VALUES
(1, '12341234'),
(2, 'ew5354'),
(4, '432'),
(543459, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servant`
--

CREATE TABLE `servant` (
  `CodSer` int(11) NOT NULL,
  `NomSer` char(20) NOT NULL,
  `ClaSer` char(20) NOT NULL,
  `AtkSer` int(11) NOT NULL,
  `HPSer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servant`
--

INSERT INTO `servant` (`CodSer`, `NomSer`, `ClaSer`, `AtkSer`, `HPSer`) VALUES
(3, 'null', 'null', 1212, 1212),
(4, 'erwret', 'wertwer', 1234, 2414231),
(5, '13241', '124312', 12341, 124312),
(6, 'w45', '225', 232, 23),
(7, 'w45', '225', 232, 23),
(8, 'wqe', '23', 23, 23),
(10, '1243', '1234', 1234, 1234),
(11, '123', '123', 123, 123);

--
-- Índices para tablas volcadas
--

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `objeto`
--
ALTER TABLE `objeto`
  MODIFY `CodObj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543460;

--
-- AUTO_INCREMENT de la tabla `servant`
--
ALTER TABLE `servant`
  MODIFY `CodSer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
