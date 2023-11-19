-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2023 a las 11:36:01
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(30) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `valoracion` decimal(11,5) NOT NULL,
  `comentario` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `nombre_usuario`, `id_producto`, `valoracion`, `comentario`) VALUES
(1, 'Gonzalo', 2, 5.00000, 'Ta bien'),
(3, 'pepe', 2, 1.00000, 'No Ta Bien'),
(5, 'pepe', 5, 5.00000, 'Ta bien'),
(6, 'pepe', 7, 4.00000, 'Me encanta'),
(7, 'Larry Kaleche', 7, 1.00000, 'No me encanta'),
(8, 'pepe', 6, 5.00000, 'Me gusta mucho la gamba'),
(9, 'Gonzalo', 6, 1.00000, 'Solo venia una gamba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(7,2) NOT NULL,
  `imagen` varchar(200) DEFAULT 'imagendefecto.png',
  `puntuacion_total` decimal(7,2) NOT NULL DEFAULT 0.00,
  `numero_reseñas` int(11) NOT NULL DEFAULT 0,
  `puntuacion_media` decimal(5,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `puntuacion_total`, `numero_reseñas`, `puntuacion_media`) VALUES
(1, 'Producto por defecto', 'a', 0.99, 'imagendefecto.png', 63.00, 15, 4.200),
(5, 'Pollo de goma', 'Es un pollo. Es de Goma. No está vivo. No es comestible', 2.38, '2023-11-12 - 13-21-05-pollo-de-goma.jpg', 10.00, 2, 5.000),
(6, 'Gamba', 'Es una gamba. En singular', 3.00, '2023-11-12 - 13-12-17-Gamba.jpg', 6.00, 2, 3.000),
(7, 'Pollo (Sin Goma)', 'En un pollo. No es de goma. Es comestible', 8.99, '2023-11-12 - 13-14-48-pollo-crudo.jpg', 5.50, 2, 2.750);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`) VALUES
(3, 'pepe', '1234'),
(4, 'Gonzalo', '1234'),
(5, 'Larry Kaleche', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
