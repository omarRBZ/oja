-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-06-2017 a las 07:43:39
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `nombre_doc` varchar(30) NOT NULL,
  `apellidoPaternodoc` varchar(30) NOT NULL,
  `apellidomaternodoc` varchar(30) NOT NULL,
  `telefonodoc` varchar(10) NOT NULL,
  `emaildoc` varchar(30) NOT NULL,
  `especialidaddoc` varchar(30) NOT NULL,
  `sexodoc` varchar(30) NOT NULL,
  `edaddoc` varchar(70) NOT NULL,
  `fecha_nacimintodoc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `doctor`
--

INSERT INTO `doctor` (`id`, `nombre_doc`, `apellidoPaternodoc`, `apellidomaternodoc`, `telefonodoc`, `emaildoc`, `especialidaddoc`, `sexodoc`, `edaddoc`, `fecha_nacimintodoc`) VALUES
(11, '', '', '', '', '', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidoPaterno` varchar(30) NOT NULL,
  `apellidoMaterno` varchar(30) NOT NULL,
  `donador` varchar(3) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `fecha_de_nacimiento` varchar(30) NOT NULL,
  `tipo de sangre` varchar(3) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `recomendacion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`id`, `nombre`, `apellidoPaterno`, `apellidoMaterno`, `donador`, `direccion`, `fecha_de_nacimiento`, `tipo de sangre`, `telefono`, `email`, `recomendacion`) VALUES
(6, 'omar', 'rojas', '', '', '', '', '', '', '', ''),
(7, 'omar ', 'rojas', 'beatriz', 'SI', 'calle tamarindo', '12/enero/92', '', '735234567', 'usa@gmail.com', 'esto es solo un mensaje'),
(8, 'omar ', 'rojas', 'beatriz', 'SI', 'calle tamarindo', '12/enero/92', 'O+', '735234567', 'usa@gmail.com', 'esto es solo un mensaje'),
(9, 'omar ', 'rojas', 'beatriz', 'SI', 'calle tamarindo', '12/enero/92', 'O+', '735234567', 'usa@gmail.com', 'esto es solo un mensaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `contrasena` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `user`, `contrasena`) VALUES
(1, 'admin', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
