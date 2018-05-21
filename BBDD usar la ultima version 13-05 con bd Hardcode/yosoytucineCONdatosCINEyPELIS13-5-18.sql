-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-05-2018 a las 13:37:26
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
(1, 1, 'Parquesur', 40.33837, -3.731716, 'Av. de Gran Bretaña', 28916, 'Leganés', 123456789, 5.2, 'https://www.cinesa.es/Cines/Parquesur'),
(2, 1, 'Príncipe Pío', 40.422237, -3.720485, 'Paseo de la Florida, 2', 28008, 'Madrid', 915487388, 7, 'https://www.cinesa.es/Cines/Principe-Pio'),
(3, 3, 'Ciudad de la Imagen', 0, 0, 'Calle Edgar Neville, s/n,', 28223, 'Madrid', 0, 8, 'https://kinepolis.es/cines/kinepolis-madrid-ciudad-de-la-imagen'),
(4, 2, 'TresAguas', 0, 0, 'Av. San Martín de Valdeiglesias,24', 28922, ' Alcorcón', 0, 4, 'http://yelmocines.es/cartelera/madrid/yelmo-cines-tresaguas'),
(5, 2, 'Icaria', 0, 0, 'Carrer de Salvador Espriu, 61', 8005, 'Barcelona', 902220922, 7, 'http://yelmocines.es/cartelera/barcelona/yelmo-cines-icaria'),
(6, 2, 'Ideal', 0, 0, 'Calle del Dr Cortezo, 6', 28012, 'Madrid', 913690669, 1, 'http://www.yelmocines.es/cartelera/madrid/yelmo-cines-ideal'),
(7, 3, 'Diversia', 0, 0, 'Av. de Bruselas, 21', 28108, 'Madrid', 916622462, 6, 'https://kinepolis.es/cines/kinepolis-madrid-diversia'),
(8, 1, 'Xanadú', 0, 0, 'Calle Puerto de Navacerrada, km 23,5', 28939, 'Madrid', 902333231, 8, 'https://www.cinesa.es/Cines/Xanadu'),
(9, 1, 'Diagonal', 0, 0, 'Carrer de Santa Fe de Nou Mèxic, s/n,', 8021, 'Barcelona', 0, 7, 'https://www.cinesa.es/Cines/Diagonal'),
(10, 1, 'Heron City Barcelona', 0, 0, 'Avinguda de Rio de Janeiro, 42,', 8016, 'Barcelona', 902333231, 2, 'https://www.cinesa.es/Cines/Heron-City-Barcelona'),
(11, 1, 'La Maquinista', 0, 0, 'Carrer de Potosí, 2', 8030, 'Barcelona', 0, 1, 'https://www.cinesa.es/Cines/La-Maquinista'),
(12, 2, 'Comedia', 0, 0, 'Passeig de Gràcia, 13', 8007, 'Barcelona', 933013099, 10, 'http://yelmocines.es/cartelera/barcelona/yelmo-cines-comedia');

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
(1, '2018-02-05', '17:00', 9.1),
(2, '2018-02-07', '17:00', 5.8),
(1, '2018-02-07', '20:00', 4.9),
(1, '2018-02-05', '17:00', 4.9);

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
(2, 1, '2018-02-05', '20:00'),
(1, 2, '2018-02-05', '20:00');

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
(3, 3, 10, 'Kinepolis nunca decepciona.'),
(8, 4, 5, 'No esta mal'),
(1, 5, 1, 'No me ha gustada nada este cine, esta sucio.');

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
(1, 'Vengadores: Infinity War', 'Acción', '+12', '149', 'engadores: Infinity War seguirá la lucha de los superhéroes de Marvel contra el mayor villano al que se han enfrentado nunca: Thanos. Su único objetivo será detener a este poderoso antagonista e impedir que se haga con el control de la galaxia. De nuevo veremos al grupo formado por Iron Man, Capitán América, Viuda negra, Ant-Man, Ojo de Halcón, Thor y Hulk, entre otros. En su nueva e impactante aventura, las Gemas del Infinito estarán en juego, unos querrán protegerlas y otros controlarlas, ¿quién ganará?', 'Anthony Russo', '2018-04-27', '.\\img\\cartelesPeli\\infinitiwar.jpg', 9, 'Chris Evans, Chris Hemsworth, Chris Pratt, Mark Ruffalo, Robert Downey Jr., Scarlett Johansson'),
(2, '#SexPact', 'Comedia', '+16', '102', 'Cuando una madre y dos padres descubren que sus respectivas hijas han hecho un pacto para perder la virginidad la noche del baile de fin de curso, planean una operación secreta para impedir que las adolescentes cumplan sus propósitos.', 'Kay Cannon', '2018-05-04', '.\\img\\cartelesPeli\\sexpact.jpg', 3, 'Amelia Oswald, Audrey Casson, Ike Barinholtz, John Cena, Kathryn Newton, Leslie Mann'),
(3, 'Campeones', 'Comedia', 'TP', '124', 'Javier Gutiérrez da vida al protagonista, Marco, un entrenador profesional de baloncesto que se ve, en medio de una crisis personal, entrenando a un equipo compuesto por personas con discapacidad intelectual. Lo que comienza como un castigo se acaba convirtiendo en una lección de vida.', 'Javier Fesser', '2018-04-06', '.\\img\\cartelesPeli\\campeones.jpg', 2, 'Javier Gutiérrez, Athenea Mata, Juan Margallo, Luisa Gavassa, Daniel Freire, Jesús Vidal, Sergio Olmo, Julio Fernández, Jesús Lago, José De Luna, Fran Fuentes, Gloria Ramos, Alberto Nieto Fernández, Roberto Chinchilla, Stefan López'),
(4, 'Leo Da Vinci: Misión Mona Lisa', 'Animación ', 'TP', '82', 'La mejor amiga de Leonardo, Gioconda, tiene problemas. Decidido a ayudarla, el joven genio tiene una idea emocionante y loca a partes iguales: encontrar el barco pirata que se hundió años atrás cerca de la Isla de Montecristo y recuperar el fabuloso tesoro que se dice que contiene, consiguiendo con ello resolver todos los problemas de Gioconda.', 'Sergio Manfio', '2018-04-13', '.\\img\\cartelesPeli\\leodavinci.jpg', 6, ''),
(5, 'Mi familia del norte', 'Comedia', 'TP', '107', 'Valentin D. es un reconocido arquitecto y junto con Constance Brandt, una famosa diseñadora de moda, forman una de las parejas más influyentes de la sociedad. Pero lo que nadie sabe de Valentin es que proviene de una humilde familia de chatarreros de la clase obrera del norte de Francia. Después de sufrir un inesperado accidente, sus orígenes saldrán a la luz cuando su madre, su hermano y su cuñada entren en escena.', 'Dany Boon', '2018-05-11', '.\\img\\cartelesPeli\\mifamiliadelnorte.jpg', 7, 'Dany Boon, Guy Lecluyse, Laurence Arné, Line Renaud, Pierre Richard, Valérie Bonneton'),
(6, 'Noche de juegos', 'Misterio', '+12', '100', 'Max y Annie son una pareja que forman parte de un grupo de amigos que queda todas las semanas para una noche de juegos organizada por uno de ellos. En una de esas noches Brooks (Kyle Chandler), el carismático hermano de Max, organiza un misterioso juego en el que sus amigos deberán resolver un asesinato con falsos matones y falsos agentes. Pero, cuando Brooks es secuestrado, los 6 jugadores comienzan a dudar sobre lo que es falso y lo que es real, y se ven inmersos en una noche caótica en la que deberán resolver el caso.', 'John Francis Daley', '2018-04-27', 'G:\\GIT PROYECTO\\YoSoyTuCine\\WebContent\\img\\cartelesPeli\\nochedejuegos.jpg', 10, 'Billy Magnussen, Jason Bateman, Kylie Bunbury, Lamorne Morris, Rachel Mcadams, Sharon Horgan'),
(7, 'Peter Rabbit', 'Animación', 'TP', '94', ' Peter Rabbit no es un conejo cualquiera. Es un rebelde que viste camisa azul y no lleva pantalones. Peter vive junto a su familia y amigos, un grupo variopinto de animales que incluye incluso a un zorro. Todos ellos harán de las suyas en la granja de los McGregor, lugar en cuyo jardín disponen de deliciosos vegetales. La fiesta animal ha empezado, y esto es solo el principio.', 'Will Gluck', '2018-03-23', '.\\img\\cartelesPeli\\peterrabbit', 3, 'Dani Rovira (voz), Belén Cuesta (voz), Sílvia Abril (voz), Domhnall Gleeson, Rose Byrne'),
(8, 'Sherlock Gnomes', 'Animación', 'TP', '86', 'Los adorables gnomos de jardín de Gnomeo y Julieta han vuelto para vivir una nueva aventura en Londres. Gnomeo y Julieta acaban de llegar a la ciudad con sus amigos y familiares, y su principal preocupación consiste en preparar su nuevo jardín para la primavera. No obstante, no tardan en descubrir que alguien está secuestrando gnomos de jardín por todo Londres. Cuando Gnomeo y Julieta vuelven a su jardín y descubren que todo el mundo ha desaparecido de allí, solo hay un gnomo al que pueden recurrir...\r\n\r\nSherlock Gnomes, el famoso detective y protector de los gnomos de jardín de Londres se presenta junto a su acompañante Watson para investigar el caso. El misterio arrastrará a nuestros gnomos a una desternillante aventura en la que conocerán nuevas figuras ornamentales y explorarán el lado desconocido de la ciudad.', 'John Stevenson', '2018-05-11', '.\\img\\cartelesPeli\\gnomes.jpg', 1, 'Chiwetel Ejiofor, Emily Blunt, James Mcavoy, Johnny Depp, Mary J. Blige, Stephen Merchant'),
(9, 'Un Lugar Tranquilo', 'Drama', '+16', '95', 'Sigue la historia de una familia que vive en una casa en el bosque cuidándose de no emitir ningún sonido. Si no te escuchan, no pueden cazarte...', 'John Krasinski', '2018-04-20', '.\\img\\cartelesPeli\\unlugartranquilo.jpg', 2, 'Cade Woodward, Emily Blunt, John Krasinski, Millicent Simmonds, Noah Jupe'),
(10, 'Verdad o Reto', 'Suspense', '+16', '100', 'Una inofensiva partida de \"Verdad o reto\" entre un grupo de amigos acaba convirtiéndose en un juego letal cuando alguien - o algo - empieza a castigar a los que mienten o no aceptan el reto.', 'Jeff Wadlow', '2018-05-11', '.\\img\\cartelesPeli\\verdadoreto', 4, 'Landon Liboiron, Lucy Hale, Nolan Gerard Funk, Sophia Taylor Ali, Tyler Posey, Violett Beane');

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
(1, 3, 9, 'La mejor pelicula del año.'),
(2, 4, 6, 'Me han gustado mucho las actrices.'),
(4, 5, 10, 'Fascinante');

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
('2018-02-05', '17:00'),
('2018-02-07', '20:00');

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
  MODIFY `idcine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `idempresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `idpelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
