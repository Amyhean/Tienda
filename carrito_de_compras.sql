-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2020 a las 01:23:32
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito de compras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `ID` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `Total` double NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorías`
--

CREATE TABLE `categorías` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Descripción` varchar(400) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Imagen` varchar(400) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL,
  `Nombre` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Descripción` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Imagen` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID`, `Nombre`, `Descripción`, `Imagen`, `Precio`) VALUES
(1, 'Clases de historia', 'En este curso encontraras el conocimiento necesario para conocer la historia de nuestro país.\r\nImagina el mundo de posibilidades que te espera,', 'taller.jpg', 900),
(2, 'Clases de Yoga', 'Entra en equilibrio con tu mente, cuerpo y alma.', 'Taller (3).jpg', 800),
(3, 'Tu primera Página Web', 'Capacítate y crea tu primera Página Web, con lenguaje HTML5, CSS y JS.\r\nAprenderás las habilidades necesarias para ser un programador profesional.', 'Taller (9).jpg', 1569),
(4, 'Mi Historia CoViD', 'En este curso encontraras como manejar tus emociones ante diversas circunstancias.', 'Taller (5).jpg', 1200),
(5, 'Ecuaciones desde cero', 'Sin tienes malas notas por que no entiendes Ecuaciones, este curso es para ti, adquiere las habilidades necesarias para poder resolver ecuaciones de cualquier tipo', 'Taller (2).jpg', 2588),
(6, 'Aprende, Jugando y Leyendo', 'Con la divertida Maestra Deneb Pasaras horas de diversión garantizadas, mientras adquieres conocimientos y habilidades para mejorar tus notas escolares.', 'Taller (4).jpg', 900),
(7, '¿Qué hacer con tu estrés?', 'Aprende a canalizar tus emociones, descubre tu verdadero ser.', 'Taller (6).jpg', 1100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_venta`
--

CREATE TABLE `productos_venta` (
  `ID` int(11) NOT NULL,
  `ID_venta` int(11) NOT NULL,
  `ID_Producto` int(11) NOT NULL,
  `Cantidad` double NOT NULL,
  `Precio` double NOT NULL,
  `Subtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Teléfono` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Email` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Password` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `img_perfil` varchar(300) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Nivel` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `ID` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `Total` double NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
