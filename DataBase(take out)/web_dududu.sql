-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2022 a las 00:58:47
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web_dududu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `ID` int(11) NOT NULL,
  `ruta` varchar(250) NOT NULL,
  `titulo` varchar(75) NOT NULL,
  `imgPortadaCel` varchar(250) NOT NULL,
  `imgPortadaCompu` varchar(250) NOT NULL,
  `resumenPagina` varchar(500) NOT NULL,
  `resumenMetatag` varchar(160) NOT NULL,
  `palabrasClave` varchar(250) NOT NULL,
  `autor` varchar(75) NOT NULL DEFAULT 'DUDUDU',
  `fecha` varchar(50) NOT NULL,
  `categoria1` varchar(75) NOT NULL,
  `categoria2` varchar(75) NOT NULL,
  `categoria3` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`ID`, `ruta`, `titulo`, `imgPortadaCel`, `imgPortadaCompu`, `resumenPagina`, `resumenMetatag`, `palabrasClave`, `autor`, `fecha`, `categoria1`, `categoria2`, `categoria3`) VALUES
(1, 'lo-primero-que-necesitas-para-tener-un-sitio-web', 'Lo primero que necesitas para tener un sitio web', '/assets/images/blog/lo-primero-que-necesitas-para-tener-un-sitio-web/portada_1ro_mecesitas_sitio_web_cel.webp', '/assets/images/blog/lo-primero-que-necesitas-para-tener-un-sitio-web/portada_1ro_mecesitas_sitio_web.webp', 'Con el acceso al internet se puede escuchar muchos términos y conceptos, pero puede ser confuso darle un contexto a todo ello, en este articulo te daré mi opinión para tener un sitio web.', 'Con el acceso al internet se puede escuchar muchos términos y conceptos, pero puede ser confuso darle un contexto a todo ello.', 'Web, hosting', 'DUDUDU', '31/05/2022', 'Introducción', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolio`
--

CREATE TABLE `portafolio` (
  `ID` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  `portadaCel` varchar(250) NOT NULL,
  `portadaCompu` varchar(250) NOT NULL,
  `titulo` varchar(125) NOT NULL,
  `categoria` varchar(125) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `detalles` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `portafolio`
--

INSERT INTO `portafolio` (`ID`, `url`, `portadaCel`, `portadaCompu`, `titulo`, `categoria`, `descripcion`, `detalles`) VALUES
(1, 'https://alvaluna.groupcusco.com/', '/assets/images/briefcase/AlvaLuna/AlvaLuna-portada-celular.webp', '/assets/images/briefcase/AlvaLuna/AlvaLuna-portada-ordenador.webp', 'SITIO WEB DE ALVALUNA', 'Diseño y desarrollo de sitio web con CMS.', 'Es un sitio web para una agencia de marketing aliada.', 'El sitio web fue hecho con WordPress.org junto con algunos plugins como Elementor (como editor visual para darle estilos), Rank Math SEO (para el posicionamiento en la web), Hotjar y Google Analytics (para las estadísticas del sitio web).'),
(2, 'https://dududu.groupcusco.com/', '/assets/images/briefcase/DUDUDU/DUDUDU-portada-v2-celular.webp', '/assets/images/briefcase/DUDUDU/DUDUDU-portada-v2-ordenador.webp', 'SITIO WEB DE DUDUDU', 'Diseño y desarrollo de sitio web con código.', 'Es un sitio web para nuestra agencia web.', 'El sitio web fue programado con código desde cero, inició con HTML y CSS, pero actualmente usa NODE.JS (PUG, JavaScript y CSS) y MySQL. Sí, ya tenemos Backend! :)\r\nPara el SEO se usa meta-tags, Rich snippets y un correcto uso de las etiquetas de \"html\". \r\nTiene algunos scripts para las estadísticas de la web como Hotjar y Google Analytics.'),
(3, 'https://jjonasrestaurantcusco.com/', '/assets/images/briefcase/Jjonas/Jjonas-portada-celular.webp', '/assets/images/briefcase/Jjonas/Jjonas-portada-ordenador.webp', 'SITIO WEB DE JJONAS', 'Diseño y desarrollo de sitio web con CMS.', 'Es un sitio web para el restaurante Jjonas ubicado en el centro del Cusco, que quería una web personalizada.', 'El sitio web fue hecho con WordPress.org junto con algunos plugins como Divi (como editor visual para darle estilos), Rank Math SEO (para el posicionamiento en la web), Hotjar y Google Analytics (para las estadísticas del sitio web). \r\nAlgunos plugins adicionales son TranslatePress para la traducción del idioma. \r\nAdemás programó fragmentos de código para el menú.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `portafolio`
--
ALTER TABLE `portafolio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
