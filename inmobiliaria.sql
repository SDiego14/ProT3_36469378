-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2024 a las 23:22:27
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id_consulta` int(11) NOT NULL,
  `nombreYapellido` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `mensaje` varchar(200) NOT NULL,
  `fecha_ingreso` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id_consulta`, `nombreYapellido`, `correo`, `tel`, `mensaje`, `fecha_ingreso`) VALUES
(5, 'Alejandro Romero', 'Alejandro@gmail.com', '3794897854', 'Me interesa comprar una casa para una familia de 4 personas.', '2024-07-20 04:16:31'),
(6, 'Tony Kross', 'tony@gmail.com', '3794234578', 'Quisiera mas información sobre la Quinta que se encuentra en Santa Ana.', '2024-07-19 00:52:08'),
(7, 'Alejandro Romero', 'ale@yahoo.com', '3794251463', 'Departamento en Corrientes disponible!!!', '2024-07-18 01:04:34'),
(8, 'Pierre aubameyang', 'pierre@hotmail.com', '3794562387', 'mas información sobre departamentos disponibles.', '2024-07-19 01:11:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `inmueble` varchar(50) NOT NULL,
  `precio` double(11,0) NOT NULL,
  `stock` int(100) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `estado` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `inmueble`, `precio`, `stock`, `ubicacion`, `descripcion`, `imagen`, `estado`) VALUES
(1, 'Comercio', 500000, 1, 'Corrientes', 'Local Comercial de 3 ambientes; 210m² Superficie total- 180m² Superficie cubierta en 1 plantas, Ubicación Centro , dependencias de servicios. Frente Amplio vidriado.', './assets/uploads/comer-4.jpg', '1'),
(2, 'Casa', 280000, 1, 'Corrientes', '3 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 2 autos. ', './assets/uploads/casa-3.jpg', '1'),
(3, 'Casa', 350000, 0, 'Santa Ana', ' 2 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 1 autos. ', './assets/uploads/casa-2.jpg', '1'),
(4, 'Departamento', 375000, 1, 'Corrientes', '2 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 3 autos.  ', './assets/uploads/depar-3.jpg', '1'),
(5, 'Quinta', 315000, 1, 'Santa Ana', 'ubicada en santa ana es una excelente opción para eventos sociales, incluye pileta , quincho, 2 baño , 1 dormitorio y un amplio comedor.', './assets/uploads/quinta-4.jpg', '1'),
(6, 'Casa', 350000, 0, 'Santa Ana', 'Casa Familiar de 4 habientes, (1 cocina, 1 baño , 1 dormitorio , 1 comedor)', './assets/uploads/casa-1.jpg', '1'),
(7, 'Quinta', 400000, 0, 'San Cosme', ' 3 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 2 autos.', './assets/uploads/quinta-2.jpg', '1'),
(8, 'Comercio', 375000, 0, 'Corrientes', 'Local Comercial de 3 ambientes; 210m² Superficie total- 180m² Superficie cubierta en 1 plantas, Ubicación Centro , dependencias de servicios. Frente Amplio vidriado.', './assets/uploads/comer-1.jpg', '1'),
(9, 'Departamento', 275000, 1, 'Corrientes', '2 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 1 autos. ', './assets/uploads/depar-4.jpg', '1'),
(10, 'Comercio', 325000, 1, 'Corrientes', 'Descripción: Local Comercial de 210m² Superficie total- 280m² Superficie cubierta en 1 plantas, Ubicación Centro , dependencias de servicios.', './assets/uploads/comer-2.jpg', '1'),
(11, 'Departamento', 375000, 1, 'Corrientes', '2 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 3 autos. ', './assets/uploads/depar-1.jpg', '1'),
(12, 'Quinta', 325000, 1, 'Corrientes', '2 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 3 autos. ', './assets/uploads/quinta-7.jpg', '1'),
(13, 'Casa', 275000, 1, 'Corrientes', '3 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 2 autos. ', './assets/uploads/casa-7.jpg', '1'),
(14, 'Departamento', 345000, 1, 'Corrientes', '3 dormitorios en 1 plantas. Con cocina comedor , living comedor, escritorio, dependencias de servicios. Patio con parrilla y cochera para 1 autos. ', './assets/uploads/depar-7.jpg', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario_nombre` varchar(150) NOT NULL,
  `usuario_apellido` varchar(150) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `usuario_alias` varchar(50) NOT NULL,
  `usuario_password` varchar(32) NOT NULL,
  `tipo` enum('administrador','usuario') NOT NULL DEFAULT 'usuario',
  `estado` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario_nombre`, `usuario_apellido`, `correo`, `usuario_alias`, `usuario_password`, `tipo`, `estado`) VALUES
