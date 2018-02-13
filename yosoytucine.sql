-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2018 a las 13:47:04
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

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
-- Estructura de tabla para la tabla `cine`
--

CREATE TABLE `cine` (
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinesesion`
--

CREATE TABLE `cinesesion` (
  `idcine` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cinesesionpelicula`
--

CREATE TABLE `cinesesionpelicula` (
  `idcine` int(11) NOT NULL,
  `idpelicula` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cineusuario`
--

CREATE TABLE `cineusuario` (
  `idcine` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `comentario` varchar(400) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idempresa` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `logo` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `idpelicula` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `edadrecomendada` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `duracion` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `sinopsis` varchar(4000) COLLATE utf8_spanish_ci NOT NULL,
  `director` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechaestreno` date NOT NULL,
  `cartel` blob NOT NULL,
  `valoracion` float NOT NULL,
  `actores` varchar(4000) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculausuario`
--

CREATE TABLE `peliculausuario` (
  `idpelicula` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `comentario` varchar(400) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `fecha` date NOT NULL,
  `hora` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `iduser` int(11) NOT NULL,
  `nombre` int(100) NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `avatar` blob NOT NULL,
  `correo` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`idcine`),
  ADD KEY `idempresa` (`idempresa`);

--
-- Indices de la tabla `cinesesion`
--
ALTER TABLE `cinesesion`
  ADD KEY `idcine` (`idcine`),
  ADD KEY `fecha` (`fecha`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `cinesesionpelicula`
--
ALTER TABLE `cinesesionpelicula`
  ADD KEY `idcine` (`idcine`),
  ADD KEY `idpelicula` (`idpelicula`),
  ADD KEY `fecha` (`fecha`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `cineusuario`
--
ALTER TABLE `cineusuario`
  ADD KEY `idcine` (`idcine`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idempresa`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`idpelicula`);

--
-- Indices de la tabla `peliculausuario`
--
ALTER TABLE `peliculausuario`
  ADD KEY `idpelicula` (`idpelicula`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD KEY `fecha` (`fecha`),
  ADD KEY `hora` (`hora`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cine`
--
ALTER TABLE `cine`
  MODIFY `idcine` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `idpelicula` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cine`
--
ALTER TABLE `cine`
  ADD CONSTRAINT `cine_ibfk_1` FOREIGN KEY (`idempresa`) REFERENCES `empresa` (`idempresa`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cinesesion`
--
ALTER TABLE `cinesesion`
  ADD CONSTRAINT `cinesesion_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `sesion` (`fecha`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesesion_ibfk_2` FOREIGN KEY (`hora`) REFERENCES `sesion` (`hora`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesesion_ibfk_3` FOREIGN KEY (`idcine`) REFERENCES `cine` (`idcine`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cinesesionpelicula`
--
ALTER TABLE `cinesesionpelicula`
  ADD CONSTRAINT `cinesesionpelicula_ibfk_1` FOREIGN KEY (`fecha`) REFERENCES `sesion` (`fecha`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesesionpelicula_ibfk_2` FOREIGN KEY (`hora`) REFERENCES `sesion` (`hora`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesesionpelicula_ibfk_3` FOREIGN KEY (`idcine`) REFERENCES `cine` (`idcine`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cinesesionpelicula_ibfk_4` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`idpelicula`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `cineusuario`
--
ALTER TABLE `cineusuario`
  ADD CONSTRAINT `cineusuario_ibfk_1` FOREIGN KEY (`idcine`) REFERENCES `cine` (`idcine`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cineusuario_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `usuario` (`iduser`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `peliculausuario`
--
ALTER TABLE `peliculausuario`
  ADD CONSTRAINT `peliculausuario_ibfk_1` FOREIGN KEY (`idpelicula`) REFERENCES `pelicula` (`idpelicula`) ON UPDATE CASCADE,
  ADD CONSTRAINT `peliculausuario_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `usuario` (`iduser`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
