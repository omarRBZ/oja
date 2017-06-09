-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 09-06-2017 a las 07:44:11
-- Versión del servidor: 10.1.10-MariaDB
-- Versión de PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `consultorioSpa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabinas`
--

CREATE TABLE `cabinas` (
  `id_cabina` int(4) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cabinas`
--

INSERT INTO `cabinas` (`id_cabina`, `nombre`) VALUES
(1, 'cabina facial'),
(2, 'cabina masaje'),
(3, 'cabina depilacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermera`
--

CREATE TABLE `enfermera` (
  `id_enfermera` int(100) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido_Paterno` varchar(30) NOT NULL,
  `Apellido_Materno` varchar(30) NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `edad` varchar(15) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `Telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `enfermera`
--

INSERT INTO `enfermera` (`id_enfermera`, `Nombre`, `Apellido_Paterno`, `Apellido_Materno`, `FechaNacimiento`, `edad`, `sexo`, `correo`, `Telefono`) VALUES
(1, 'Anahi', '', '', '0000-00-00', '', 'femenino', '', ''),
(2, 'susy', '', '', '0000-00-00', '', 'femenino', '', ''),
(3, 'clara', '', '', '0000-00-00', '', 'femenino', '', ''),
(4, 'erika', '', '', '0000-00-00', '', 'femenino', '', ''),
(5, 'laura', '', '', '0000-00-00', '', 'femenino', '', ''),
(6, 'victoria', '', '', '0000-00-00', '', 'femenino', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido_Paterno` varchar(30) NOT NULL,
  `apellido_Materno` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `sexo` varchar(15) NOT NULL,
  `edad` int(100) NOT NULL,
  `fecha_de nacimiento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `porcion_tratamiento` int(10) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `cantidad_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `id_tratamiento` int(100) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `tipo` text NOT NULL,
  `costo` int(5) NOT NULL,
  `tiempo` time(6) NOT NULL,
  `cabina` int(4) NOT NULL,
  `simultaneos` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`id_tratamiento`, `nombre`, `tipo`, `costo`, `tiempo`, `cabina`, `simultaneos`) VALUES
(1, 'masaje espalda', 'masaje', 250, '00:00:00.000000', 3, 0),
(2, 'masaje relajante', 'masaje', 350, '01:00:00.000000', 3, 0),
(3, 'masaje pindas herbales', 'masaje', 500, '01:00:00.000000', 3, 0),
(4, 'limpieza facial', 'facial', 500, '01:15:00.000000', 2, 4),
(5, 'control nutricional', 'corporales', 300, '01:00:00.000000', 1, 0),
(6, 'bigote', 'depilacion', 300, '00:30:00.000000', 2, 0),
(7, 'bigote', 'cera miel', 300, '00:30:00.000000', 1, 0),
(8, 'capilares', 'capilares', 300, '02:00:00.000000', 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cabinas`
--
ALTER TABLE `cabinas`
  ADD PRIMARY KEY (`id_cabina`);

--
-- Indices de la tabla `enfermera`
--
ALTER TABLE `enfermera`
  ADD PRIMARY KEY (`id_enfermera`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`id_paciente`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`id_tratamiento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cabinas`
--
ALTER TABLE `cabinas`
  MODIFY `id_cabina` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `id_tratamiento` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