(1, 'Diego', 'Solis', 'gestioninmobiliaria@gmail.com', 'admin', 'dGFsbGVyMTc=', 'administrador', '1'),
(3, 'Nicolas', 'Romero', 'nicolas@gmail.com', 'Nicolas', 'MTIzNDU2Nzg=', 'usuario', '1'),
(4, 'Alejandro', 'Romero', 'alejandro@gmail.com', 'Alejandro', 'MDEyMzQ1Njc=', 'usuario', '1'),
(5, 'Luis', 'Navarro', 'luis@gmail.com', 'Luis', 'MDAwMDAwMDA=', 'usuario', '1'),
(6, 'Adrian', 'Navarro', 'adrian@gmail.com', 'Adrian', 'MzMzMzMzMzM=', 'usuario', '1'),
(7, 'Tony', 'Kross', 'tony@hotmail.com', 'Tony', 'NDQ0NDU1NTU=', 'usuario', '1'),
(8, 'Pierre', 'aubameyang', 'pierre@gmail.com', 'Pierre', 'Nzc3Nzg4ODg=', 'usuario', '1'),
(9, 'Andre', 'Gignac', 'andre@gmail.com', 'Andre', 'MTExMTMzMzM=', 'usuario', '1'),
(10, 'Kebin', 'Durant', 'kebin@gmail.com', 'Kebin', 'NjY2NjQ0NDQ=', 'usuario', '1'),
(11, 'Harry', 'Kane', 'harry@hotmail.com', 'Harry', 'OTg3NjU0MzI=', 'usuario', '1'),
(12, 'Dominic', 'Toretto', 'dominic@hotmail.com', 'Dominic', 'MTIzNDU2Nzg=', 'usuario', '1'),
(13, 'Gari', 'Medel', 'garimedel@gmail.com', 'Gari', 'Gari1243', 'administrador', '1'),
(14, 'Fernando', 'Llorente', 'Fernando@gmail.com', 'Fernando', 'Fer12345678', 'administrador', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_detalle` int(11) NOT NULL,
  `usuario_alias` varchar(60) NOT NULL,
  `producto_id` int(11) DEFAULT NULL,
  `nombre_pro` varchar(60) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` double NOT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_detalle`, `usuario_alias`, `producto_id`, `nombre_pro`, `cantidad`, `precio`, `fecha`) VALUES
(1, 'Nicolas', 1, 'Comercio', 1, 500000, '2024-07-20 20:29:44'),
(5, 'Tony', 13, 'Casa', 1, 275000, '2024-07-19 00:53:45'),
(6, 'Alejandro', 8, 'Comercio', 1, 375000, '2024-07-18 01:02:30'),
(7, 'Pierre', 7, 'Quinta', 1, 400000, '2024-07-19 01:10:15'),
(8, 'Dominic', 6, 'Casa', 1, 350000, '2024-07-18 01:17:42'),
(9, 'Harry', 3, 'Casa', 1, 350000, '2024-07-17 01:18:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id_consulta`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario_alias` (`usuario_alias`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `producto_id` (`producto_id`),
  ADD KEY `usuario_alias` (`usuario_alias`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id_consulta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`usuario_alias`) REFERENCES `usuarios` (`usuario_alias`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
