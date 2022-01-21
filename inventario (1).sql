-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-01-2022 a las 21:30:41
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(11) UNSIGNED NOT NULL,
  `producto_id` int(11) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(25,2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `producto_id`, `cantidad`, `precio`, `fecha`) VALUES
(18, 45, 1, '10.00', '2021-06-15'),
(19, 45, 4, '40.00', '2021-06-15'),
(20, 45, 12, '120.00', '2021-05-12'),
(21, 46, 50, '500.00', '2021-06-29'),
(22, 45, 8, '80.00', '2021-07-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `file_name`, `file_type`) VALUES
(1, 'filter.jpg', 'image/jpeg'),
(2, 'afloja.jpg', 'image/jpeg'),
(3, 'bujia.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `cantidad` varchar(50) DEFAULT NULL,
  `compra_precio` decimal(25,2) DEFAULT NULL,
  `venta_precio` decimal(25,2) NOT NULL,
  `categoria_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `cantidad`, `compra_precio`, `venta_precio`, `categoria_id`, `media_id`, `fecha`) VALUES
(6, 'Faro de led LA27RDC', '8', '10.00', '10.00', 1, 0, '2021-06-11 18:13:58'),
(7, 'Lampara H6054 C1 12.8 V 65/35 W', '9', '10.00', '10.00', 1, 0, '2021-06-11 18:15:14'),
(8, 'Espuma de 1 componente fast bonding foam PU 1/500', '15', '10.00', '10.00', 1, 0, '2021-06-11 18:17:01'),
(9, 'Foco miniatura 12 V = 12 W BA15s', '60', '10.00', '10.00', 1, 0, '2021-06-11 18:18:56'),
(10, 'Lubricante multipronostico anticorrosion aflojatodo WB-50', '14', '10.00', '10.00', 1, 0, '2021-06-11 18:20:30'),
(11, 'SNAP Arrancador instantaneo BARDAHL', '11', '10.00', '10.00', 1, 0, '2021-06-11 18:21:43'),
(12, 'Cinta electrica de PVC de alto rendimineto y auto extinguible WONDERFUL TAPE', '27', '10.00', '10.00', 1, 0, '2021-06-11 18:23:35'),
(13, 'Silicon rojo RTV AXPRO AXP-SBRO-070G', '16', '10.00', '10.00', 1, 0, '2021-06-11 18:25:12'),
(14, 'Silicon aluminio RTV DURASEAL', '34', '10.00', '10.00', 1, 0, '2021-06-11 18:26:30'),
(15, 'Bisel cromado camion B015CERN', '34', '10.00', '10.00', 1, 0, '2021-06-11 18:28:03'),
(16, 'Faro 6052LED', '6', '10.00', '10.00', 1, 0, '2021-06-11 18:30:13'),
(17, 'Palanca direccional universal HL101', '20', '10.00', '10.00', 1, 0, '2021-06-11 18:31:07'),
(18, 'Terminales de bateria', '19', '10.00', '10.00', 1, 0, '2021-06-11 18:31:53'),
(19, 'Lampara H6024 C1 12.8 65/35 W', '5', '10.00', '10.00', 1, 0, '2021-06-11 18:33:41'),
(20, '6066-118', '2', '10.00', '10.00', 1, 0, '2021-06-11 18:34:13'),
(21, '66-9100', '3', '10.00', '10.00', 1, 0, '2021-06-11 18:34:27'),
(22, '66-158', '1', '10.00', '10.00', 1, 0, '2021-06-11 18:34:42'),
(23, '66-127', '1', '10.00', '10.00', 1, 0, '2021-06-11 18:34:54'),
(24, 'Faro de led 6014LEDS', '2', '10.00', '10.00', 1, 0, '2021-06-11 18:35:37'),
(25, '57-84200', '5', '10.00', '10.00', 1, 0, '2021-06-11 18:36:50'),
(26, 'Relevador 08184', '9', '10.00', '10.00', 1, 0, '2021-06-11 18:37:45'),
(27, 'Fusibles 5', '141', '10.00', '10.00', 1, 0, '2021-06-11 18:39:12'),
(28, 'Fusibles 10a', '167', '10.00', '10.00', 1, 0, '2021-06-11 18:39:47'),
(29, 'Fusibles 15a', '137', '10.00', '10.00', 1, 0, '2021-06-11 18:40:01'),
(30, 'Fusibles 20a', '211', '10.00', '10.00', 1, 0, '2021-06-11 18:40:14'),
(31, 'Fusibles 25a', '89', '10.00', '10.00', 1, 0, '2021-06-11 18:40:41'),
(32, 'Fusibles 30a', '300', '10.00', '10.00', 1, 0, '2021-06-11 18:40:53'),
(33, 'Lampara 9003 C1 12 V 60/55 W P43t-38', '27', '10.00', '10.00', 1, 0, '2021-06-11 19:00:41'),
(34, 'Foco 2 filamentos 1004', '28', '10.00', '10.00', 1, 0, '2021-06-11 19:02:24'),
(35, 'Broca 5/16 TRUPER', '14', '10.00', '10.00', 1, 0, '2021-06-11 19:51:12'),
(36, 'Broca 1/4 TRUPER', '17', '10.00', '10.00', 1, 0, '2021-06-11 19:51:38'),
(37, 'Broca 1/8 TRUPER', '33', '10.00', '10.00', 1, 0, '2021-06-11 19:51:58'),
(38, 'Broca 3/16 TRUPER', '8', '10.00', '10.00', 1, 0, '2021-06-11 19:52:26'),
(39, 'Disco abrasivo 4 1/2 TRUPER', '40', '10.00', '10.00', 1, 0, '2021-06-11 19:54:51'),
(40, 'Disco abrasivo 4 -1/2 TRUPER', '10', '10.00', '10.00', 1, 0, '2021-06-11 19:55:19'),
(41, 'Disco abrasivo 9 TRUPER', '4', '10.00', '10.00', 1, 0, '2021-06-11 19:55:36'),
(42, 'Base sencilla cromada P/MAR SO340', '10', '10.00', '10.00', 1, 0, '2021-06-11 19:56:11'),
(43, 'Regulador B21', '10', '10.00', '10.00', 1, 0, '2021-06-11 19:56:49'),
(44, 'Marcadores de aceite OILV3', '9', '10.00', '10.00', 1, 0, '2021-06-11 21:55:19'),
(45, 'Prueba', '118', '10.00', '10.00', 1, 1, '2021-06-14 16:09:04'),
(46, 'Otro', '22', '10.00', '10.00', 4, 3, '2021-06-16 20:17:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicaciones`
--

CREATE TABLE `ubicaciones` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ubicaciones`
--

INSERT INTO `ubicaciones` (`id`, `nombre`) VALUES
(6, 'A'),
(4, 'Frenos 1'),
(3, 'Motores'),
(1, 'Repuestos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usuario_nivel` int(11) NOT NULL,
  `imagen` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `ultimo_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `username`, `password`, `usuario_nivel`, `imagen`, `status`, `ultimo_login`) VALUES
(1, 'Admin RC', 'Admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'tyocsain1.jpg', 1, '2021-08-05 00:41:50'),
(2, 'Special User', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.jpg', 1, '2021-07-22 05:44:43'),
(3, 'Default User', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.jpg', 1, '2021-07-22 05:46:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_grupos`
--

CREATE TABLE `usuarios_grupos` (
  `id` int(11) NOT NULL,
  `grupo_nombre` varchar(150) NOT NULL,
  `grupo_nivel` int(11) NOT NULL,
  `grupo_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_grupos`
--

INSERT INTO `usuarios_grupos` (`id`, `grupo_nombre`, `grupo_nivel`, `grupo_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'Special', 2, 1),
(3, 'User', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) UNSIGNED NOT NULL,
  `producto_id` int(11) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(25,2) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `producto_id`, `cantidad`, `precio`, `fecha`) VALUES
(26, 45, 1, '10.00', '2021-06-15'),
(27, 45, 2, '20.00', '2021-05-20'),
(28, 46, 10, '100.00', '2021-06-29'),
(29, 46, 20, '200.00', '2021-06-29'),
(30, 46, 8, '80.00', '2021-07-05');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`producto_id`) USING BTREE;

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`nombre`),
  ADD KEY `categorie_id` (`categoria_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indices de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `user_level` (`usuario_nivel`);

--
-- Indices de la tabla `usuarios_grupos`
--
ALTER TABLE `usuarios_grupos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`grupo_nivel`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `ubicaciones`
--
ALTER TABLE `ubicaciones`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios_grupos`
--
ALTER TABLE `usuarios_grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `SL` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categoria_id`) REFERENCES `ubicaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`usuario_nivel`) REFERENCES `usuarios_grupos` (`grupo_nivel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `SK` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
