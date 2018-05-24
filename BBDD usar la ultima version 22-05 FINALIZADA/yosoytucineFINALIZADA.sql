-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2018 a las 20:19:53
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yosoytucine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cines`
--

CREATE TABLE `cines` (
  `idcine` int(11) NOT NULL,
  `idempresa` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `direccion` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `ciudad` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `valoracion` float NOT NULL,
  `url` varchar(4000) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cines`
--

INSERT INTO `cines` (`idcine`, `idempresa`, `nombre`, `latitud`, `longitud`, `direccion`, `cp`, `ciudad`, `telefono`, `valoracion`, `url`) VALUES
(1, 1, 'Parquesur', 40.33837, -3.731716, 'Av. de Gran Bretaña', 28916, 'Madrid', 123456789, 5.2, 'https://www.cinesa.es/Cines/Parquesur'),
(2, 1, 'Príncipe Pío', 40.422237, -3.720485, 'Paseo de la Florida, 2', 28008, 'Madrid', 915487388, 7, 'https://www.cinesa.es/Cines/Principe-Pio'),
(3, 3, 'Ciudad de la Imagen', 0, 0, 'Calle Edgar Neville, s/n,', 28223, 'Madrid', 0, 8, 'https://kinepolis.es/cines/kinepolis-madrid-ciudad-de-la-imagen'),
(4, 2, 'TresAguas', 0, 0, 'Av. San Martín de Valdeiglesias,24', 28922, 'Madrid', 0, 4, 'http://yelmocines.es/cartelera/madrid/yelmo-cines-tresaguas'),
(5, 2, 'Icaria', 0, 0, 'Carrer de Salvador Espriu, 61', 8005, 'Barcelona', 902220922, 7, 'http://yelmocines.es/cartelera/barcelona/yelmo-cines-icaria'),
(6, 2, 'Ideal', 0, 0, 'Calle del Dr Cortezo, 6', 28012, 'Madrid', 913690669, 1, 'http://www.yelmocines.es/cartelera/madrid/yelmo-cines-ideal'),
(7, 3, 'Diversia', 0, 0, 'Av. de Bruselas, 21', 28108, 'Madrid', 916622462, 6, 'https://kinepolis.es/cines/kinepolis-madrid-diversia'),
(8, 1, 'Xanadú', 0, 0, 'Calle Puerto de Navacerrada, km 23,5', 28939, 'Madrid', 902333231, 8, 'https://www.cinesa.es/Cines/Xanadu'),
(9, 1, 'Diagonal', 0, 0, 'Carrer de Santa Fe de Nou Mèxic, s/n,', 8021, 'Barcelona', 0, 7, 'https://www.cinesa.es/Cines/Diagonal'),
(10, 1, 'Heron City Barcelona', 0, 0, 'Avinguda de Rio de Janeiro, 42,', 8016, 'Barcelona', 902333231, 2, 'https://www.cinesa.es/Cines/Heron-City-Barcelona'),
(11, 1, 'La Maquinista', 0, 0, 'Carrer de Potosí, 2', 8030, 'Barcelona', 0, 1, 'https://www.cinesa.es/Cines/La-Maquinista'),
(12, 2, 'Comedia', 0, 0, 'Passeig de Gràcia, 13', 8007, 'Barcelona', 933013099, 10, 'http://yelmocines.es/cartelera/barcelona/yelmo-cines-comedia'),
(13, 1, 'Las Rosas', 0, 0, 'Av. de Guadalajara, 2', 28032, 'Madrid', 0, 10, 'https://www.cinesa.es/Cines/Las-Rosas'),
(14, 1, 'Capitol', 0, 0, 'Calle Gran Vía, 41', 28013, 'Madrid', 915222229, 9, 'https://www.cinesa.es/Cines/Capitol'),
(15, 1, 'La Gavia', 0, 0, 'La Gavia, Calle Adolfo Bioy Casares, 2', 28051, 'Madrid', 0, 0, 'https://www.cinesa.es/Cines/La-Gavia'),
(16, 1, 'Méndez Álvaro', 0, 0, 'Calle Acanto, 2', 28045, 'Madrid', 0, 5, 'https://www.cinesa.es/Cines/Mendez-Alvaro'),
(17, 1, 'Bonaire', 0, 0, 'Carretera N-III, Km. 345', 46960, 'Valencia', 0, 7, 'https://www.cinesa.es/Cines/Bonaire'),
(18, 2, 'Campanar', 0, 0, 'Av. de Tirso de Molina, 16, ', 46015, 'Valencia', 902220922, 3, 'http://yelmocines.es/cartelera/valencia/yelmo-cines-mercado-de-campanar'),
(19, 3, 'Kinépolis Valencia', 0, 0, 'Avinguda de Francisco Tomàs I Valiente, s/n', 46980, 'Valencia', 961379400, 9, 'https://kinepolis.es/cines/kinepolis-valencia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinesysesiones`
--

CREATE TABLE `cinesysesiones` (
  `idcine` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cinesysesiones`
--

INSERT INTO `cinesysesiones` (`idcine`, `fecha`, `hora`, `precio`) VALUES
(1, '2018-06-06', '18:00', 5.3),
(1, '2018-06-06', '20:00', 5.3),
(1, '2018-06-06', '22:00', 5.3),
(2, '2018-06-06', '18:00', 5.3),
(2, '2018-06-06', '20:00', 5.3),
(2, '2018-06-06', '22:00', 5.3),
(3, '2018-06-06', '18:00', 5.3),
(3, '2018-06-06', '20:00', 5.3),
(3, '2018-06-06', '22:00', 5.3),
(4, '2018-06-06', '18:00', 5.3),
(4, '2018-06-06', '20:00', 5.3),
(4, '2018-06-06', '22:00', 5.3),
(5, '2018-06-06', '18:00', 5.3),
(5, '2018-06-06', '20:00', 5.3),
(5, '2018-06-06', '22:00', 5.3),
(6, '2018-06-06', '18:00', 5.3),
(6, '2018-06-06', '20:00', 5.3),
(6, '2018-06-06', '22:00', 5.3),
(7, '2018-06-06', '18:00', 5.3),
(7, '2018-06-06', '20:00', 5.3),
(7, '2018-06-06', '22:00', 5.3),
(8, '2018-06-06', '18:00', 5.3),
(8, '2018-06-06', '20:00', 5.3),
(8, '2018-06-06', '22:00', 5.3),
(9, '2018-06-06', '18:00', 5.3),
(9, '2018-06-06', '20:00', 5.3),
(9, '2018-06-06', '22:00', 5.3),
(10, '2018-06-06', '18:00', 5.3),
(10, '2018-06-06', '20:00', 5.3),
(10, '2018-06-06', '22:00', 5.3),
(11, '2018-06-06', '18:00', 5.3),
(11, '2018-06-06', '20:00', 5.3),
(11, '2018-06-06', '22:00', 5.3),
(12, '2018-06-06', '18:00', 5.3),
(12, '2018-06-06', '20:00', 5.3),
(12, '2018-06-06', '22:00', 5.3),
(13, '2018-06-06', '18:00', 5.3),
(13, '2018-06-06', '20:00', 5.3),
(13, '2018-06-06', '22:00', 5.3),
(14, '2018-06-06', '18:00', 5.3),
(14, '2018-06-06', '20:00', 5.3),
(14, '2018-06-06', '22:00', 5.3),
(15, '2018-06-06', '18:00', 5.3),
(15, '2018-06-06', '20:00', 5.3),
(15, '2018-06-06', '22:00', 5.3),
(16, '2018-06-06', '18:00', 5.3),
(16, '2018-06-06', '20:00', 5.3),
(16, '2018-06-06', '22:00', 5.3),
(17, '2018-06-06', '18:00', 5.3),
(17, '2018-06-06', '20:00', 5.3),
(17, '2018-06-06', '22:00', 5.3),
(18, '2018-06-06', '18:00', 5.3),
(18, '2018-06-06', '20:00', 5.3),
(18, '2018-06-06', '22:00', 5.3),
(19, '2018-06-06', '18:00', 5.3),
(19, '2018-06-06', '20:00', 5.3),
(19, '2018-06-06', '22:00', 5.3),
(1, '2018-06-06', '19:05', 5.3),
(1, '2018-06-06', '18:30', 5.3),
(1, '2018-06-06', '20:45', 5.3),
(1, '2018-06-06', '21:30', 5.3),
(2, '2018-06-06', '19:05', 5.3),
(2, '2018-06-06', '18:30', 5.3),
(2, '2018-06-06', '20:45', 5.3),
(2, '2018-06-06', '21:30', 5.3),
(3, '2018-06-06', '19:05', 5.3),
(3, '2018-06-06', '18:30', 5.3),
(3, '2018-06-06', '20:45', 5.3),
(3, '2018-06-06', '21:30', 5.3),
(4, '2018-06-06', '19:05', 5.3),
(4, '2018-06-06', '18:30', 5.3),
(4, '2018-06-06', '20:45', 5.3),
(4, '2018-06-06', '21:30', 5.3),
(5, '2018-06-06', '19:05', 5.3),
(5, '2018-06-06', '18:30', 5.3),
(5, '2018-06-06', '20:45', 5.3),
(5, '2018-06-06', '21:30', 5.3),
(6, '2018-06-06', '19:05', 5.3),
(6, '2018-06-06', '18:30', 5.3),
(6, '2018-06-06', '20:45', 5.3),
(6, '2018-06-06', '21:30', 5.3),
(7, '2018-06-06', '19:05', 5.3),
(7, '2018-06-06', '18:30', 5.3),
(7, '2018-06-06', '20:45', 5.3),
(7, '2018-06-06', '21:30', 5.3),
(8, '2018-06-06', '19:05', 5.3),
(8, '2018-06-06', '18:30', 5.3),
(8, '2018-06-06', '20:45', 5.3),
(8, '2018-06-06', '21:30', 5.3),
(9, '2018-06-06', '19:05', 5.3),
(9, '2018-06-06', '18:30', 5.3),
(9, '2018-06-06', '20:45', 5.3),
(9, '2018-06-06', '21:30', 5.3),
(10, '2018-06-06', '19:05', 5.3),
(10, '2018-06-06', '18:30', 5.3),
(10, '2018-06-06', '20:45', 5.3),
(10, '2018-06-06', '21:30', 5.3),
(11, '2018-06-06', '19:05', 5.3),
(11, '2018-06-06', '18:30', 5.3),
(11, '2018-06-06', '20:45', 5.3),
(11, '2018-06-06', '21:30', 5.3),
(12, '2018-06-06', '19:05', 5.3),
(12, '2018-06-06', '18:30', 5.3),
(12, '2018-06-06', '20:45', 5.3),
(12, '2018-06-06', '21:30', 5.3),
(13, '2018-06-06', '19:05', 5.3),
(13, '2018-06-06', '18:30', 5.3),
(13, '2018-06-06', '20:45', 5.3),
(13, '2018-06-06', '21:30', 5.3),
(14, '2018-06-06', '19:05', 5.3),
(14, '2018-06-06', '18:30', 5.3),
(14, '2018-06-06', '20:45', 5.3),
(14, '2018-06-06', '21:30', 5.3),
(15, '2018-06-06', '19:05', 5.3),
(15, '2018-06-06', '18:30', 5.3),
(15, '2018-06-06', '20:45', 5.3),
(15, '2018-06-06', '21:30', 5.3),
(16, '2018-06-06', '19:05', 5.3),
(16, '2018-06-06', '18:30', 5.3),
(16, '2018-06-06', '20:45', 5.3),
(16, '2018-06-06', '21:30', 5.3),
(17, '2018-06-06', '19:05', 5.3),
(17, '2018-06-06', '18:30', 5.3),
(17, '2018-06-06', '20:45', 5.3),
(17, '2018-06-06', '21:30', 5.3),
(18, '2018-06-06', '19:05', 5.3),
(18, '2018-06-06', '18:30', 5.3),
(18, '2018-06-06', '20:45', 5.3),
(18, '2018-06-06', '21:30', 5.3),
(19, '2018-06-06', '19:05', 5.3),
(19, '2018-06-06', '18:30', 5.3),
(19, '2018-06-06', '20:45', 5.3),
(19, '2018-06-06', '21:30', 5.3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinesysesionesypeliculas`
--

CREATE TABLE `cinesysesionesypeliculas` (
  `idcine` int(11) NOT NULL,
  `idpelicula` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cinesysesionesypeliculas`
--

INSERT INTO `cinesysesionesypeliculas` (`idcine`, `idpelicula`, `fecha`, `hora`) VALUES
(1, 1, '2018-06-06', '18:00'),
(1, 2, '2018-06-06', '18:30'),
(1, 3, '2018-06-06', '19:05'),
(1, 4, '2018-06-06', '20:00'),
(1, 5, '2018-06-06', '20:45'),
(1, 6, '2018-06-06', '21:30'),
(1, 7, '2018-06-06', '22:00'),
(2, 8, '2018-06-06', '18:00'),
(2, 9, '2018-06-06', '18:30'),
(2, 10, '2018-06-06', '19:05'),
(2, 11, '2018-06-06', '20:00'),
(2, 12, '2018-06-06', '20:45'),
(2, 13, '2018-06-06', '21:30'),
(2, 14, '2018-06-06', '22:00'),
(3, 15, '2018-06-06', '18:00'),
(3, 16, '2018-06-06', '18:30'),
(3, 17, '2018-06-06', '19:05'),
(3, 18, '2018-06-06', '20:00'),
(3, 19, '2018-06-06', '20:45'),
(3, 20, '2018-06-06', '21:30'),
(3, 21, '2018-06-06', '22:00'),
(4, 1, '2018-06-06', '18:00'),
(4, 2, '2018-06-06', '18:30'),
(4, 3, '2018-06-06', '19:05'),
(4, 4, '2018-06-06', '20:00'),
(4, 5, '2018-06-06', '20:45'),
(4, 6, '2018-06-06', '21:30'),
(4, 7, '2018-06-06', '22:00'),
(5, 8, '2018-06-06', '18:00'),
(5, 9, '2018-06-06', '18:30'),
(5, 10, '2018-06-06', '19:05'),
(5, 11, '2018-06-06', '20:00'),
(5, 12, '2018-06-06', '20:45'),
(5, 13, '2018-06-06', '21:30'),
(5, 14, '2018-06-06', '22:00'),
(6, 15, '2018-06-06', '18:00'),
(6, 16, '2018-06-06', '18:30'),
(6, 17, '2018-06-06', '19:05'),
(6, 18, '2018-06-06', '20:00'),
(6, 19, '2018-06-06', '20:45'),
(6, 20, '2018-06-06', '21:30'),
(6, 21, '2018-06-06', '22:00'),
(7, 1, '2018-06-06', '18:00'),
(7, 2, '2018-06-06', '18:30'),
(7, 3, '2018-06-06', '19:05'),
(7, 4, '2018-06-06', '20:00'),
(7, 5, '2018-06-06', '20:45'),
(7, 6, '2018-06-06', '21:30'),
(7, 7, '2018-06-06', '22:00'),
(8, 8, '2018-06-06', '18:00'),
(8, 9, '2018-06-06', '18:30'),
(8, 10, '2018-06-06', '19:05'),
(8, 11, '2018-06-06', '20:00'),
(8, 12, '2018-06-06', '20:45'),
(8, 13, '2018-06-06', '21:30'),
(8, 14, '2018-06-06', '22:00'),
(9, 15, '2018-06-06', '18:00'),
(9, 16, '2018-06-06', '18:30'),
(9, 17, '2018-06-06', '19:05'),
(9, 18, '2018-06-06', '20:00'),
(9, 19, '2018-06-06', '20:45'),
(9, 20, '2018-06-06', '21:30'),
(9, 21, '2018-06-06', '22:00'),
(10, 1, '2018-06-06', '18:00'),
(10, 2, '2018-06-06', '18:30'),
(10, 3, '2018-06-06', '19:05'),
(10, 4, '2018-06-06', '20:00'),
(10, 5, '2018-06-06', '20:45'),
(10, 6, '2018-06-06', '21:30'),
(10, 7, '2018-06-06', '22:00'),
(11, 8, '2018-06-06', '18:00'),
(11, 9, '2018-06-06', '18:30'),
(11, 10, '2018-06-06', '19:05'),
(11, 11, '2018-06-06', '20:00'),
(11, 12, '2018-06-06', '20:45'),
(11, 13, '2018-06-06', '21:30'),
(11, 14, '2018-06-06', '22:00'),
(12, 15, '2018-06-06', '18:00'),
(12, 16, '2018-06-06', '18:30'),
(12, 17, '2018-06-06', '19:05'),
(12, 18, '2018-06-06', '20:00'),
(12, 19, '2018-06-06', '20:45'),
(12, 20, '2018-06-06', '21:30'),
(12, 21, '2018-06-06', '22:00'),
(13, 1, '2018-06-06', '18:00'),
(13, 2, '2018-06-06', '18:30'),
(13, 3, '2018-06-06', '19:05'),
(13, 4, '2018-06-06', '20:00'),
(13, 5, '2018-06-06', '20:45'),
(13, 6, '2018-06-06', '21:30'),
(13, 7, '2018-06-06', '22:00'),
(14, 8, '2018-06-06', '18:00'),
(14, 9, '2018-06-06', '18:30'),
(14, 10, '2018-06-06', '19:05'),
(14, 11, '2018-06-06', '20:00'),
(14, 12, '2018-06-06', '20:45'),
(14, 13, '2018-06-06', '21:30'),
(14, 14, '2018-06-06', '22:00'),
(15, 15, '2018-06-06', '18:00'),
(15, 16, '2018-06-06', '18:30'),
(15, 17, '2018-06-06', '19:05'),
(15, 18, '2018-06-06', '20:00'),
(15, 19, '2018-06-06', '20:45'),
(15, 20, '2018-06-06', '21:30'),
(15, 21, '2018-06-06', '22:00'),
(16, 1, '2018-06-06', '18:00'),
(16, 2, '2018-06-06', '18:30'),
(16, 3, '2018-06-06', '19:05'),
(16, 4, '2018-06-06', '20:00'),
(16, 5, '2018-06-06', '20:45'),
(16, 6, '2018-06-06', '21:30'),
(16, 7, '2018-06-06', '22:00'),
(17, 8, '2018-06-06', '18:00'),
(17, 9, '2018-06-06', '18:30'),
(17, 10, '2018-06-06', '19:05'),
(17, 11, '2018-06-06', '20:00'),
(17, 12, '2018-06-06', '20:45'),
(17, 13, '2018-06-06', '21:30'),
(17, 14, '2018-06-06', '22:00'),
(18, 15, '2018-06-06', '18:00'),
(18, 16, '2018-06-06', '18:30'),
(18, 17, '2018-06-06', '19:05'),
(18, 18, '2018-06-06', '20:00'),
(18, 19, '2018-06-06', '20:45'),
(18, 20, '2018-06-06', '21:30'),
(18, 21, '2018-06-06', '22:00'),
(19, 1, '2018-06-06', '18:00'),
(19, 2, '2018-06-06', '18:30'),
(19, 3, '2018-06-06', '19:05'),
(19, 4, '2018-06-06', '20:00'),
(19, 5, '2018-06-06', '20:45'),
(19, 6, '2018-06-06', '21:30'),
(19, 7, '2018-06-06', '22:00'),
(1, 1, '2018-06-06', '20:00'),
(1, 2, '2018-06-06', '20:45'),
(1, 3, '2018-06-06', '21:30'),
(1, 4, '2018-06-06', '22:00'),
(1, 5, '2018-06-06', '18:00'),
(1, 6, '2018-06-06', '19:05'),
(1, 7, '2018-06-06', '20:00'),
(2, 8, '2018-06-06', '20:00'),
(2, 9, '2018-06-06', '20:45'),
(2, 10, '2018-06-06', '21:30'),
(2, 11, '2018-06-06', '22:00'),
(2, 12, '2018-06-06', '18:00'),
(2, 13, '2018-06-06', '19:05'),
(2, 14, '2018-06-06', '20:00'),
(3, 15, '2018-06-06', '20:00'),
(3, 16, '2018-06-06', '20:45'),
(3, 17, '2018-06-06', '21:30'),
(3, 18, '2018-06-06', '22:00'),
(3, 19, '2018-06-06', '18:00'),
(3, 20, '2018-06-06', '19:05'),
(3, 21, '2018-06-06', '20:00'),
(4, 1, '2018-06-06', '20:00'),
(4, 2, '2018-06-06', '20:45'),
(4, 3, '2018-06-06', '21:30'),
(4, 4, '2018-06-06', '22:00'),
(4, 5, '2018-06-06', '18:00'),
(4, 6, '2018-06-06', '19:05'),
(4, 7, '2018-06-06', '20:00'),
(5, 8, '2018-06-06', '20:00'),
(5, 9, '2018-06-06', '20:45'),
(5, 10, '2018-06-06', '21:30'),
(5, 11, '2018-06-06', '22:00'),
(5, 12, '2018-06-06', '18:00'),
(5, 13, '2018-06-06', '19:05'),
(5, 14, '2018-06-06', '20:00'),
(6, 15, '2018-06-06', '20:00'),
(6, 16, '2018-06-06', '20:45'),
(6, 17, '2018-06-06', '21:30'),
(6, 18, '2018-06-06', '22:00'),
(6, 19, '2018-06-06', '18:00'),
(6, 20, '2018-06-06', '19:05'),
(6, 21, '2018-06-06', '20:00'),
(7, 1, '2018-06-06', '20:00'),
(7, 2, '2018-06-06', '20:45'),
(7, 3, '2018-06-06', '21:30'),
(7, 4, '2018-06-06', '22:00'),
(7, 5, '2018-06-06', '18:00'),
(7, 6, '2018-06-06', '19:05'),
(7, 7, '2018-06-06', '20:00'),
(8, 8, '2018-06-06', '20:00'),
(8, 9, '2018-06-06', '20:45'),
(8, 10, '2018-06-06', '21:30'),
(8, 11, '2018-06-06', '22:00'),
(8, 12, '2018-06-06', '18:00'),
(8, 13, '2018-06-06', '19:05'),
(8, 14, '2018-06-06', '20:00'),
(9, 15, '2018-06-06', '20:00'),
(9, 16, '2018-06-06', '20:45'),
(9, 17, '2018-06-06', '21:30'),
(9, 18, '2018-06-06', '22:00'),
(9, 19, '2018-06-06', '18:00'),
(9, 20, '2018-06-06', '19:05'),
(9, 21, '2018-06-06', '20:00'),
(10, 1, '2018-06-06', '20:00'),
(10, 2, '2018-06-06', '20:45'),
(10, 3, '2018-06-06', '21:30'),
(10, 4, '2018-06-06', '22:00'),
(10, 5, '2018-06-06', '18:00'),
(10, 6, '2018-06-06', '19:05'),
(10, 7, '2018-06-06', '20:00'),
(11, 8, '2018-06-06', '20:00'),
(11, 9, '2018-06-06', '20:45'),
(11, 10, '2018-06-06', '21:30'),
(11, 11, '2018-06-06', '22:00'),
(11, 12, '2018-06-06', '18:00'),
(11, 13, '2018-06-06', '19:05'),
(11, 14, '2018-06-06', '20:00'),
(12, 15, '2018-06-06', '20:00'),
(12, 16, '2018-06-06', '20:45'),
(12, 17, '2018-06-06', '21:30'),
(12, 18, '2018-06-06', '22:00'),
(12, 19, '2018-06-06', '18:00'),
(12, 20, '2018-06-06', '19:05'),
(12, 21, '2018-06-06', '20:00'),
(13, 1, '2018-06-06', '20:00'),
(13, 2, '2018-06-06', '20:45'),
(13, 3, '2018-06-06', '21:30'),
(13, 4, '2018-06-06', '22:00'),
(13, 5, '2018-06-06', '18:00'),
(13, 6, '2018-06-06', '19:05'),
(13, 7, '2018-06-06', '20:00'),
(14, 8, '2018-06-06', '20:00'),
(14, 9, '2018-06-06', '20:45'),
(14, 10, '2018-06-06', '21:30'),
(14, 11, '2018-06-06', '22:00'),
(14, 12, '2018-06-06', '18:00'),
(14, 13, '2018-06-06', '19:05'),
(14, 14, '2018-06-06', '20:00'),
(15, 15, '2018-06-06', '20:00'),
(15, 16, '2018-06-06', '20:45'),
(15, 17, '2018-06-06', '21:30'),
(15, 18, '2018-06-06', '22:00'),
(15, 19, '2018-06-06', '18:00'),
(15, 20, '2018-06-06', '19:05'),
(15, 21, '2018-06-06', '20:00'),
(16, 1, '2018-06-06', '20:00'),
(16, 2, '2018-06-06', '20:45'),
(16, 3, '2018-06-06', '21:30'),
(16, 4, '2018-06-06', '22:00'),
(16, 5, '2018-06-06', '18:00'),
(16, 6, '2018-06-06', '19:05'),
(16, 7, '2018-06-06', '20:00'),
(17, 8, '2018-06-06', '20:00'),
(17, 9, '2018-06-06', '20:45'),
(17, 10, '2018-06-06', '21:30'),
(17, 11, '2018-06-06', '22:00'),
(17, 12, '2018-06-06', '18:00'),
(17, 13, '2018-06-06', '19:05'),
(17, 14, '2018-06-06', '20:00'),
(18, 15, '2018-06-06', '20:00'),
(18, 16, '2018-06-06', '20:45'),
(18, 17, '2018-06-06', '21:30'),
(18, 18, '2018-06-06', '22:00'),
(18, 19, '2018-06-06', '18:00'),
(18, 20, '2018-06-06', '19:05'),
(18, 21, '2018-06-06', '20:00'),
(19, 1, '2018-06-06', '20:00'),
(19, 2, '2018-06-06', '20:45'),
(19, 3, '2018-06-06', '21:30'),
(19, 4, '2018-06-06', '22:00'),
(19, 5, '2018-06-06', '18:00'),
(19, 6, '2018-06-06', '19:05'),
(19, 7, '2018-06-06', '20:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinesyusuarios`
--

CREATE TABLE `cinesyusuarios` (
  `idcine` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `comentario` varchar(400) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cinesyusuarios`
--

INSERT INTO `cinesyusuarios` (`idcine`, `iduser`, `valoracion`, `comentario`) VALUES
(1, 3, 8, 'Un buen cine para ir con amigos.'),
(3, 5, 2, 'Demasiados niños.'),
(10, 4, 9, 'El mejor cine de Barcelona.'),
(8, 3, 4, 'Lo mejor del cine, la oferta de ocio del centro comercial.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `idempresa` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `logo` varchar(4000) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`idempresa`, `nombre`, `logo`) VALUES
(1, 'Cinesa', '.\\img\\logoEmpresa\\cinesa.png'),
(2, 'Yelmo', '.\\img\\logoEmpresa\\yelmo.jpg'),
(3, 'Kinépolis', '.\\img\\logoEmpresa\\kinepolis.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `idpelicula` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `edadrecomendada` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `duracion` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `sinopsis` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `director` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechaestreno` date NOT NULL,
  `cartel` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `valoracion` float NOT NULL,
  `actores` varchar(4000) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`idpelicula`, `nombre`, `genero`, `edadrecomendada`, `duracion`, `sinopsis`, `director`, `fechaestreno`, `cartel`, `valoracion`, `actores`) VALUES
(1, 'Vengadores: Infinity War', 'Acción', '+12', '149', 'Vengadores: Infinity War seguirá la lucha de los superhéroes de Marvel contra el mayor villano al que se han enfrentado nunca: Thanos. Su único objetivo será detener a este poderoso antagonista e impedir que se haga con el control de la galaxia. De nuevo veremos al grupo formado por Iron Man, Capitán América, Viuda negra, Ant-Man, Ojo de Halcón, Thor y Hulk, entre otros. En su nueva e impactante aventura, las Gemas del Infinito estarán en juego, unos querrán protegerlas y otros controlarlas, ¿quién ganará?', 'Anthony Russo', '2018-04-27', '.\\img\\cartelesPeli\\infinitiwar.jpg', 9, 'Chris Evans, Chris Hemsworth, Chris Pratt, Mark Ruffalo, Robert Downey Jr., Scarlett Johansson'),
(2, '#SexPact', 'Comedia', '+16', '102', 'Cuando una madre y dos padres descubren que sus respectivas hijas han hecho un pacto para perder la virginidad la noche del baile de fin de curso, planean una operación secreta para impedir que las adolescentes cumplan sus propósitos.', 'Kay Cannon', '2018-05-04', '.\\img\\cartelesPeli\\sexpact.jpg', 3, 'Amelia Oswald, Audrey Casson, Ike Barinholtz, John Cena, Kathryn Newton, Leslie Mann'),
(3, 'Campeones', 'Comedia', 'TP', '124', 'Javier Gutiérrez da vida al protagonista, Marco, un entrenador profesional de baloncesto que se ve, en medio de una crisis personal, entrenando a un equipo compuesto por personas con discapacidad intelectual. Lo que comienza como un castigo se acaba convirtiendo en una lección de vida.', 'Javier Fesser', '2018-04-06', '.\\img\\cartelesPeli\\campeones.jpg', 2, 'Javier Gutiérrez, Athenea Mata, Juan Margallo, Luisa Gavassa, Daniel Freire, Jesús Vidal, Sergio Olmo, Julio Fernández, Jesús Lago, José De Luna, Fran Fuentes, Gloria Ramos, Alberto Nieto Fernández, Roberto Chinchilla, Stefan López'),
(4, 'Leo Da Vinci: Misión Mona Lisa', 'Animación ', 'TP', '82', 'La mejor amiga de Leonardo, Gioconda, tiene problemas. Decidido a ayudarla, el joven genio tiene una idea emocionante y loca a partes iguales: encontrar el barco pirata que se hundió años atrás cerca de la Isla de Montecristo y recuperar el fabuloso tesoro que se dice que contiene, consiguiendo con ello resolver todos los problemas de Gioconda.', 'Sergio Manfio', '2018-04-13', '.\\img\\cartelesPeli\\leodavinci.jpg', 6, ''),
(5, 'Mi familia del norte', 'Comedia', 'TP', '107', 'Valentin D. es un reconocido arquitecto y junto con Constance Brandt, una famosa diseñadora de moda, forman una de las parejas más influyentes de la sociedad. Pero lo que nadie sabe de Valentin es que proviene de una humilde familia de chatarreros de la clase obrera del norte de Francia. Después de sufrir un inesperado accidente, sus orígenes saldrán a la luz cuando su madre, su hermano y su cuñada entren en escena.', 'Dany Boon', '2018-05-11', '.\\img\\cartelesPeli\\mifamiliadelnorte.jpg', 7, 'Dany Boon, Guy Lecluyse, Laurence Arné, Line Renaud, Pierre Richard, Valérie Bonneton'),
(6, 'Noche de juegos', 'Misterio', '+12', '100', 'Max y Annie son una pareja que forman parte de un grupo de amigos que queda todas las semanas para una noche de juegos organizada por uno de ellos. En una de esas noches Brooks (Kyle Chandler), el carismático hermano de Max, organiza un misterioso juego en el que sus amigos deberán resolver un asesinato con falsos matones y falsos agentes. Pero, cuando Brooks es secuestrado, los 6 jugadores comienzan a dudar sobre lo que es falso y lo que es real, y se ven inmersos en una noche caótica en la que deberán resolver el caso.', 'John Francis Daley', '2018-04-27', '.\\img\\cartelesPeli\\nochedejuegos.jpg', 10, 'Billy Magnussen, Jason Bateman, Kylie Bunbury, Lamorne Morris, Rachel Mcadams, Sharon Horgan'),
(7, 'Peter Rabbit', 'Animación', 'TP', '94', ' Peter Rabbit no es un conejo cualquiera. Es un rebelde que viste camisa azul y no lleva pantalones. Peter vive junto a su familia y amigos, un grupo variopinto de animales que incluye incluso a un zorro. Todos ellos harán de las suyas en la granja de los McGregor, lugar en cuyo jardín disponen de deliciosos vegetales. La fiesta animal ha empezado, y esto es solo el principio.', 'Will Gluck', '2018-03-23', '.\\img\\cartelesPeli\\peterrabbit.jpg', 3, 'Dani Rovira (voz), Belén Cuesta (voz), Sílvia Abril (voz), Domhnall Gleeson, Rose Byrne'),
(8, 'Sherlock Gnomes', 'Animación', 'TP', '86', 'Los adorables gnomos de jardín de Gnomeo y Julieta han vuelto para vivir una nueva aventura en Londres. Gnomeo y Julieta acaban de llegar a la ciudad con sus amigos y familiares, y su principal preocupación consiste en preparar su nuevo jardín para la primavera. No obstante, no tardan en descubrir que alguien está secuestrando gnomos de jardín por todo Londres. Cuando Gnomeo y Julieta vuelven a su jardín y descubren que todo el mundo ha desaparecido de allí, solo hay un gnomo al que pueden recurrir...\r\n\r\nSherlock Gnomes, el famoso detective y protector de los gnomos de jardín de Londres se presenta junto a su acompañante Watson para investigar el caso. El misterio arrastrará a nuestros gnomos a una desternillante aventura en la que conocerán nuevas figuras ornamentales y explorarán el lado desconocido de la ciudad.', 'John Stevenson', '2018-05-11', '.\\img\\cartelesPeli\\gnomes.jpg', 1, 'Chiwetel Ejiofor, Emily Blunt, James Mcavoy, Johnny Depp, Mary J. Blige, Stephen Merchant'),
(9, 'Un Lugar Tranquilo', 'Drama', '+16', '95', 'Sigue la historia de una familia que vive en una casa en el bosque cuidándose de no emitir ningún sonido. Si no te escuchan, no pueden cazarte...', 'John Krasinski', '2018-04-20', '.\\img\\cartelesPeli\\unlugartranquilo.jpg', 2, 'Cade Woodward, Emily Blunt, John Krasinski, Millicent Simmonds, Noah Jupe'),
(10, 'Verdad o Reto', 'Suspense', '+16', '100', 'Una inofensiva partida de \"Verdad o reto\" entre un grupo de amigos acaba convirtiéndose en un juego letal cuando alguien - o algo - empieza a castigar a los que mienten o no aceptan el reto.', 'Jeff Wadlow', '2018-05-11', '.\\img\\cartelesPeli\\verdadoreto.jpg', 4, 'Landon Liboiron, Lucy Hale, Nolan Gerard Funk, Sophia Taylor Ali, Tyler Posey, Violett Beane'),
(11, 'Deadpool 2', 'Comedia', '+18', '119', 'Tras sobrevivir a un ataque bovino casi mortal, un desfigurado cocinero (Wade Wilson) lucha por cumplir su sueño de convertirse en el camarero buenorro de First Dates mientras aprende a arreglárselas después de perder el sentido del gusto. Buscando algo picante en su vida (y también un condensador de fluzo), Wade deberá luchar contra ninjas, yakuzas y una manada de canes sexualmente agresivos mientras viaja alrededor del mundo para descubrir la importancia de la familia, la amistad y el sabor, encontrando un nuevo gusto por la aventura y ganándose la codiciada taza de ‘Mejor Amante del Mundo’.', 'David Leitch', '2018-05-18', '\r\n.\\img\\cartelesPeli\\deadpool2.jpg', 7, 'Brianna Hildebrand, Josh Brolin, Morena Baccarin, Ryan Reynolds, T.j. Miller, Zazie Beetz'),
(12, 'Operación: Huracán', 'Acción', '+12', '102', 'Un grupo de hackers se infiltran en una instalación de una pequeña ciudad costera para robar 102 millones de dólares justo cuando un tornado de categoría 5, la tormenta del siglo, está a punto de estallar. Las únicas dos personas que quedan en el pueblo son un meteorólogo y una agente del tesoro, que deberán sobrevivir a la tormenta y evitar que los ladrones salgan impunes del robo del siglo.', 'Rob Cohen', '2018-05-11', '.\\img\\cartelesPeli\\huracan.jpg', 3, 'Ben Cross, Maggie Grace, Melissa Bolona, Ralph Ineson, Ryan Kwanten, Toby Kebbell'),
(13, 'Proyecto Rampage', 'Acción', '+12', '107', 'El primatólogo Davis Okoye (Johnson), un hombre que mantiene las distancias con otras personas, tiene un sólido vínculo con George, el extraordinariamente inteligente gorila de espalda plateada al que ha estado cuidando desde que nació. Pero cuando un experimento genético sale mal, este apacible simio se convierte en una enorme y embravecida criatura. Para empeorar más las cosas, pronto se descubre que existen otros animales con la misma alteración. Cuando estos depredadores alfa recién creados arrasan Norteamérica destruyendo todo lo que interpone en su camino, Okoye se une a un ingeniero genético sin prestigio para conseguir un antídoto y se abre paso en un cambiante campo de batalla, no solo para frenar una catástrofe mundial sino para salvar a la aterradora criatura que una vez fue su amigo', 'Brad Peyton', '2018-04-13', '\r\n.\\img\\cartelesPeli\\rampage.jpg', 2, 'Dwayne Johnson, Jake Lacy, Jeffrey Dean Morgan, Joe Manganiello, Malin Åkerman, Naomie Harris'),
(14, 'Borg McEnroe. La película', 'Biografía', '+7', '107', 'Wimbledon 1980, el sueco imperturbable Björn Borg (Sverrir Gudnason) y el temperamental norteamericano John McEnroe (Shia LaBeouf) se enfrentan en una final legendaria que marca la historia del tenis. Dos iconos de este deporte completamente opuestos que se convirtieron en leyenda. Fuego y hielo en la pista. La película que recrea una de las mayores rivalidades deportivas de todos los tiempos.', 'Janus Metz Pedersen', '2018-05-18', '.\\img\\cartelesPeli\\mcenroe.jpg', 4, 'Björn Granath, David Bamber, Shia Labeouf, Stellan Skarsgård, Sverrir Gudnason, Tuva Novotny'),
(15, 'Las estrellas de cine no mueren en Liverpool', 'Romance', '+12', '105', 'El 29 de septiembre de 1981 el actor británico Peter Turner (Jamie Bell) recibe una llamada inesperada: su ex amante, la ganadora del Oscar Gloria Grahame (Annette Bening), ha sufrido un colapso en un hotel de Lancaster. Mientras ella se niega a ser atendida por los médicos, a él no le queda más remedio que ir a buscarla para llevársela a su humilde casa familiar en Liverpool. Allí, mientras cuida de ella, revivirá todo lo que les unió durante años y también lo que les separó.', 'Paul Mcguigan', '2018-05-18', '.\\img\\cartelesPeli\\estrellas.jpg', 6, 'Annette Bening, Jamie Bell, Julie Walters, Kenneth Cranham, Leanne Best, Stephen Graham'),
(16, 'Ready Player One', 'Ciencia Ficción', '+7', '140', 'En el año 2045, el mundo está al borde del caos y del colapso. Sin embargo, la gente ha encontrado la salvación en OASIS, un enorme universo de realidad virtual creado por el brillante y excéntrico James Halliday (Mark Rylance). Cuando Halliday fallece, deja su inmensa fortuna a la primera persona que encuentre un huevo de Pascua digital que ha escondido en algún lugar de OASIS, desatando una competición que tiene enganchado al mundo entero. Cuando el joven e insólito héroe Wade Watts (Tye Sheridan) decide unirse a la competición, se ve inmerso en una vertiginosa caza del tesoro, controlada por el mundo real, en un universo fantástico de misterios, descubrimientos y peligros.', 'Steven Spielberg', '2018-03-29', '.\\img\\cartelesPeli\\readyplayerone.jpg', 5, 'Ben Mendelsohn, Hannah John-kamen, Mark Rylance, Olivia Cooke, Simon Pegg, Tye Sheridan'),
(17, '12 valientes', 'Guerra', '+16', '129', 'En los días posteriores al 11-S, un equipo de Fuerzas Especiales estadounidense comandado por el capitán Mitch Nelson (Chris Hemsworth) es elegido para ser los primeros soldados americanos en responder al ataque. El equipo es trasladado a las remotas y yermas tierras del norte de Afganistán, donde deberán convencer al general Abdul Rashid Dostum (Navid Negahban) para unir fuerzas y luchar contra su adversario común: los talibanes y Al Qaeda. Para ello, los americanos deberán adoptar las tácticas de los soldados afganos a caballo y aprender a respetarse y confiar entre ellos ante un enemigo despiadado que les supera en número y no hace prisioneros.', 'Nicolai Fuglsig', '2018-05-04', '.\\img\\cartelesPeli\\12valientes.jpg', 7, 'Chris Hemsworth, Geoff Stults, Michael Peña, Michael Shannon, Navid Negahban, Trevante Rhodes'),
(18, 'El taller de escritura', 'Drama', '+12', '114', 'Antoine (Matthieu Lucci) está realizando un taller de escritura, donde se dedica a redactar relatos de novela negra junto a jóvenes marginados. Esta tranquilidad se ve turbada cuando comienzan a iniciarse conflictos entre los participantes del curso a la par que surgen relaciones románticas entre ellos.', 'Laurent Cantet', '2018-05-18', '.\\img\\cartelesPeli\\eltallerdeescritura.jpg', 8, 'Florian Beaujean, Julien Souve, Marina Foïs , Matthieu Lucci, Olivier Thouret, Warda Rammach'),
(19, 'La casa torcida', 'Drama', '+12', '93', ' Tres generaciones de la familia de Arístides Leónides, multimillonario griego, conviven una curiosa mansión de estructura inclinada. La rutina de la mansión se trunca cuando Arístides es envenenado, ya que se sospecha que el culpable ha de ser alguien de la familia. Sophia (Stefanie Martini) pedirá entonces a Charles (Max Irons), un antiguo amante, que haga lo posible por esclarecer el asesinato. El caso se complicará con más muertes y con el hecho de que nadie tiene una firme coartada.', 'Gilles Paquet-brenner', '2018-04-13', '.\\img\\cartelesPeli\\lacasatorcida.jpg', 1, 'Christina Hendricks, Glenn Close, Honor Kneafsey, Max Irons, Stefanie Martini, Terence Stamp'),
(20, 'Roman J. Israel, Esq.', 'Crimen', '+7', '122', 'Roman J. Israel, Esq. se sitúa en el lado oculto del saturado sistema penal de Los Ángeles. Denzel Washington interpreta a un abogado defensor idealista y con vocación, cuya vida cambia drásticamente cuando su mentor, un ícono de los derechos civiles, muere. Cuando es contratado por una empresa dirigida por uno de los antiguos estudiantes del legendario hombre, el ambicioso abogado Geoge Pierce (Colin Farrel), y comienza una amistad con una joven luchadora por la igualdad de derechos (Carmen Ejogo) una turbulenta serie de eventos desafían el activismo que siempre ha definido la carrera de Roman.', 'Dan Gilroy', '2018-05-04', '.\\img\\cartelesPeli\\roman.jpg', 7, 'Amanda Warren, Carmen Ejogo, Colin Farrell, Denzel Washington, Shelley Hennig, Tony Plana'),
(21, 'Sansón', 'Acción', '+12', '109', 'Después de perder el amor de su vida, un joven hebreo con una fuerza sobrenatural defiende a su pueblo, sacrificando todo para vengar su amor, su pueblo y su Dios.', 'Bruce Macdonald', '2018-05-18', '.\\img\\cartelesPeli\\sanson.jpg', 7, 'Billy Zane, Frances Sholto-douglas, Jackson Rathbone, Lindsay Wagner, Rutger Hauer, Taylor James');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculasyusuarios`
--

CREATE TABLE `peliculasyusuarios` (
  `idpelicula` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `comentario` varchar(400) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculasyusuarios`
--

INSERT INTO `peliculasyusuarios` (`idpelicula`, `iduser`, `valoracion`, `comentario`) VALUES
(7, 4, 8, 'Me ha encantado la pelicula, va sobre conejitos :)'),
(4, 5, 10, 'Fascinante Da Vinci'),
(1, 3, 1, 'Muy friki, no me gusta.'),
(2, 4, 4, 'Me hubiera gustado ser el protagonista.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesiones`
--

CREATE TABLE `sesiones` (
  `fecha` date NOT NULL,
  `hora` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sesiones`
--

INSERT INTO `sesiones` (`fecha`, `hora`) VALUES
('2018-06-06', '18:00'),
('2018-06-06', '18:10'),
('2018-06-06', '18:30'),
('2018-06-06', '19:05'),
('2018-06-06', '19:30'),
('2018-06-06', '19:45'),
('2018-06-06', '20:00'),
('2018-06-06', '20:05'),
('2018-06-06', '20:20'),
('2018-06-06', '20:30'),
('2018-06-06', '20:45'),
('2018-06-06', '21:00'),
('2018-06-06', '21:30'),
('2018-06-06', '22:00'),
('2018-06-06', '22:40'),
('2018-06-07', '18:00'),
('2018-06-07', '18:10'),
('2018-06-07', '18:30'),
('2018-06-07', '19:05'),
('2018-06-07', '19:30'),
('2018-06-07', '19:45'),
('2018-06-07', '20:00'),
('2018-06-07', '20:05'),
('2018-06-07', '20:20'),
('2018-06-07', '20:30'),
('2018-06-07', '20:45'),
('2018-06-07', '21:00'),
('2018-06-07', '21:30'),
('2018-06-07', '22:00'),
('2018-06-07', '22:40'),
('2018-06-07', '16:00'),
('2018-06-07', '16:30'),
('2018-06-07', '17:00'),
('2018-06-07', '17:10'),
('2018-06-07', '17:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `iduser` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `avatar` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`iduser`, `nombre`, `password`, `avatar`, `correo`) VALUES
(3, 'SergioCobos', '123456', '.\\img\\avatarUser\\msn.jpg', 'sergiocobosdaw@gmail.com'),
(4, 'Daki', '123456', '.\\img\\avatarUser\\msn.jpg', 'david.luna.fernandez@gmail.com'),
(5, 'Yura', '123456', '.\\img\\avatarUser\\msn.jpg', 'yura.turlay22@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cines`
--
ALTER TABLE `cines`
  ADD PRIMARY KEY (`idcine`),
  ADD KEY `idempresa` (`idempresa`);

--
-- Indices de la tabla `cinesysesiones`
--
ALTER TABLE `cinesysesiones`
  ADD KEY `idcine` (`idcine`),
  ADD KEY `fecha` (`fecha`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `cinesysesionesypeliculas`
--
ALTER TABLE `cinesysesionesypeliculas`
  ADD KEY `idcine` (`idcine`),
  ADD KEY `idpelicula` (`idpelicula`),
  ADD KEY `fecha` (`fecha`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `cinesyusuarios`
--
ALTER TABLE `cinesyusuarios`
  ADD KEY `idcine` (`idcine`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`idpelicula`);

--
-- Indices de la tabla `peliculasyusuarios`
--
ALTER TABLE `peliculasyusuarios`
  ADD KEY `idpelicula` (`idpelicula`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `sesiones`
--
ALTER TABLE `sesiones`
  ADD KEY `fecha` (`fecha`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cines`
--
ALTER TABLE `cines`
  MODIFY `idcine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `idpelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cines`
--
ALTER TABLE `cines`
  ADD CONSTRAINT `cines_ibfk_1` FOREIGN KEY (`idempresa`) REFERENCES `empresas` (`idempresa`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cinesysesiones`
--
ALTER TABLE `cinesysesiones`
  ADD CONSTRAINT `cinesysesiones_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `sesiones` (`fecha`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesysesiones_ibfk_2` FOREIGN KEY (`hora`) REFERENCES `sesiones` (`hora`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesysesiones_ibfk_3` FOREIGN KEY (`idcine`) REFERENCES `cines` (`idcine`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cinesysesionesypeliculas`
--
ALTER TABLE `cinesysesionesypeliculas`
  ADD CONSTRAINT `cinesysesionesypeliculas_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `sesiones` (`fecha`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesysesionesypeliculas_ibfk_2` FOREIGN KEY (`hora`) REFERENCES `sesiones` (`hora`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesysesionesypeliculas_ibfk_3` FOREIGN KEY (`idcine`) REFERENCES `cines` (`idcine`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesysesionesypeliculas_ibfk_4` FOREIGN KEY (`idpelicula`) REFERENCES `peliculas` (`idpelicula`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cinesyusuarios`
--
ALTER TABLE `cinesyusuarios`
  ADD CONSTRAINT `cinesyusuarios_ibfk_1` FOREIGN KEY (`idcine`) REFERENCES `cines` (`idcine`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesyusuarios_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `usuarios` (`iduser`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `peliculasyusuarios`
--
ALTER TABLE `peliculasyusuarios`
  ADD CONSTRAINT `peliculasyusuarios_ibfk_1` FOREIGN KEY (`idpelicula`) REFERENCES `peliculas` (`idpelicula`) ON UPDATE CASCADE,
  ADD CONSTRAINT `peliculasyusuarios_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `usuarios` (`iduser`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
