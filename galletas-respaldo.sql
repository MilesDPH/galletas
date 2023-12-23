-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2021 a las 15:41:46
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `galletas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `check_list_vehiculos`
--

CREATE TABLE `check_list_vehiculos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_registro` bigint(20) UNSIGNED NOT NULL,
  `aspecto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'mtto',
  `observaciones` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `check_list_vehiculos`
--

INSERT INTO `check_list_vehiculos` (`id`, `fk_registro`, `aspecto`, `estado`, `observaciones`) VALUES
(1, 1, 'aceite', 'bien', 'Hola es una prueba'),
(2, 1, 'direccion', 'mtto', 'Probando el uso'),
(123, 10, 'Aceite', 'bien', 'probando'),
(124, 10, 'Aceite de Direccion', 'bien', 'probando'),
(125, 10, 'Liquido de Frenos/Clutch', 'bien', 'probando'),
(126, 10, 'Tanque de Gasolina', 'bien', 'probando'),
(127, 10, 'Luces Altas/Bajas', 'bien', 'probando'),
(128, 10, 'Stop', 'bien', 'probando'),
(129, 10, 'Reversa', 'mtto', 'probando'),
(130, 10, 'Direcciones/Intermitentes', 'mtto', 'probando'),
(131, 10, 'Cuartos', 'mtto', 'probando'),
(132, 10, 'Manijas', 'mtto', 'probando'),
(133, 10, 'Espejos', 'mtto', 'probando'),
(134, 10, 'Facias', 'mtto', 'probando'),
(135, 10, 'LLantas', 'mtto', 'probando'),
(136, 10, 'Revisión de refacciones', 'mtto', 'probando'),
(137, 10, 'Otro', 'mtto', 'probando'),
(138, 11, 'Aceite', 'mtto', 'prueba2'),
(139, 11, 'Aceite de Direccion', 'bien', 'prueba2'),
(140, 11, 'Liquido de Frenos/Clutch', 'bien', 'prueba2'),
(141, 11, 'Tanque de Gasolina', 'mtto', 'prueba2'),
(142, 11, 'Luces Altas/Bajas', 'bien', 'prueba2'),
(143, 11, 'Stop', 'mtto', 'prueba2'),
(144, 11, 'Reversa', 'bien', 'prueba2'),
(145, 11, 'Direcciones/Intermitentes', 'mtto', 'prueba2'),
(146, 11, 'Cuartos', 'mtto', 'prueba2'),
(147, 11, 'Manijas', 'bien', 'prueba2'),
(148, 11, 'Espejos', 'mtto', 'prueba2'),
(149, 11, 'Facias', 'bien', 'prueba2'),
(150, 11, 'LLantas', 'bien', 'prueba2'),
(151, 11, 'Revisión de refacciones', 'mtto', 'prueba2'),
(152, 11, 'Otro', 'mtto', 'prueba2'),
(243, 18, 'Aceite', 'mtto', 'dd'),
(244, 18, 'Aceite de Direccion', 'mtto', 'ddd'),
(245, 18, 'Liquido de Frenos/Clutch', 'mtto', 'dd'),
(246, 18, 'Tanque de Gasolina', 'bien', 'hhh'),
(247, 18, 'Luces Altas/Bajas', 'bien', 'hhhhh'),
(248, 18, 'Stop', 'mtto', 'ssss'),
(249, 18, 'Reversa', 'mtto', 'dddd'),
(250, 18, 'Direcciones/Intermitentes', 'bien', 'dddd'),
(251, 18, 'Cuartos', 'bien', 'sasas'),
(252, 18, 'Manijas', 'mtto', 'asdsd'),
(253, 18, 'Espejos', 'bien', 'asacxs'),
(254, 18, 'Facias', 'mtto', 'qqqq'),
(255, 18, 'LLantas', 'bien', 'dsdsd'),
(256, 18, 'Revisión de refacciones', 'mtto', 'qqqq'),
(257, 18, 'Otro', 'bien', 'aaaa'),
(258, 19, 'Aceite', 'bien', 'llll'),
(259, 19, 'Aceite de Direccion', 'bien', 'kkkkk'),
(260, 19, 'Liquido de Frenos/Clutch', 'mtto', 'nnnnn'),
(261, 19, 'Tanque de Gasolina', 'bien', 'hhhhh'),
(262, 19, 'Luces Altas/Bajas', 'mtto', 'jjkuji'),
(263, 19, 'Stop', 'mtto', 'uuuiii'),
(264, 19, 'Reversa', 'bien', 'uuihyhygy'),
(265, 19, 'Direcciones/Intermitentes', 'mtto', 'ffff'),
(266, 19, 'Cuartos', 'bien', 'yyuyu'),
(267, 19, 'Manijas', 'mtto', 'iuioio'),
(268, 19, 'Espejos', 'bien', 'ioioiojiin'),
(269, 19, 'Facias', 'mtto', 'hhhh'),
(270, 19, 'LLantas', 'bien', 'fffff'),
(271, 19, 'Revisión de refacciones', 'bien', 'dsasas'),
(272, 19, 'Otro', 'bien', 'gfhjhjkm'),
(273, 20, 'Aceite', 'bien', 'llll'),
(274, 20, 'Aceite de Direccion', 'bien', 'kkkkk'),
(275, 20, 'Liquido de Frenos/Clutch', 'mtto', 'nnnnn'),
(276, 20, 'Tanque de Gasolina', 'bien', 'hhhhh'),
(277, 20, 'Luces Altas/Bajas', 'mtto', 'jjkuji'),
(278, 20, 'Stop', 'mtto', 'uuuiii'),
(279, 20, 'Reversa', 'bien', 'uuihyhygy'),
(280, 20, 'Direcciones/Intermitentes', 'mtto', 'ffff'),
(281, 20, 'Cuartos', 'bien', 'yyuyu'),
(282, 20, 'Manijas', 'mtto', 'iuioio'),
(283, 20, 'Espejos', 'bien', 'ioioiojiin'),
(284, 20, 'Facias', 'mtto', 'hhhh'),
(285, 20, 'LLantas', 'bien', 'fffff'),
(286, 20, 'Revisión de refacciones', 'bien', 'dsasas'),
(287, 20, 'Otro', 'bien', 'gfhjhjkm'),
(288, 21, 'Aceite', 'bien', 'llll'),
(289, 21, 'Aceite de Direccion', 'bien', 'kkkkk'),
(290, 21, 'Liquido de Frenos/Clutch', 'mtto', 'nnnnn'),
(291, 21, 'Tanque de Gasolina', 'bien', 'hhhhh'),
(292, 21, 'Luces Altas/Bajas', 'mtto', 'jjkuji'),
(293, 21, 'Stop', 'mtto', 'uuuiii'),
(294, 21, 'Reversa', 'bien', 'uuihyhygy'),
(295, 21, 'Direcciones/Intermitentes', 'mtto', 'ffff'),
(296, 21, 'Cuartos', 'bien', 'yyuyu'),
(297, 21, 'Manijas', 'mtto', 'iuioio'),
(298, 21, 'Espejos', 'bien', 'ioioiojiin'),
(299, 21, 'Facias', 'mtto', 'hhhh'),
(300, 21, 'LLantas', 'bien', 'fffff'),
(301, 21, 'Revisión de refacciones', 'bien', 'dsasas'),
(302, 21, 'Otro', 'bien', 'gfhjhjkm'),
(303, 22, 'Aceite', 'bien', 'llll'),
(304, 22, 'Aceite de Direccion', 'bien', 'kkkkk'),
(305, 22, 'Liquido de Frenos/Clutch', 'mtto', 'nnnnn'),
(306, 22, 'Tanque de Gasolina', 'bien', 'hhhhh'),
(307, 22, 'Luces Altas/Bajas', 'mtto', 'jjkuji'),
(308, 22, 'Stop', 'mtto', 'uuuiii'),
(309, 22, 'Reversa', 'bien', 'uuihyhygy'),
(310, 22, 'Direcciones/Intermitentes', 'mtto', 'ffff'),
(311, 22, 'Cuartos', 'bien', 'yyuyu'),
(312, 22, 'Manijas', 'mtto', 'iuioio'),
(313, 22, 'Espejos', 'bien', 'ioioiojiin'),
(314, 22, 'Facias', 'mtto', 'hhhh'),
(315, 22, 'LLantas', 'bien', 'fffff'),
(316, 22, 'Revisión de refacciones', 'bien', 'dsasas'),
(317, 22, 'Otro', 'bien', 'gfhjhjkm'),
(318, 23, 'Aceite', 'bien', 'llll'),
(319, 23, 'Aceite de Direccion', 'bien', 'kkkkk'),
(320, 23, 'Liquido de Frenos/Clutch', 'mtto', 'nnnnn'),
(321, 23, 'Tanque de Gasolina', 'bien', 'hhhhh'),
(322, 23, 'Luces Altas/Bajas', 'mtto', 'jjkuji'),
(323, 23, 'Stop', 'mtto', 'uuuiii'),
(324, 23, 'Reversa', 'bien', 'uuihyhygy'),
(325, 23, 'Direcciones/Intermitentes', 'mtto', 'ffff'),
(326, 23, 'Cuartos', 'bien', 'yyuyu'),
(327, 23, 'Manijas', 'mtto', 'iuioio'),
(328, 23, 'Espejos', 'bien', 'ioioiojiin'),
(329, 23, 'Facias', 'mtto', 'hhhh'),
(330, 23, 'LLantas', 'bien', 'fffff'),
(331, 23, 'Revisión de refacciones', 'bien', 'dsasas'),
(332, 23, 'Otro', 'bien', 'gfhjhjkm'),
(333, 24, 'Aceite', 'mtto', 'hola'),
(334, 24, 'Aceite de Direccion', 'bien', 'hola'),
(335, 24, 'Liquido de Frenos/Clutch', 'bien', 'kkkk'),
(336, 24, 'Tanque de Gasolina', 'mtto', 'gggggg'),
(337, 24, 'Luces Altas/Bajas', 'bien', 'kkkkkk'),
(338, 24, 'Stop', 'bien', 'llllll'),
(339, 24, 'Reversa', 'mtto', 'eeee'),
(340, 24, 'Direcciones/Intermitentes', 'mtto', 'eeeeeee'),
(341, 24, 'Cuartos', 'mtto', 'wwwwwwww'),
(342, 24, 'Manijas', 'bien', 'dddddddddd'),
(343, 24, 'Espejos', 'mtto', NULL),
(344, 24, 'Facias', 'bien', NULL),
(345, 24, 'LLantas', 'mtto', NULL),
(346, 24, 'Revisión de refacciones', 'bien', NULL),
(347, 24, 'Otro', 'mtto', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonias`
--

CREATE TABLE `colonias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_codigo_postal` bigint(20) UNSIGNED NOT NULL,
  `colonia` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colonias`
--

INSERT INTO `colonias` (`id`, `fk_codigo_postal`, `colonia`, `municipio`, `ciudad`, `created_at`, `updated_at`) VALUES
(1, 20000, 'Zona Centro', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 20010, 'Colinas del Rio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 20010, 'Olivares Santana', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 20010, 'Las Brisas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 20010, 'Ramon Romo Franco', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 20010, 'San Cayetano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 20016, 'Colinas de San Ignacio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 20016, 'La Fundición', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 20016, 'Fundición II', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 20016, 'Los Sauces', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 20018, 'Línea de Fuego', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 20020, 'Buenos Aires', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 20020, 'Circunvalación Norte', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 20020, 'Las Arboledas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 20020, 'Villas de San Francisco', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 20029, 'Villas de La Universidad', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 20030, 'El Sol', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 20030, 'Gremial', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 20030, 'Industrial', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20040, 'Altavista', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 20040, 'Curtidores', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 20040, 'La Concordia', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 20040, 'Miravalle', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 20040, 'Panorama', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 20040, 'Residencial Guadalupe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 20049, 'Colinas del Poniente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 20050, 'Bugambilias', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 20050, 'Del Carmen', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 20050, 'La Fe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 20050, 'México', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 20050, 'Primavera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 20050, 'San Pablo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 20059, 'Guadalupe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 20059, 'Heliodoro Garcia', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 20060, 'Gómez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 20060, 'Moderno', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 20064, 'Valle del Rio San Pedro', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 20070, 'Guadalupe Posada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 20070, 'San Marcos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 20070, 'San Marcos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 20078, 'San Marcos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 20080, 'Modelo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 20080, 'Residencial del Valle I', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 20089, 'Residencial del Valle II', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 20100, 'La Herradura', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 20100, 'Club Campestre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 20100, 'Jardines del Campestre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 20100, 'Los Vergeles', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 20100, 'Rancho San Antonio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 20110, 'Talamantes Ponce', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 20110, 'Granjas del Campestre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 20110, 'Puerto las Hadas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 20110, 'Valle del Campestre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 20110, 'Villas de Montenegro', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 20110, 'Las Cavas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 20110, 'La Enramada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 20115, 'Trojes de Oriente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 20115, 'Valle de las Trojes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 20115, 'Villas de San Nicolás', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 20115, 'San Telmo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 20115, 'La Paloma', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 20115, 'Barrio de Santiago', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 20115, 'Villa de las Trojes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 20115, 'Valle de Santa Teresa', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 20116, 'La Troje', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 20116, 'Trojes de Alonso', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 20116, 'San Telmo Residencial', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 20116, 'Santa Fe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 20117, 'Aguascalientes 2000', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 20118, 'Las Trojes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 20118, 'Misión del Campanario', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 20118, 'Trojes de Cristal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 20118, 'Trojes del Sol', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 20118, 'Residencial Santa Clara', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 20118, 'Misión de Santiago', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 20118, 'Valle del Campanario', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 20118, 'Las Misiones', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 20118, 'Los Jarales', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 20118, 'Cerrada El Molino', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 20118, 'Valle Real', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 20118, 'Terzetto', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 20118, 'Cerrada de La Misión', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 20118, 'Cerrada del Valle', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 20118, 'Cerrada de la Mezquitera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 20119, 'Lomas del Campestre 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 20119, 'Villas del Campestre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 20119, 'Los Calicantos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 20120, 'Jardines de la Concepción', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 20120, 'Los Bosques', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 20120, 'Rinconada los Bosques', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 20123, 'La Perla Norte', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 20123, 'Arroyo El Molino', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 20124, 'Galerías', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 20124, 'Residencial Altaria', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 20126, 'Constitución', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 20126, 'Libertad', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 20126, 'Pozo Bravo Norte', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 20126, 'Soberana Convención Revolucionaria', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 20126, 'Villa Montaña', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 20126, 'Villas de Don Antonio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 20126, 'Los Ángeles', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 20126, 'Capittala', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 20126, 'Recinto de la Macarena', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 20126, 'La Soledad', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 20126, 'Los Naranjos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 20126, 'Villa de Nuestra Señora de La Asunción Sector Guadalupe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 20126, 'Villa Teresa', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 20126, 'Cartagena 1947', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 20126, 'Villas de La Convención', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 20126, 'Lomas de La Asunción', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 20126, 'Villa de Nuestra Señora de La Asunción Sector Encino', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 20126, 'Villa de Nuestra Señora de La Asunción Sector Alameda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 20126, 'San José de Pozo Bravo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 20126, 'Villa de Nuestra Señora de La Asunción Sector San Marcos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 20126, 'Villa de Nuestra Señora de La Asunción Sector Estación', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 20126, 'Las Plazas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 20126, 'El Rosedal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 20126, 'Natura', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 20126, 'Montebello Della Stanza', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 20126, 'Villa Notre Dame', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 20126, 'Privada Guadalupe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 20126, 'Rinconada Pozo Bravo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 20126, 'Pozo Bravo Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 20126, 'Villa Loma Dorada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 20126, 'Jardines de Montebello', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 20126, 'Villas del Río', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 20126, 'El Puertecito', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 20126, 'Rinconada del Puertecito', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 20127, 'Bosques del Prado Norte', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 20128, 'Sartenejo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 20129, 'Lomas del Campestre 1a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 20130, 'Bosques del Prado Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 20130, 'El Roble', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 20130, 'Fátima', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 20130, 'Independencia de México', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 20130, 'Nueva Rinconada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 20130, 'Primo Verdad', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 20130, 'San José del Arenal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 20130, 'Unidad Ganadera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 20130, 'San Xavier', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 20130, 'Residencial del Real', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 20130, 'Puerta Navarra', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 20130, 'Residencial Campestre Club de Golf', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 20130, 'Palma Real', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 20130, 'Palmas del Pedregal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 20135, 'Agropecuario', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 20135, 'Centro Distribuidor de Básicos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 20136, 'La Rinconada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 20137, 'El Plateado', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 20138, 'Residencial Pulgas Pandas Norte', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 20138, 'Residencial Pulgas Pandas Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 20138, 'Villas del Vergel', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 20138, 'Cerrada San Miguel', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 20140, 'Las Hadas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 20140, 'Morelos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 20140, 'Andrea', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 20146, 'Los Arcos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 20149, 'Industrial', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 20150, 'Buenavista', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 20150, 'C.T.M.', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 20150, 'La Estrella', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 20150, 'Macias Arellano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 20150, 'Lomas del Cobano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 20157, 'La Higuerilla', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 20157, 'Parras', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 20158, 'El Cobano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 20158, 'Hacienda el Cobano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 20158, 'Trojes del Cobano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 20158, 'Villas del Cobano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 20159, 'Alianza Ferrocarrilera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 20159, 'Bosques del Prado Oriente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 20160, 'Francisco Guel Jimenez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 20160, 'Las Viñas INFONAVIT', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 20164, 'Santa Anita 4a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 20169, 'Santa Anita', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 20169, 'Santa Anita 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 20170, 'El Maguey', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 20170, 'Las Cumbres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 20170, 'Lic Benito Juárez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 20170, 'Nazario Ortiz Garza', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 20170, 'Rodolfo Landeros Gallegos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 20170, 'S.T.E.M.A.', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 20170, 'Zona Militar', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 20170, 'Villa Bonita', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 20172, 'Lic Benito Palomino Dena', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 20172, 'Anexo Benito Palomino Dena Cumbres II', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 20172, 'La Florida l', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 20172, 'La Florida ll', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 20172, 'Claustros Loma Dorada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 20172, 'Cumbres III', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 20174, 'Lomas de las Fuentes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 20174, 'Colinas de Oriente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 20174, 'Vista de las Cumbres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 20174, 'Los Laureles', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 20174, 'Mirador de las Culturas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 20174, 'El Rocío', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 20174, 'Villas de la Loma', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 20174, 'Los Pericos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 20174, 'Paseos del Sol', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 20174, 'Miradores de Santa Elena', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 20174, 'Villas de las Fuentes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 20174, 'Lomas de Bellavista', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 20175, 'La Hojarasca', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 20175, 'Ejido las Cumbres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 20175, 'J Refugio Esparza Reyes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 20175, 'Rinconadas las Cumbres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 20175, 'Lomas de Oriente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 20177, 'C.N.O.P. Oriente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 20179, 'Las Cumbres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 20179, 'Luis Ortega Douglas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 20179, 'Pensadores Mexicanos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 20179, 'Pintores Mexicanos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 20179, 'Progreso', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 20179, 'Santa Regina', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 20179, 'Cerro Alto', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 20179, 'Santa Margarita', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 20180, 'Del Trabajo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 20180, 'Ferronales', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 20180, 'Luis Gómez Zepeda ferronales', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 20180, 'Lomas de Santa Anita', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 20180, 'Alameda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 20180, 'Rinconada de La Alameda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 20180, 'Bosques de La Alameda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 20180, 'Nueva Alameda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 20190, 'Héroes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 20190, 'La Hacienda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 20190, 'La Mancha', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 20196, 'El Rocío', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 20196, 'Valle del Bicentenario', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 20196, 'Paseo de los Cactus', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 20196, 'Balcones del Valle', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 20196, 'Real del Sol', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 20196, 'Ojocaliente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 20196, 'Ojocaliente INEGI', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 20196, 'Solidaridad 1a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 20196, 'Sol Naciente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 20196, 'Villa de las Norias', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 20196, 'Camino Real', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 20196, 'Ribera del Sol', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 20196, 'Ambrosía', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 20196, 'José Guadalupe Peralta Gámez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 20196, 'Haciendas de Aguascalientes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 20196, 'Villerías', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 20196, 'Vistas de Oriente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 20196, 'Real de Haciendas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 20196, 'Valle de los Cactus', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 20196, 'Colinas de San Patricio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 20196, 'Balcones de Oriente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 20196, 'Terra Nova', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 20196, 'José Guadalupe Posada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 20198, 'Ex Hacienda Ojocaliente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 20198, 'Ejido Ojocaliente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 20198, 'Misión Alameda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 20199, 'El Riego', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 20199, 'Fidel Velázquez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 20199, 'Municipio Libre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 20200, 'Bellavista', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 20200, 'Loma Bonita', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 20200, 'Nueva Castilla', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 20200, 'Xenia Residencial', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 20200, 'Villas de La Cantera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 20200, 'Lic Manuel Gómez Morin', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 20200, 'Residencial San Nicolás', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 20200, 'Villas del Mediterráneo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 20200, 'Ex Hacienda La Cantera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 20200, 'José Vasconcelos Calderón', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 20200, 'Porta Canteras', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 20200, 'Veteranos de La Revolución', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 20200, 'Fuentes del Lago', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 20200, 'El Quelite', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 20200, 'Olinda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 20205, 'Educación Álamos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 20205, 'Nueva España', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 20206, 'Lic. José López Portillo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 20206, 'La Barranquilla', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 20206, 'Barandales de San José', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 20207, 'Canteras de San Javier', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 20207, 'Capital City', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 20207, 'Rinconada San José', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 20208, 'Canteras de San José', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 20210, 'Circunvalación Poniente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 20210, 'España', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 20210, 'La Barranca de Guadalupe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 20210, 'Pirules INFONAVIT', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 20216, 'Jardines de los Pirules', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 20217, 'Residencial los Pirules', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 20218, 'Canteras de Santa Imelda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 20218, 'Francisco Villa', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 20218, 'Jardines del Lago', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 20218, 'San Martin de La Cantera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 20218, 'Canteras de San Agustin', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 20218, 'Santa Imelda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 20218, 'Los Eucaliptos 2a. Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 20218, 'Los Eucaliptos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 20218, 'San Agustín', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 20219, 'El Edén', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 20219, 'Parque Industrial el Vergel', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 20219, 'Misión Juan Pablo II', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 20220, 'Las Flores', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 20220, 'Vivienda Popular', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 20229, 'Las Torres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 20230, 'Las Américas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 20230, 'Obraje', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 20230, 'Santa Elena', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 20234, 'Agricultura', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 20234, 'Mesonero', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 20235, 'El Dorado 1a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 20235, 'El Dorado 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 20235, 'Valle Dorado', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 20235, 'Villa Jardín', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 20236, 'Jardines de Santa Elena', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 20237, 'Hermanos Carreón', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 20237, 'Montebello', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 20238, 'Santa Elena 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 20239, 'La Fuente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 20240, 'El Encino', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 20240, 'El Laurel', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 20240, 'La Luna', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 20240, 'La Salud', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 20240, 'Los Virreyes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 20240, 'El Llanito', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 20240, 'Residencial el Encino', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 20240, 'Triana', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 20240, 'Residencial Cosío', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 20240, 'Triana', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 20247, 'San Fernando INFONAVIT', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 20248, 'Jardines de Triana', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 20249, 'Gámez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 20250, 'Jesús Gómez Portugal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 20250, 'Héroes de Aguascalientes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 20250, 'Jardines de La Cruz', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 20250, 'La Huerta', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 20250, 'San Luis', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 20250, 'Villas de Kristal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 20255, 'Bona Gens', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 20255, 'INFONAVIT Los Volcanes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 20256, 'FOVISSSTE Ojocaliente I', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 20256, 'Ojocaliente FOVISSSTE II', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 20256, 'Ojocaliente las Torres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 20256, 'Rinconada de La Cruz', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 20256, 'Villas de Ojocaliente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 20256, 'Parque y Presa del Cedazo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 20257, 'Lázaro Cárdenas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 20259, 'La Estación', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 20259, 'La Purísima', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 20260, 'IV Centenario', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 20260, 'Jesús Terán Peredo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 20260, 'Vivienda Militar', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 20260, 'Ojo de Agua', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 20260, 'Sidusa', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 20260, 'Rinconada El Cedazo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 20263, 'Agua Clara', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 20263, 'Balcones de Ojocaliente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 20263, 'Cielo Claro', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 20263, 'Lomas del Chapulín', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 20263, 'Ojo de Agua de Palmitas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 20263, 'Salto de Ojocaliente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 20263, 'Solidaridad 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 20263, 'Solidaridad 3a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 20263, 'Tierra Buena', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 20263, 'Rinconada San Antonio I', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 20263, 'Cima del Chapulín', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 20263, 'Cobano de Palmitas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 20263, 'San Jorge', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 20263, 'La Lomita', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 20263, 'Villa las Palmas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 20263, 'Bajío de las Palmas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 20263, 'Lomas del Gachupín', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 20263, 'El Cedazo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 20263, 'San Ángel', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 20263, 'Villa Taurina', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 20264, 'Morelos INFONAVIT', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 20264, 'Vista del Sol 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 20264, 'Vista del Sol 3a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 20265, 'Ojo de Agua INFONAVIT', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 20266, 'Jardines del Sol', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 20266, 'La Cruz', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 20266, 'Misión de Santa Fe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 20266, 'Vista del Sol 1a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 20267, 'S.T.E.M.A.', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 20267, 'Jardines de La Convención', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 20267, 'Ojo de Agua FOVISSSTE 1a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 20267, 'Lic Primo Verdad INEGI', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 20268, 'Fuentes de La Asunción', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 20269, 'Jardines de La Luz', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 20270, 'Bulevar', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 20270, 'El Caminero', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 20270, 'Jardines de Aguascalientes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 20270, 'Jardines de La Asunción', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 20270, 'Las Canoas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 20270, 'Lindavista', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 20270, 'México', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 20270, 'Los Cedros', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 20276, 'Jardines de las Bugambilias', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 20276, 'Jardines del Parque', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 20276, 'Jardines de Alejandría', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 20277, 'Pirámides', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 20277, 'Residencial del Parque', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 20277, 'Rinconada del Parque', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 20278, 'Jardines de las Fuentes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 20280, 'Casasolida', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 20280, 'Central de Abastos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 20280, 'Jardines del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 20280, 'Martinez Dominguez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 20280, 'Prados de Villasunción', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 20280, 'Prados del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 20280, 'San Francisco del Arenal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 20280, 'San Pedro', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 20280, 'Torres de San Francisco', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 20280, 'Trojes del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 20280, 'Australis', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 20280, 'Conjunto San Francisco', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 20283, 'Parque Industrial Siglo XXI', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 20283, 'Parque Industrial Siglo XXI Ampliación', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 20284, 'La Casita', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 20284, 'La Estancia', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 20284, 'INFONAVIT Potreros del Oeste', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 20284, 'Villas de Santa Rosa', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 20284, 'Villas del Oeste', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 20284, 'Vistas del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 20284, 'Rinconada del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 20285, 'Versalles 1a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 20285, 'Versalles 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 20286, 'Bosque Real', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 20286, 'Rancho Santa Mónica', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 20286, 'Vicente Guerrero', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 20286, 'Villas del Pilar 1a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 20286, 'Barlovento', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 20286, 'Abadía', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 20286, 'Mangata', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 20286, 'Villas San Antonio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 20286, 'Villa Capri', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 20286, 'Providencia', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 20286, 'Rinconada Santa Mónica', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 20286, 'Paseos de Santa Mónica', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 20287, 'Insurgentes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `colonias` (`id`, `fk_codigo_postal`, `colonia`, `municipio`, `ciudad`, `created_at`, `updated_at`) VALUES
(437, 20288, 'Bulevares 1a. Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 20288, 'Bulevares 2a. Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 20289, 'Pilar Blanco INFONAVIT', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 20290, 'Ciudad Industrial', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 20290, 'Plaza Vestir', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 20290, 'Vista Alegre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 20290, 'Parque Industrial ALTEC', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 20291, 'Centro SCT Aguascalientes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 20296, 'Rústicos Calpulli', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 20296, 'Villas de Bonaterra', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 20296, 'San Francisco de los Arteaga', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 20296, 'Residencial San Javier', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 20296, 'Villa Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 20297, 'Casa Blanca', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 20297, 'Jardines de Casablanca', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 20297, 'Jardines de Casanueva', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 20298, 'Emiliano Zapata', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 20298, 'Morelos I', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 20298, 'Morelos 2a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 20298, 'Solidaridad 4a Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 20298, 'Residencial Hacienda San Martín', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 20298, 'Viñedos del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 20298, 'Villas de Ajedrez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 20298, 'Lomas de Vistabella', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 20298, 'San Sebastián', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 20298, 'Lomas del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 20298, 'Lomas de Nueva York', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 20298, 'Laureles del Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 20298, 'Lomas del Mirador', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 20298, 'Misión de Santa Lucía', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 20298, 'Lomas de Vistabella 2a. Sección', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 20298, 'Lotes de Arellano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 20298, 'Condominio La terraza', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 20298, 'Valle del Cedazo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 20298, 'Paseos de San Antonio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 20298, 'Hacienda San Marcos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 20299, 'Lomas del Ajedrez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 20299, 'Mujeres Ilustres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 20299, 'Periodistas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 20299, 'Los Dolores', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 20299, 'Fundadores', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 20299, 'Lomas de San Jorge', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 20299, 'Reencuentro', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 20299, 'Villalta', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 20299, 'Lunaria', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 20300, 'Panamericano', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 20300, 'San Francisco de los Romos Centro', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 20303, 'El Tirón El Progreso', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 20303, 'Hidalgo', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 20303, 'La Aurora', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 20303, 'La Guadalupana', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 20303, 'La Perla', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 20303, 'Los Cedros', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 20303, 'María', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 20303, 'Revolución', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 20303, 'San Francisco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 20303, 'San José Buenavista', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 20303, 'Cerrada San Francisco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 20304, 'Fracción de la Trinidad II', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 20304, 'La Escondida El Salero', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 20304, 'Monserrat', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 20304, 'San José del Barranco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 20304, 'San Juan', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 20304, '28 de Abril', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 20304, 'Santa Bárbara', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 20304, 'El Cardonal', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 20304, 'Santa Fe', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 20305, 'El Barranco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 20305, 'El Gigante', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 20305, 'El Refugio', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 20305, 'Santa Elena Elena', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 20305, 'La Gloria', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(509, 20305, 'La Paz', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 20305, 'La Providencia', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 20305, 'La Trinidad', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 20305, 'La Unión', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 20305, 'Las Carmelitas', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 20305, 'Los Lirios', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 20305, 'Sociedad Plan de los Sabinos', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 20305, 'San Ángel', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 20305, 'San Pedro Victoria San Pedro Victoria de Abajo', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 20305, 'Santa Anita', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 20305, 'Zacatenco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 20306, 'Los Corrales Los Corrales Blancos', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 20306, 'El Chamizal', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 20306, 'Mary', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 20306, 'Villa de Guadalupe', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 20306, 'San Pablo', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 20310, 'Los Negritos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 20310, 'Coyotes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 20310, 'Viñedos Valle Redondo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 20310, 'La Loma de los Negritos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 20310, 'Viñedos San Felipe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 20313, 'Cuauhtémoc Las Palomas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 20313, 'Hacienda Nueva', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 20314, 'El Cariñán', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 20316, 'Santa Cruz de la Presa', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 20316, 'Lomas del Picacho', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 20319, 'CERESO Para Varones y Mujeres', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 20320, 'Estación Cañada Honda', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 20320, 'Gral. José María Morelos y Pavón', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 20320, 'Las Cañadas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 20323, 'Santa María de Gallardo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 20324, 'Jaltomate', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 20326, 'Loretta', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 20326, 'Parque Industrial Tecnopolo Pocitos ll', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(543, 20326, 'La Aurora', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 20326, 'Bosque Sereno', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 20326, 'Cavalia', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 20326, 'Quinta los Olivos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 20326, 'Misión de San Jerónimo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 20326, 'Privada Los Olivos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 20326, 'Punta del Cielo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 20326, 'Portón San Ignacio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 20326, 'Valle de San Ignacio El Filso', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 20326, 'San Ignacio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 20326, 'Puesta del Sol', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 20326, 'La Soledad', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 20326, 'La Rioja', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 20326, 'Rinconada San Ignacio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 20326, 'Ex-Hacienda de San Ignacio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 20326, 'La Perla', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 20326, 'San Ignacio II', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 20326, 'San Ignacio III', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 20328, 'Los Fresnos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 20328, 'Terranza', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 20328, 'Los Pocitos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 20328, 'Parque Industrial Tecnopolo Pocitos', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 20329, 'Privanza Andaluz', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 20329, 'Residencial Las Quintas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 20329, 'La Querencia', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 20329, 'Rincón Andaluz', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 20329, 'La Plazuela', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 20329, 'Torres Residencial Campestre Santamaría', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 20329, 'La Punta Campestre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 20329, 'Contadero', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 20329, 'La Joya', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 20329, 'Río Viejo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 20330, 'Palo Alto', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 20330, 'De Triana', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 20330, 'Palo Alto Centro', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 20330, 'Pobre', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 20330, 'De Afuera', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 20330, 'De Abajo', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 20330, 'El Progreso', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 20330, 'El Salto', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 20330, 'El Saucito', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 20333, 'El Cotón', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 20333, 'El Milagro', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 20333, 'Las Flores El Cotón', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 20333, 'Licenciado Jesús Terán El Muerto', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 20333, 'San Francisco de los Viveros', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 20333, 'Sandovales San Miguel de los Sandovales', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 20333, 'San Francisco de los Pedroza', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 20333, 'El Barreno Ampliación San Francisco', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 20333, 'El Mocho', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 20333, 'San Gerónimo', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 20333, 'San José San Antonio de Montoya', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 20334, 'El Novillo', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 20334, 'La Luz', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 20335, 'El Puertecito', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 20335, 'Ojo de Agua de Crucitas', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 20336, 'El Terremoto', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 20336, 'Francisco Sarabia La Reforma', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 20336, 'Los Conos', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 20336, 'Montoya', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 20336, 'Santa Rosa El Huizache', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 20337, 'El Retoño', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 20337, 'La Tinaja', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 20337, 'El Rosario', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 20338, 'El Copetillo', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 20338, 'El Tildío', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 20338, 'La Unión La Paz', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 20338, 'Rancho Nuevo', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 20338, 'El Chonguillo El Chonguito', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 20338, 'El Copetillo El Moquete', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 20338, 'Tanque el Coyote El Coyote', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 20338, 'Mirasoles', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 20339, 'San José San José de los Rodríguez', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 20339, 'La Primavera', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 20339, 'Lomas del Refugio La Loma', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 20339, 'Santa Elena', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 20339, 'El Llano CERESO', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 20339, 'Granja Temixco', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 20339, 'El Paraíso Santa Rita', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 20339, 'Santa Rita Uno Santa Rita', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 20339, 'San Lorenzo', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 20339, 'Santa Clara Las Mieleras', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 20339, 'San Agustín de los Díaz', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 20339, 'La Lucita', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 20339, 'La Calavera', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 20339, 'San Antonio de la Rosa', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 20339, 'San Ramón', 'El Llano', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 20340, 'Parque Industrial de Logística Automotriz PILA', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 20340, 'Arellano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 20340, 'Buenavista de Peñuelas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 20340, 'Peñuelas El Cienegal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 20340, 'El Cedazo Cedazo de San Antonio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(635, 20341, 'El Salto de los Salado', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 20342, 'San Francisco', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 20342, 'San Gerardo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 20342, 'Santa Gertrudis', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 20343, 'San José', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 20344, 'Villa Licenciado Jesús Terán Calvillito', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 20345, 'Montoro Mesa del Salto', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 20346, 'Los Caños', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 20347, 'Los Dolores', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 20347, 'El Turicate', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 20348, 'San Antonio de Peñuelas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 20349, 'Aguascalientes Lic. Jesús Terán Peredo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 20350, 'Los Capricornios La Biznaga', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 20350, 'Loretito Charco del Toro', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 20350, 'Macario J Gómez', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 20350, 'Rancho Seco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 20350, 'Medio Kilo', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 20355, 'La Concepción', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 20355, 'Viñedos River', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 20355, 'Parque Industrial San Francisco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 20355, 'Paseos de la Providencia', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 20355, 'Urbi Villa del Vergel', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 20356, 'Borrotes', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 20356, 'Estación Chicalote', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 20357, 'Amapolas del Río', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 20357, 'El Tepetate', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 20357, 'Rancho Nuevo', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 20358, 'Monteverde', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 20358, 'Valle de Aguascalientes', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 20358, 'Reserva Quetzales', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 20358, 'La Guayana Rancho Seco', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 20358, 'Puertecito de la Virgen', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 20358, 'Parque Industrial Valle de Aguascalientes', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 20358, 'Ex-Viñedos Guadalupe', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 20358, 'Villas de San Felipe', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 20358, 'La Casita', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 20358, 'La Ribera', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 20358, 'Sendero de los Quetzales', 'San Francisco de los Romo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 20363, 'San Antonio de los Pedroza', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 20363, 'San José de la Ordeña', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 20364, 'San Nicolás de Arriba', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 20364, 'San Nicolás de en Medio', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 20366, 'La Herrada', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 20366, 'El Colorado El Soyatal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 20366, 'El Conejal', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 20367, '2 de Octubre', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 20367, 'Che Guevara', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 20367, 'Tanque el Trigo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 20367, 'Norias de Ojocaliente', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 20369, 'El Malacate', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 20370, 'Puerto de Nieto', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 20371, 'Santa Cruz de la Presa La Tlacuacha', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 20371, 'Ciudad de los Niños', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 20371, 'La Cotorra', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 20372, 'Cabecita 3 Marías', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 20372, 'El Niágara', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 20372, 'Ex-Hacienda de Agostaderito', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(692, 20372, 'Granjas Fátima', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(693, 20372, 'Villa Campestre San José del Monte', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(694, 20373, 'El Ocote', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(695, 20374, 'La Huerta La Cruz', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(696, 20375, 'El Tanque de los Jiménez', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(697, 20375, 'Campestre Bosques de Las Lomas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(698, 20376, 'Centro de Arriba El Taray', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(699, 20377, 'San Pedro Cieneguilla', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(700, 20378, 'Cieneguilla La Lumbrera', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(701, 20378, 'Cieneguilla', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(702, 20384, 'El Hotelito', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(703, 20384, 'Norias del Paso Hondo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(704, 20384, 'Norias del Paso Hondo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(705, 20384, 'Paso Hondo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(706, 20385, 'La Rinconada La Escondida', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(707, 20386, 'El Duraznillo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(708, 20388, 'Los Cuervos Los Ojos de Agua', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(709, 20388, 'San Bartolo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(710, 20389, 'Los Durón', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(711, 20389, 'Soledad de Abajo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(712, 20389, 'Matamoros', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(713, 20392, 'Campestre el Potrerillo', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(714, 20392, 'Parque Industrial Gigante de los Arellano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(715, 20392, 'El Gigante Arellano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(716, 20392, 'Montoro', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(717, 20392, 'Universidad Autónoma de Aguascalientes  Campus Sur', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(718, 20393, 'Parque Industrial FINSA Aguascalientes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(719, 20394, 'Lomas de Arellano', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(720, 20394, 'Tanque de Guadalupe', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(721, 20394, 'Cañada Grande de Cotorina', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(722, 20395, 'Cotorina Coyotes', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(723, 20396, 'El Refugio de Peñuelas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(724, 20396, 'Ex-Hacienda de Peñuelas', 'Aguascalientes', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(725, 20400, 'Rincón de Romos Centro', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(726, 20403, 'Norte', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(727, 20403, 'Santa Elena', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(728, 20403, 'Desarrollo Especial La Pedrera', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(729, 20403, 'Subdivisión La Piedrera', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(730, 20403, 'Villa Seguridad', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(731, 20404, 'Valle del Real', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(732, 20404, 'José Luis Macias', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(733, 20404, 'Estancia de Chora', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(734, 20404, 'Emperadores', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(735, 20404, 'Embajadores', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(736, 20405, 'El Chaveño', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(737, 20405, 'De Guadalupe', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(738, 20405, 'La Paz', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(739, 20406, 'Rinconada de las Piedras', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(740, 20406, 'Rinconada Alameda', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(741, 20406, 'De Chora', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(742, 20406, 'Santa Cruz', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(743, 20406, 'Lázaro Cárdenas', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(744, 20406, 'Fraternidad', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(745, 20406, 'Cerro del Gato', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(746, 20410, 'Independencia', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(747, 20410, 'Magisterial', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(748, 20410, 'Magisterial II', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(749, 20410, 'Santa Anita', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(750, 20410, 'El Potrero', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(751, 20410, 'La Mezquitera', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(752, 20414, 'Desarrollo Especial', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(753, 20414, 'Villas de Jesús', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(754, 20415, 'San José', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(755, 20416, 'Presidentes de México', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(756, 20416, 'Solidaridad', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(757, 20417, 'Miguel Hidalgo', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(758, 20417, 'Popular', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(759, 20420, 'Pablo Escaleras', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(760, 20420, 'El Saucillo', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(761, 20420, 'Presa de San Elías José Muñoz', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(762, 20420, 'El Bajío', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(763, 20420, 'El Panal', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(764, 20420, 'Mar Negro', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(765, 20420, 'Potrero El Tarasco', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(766, 20423, 'Santa Fe', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(767, 20423, 'Candelaria', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(768, 20424, 'Puerta del Muerto El 15', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(769, 20424, 'California', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(770, 20424, 'Bajío del Yerbaníz', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(771, 20424, 'Tanque Blanco', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(772, 20425, 'San Jacinto', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(773, 20426, 'San Juan de la Natura', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(774, 20427, 'El Valle de las Delicias', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(775, 20427, '16 de Septiembre', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(776, 20427, 'Los Morales', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(777, 20427, 'San Isidro el Labrador', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(778, 20430, 'La Misión', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(779, 20434, '18 de Marzo', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(780, 20434, 'Lupita', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(781, 20435, 'El Salitrillo', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(782, 20435, 'El Barzón', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(783, 20435, 'Las Norias', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(784, 20436, 'El Milagro', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(785, 20437, 'Constitución', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(786, 20437, 'Héctor Hugo Olivares', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(787, 20437, 'Lindavista', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(788, 20437, 'Pabellón de Hidalgo Centro', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(789, 20437, 'Estancia de Mosqueira', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(790, 20437, 'El Rosario', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(791, 20440, 'Morelos', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(792, 20444, 'Potrerillos', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(793, 20444, 'Túnel de Potrerillo', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(794, 20445, 'Peña Blanca', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(795, 20445, 'Las Camas', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(796, 20450, 'Fresnillo', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(797, 20450, 'La Boquilla', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(798, 20454, 'El Ajiladero', 'Rincón de Romos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(799, 20460, 'Cosío Centro', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(800, 20462, 'Luis Donaldo Colosio', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(801, 20466, 'Villas del Potrerito', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(802, 20466, 'Rancho El Potrerito', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(803, 20467, 'Popular', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(804, 20468, 'Santa Cruz', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(805, 20469, 'Mexiquito', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(806, 20469, 'Coplamar', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(807, 20469, 'Vista Hermosa', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(808, 20470, 'Soledad de Abajo Estación de Adames', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(809, 20470, 'Zacatequillas', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(810, 20470, 'Soledad de Arriba', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(811, 20472, 'El Durazno', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(812, 20472, 'La Punta', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(813, 20472, 'La Esperanza El Salerito', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(814, 20472, 'El Durazno', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(815, 20472, 'Los Nava', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(816, 20476, 'El Salero', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(817, 20476, 'Guadalupito', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(818, 20478, 'El Refugio de Agua Zarca', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(819, 20478, 'El Refugio de Providencia Providencia', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(820, 20478, 'Santa María de la Paz', 'Cosío', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(821, 20500, 'San José de Gracia', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(822, 20501, 'El Jocoqui', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(823, 20502, 'Cieneguita', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(824, 20503, 'El Toril', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(825, 20504, 'Santa Elena de la Cruz Capadero', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(826, 20506, 'Las Amarillas', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(827, 20508, 'Túnel de Potrerillo', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(828, 20508, 'Tortugas', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(829, 20508, 'Potrerillo', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(830, 20510, 'Ciénega de Alcorcha', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(831, 20516, 'Boca del Túnel de Potrerillo', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(832, 20520, 'La Congoja', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(833, 20534, 'El Cepo', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(834, 20538, 'Antrialgo', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(835, 20538, 'Sierra Hermosa Los Alamitos', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(836, 20540, 'Paredes', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(837, 20545, 'San Antonio de los Ríos', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(838, 20564, 'Rancho Viejo', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(839, 20567, 'Potrero de los López', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(840, 20570, 'El Tecongo', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(841, 20574, 'Estancia de San Marcos', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(842, 20576, 'San José Club Náutico', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(843, 20578, 'Paso del Sauz', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(844, 20580, 'Guajolotes Huijolotes', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(845, 20584, 'Santa Rosa de Lima', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(846, 20590, 'El Taray', 'San José de Gracia', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(847, 20600, 'Tepezala Centro', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(848, 20602, 'Cholula 2a Sección', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(849, 20603, 'Comunidad San Rafael', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(850, 20603, 'Del Socorro', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(851, 20603, 'Los Arcos', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(852, 20604, 'Felipe González González', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(853, 20607, 'Luis Ortega Douglas', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(854, 20608, 'Cholula 1a Sección', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(855, 20610, 'El Chayote', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(856, 20610, 'El Barranco', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(857, 20614, 'Los Alamitos', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(858, 20614, 'Luz de San Antonio La Luz', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(859, 20614, 'Ampliación los Hornos el Lagunazo', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(860, 20615, 'El Progreso La Tira', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(861, 20615, 'El Porvenir', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(862, 20615, 'El Carmen', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(863, 20616, 'San Antonio', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(864, 20620, 'Mesillas', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(865, 20622, 'Ojo de Agua de los Montes', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(866, 20634, 'La Victoria', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(867, 20637, 'El Gigante', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(868, 20637, 'El Águila', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(869, 20645, 'Los Tres Reyes', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(870, 20650, 'Puerto de la Concepción', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `colonias` (`id`, `fk_codigo_postal`, `colonia`, `municipio`, `ciudad`, `created_at`, `updated_at`) VALUES
(871, 20656, 'Carboneras', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(872, 20656, 'El Refugio', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(873, 20657, 'Arroyo Hondo', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(874, 20658, 'Berrendos', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(875, 20658, 'El Tepozán', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(876, 20659, 'Caldera', 'Tepezalá', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(877, 20663, 'El Refugio', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(878, 20663, 'El Gigante', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(879, 20664, 'Nueva', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(880, 20665, 'Emiliano Zapata', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(881, 20665, 'El Pedernal Segundo', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(882, 20665, 'San Agustín de los Puentes', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(883, 20665, 'El Pilar', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(884, 20665, 'Los Contreras', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(885, 20666, 'El Garabato', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(886, 20666, 'Campestre San Carlos', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(887, 20667, 'Santiago', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(888, 20667, 'El Canal', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(889, 20668, 'El Pedregal', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(890, 20668, 'El Milagro', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(891, 20668, 'Puerta del Milagro', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(892, 20668, 'San Luis de Letras', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(893, 20668, 'Miguel Alemán Secadora', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(894, 20668, 'Ampliación Ejido Garabato', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(895, 20670, 'Zona Centro', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(896, 20673, 'FOVISSSTE', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(897, 20673, 'Jardines de Pabellón', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(898, 20673, 'Subdivisión Haciendas de Pabellón', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(899, 20673, 'Barrio Industrial', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(900, 20674, 'Francisco Villa', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(901, 20674, 'Villas de Pabellón', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(902, 20674, 'Trojes de San Pedro', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(903, 20675, 'Carboneras', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(904, 20675, 'Palo Alto', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(905, 20676, '5 de Mayo', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(906, 20676, 'Cosmos', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(907, 20676, 'Popular', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(908, 20677, 'Plutarco Elías Calles', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(909, 20677, 'Progreso Sur', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(910, 20678, 'Progreso Norte', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(911, 20678, 'Vergel del Valle', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(912, 20678, 'Valle del Vivero', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(913, 20678, 'La Quesería de Los Serna', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(914, 20678, 'Subdivisión Villa de Guadalupe', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(915, 20678, 'Valle del Vivero II', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(916, 20680, 'Las Ánimas', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(917, 20680, 'Santa Isabel', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(918, 20680, 'Las Ánimas', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(919, 20683, 'El Mezquite Ojo de Agua del Mezquite', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(920, 20683, 'El Mezquite', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(921, 20683, 'El Mezquite', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(922, 20683, 'Los Lira', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(923, 20684, 'Ojo Zarco', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(924, 20684, 'Ojo Zarco', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(925, 20684, 'Ojo Zarco La Loma', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(926, 20684, 'El Rayo', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(927, 20686, 'Gámez Orozco Puerta de Carboneras', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(928, 20686, 'San Pedro', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(929, 20687, 'El Cerrito', 'Pabellón de Arteaga', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(930, 20700, 'Guadalupe', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(931, 20700, 'Loma Bonita', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(932, 20700, 'Agua Nueva', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(933, 20700, 'Álamos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(934, 20700, 'La Sierra', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(935, 20700, 'Arboledas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(936, 20700, 'El Tule', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(937, 20700, 'Villa Juárez Centro', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(938, 20700, 'La Loma', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(939, 20700, 'El Rascón', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(940, 20704, 'Viudas de Poniente', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(941, 20705, 'Charco Azul', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(942, 20708, 'Amarillas de Esparza', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(943, 20709, 'Jilotepec', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(944, 20709, 'La Dichosa', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(945, 20710, 'Asientos Centro', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(946, 20710, 'Santa Cruz', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(947, 20712, 'De Peñitas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(948, 20713, 'Los Tepetates', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(949, 20713, 'Del CECYTE', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(950, 20714, 'De Guadalupe', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(951, 20715, 'INFONAVIT', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(952, 20715, 'Del Tepozán', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(953, 20715, 'Juventud', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(954, 20717, 'Real Minero', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(955, 20720, 'Guadalupe de Atlas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(956, 20720, 'Bimbaletes Aguascalientes El Álamo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(957, 20720, 'Bimbaletes Atlas Tanque de la Vieja', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(958, 20720, 'Crisóstomos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(959, 20720, 'Estación San Gil', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(960, 20720, 'La Divina Providencia', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(961, 20720, 'Alvarado', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(962, 20720, 'Licenciado Adolfo López Mateos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(963, 20720, 'Sociedad los Posada', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(964, 20720, 'Sector de Producción Número 3', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(965, 20720, 'Sector de Producción Número 2', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(966, 20721, 'Plutarco Elías Calles', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(967, 20722, 'Ciénega Grande', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(968, 20723, 'Noria del Borrego Norias', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(969, 20723, 'Jarillas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(970, 20724, 'Gómez Portugal', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(971, 20727, 'Pino Suárez Rancho Viejo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(972, 20729, 'Clavellinas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(973, 20730, 'Molinos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(974, 20732, 'Los Encinos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(975, 20734, 'Lázaro Cárdenas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(976, 20736, 'La Gloria', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(977, 20737, 'Santuario del Tepozán', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(978, 20738, 'La Soledad', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(979, 20739, 'San Pedro', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(980, 20740, 'El Polvo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(981, 20741, 'Caldera', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(982, 20742, 'Licenciado Adolfo López Mateos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(983, 20742, 'Charco Prieto El Palomar', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(984, 20742, 'El Fénix', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(985, 20744, 'San Antonio de los Martínez', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(986, 20746, 'Gorriones', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(987, 20748, 'Ojo de Agua de Rosales', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(988, 20749, 'Tepetatillo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(989, 20750, 'San José del Río', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(990, 20760, 'El Llavero', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(991, 20765, 'San Vicente', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(992, 20768, 'El Águila Rancho', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(993, 20770, 'Emancipación Borunda', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(994, 20771, 'Tanque Viejo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(995, 20773, 'Las Adjuntas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(996, 20773, 'La Tinajuela', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(997, 20775, 'Tanque de Guadalupe', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(998, 20777, 'Las Joyas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(999, 20779, 'Ojo de Agua de los Sauces', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1000, 20780, 'San Rafael de Ocampo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1001, 20780, 'San José del Tulillo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1002, 20782, 'San Isidro', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1003, 20785, 'El Chonguillo', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1004, 20790, 'Francisco Villa', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1005, 20792, 'El Epazote', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1006, 20794, 'Las Fraguas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1007, 20795, 'La Esperanza', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1008, 20795, 'Pilotos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1009, 20796, 'El Salitre', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1010, 20796, 'El Bajío de los Campos', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1011, 20799, 'Las Negritas', 'Asientos', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1012, 20800, 'Calvillo Centro', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1013, 20802, 'El Mirador', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1014, 20802, 'Independencia', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1015, 20802, 'López Mateos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1016, 20802, 'Las Paseras', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1017, 20802, 'Vista Hermosa', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1018, 20802, 'Campo Militar 14 CINE', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1019, 20802, 'El Guayabo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1020, 20802, 'Sección Benito Juárez', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1021, 20802, 'Sección Cerritos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1022, 20802, 'Sección Loma de Fundadores', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1023, 20802, 'Vista Hermosa 2a. Sección', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1024, 20803, 'Lomas de Huejúcar', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1025, 20803, 'San Nicolás', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1026, 20803, 'San Rafael', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1027, 20803, 'Rincón de Baltazares', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1028, 20803, 'José Landeros', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1029, 20804, 'Ejidal', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1030, 20804, 'Liberal', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1031, 20804, 'Rincón de Baltazares', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1032, 20804, 'Valle de Santiago', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1033, 20804, 'Arroyo de Los Caballos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1034, 20804, 'Del Carmen', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1035, 20804, 'Azteca', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1036, 20804, 'Morelos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1037, 20805, 'Cerrito Alto', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1038, 20805, 'Emiliano Zapata', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1039, 20805, 'Las Flores', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1040, 20805, 'Martínez', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1041, 20805, 'Valle de Huejúcar', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1042, 20805, 'Los Angeles', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1043, 20805, 'Chicago', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1044, 20810, 'El Terrero de la Labor', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1045, 20810, 'Palo Alto', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1046, 20816, 'El Sauz de la Labor', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1047, 20816, 'El Zapote de la Labor', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1048, 20816, 'Las Cuevas de la Labor', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1049, 20816, 'Las Rubias', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1050, 20816, 'Piedras Chinas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1051, 20820, 'Las Duraznillas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1052, 20820, 'El Jagüey', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1053, 20820, 'El Mirador', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1054, 20820, 'San Tadeo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1055, 20820, 'Jardines de San Isidro Colonia Limón', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1056, 20820, 'Solidaridad', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1057, 20824, 'El Capulín', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1058, 20824, 'Los Lazos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1059, 20824, 'Montoro', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1060, 20830, 'Colomos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1061, 20830, 'Chiquihuitero San Isidro', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1062, 20830, 'La Panadera', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1063, 20830, 'Las Víboras Viborillas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1064, 20830, 'El Llano El Llano de San Rafael', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1065, 20830, 'Villas del Laurel', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1066, 20832, 'El Maguey', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1067, 20832, 'El Sauz', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1068, 20832, 'Río Gil', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1069, 20834, 'Potrero de los López', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1070, 20834, 'Las Huertas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1071, 20834, 'La Pila', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1072, 20834, 'La Alberca', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1073, 20834, 'La Españita', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1074, 20834, 'Los Baños', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1075, 20834, 'Los Esparza', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1076, 20834, 'La Placita', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1077, 20834, 'La Casa Grande', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1078, 20834, 'Azoteyita', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1079, 20834, 'Catana', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1080, 20834, 'El Cuervero Cuerveros', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1081, 20834, 'Junta de los Ríos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1082, 20834, 'Malpaso', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1083, 20834, 'Ojocaliente', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1084, 20834, 'Potrero de los López', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1085, 20834, 'Río Gil de Arriba', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1086, 20834, 'La Fortuna', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1087, 20834, 'Los Arcos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1088, 20834, 'Magisterial', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1089, 20840, 'Los Mirasoles', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1090, 20840, 'El Potrerito', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1091, 20842, 'Las Joyas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1092, 20844, 'Chinantitlán', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1093, 20844, 'San José de los Laureles', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1094, 20844, 'Mesa de los Pozos La Laguna', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1095, 20850, 'Crucero las Pilas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1096, 20850, 'La Calixtina', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1097, 20850, 'Las Moras', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1098, 20850, 'Mesa Grande', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1099, 20850, 'El Refugio Las Praderas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1100, 20850, 'Tepezalilla de Abajo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1101, 20850, 'Pozo de los Artistas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1102, 20852, 'Los Adobes', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1103, 20852, 'Arroyo Ojocalientillo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1104, 20854, 'Parque Industrial Calvillo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1105, 20854, 'El Tepetate de Abajo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1106, 20854, 'Los Alisos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1107, 20854, 'Ojo de Agua', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1108, 20854, 'El Garruño', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1109, 20854, 'El Taray', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1110, 20856, 'Barranca del Roble', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1111, 20856, 'El Güencho', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1112, 20856, 'Jaltiche de Arriba', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1113, 20856, 'Mesa del Roble', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1114, 20860, 'Cerro Blanco', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1115, 20860, 'El Salitre', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1116, 20860, 'Las Ánimas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1117, 20860, 'Las Pilas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1118, 20860, 'Michoacanejo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1119, 20862, 'Salitrillo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1120, 20862, 'Jaltiche de Abajo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1121, 20862, 'La Fragua', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1122, 20862, 'La Media Luna', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1123, 20862, 'La Rinconada', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1124, 20862, 'Las Tinajas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1125, 20864, 'El Caracol', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1126, 20864, 'El Terrero del Refugio', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1127, 20864, 'Presa de los Serna', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1128, 20870, 'El Papantón', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1129, 20870, 'El Rodeo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1130, 20870, 'La Teresa', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1131, 20870, 'Los Patos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1132, 20870, 'Mezquitillos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1133, 20870, 'Peña Blanca', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1134, 20870, 'San José', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1135, 20870, 'Santos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1136, 20870, 'Vaquerías', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1137, 20872, 'Barranca de Portales', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1138, 20872, 'El Tigre', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1139, 20872, 'Miguel Hidalgo El Huarache', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1140, 20874, 'El Ocote Banco de Tierra', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1141, 20874, 'El Tepalcate', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1142, 20874, 'La Joya', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1143, 20874, 'Las Trojes', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1144, 20874, 'Tanque de los Serna', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1145, 20880, 'La Labor', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1146, 20880, 'La Primavera', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1147, 20880, 'Presa Ordeña Vieja', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1148, 20880, 'Temazcal', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1149, 20880, 'Paredes', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1150, 20880, 'La Hiedra', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1151, 20880, 'Ventanillas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1152, 20880, 'El Salitrillo', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1153, 20882, 'El Jaralito', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1154, 20882, 'El Tepozán', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1155, 20882, 'Manguillas', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1156, 20884, 'La Ciénega', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1157, 20884, 'Presa de los Bajíos', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1158, 20890, 'Puerta de Fragua Presa la Codorniz', 'Calvillo', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1159, 20900, 'Santo Domingo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1160, 20900, 'Puerta Norte', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1161, 20900, 'Residencial Misión de San José', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1162, 20900, 'Residencial Campestre Ingles', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1163, 20900, 'Camino Real', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1164, 20900, 'Corral de Barrancos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1165, 20900, 'Maravillas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1166, 20900, 'Los Olivos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1167, 20900, 'Rinconada Maravillas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1168, 20900, 'Residencial Villa Campestre', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1169, 20900, 'Valle Escondido', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1170, 20900, 'Las Pérgolas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1171, 20900, 'La Nogalera', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1172, 20901, 'El Maguey', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1173, 20901, 'Las Jaulas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1174, 20901, 'La Loma de Valladolid', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1175, 20901, 'La Chaveña', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1176, 20903, 'Villas de Montecassino', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1177, 20903, 'Residencial Santa Paulina', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1178, 20903, 'Margaritas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1179, 20903, 'La Florida', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1180, 20904, 'El Barreno', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1181, 20904, 'Los Ramírez', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1182, 20904, 'Los Vázquez', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1183, 20905, 'Miravalle', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1184, 20905, 'Paso Blanco', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1185, 20905, 'Los Arenales', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1186, 20905, 'La Lomita de Paso Blanco Las Canoas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1187, 20905, 'Los Sauces', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1188, 20907, 'Viñedos Ríos Granja Chispiritos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1189, 20907, 'Santa Elena', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1190, 20907, 'Viñedos Frutilandia', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1191, 20907, 'Paseos de Aguascalientes', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1192, 20907, 'Arboledas de Paso Blanco', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1193, 20907, 'Centro Distribuidor de Básicos Viñedos San Marcos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1194, 20907, 'Paseos del Country', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1195, 20907, 'Residencial Campo Real', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1196, 20907, 'Jardines de Campo Real', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1197, 20908, 'Mayorazgo San Cristóbal', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1198, 20908, 'Belmondo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1199, 20908, 'Residencial Marcellana', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1200, 20908, 'Rinconada Cuauhtémoc', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1201, 20908, 'Catania Spazio', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1202, 20908, 'Punta Norte', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1203, 20908, 'Los Gavilanes', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1204, 20908, 'Nura', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1205, 20908, 'Santa Isabel Tola', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1206, 20908, 'Bosques de los Ciprés', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1207, 20908, 'Bosques del Paraíso I', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1208, 20908, 'Bosques del Paraíso II', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1209, 20908, 'Augusta', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1210, 20908, 'Bosques del Paraíso VI', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1211, 20908, 'Bosques del Paraíso III', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1212, 20908, 'Bosques del Paraíso IV', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1213, 20908, 'Tepetates', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1214, 20908, 'Trojes de San Cristóbal', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1215, 20908, 'Quintas de Monticello', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1216, 20908, 'Viña Antigua', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1217, 20908, 'Villas del Molino', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1218, 20908, 'Porta Real', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1219, 20908, 'Residencial Cedros', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1220, 20908, 'Rancho San Miguel Residencial', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1221, 20908, 'Alcázar Residencial', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1222, 20908, 'Reserva San Cristóbal', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1223, 20908, 'La Arborada', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1224, 20908, 'Privanza de Gratamira', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1225, 20908, 'Tierraverde Habitat Gran Clase', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1226, 20908, 'Andares', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1227, 20909, 'INFONAVIT Margaritas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1228, 20909, 'Villas del Sol', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1229, 20909, 'Valle de Margaritas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1230, 20909, 'Saturnino Herran', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1231, 20909, 'Los Vázquez', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1232, 20909, 'Santa Fe Tecnopark', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1233, 20909, 'Jesús Gómez Portugal Margaritas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1234, 20909, 'El Zapato', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1235, 20909, 'Paseos Gómez Portugal', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1236, 20909, 'La Guayana Rancho Seco', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1237, 20909, 'Paso de Argenta', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1238, 20910, 'San Antonio de los Horcones', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1239, 20910, 'Brownsville', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1240, 20913, 'Valladolid', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1241, 20913, 'El Refugio', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1242, 20913, 'El Aurero', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1243, 20913, 'Villas de Guadalupe La Malobra', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1244, 20913, 'El Cenizo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1245, 20914, 'La Granjita Los Palillos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1246, 20916, 'Parque Industrial Chichimeco', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1247, 20916, 'El Chichimeco', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1248, 20916, 'Paseos de las Haciendas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1249, 20916, 'Cartuja Residencial', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1250, 20917, 'Pedernal Segundo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1251, 20920, 'Jesús María Centro', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1252, 20922, 'Bellavista', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1253, 20922, 'La Troje', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1254, 20922, 'El Calvario', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1255, 20922, 'La Escalera', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1256, 20923, 'Rinconada Jesús María', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1257, 20923, 'Real Campestre', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1258, 20923, 'La Villa Residencial', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1259, 20923, 'Los Álamos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1260, 20923, 'La Misión', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1261, 20923, 'Flores Magón', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1262, 20923, 'La Cardona', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1263, 20923, 'La Cuesta', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1264, 20923, 'Los Arroyitos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1265, 20923, 'San Miguelito', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1266, 20923, 'Rinconada San Miguelito', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1267, 20923, 'Ruiseñores', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1268, 20923, 'Residencial Jesús María', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1269, 20924, 'Cielo Claro', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1270, 20924, 'Agua Clara', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1271, 20924, 'Jacarandas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1272, 20924, 'Deportiva', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1273, 20924, 'Rancho San Pedro', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1274, 20924, 'Palma Dorada', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1275, 20925, 'Arroyo del Bosque', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1276, 20925, 'Misantla', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1277, 20925, 'Villas Tec', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1278, 20925, 'Agua Zarca', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1279, 20925, 'Benigno Chávez', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1280, 20925, 'Lomas de Jesús María', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1281, 20925, 'Vistas del Sáuz', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1282, 20925, 'Puerta Grande', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1283, 20926, 'Tulipanes Residencial', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1284, 20926, 'Rincón del Pilar', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1285, 20926, 'La Palma', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1286, 20926, 'Quintas Miguel Jerónimo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1287, 20926, 'Las Palmas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1288, 20926, 'Arboledas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1289, 20926, 'Chicahuales', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1290, 20926, 'Lomas del Valle', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1291, 20926, 'Martínez Andrade', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1292, 20926, 'Solidaridad', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1293, 20926, 'Vista Hermosa', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1294, 20926, 'Manantiales del Pinar', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1295, 20926, 'La Loma', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1296, 20926, 'La Piedra', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1297, 20926, 'Lomas de Vergeles', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1298, 20926, 'Rinconada Bugambilias', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1299, 20926, 'Misión de Santa María', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1300, 20926, 'Yalta Campestre', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1301, 20926, 'Residencial Tres Arroyos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1302, 20926, 'Mirabrujas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1303, 20927, 'Ayuntamiento', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1304, 20927, 'La Cañada', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1305, 20927, 'Ampliación La Cañada', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1306, 20927, 'Ojos de Agua', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1307, 20928, 'Luis Donaldo Colosio', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1308, 20928, 'Ejidal', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1309, 20928, 'El Torito', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1310, 20928, 'Las Palmas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1311, 20928, 'Plan Benito Juárez', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1312, 20928, 'El Mezquital', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1313, 20928, 'El Chaveño', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1314, 20928, 'Buenavista', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1315, 20928, 'Solar de Jonacatique', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1316, 20933, 'Unión de Ladrilleros', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1317, 20934, 'San Lorenzo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1318, 20943, 'Los Muñoz', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1319, 20943, 'Milpillas de Abajo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1320, 20943, 'Ex-hacienda de Milpillas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1321, 20947, 'Gracias a Dios', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1322, 20947, 'El Zapote', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1323, 20953, 'Cañada el Rodeo', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1324, 20955, 'La Mesa del Contadero El Contadero', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `colonias` (`id`, `fk_codigo_postal`, `colonia`, `municipio`, `ciudad`, `created_at`, `updated_at`) VALUES
(1325, 20955, 'San Rafael', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1326, 20956, 'Piedras Negras', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1327, 20957, 'Lomas de San Isidro', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1328, 20957, 'Pedernal Primero', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1329, 20957, 'El Rincón de la Virgen El Rincón', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1330, 20970, 'Tapias Viejas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1331, 20970, 'Puente de Villalpando El Puente', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1332, 20974, 'Puentes Cuates', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1333, 20983, 'Real del Molino', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1334, 20983, 'Mezquital del Country', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1335, 20983, 'El Llano', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1336, 20983, 'Trojes del Pedregal', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1337, 20983, 'Residencial Trojes del Norte', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1338, 20983, 'Residencial Trojes del Norte II', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1339, 20983, 'Residencial Antiguo Country', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1340, 20984, 'Villa Natty Residencial', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1341, 20984, 'Providencia', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1342, 20986, 'El Conejo Puerta del Llano', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1343, 20990, 'General Ignacio Zaragoza Venadero', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1344, 20990, 'Buenavista', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1345, 20994, 'Cieneguitas', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1346, 20994, 'Villa de Montegrande', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1347, 20994, 'La Tomatina', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1348, 20995, 'Agua Zarca', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1349, 20996, 'Jesús María', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1350, 20996, 'Los Arquitos', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1351, 20996, 'La Primavera', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1352, 20997, 'El Chacho', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1353, 20997, 'Ruscello', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1354, 20997, 'Q Campestre Residencial', 'Jesús María', 'Aguascalientes', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lote` int(11) NOT NULL,
  `total` float NOT NULL,
  `estatus_compra` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `lote`, `total`, `estatus_compra`, `created_at`) VALUES
(2, 2322, 517.2, 1, NULL),
(3, 2121, 609.6, 1, '2021-03-22 16:54:05'),
(4, 3432, 948.4, 1, '2021-03-22 16:57:29'),
(5, 12, 460, 1, '2021-03-22 18:16:03'),
(6, 1, 20, 1, '2021-03-22 18:16:49'),
(7, 2, 240, 1, '2021-03-22 18:17:49'),
(8, 3, 60, 1, '2021-03-22 18:18:29'),
(9, 3, 60, 1, '2021-03-22 18:19:17'),
(10, 3, 60, 1, '2021-03-22 18:19:34'),
(11, 3, 60, 1, '2021-03-22 18:19:48'),
(12, 3, 60, 1, '2021-03-22 18:20:10'),
(13, 6, 240, 1, '2021-03-22 18:22:08'),
(14, 6, 240, 1, '2021-03-22 18:22:27'),
(15, 7898, 1006.8, 1, '2021-03-22 18:26:22'),
(16, 6787, 816, 1, '2021-03-22 18:28:58'),
(17, 9098, 816, 1, '2021-03-22 18:34:44'),
(18, 9098, 816, 1, '2021-03-22 18:35:32'),
(19, 9098, 816, 1, '2021-03-22 18:36:06'),
(20, 7867, 816, 1, '2021-03-22 18:39:27'),
(21, 4546, 1194.8, 1, '2021-03-23 02:10:32'),
(22, 1090, 2000, 1, '2021-03-23 02:14:02'),
(23, 4555, 548, 1, '2021-03-24 23:38:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras-productos`
--

CREATE TABLE `compras-productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_lote` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `costo` double(8,2) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `compras-productos`
--

INSERT INTO `compras-productos` (`id`, `fk_lote`, `id_producto`, `cantidad`, `costo`, `subtotal`, `created_at`) VALUES
(1, 2, 4, 12, 20.00, 240.00, NULL),
(2, 2, 1, 9, 30.80, 277.20, NULL),
(3, 3, 4, 12, 20.00, 240.00, '2021-03-22 16:54:05'),
(4, 3, 1, 12, 30.80, 369.60, '2021-03-22 16:54:05'),
(5, 4, 4, 12, 20.00, 240.00, '2021-03-22 16:57:29'),
(6, 4, 1, 23, 30.80, 708.40, '2021-03-22 16:57:29'),
(7, 5, 4, 23, 20.00, 460.00, '2021-03-22 18:16:03'),
(8, 6, 4, 1, 20.00, 20.00, '2021-03-22 18:16:49'),
(9, 7, 4, 12, 20.00, 240.00, '2021-03-22 18:17:49'),
(10, 8, 4, 3, 20.00, 60.00, '2021-03-22 18:18:29'),
(11, 9, 4, 3, 20.00, 60.00, '2021-03-22 18:19:17'),
(12, 10, 4, 3, 20.00, 60.00, '2021-03-22 18:19:34'),
(13, 11, 4, 3, 20.00, 60.00, '2021-03-22 18:19:48'),
(14, 12, 4, 3, 20.00, 60.00, '2021-03-22 18:20:10'),
(15, 13, 4, 12, 20.00, 240.00, '2021-03-22 18:22:08'),
(16, 14, 4, 12, 20.00, 240.00, '2021-03-22 18:22:27'),
(17, 15, 4, 18, 20.00, 360.00, '2021-03-22 18:26:22'),
(18, 15, 1, 11, 30.80, 338.80, '2021-03-22 18:26:22'),
(19, 15, 2, 10, 30.80, 308.00, '2021-03-22 18:26:22'),
(20, 16, 4, 10, 20.00, 200.00, '2021-03-22 18:28:58'),
(21, 16, 1, 10, 30.80, 308.00, '2021-03-22 18:28:58'),
(22, 16, 2, 10, 30.80, 308.00, '2021-03-22 18:28:58'),
(23, 17, 1, 10, 30.80, 308.00, '2021-03-22 18:34:44'),
(24, 18, 1, 10, 30.80, 308.00, '2021-03-22 18:35:32'),
(25, 19, 1, 10, 30.80, 308.00, '2021-03-22 18:36:06'),
(26, 19, 2, 10, 30.80, 308.00, '2021-03-22 18:36:06'),
(27, 19, 4, 10, 20.00, 200.00, '2021-03-22 18:36:06'),
(28, 20, 4, 10, 20.00, 200.00, '2021-03-22 18:39:27'),
(29, 20, 1, 10, 30.80, 308.00, '2021-03-22 18:39:27'),
(30, 20, 2, 10, 30.80, 308.00, '2021-03-22 18:39:27'),
(31, 21, 1, 19, 30.80, 585.20, '2021-03-23 02:10:32'),
(32, 21, 4, 12, 20.00, 240.00, '2021-03-23 02:10:32'),
(33, 21, 2, 12, 30.80, 369.60, '2021-03-23 02:10:33'),
(34, 22, 5, 40, 50.00, 2000.00, '2021-03-23 02:14:02'),
(35, 23, 1, 10, 30.80, 308.00, '2021-03-24 23:38:48'),
(36, 23, 4, 12, 20.00, 240.00, '2021-03-24 23:38:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_tipogasto` bigint(20) UNSIGNED NOT NULL,
  `descripcion_gasto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo_gasto` double(100,2) NOT NULL,
  `fecha_gasto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_gasto` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `gastos`
--

INSERT INTO `gastos` (`id`, `fk_tipogasto`, `descripcion_gasto`, `costo_gasto`, `fecha_gasto`, `estatus_gasto`, `created_at`, `updated_at`) VALUES
(1, 1, 'mantenimiento', 999.99, '2020-04-29 00:00:00', 1, '2020-04-29 05:00:00', '2020-05-21 23:17:30'),
(2, 1, 'mantenimiento', 99.99, '2020-04-29 00:00:00', 1, '2020-04-29 05:00:00', '2020-04-29 05:00:00'),
(3, 1, 'llantas', 2000.00, '2020-03-29  00:00:00\r\n', 0, '2020-04-29 23:30:11', '2021-03-25 05:51:51'),
(4, 2, 'recibo de luz', 346.89, '2020-04-29', 1, '2020-04-30 02:36:33', '2020-04-30 02:36:33'),
(5, 3, 'recibo', 578.90, '2020-01-29', 1, '2020-04-30 02:38:16', '2020-05-21 23:17:16'),
(6, 4, 'recibo', 389.99, '2020-04-29', 1, '2020-04-30 02:40:06', '2020-04-30 02:40:06'),
(7, 5, 'servicio', 1200.00, '2020-04-29', 1, '2020-04-30 06:41:16', '2020-04-30 06:41:16'),
(8, 5, 'llantas', 6000.00, '2020-03-18', 0, '2020-04-30 06:42:42', '2021-03-25 05:51:59'),
(9, 6, 'recibo', 3000.00, '2020-03-01', 0, '2020-04-30 06:44:19', '2021-03-25 05:52:14'),
(10, 3, 'recibo', 56.00, '2020-05-25', 1, '2020-05-26 05:09:10', '2020-05-26 05:11:22'),
(11, 7, 'honorarios', 4000.00, '2020-05-25', 1, '2020-05-26 05:10:46', '2020-05-26 05:10:46'),
(12, 2, 'ppppp', 123.00, '2021-02-19', 0, '2021-02-20 08:56:39', '2021-03-25 05:43:32'),
(13, 8, 'iiiii', 5666.00, '2021-02-19', 0, '2021-02-20 08:57:37', '2021-02-27 09:45:20'),
(14, 9, 'algo', 344.00, '2021-03-24', 0, '2021-03-25 05:43:15', '2021-03-25 05:43:43'),
(15, 10, 'luz', 799.00, '2021-03-24', 1, '2021-03-25 05:49:28', '2021-03-25 05:49:28'),
(16, 10, 'agua', 688.00, '2021-03-24', 1, '2021-03-25 05:49:51', '2021-03-25 05:49:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario_rutas`
--

CREATE TABLE `inventario_rutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_ruta` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inventario_rutas`
--

INSERT INTO `inventario_rutas` (`id`, `id_ruta`, `id_producto`, `cantidad`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 12, NULL, NULL),
(2, 2, 4, 20, NULL, NULL),
(3, 2, 2, 4, NULL, NULL),
(4, 3, 4, 32, NULL, NULL),
(5, 3, 1, 5, '2021-04-16 17:21:32', '2021-04-16 12:21:32'),
(6, 1, 4, 30, '2021-04-20 01:52:05', NULL),
(7, 1, 1, 15, '2021-04-20 01:52:06', NULL),
(8, 0, 4, 6, '2021-04-20 01:56:47', NULL),
(9, 0, 1, 5, '2021-04-20 01:56:48', NULL),
(10, 0, 2, 4, '2021-04-20 01:56:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencias`
--

CREATE TABLE `licencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_usuario` bigint(20) UNSIGNED NOT NULL,
  `no_licencia` int(11) NOT NULL,
  `fecha_exp` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_ven` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus_lic` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `licencias`
--

INSERT INTO `licencias` (`id`, `fk_usuario`, `no_licencia`, `fecha_exp`, `fecha_ven`, `estatus_lic`, `created_at`, `updated_at`) VALUES
(4, 1, 45666554, '2019-01-10', '2020-04-30', 0, '2020-04-29 03:39:00', '2020-04-30 05:42:34'),
(5, 3, 2133444, '2020-03-26', '2020-03-26', 0, '2020-04-29 03:39:54', '2020-04-29 03:42:16'),
(6, 3, 3333444, '2020-03-26', '2020-04-28', 1, '2020-04-29 03:42:16', '2020-04-29 03:42:16'),
(7, 1, 44444, '2020-04-29', '2021-04-30', 0, '2020-04-30 05:43:20', '2020-05-06 19:50:51'),
(8, 4, 55555, '2019-04-29', '2020-05-08', 1, '2020-04-30 05:45:28', '2020-04-30 05:45:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2020_03_25_190101_create_rol_usuarios_table', 2),
(6, '2020_03_25_190150_create_rol_estatuses_table', 2),
(7, '2020_03_25_190906_add_deleted_to_user_table', 3),
(8, '2020_03_26_214952_create_proveedores_table', 4),
(11, '2020_03_27_144057_create_tipo_productos_table', 5),
(14, '2020_03_27_145441_create_productos_table', 6),
(17, '2020_03_27_222855_create_vehiculos_table', 7),
(19, '2020_04_02_174529_create_movimiento_productos_table', 8),
(20, '2020_04_08_180551_create_licencias_table', 9),
(22, '2020_04_14_201828_create_colonias_table', 10),
(24, '2020_04_14_233117_create_tiendas_table', 11),
(25, '2020_04_21_211226_create_rutas_table', 12),
(26, '2020_04_24_001616_create_ruta_tiendas_table', 13),
(27, '2020_04_24_220131_create_vehiculo_rutas_table', 14),
(28, '2020_04_28_205434_create_registro_kms_table', 15),
(29, '2020_04_29_151233_create_tipo_gastos_table', 16),
(30, '2020_04_29_151258_create_gastos_table', 16),
(31, '2020_05_06_174457_add_dias_visitas_to_ruta_tiendas', 17),
(37, '2021_02_26_191328_create_check_list_vehiculos_table', 18),
(38, '2021_03_10_151642_create_registro_checklists_table', 18),
(39, '2021_03_22_155959_create_compras_table', 19),
(40, '2021_03_22_160307_create_compras-productos_table', 19),
(41, '2021_04_16_160413_create_inventario_rutas_table', 20),
(42, '2021_04_16_162601_create_venta_x_rutas_table', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_productos`
--

CREATE TABLE `movimiento_productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo_mov` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_mov` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus_mov` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `movimiento_productos`
--

INSERT INTO `movimiento_productos` (`id`, `fk_producto`, `cantidad`, `tipo_mov`, `fecha_mov`, `estatus_mov`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'alta', '2020-04-02', 1, '2020-04-03 00:39:57', '2020-04-03 00:39:57'),
(2, 1, 1, 'alta', '2020-04-02', 1, '2020-04-03 00:41:09', '2020-04-03 00:41:09'),
(3, 1, 1, 'alta', '2020-03-27', 1, '2020-04-03 06:14:38', '2020-04-03 06:14:38'),
(4, 2, 10, 'alta', '2020-03-27', 1, '2020-04-03 06:44:28', '2020-04-03 06:44:28'),
(5, 2, 1, 'alta', '2020-03-27', 1, '2020-04-03 06:44:45', '2020-04-03 06:44:45'),
(6, 2, 67, 'alta', '2020-03-27', 1, '2020-04-30 06:55:06', '2020-04-30 06:55:06'),
(7, 4, 4, 'alta', '2020-04-02', 1, '2020-05-26 05:44:31', '2020-05-26 05:44:31'),
(8, 4, 60, 'alta', '2020-04-02', 1, '2021-02-27 09:44:16', '2021-02-27 09:44:16'),
(9, 4, 166, 'alta', '2020-04-02', 1, '2021-02-27 09:48:06', '2021-02-27 09:48:06'),
(10, 4, 470, 'alta', '2020-04-02', 1, '2021-03-23 08:19:54', '2021-03-23 08:19:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fktipo` bigint(20) UNSIGNED NOT NULL,
  `costo` double(4,2) NOT NULL,
  `precio_venta` double(4,2) NOT NULL,
  `precio_menudeo` double(4,2) NOT NULL,
  `precio_mayoreo` double(4,2) NOT NULL,
  `existencia` int(11) NOT NULL,
  `estatus_produ` tinyint(1) NOT NULL DEFAULT 1,
  `fk_proveedor` bigint(20) UNSIGNED NOT NULL,
  `fecha_registro_prod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motivo_baja_produ` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_baja_produ` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `fktipo`, `costo`, `precio_venta`, `precio_menudeo`, `precio_mayoreo`, `existencia`, `estatus_produ`, `fk_proveedor`, `fecha_registro_prod`, `motivo_baja_produ`, `fecha_baja_produ`, `created_at`, `updated_at`) VALUES
(1, 'Galleta dulce 2', 'Galleta dulce', 1, 30.80, 40.80, 38.80, 37.50, 82, 1, 1, '2020-03-27', NULL, NULL, '2020-03-28 03:29:39', '2020-04-03 06:14:38'),
(2, 'Galleta dulce', 'Galleta de chocolate', 1, 30.80, 40.80, 38.80, 37.50, 176, 1, 1, '2020-03-27', NULL, NULL, '2020-03-28 03:33:37', '2020-04-30 06:55:06'),
(4, 'nuez', 'probando la nuez', 2, 20.00, 34.00, 24.00, 22.00, 852, 1, 1, '2020-04-02', NULL, NULL, '2020-04-02 22:13:58', '2021-03-23 08:19:55'),
(5, 'Tostada', 'Tostada 22 piezas', 1, 50.00, 56.00, 59.00, 52.00, 25, 1, 2, '2021-03-22', NULL, NULL, '2021-03-23 08:13:27', '2021-03-23 08:13:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_pro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apepat_pro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apemat_pro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion_pro` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono_pro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_ingreso_pro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus_pro` tinyint(1) NOT NULL DEFAULT 1,
  `motivo_baja_pro` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_baja_pro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre_pro`, `apepat_pro`, `apemat_pro`, `direccion_pro`, `telefono_pro`, `email_pro`, `fecha_ingreso_pro`, `estatus_pro`, `motivo_baja_pro`, `fecha_baja_pro`, `created_at`, `updated_at`) VALUES
(1, 'Proveedor', 'prove', 'Provee', 'en las barrancas', '8907899', 'prove@admin.com', '2020-03-25', 1, NULL, NULL, '2020-03-27 04:45:51', '2020-03-27 05:25:00'),
(2, 'proveedor muestra', 'xxxx', 'xxxxx', 'xxxx', '444444', 'asas@admin.com', '2020-03-27', 1, NULL, NULL, '2020-03-28 08:38:51', '2020-03-28 08:38:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_checklists`
--

CREATE TABLE `registro_checklists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_vehiculo` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registro_checklists`
--

INSERT INTO `registro_checklists` (`id`, `fk_vehiculo`, `created_at`, `updated_at`) VALUES
(1, 6, '2021-03-11 01:26:28', '2021-03-11 01:26:28'),
(2, 6, '2021-03-11 01:52:59', '2021-03-11 01:52:59'),
(3, 6, '2021-03-11 01:55:04', '2021-03-11 01:55:04'),
(4, 6, '2021-03-11 01:55:05', '2021-03-11 01:55:05'),
(5, 6, '2021-03-11 01:55:05', '2021-03-11 01:55:05'),
(6, 6, '2021-03-11 01:55:06', '2021-03-11 01:55:06'),
(7, 6, '2021-03-11 01:55:06', '2021-03-11 01:55:06'),
(8, 6, '2021-03-11 01:55:06', '2021-03-11 01:55:06'),
(9, 6, '2021-03-11 01:57:32', '2021-03-11 01:57:32'),
(10, 6, '2021-03-11 02:00:44', '2021-03-11 02:00:44'),
(11, 4, '2021-03-11 02:03:51', '2021-03-11 02:03:51'),
(12, 6, '2021-03-13 01:07:19', '2021-03-13 01:07:19'),
(13, 6, '2021-03-13 01:16:29', '2021-03-13 01:16:29'),
(14, 6, '2021-03-13 01:16:31', '2021-03-13 01:16:31'),
(15, 6, '2021-03-13 01:16:31', '2021-03-13 01:16:31'),
(16, 6, '2021-03-13 01:16:31', '2021-03-13 01:16:31'),
(17, 6, '2021-03-13 01:16:31', '2021-03-13 01:16:31'),
(18, 6, '2021-03-13 01:17:30', '2021-03-13 01:17:30'),
(19, 6, '2021-03-13 01:18:59', '2021-03-13 01:18:59'),
(20, 6, '2021-03-13 01:19:02', '2021-03-13 01:19:02'),
(21, 6, '2021-03-13 01:19:03', '2021-03-13 01:19:03'),
(22, 6, '2021-03-13 01:19:03', '2021-03-13 01:19:03'),
(23, 6, '2021-03-13 01:19:37', '2021-03-13 01:19:37'),
(24, 5, '2021-03-13 08:41:30', '2021-03-13 08:41:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_kms`
--

CREATE TABLE `registro_kms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_vehiculo` bigint(20) UNSIGNED NOT NULL,
  `km_actual_regveh` double(10,2) DEFAULT NULL,
  `km_nuevo_regveh` double(10,2) DEFAULT NULL,
  `fecha_regveh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registro_kms`
--

INSERT INTO `registro_kms` (`id`, `fk_vehiculo`, `km_actual_regveh`, `km_nuevo_regveh`, `fecha_regveh`, `created_at`, `updated_at`) VALUES
(1, 4, 10.00, 11.00, '2020-04-28', '2020-04-29 02:40:34', '2020-04-29 02:40:34'),
(2, 4, 11.00, 12.00, '2020-04-28', '2020-04-29 02:41:55', '2020-04-29 02:41:55'),
(3, 4, 12.00, 13.00, '2020-04-28', '2020-04-29 02:42:28', '2020-04-29 02:42:28'),
(4, 4, 13.00, 15.00, '2020-04-28', '2020-04-29 02:50:04', '2020-04-29 02:50:04'),
(5, 4, 15.00, 20.00, '2020-04-29', '2020-04-30 05:51:51', '2020-04-30 05:51:51'),
(6, 6, 18900.00, 19900.00, '2021-02-19', '2021-02-20 09:15:33', '2021-02-20 09:15:33'),
(7, 6, 19900.00, 19901.00, '2021-03-24', '2021-03-25 05:40:02', '2021-03-25 05:40:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_estatuses`
--

CREATE TABLE `rol_estatuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol_estatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_usuarios`
--

CREATE TABLE `rol_usuarios` (
  `id_rol` bigint(20) UNSIGNED NOT NULL,
  `rol` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol_usuarios`
--

INSERT INTO `rol_usuarios` (`id_rol`, `rol`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', 'Tiene permiso para todo', '2020-03-26 06:00:00', '2020-03-26 06:00:00'),
(2, 'Vendedor', 'Permiso para rutas', '2020-03-26 06:00:00', '2020-03-26 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_ruta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus_ruta` tinyint(1) NOT NULL DEFAULT 1,
  `fechabaja_ruta` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivobaja_ruta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id`, `nombre_ruta`, `estatus_ruta`, `fechabaja_ruta`, `motivobaja_ruta`, `created_at`, `updated_at`) VALUES
(0, 'Venta Mostrador', 1, NULL, NULL, '2020-12-02 04:11:59', '2020-12-02 04:11:59'),
(1, 'ruta prueba', 1, NULL, NULL, '2020-04-22 03:21:57', '2020-04-28 03:52:27'),
(2, 'ruta 2', 1, NULL, NULL, '2020-04-22 21:18:33', '2020-04-22 21:18:33'),
(3, 'ruta 6', 1, NULL, NULL, '2020-04-30 06:18:40', '2020-04-30 06:19:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta_tiendas`
--

CREATE TABLE `ruta_tiendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_tienda` bigint(20) UNSIGNED NOT NULL,
  `fk_ruta` bigint(20) UNSIGNED NOT NULL,
  `dias_visita_tienda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_tienda_ruta` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ruta_tiendas`
--

INSERT INTO `ruta_tiendas` (`id`, `fk_tienda`, `fk_ruta`, `dias_visita_tienda`, `status_tienda_ruta`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'lunes-martes---', 0, '2020-04-24 05:47:59', '2020-05-21 23:33:22'),
(3, 2, 2, '--miercoles--', 1, '2020-04-24 06:48:58', '2020-05-21 23:33:56'),
(5, 2, 1, NULL, 1, '2020-04-24 20:31:14', '2020-05-06 20:59:05'),
(6, 1, 2, NULL, 1, '2020-04-30 06:22:25', '2020-04-30 06:22:25'),
(8, 2, 3, NULL, 1, '2020-05-06 20:18:22', '2020-05-06 20:18:22'),
(10, 1, 3, 'lunes-martes-miercoles-jueves-viernes', 0, '2020-05-06 23:00:38', '2020-05-21 23:33:49'),
(11, 2, 0, '-martes-miercoles--', 1, '2021-02-20 03:29:42', '2021-02-20 03:29:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_tienda` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fk_codigo_postal` int(10) UNSIGNED NOT NULL,
  `colonia` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_tienda` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsable_tienda` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel_tienda` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fechaalta_tienda` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estatus_tienda` tinyint(1) NOT NULL DEFAULT 1,
  `fechabaja_tienda` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivobaja_tienda` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id`, `nombre_tienda`, `fk_codigo_postal`, `colonia`, `direccion_tienda`, `responsable_tienda`, `tel_tienda`, `fechaalta_tienda`, `estatus_tienda`, `fechabaja_tienda`, `motivobaja_tienda`, `created_at`, `updated_at`) VALUES
(1, 'la chona', 20010, 'Colinas del Rio', 'avenida convencion sur 716', 'juan perez', '987654', '2020-04-17', 1, NULL, NULL, '2020-04-18 03:27:11', '2020-04-18 05:14:02'),
(2, 'prueba tienda', 20049, 'Colinas del Poniente', 'calle y numero', 'arturo', '8789988', '2020-04-23', 1, NULL, NULL, '2020-04-24 06:40:26', '2020-04-24 06:40:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_gastos`
--

CREATE TABLE `tipo_gastos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipogasto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus_tipogasto` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_gastos`
--

INSERT INTO `tipo_gastos` (`id`, `tipogasto`, `estatus_tipogasto`, `created_at`, `updated_at`) VALUES
(1, 'vehiculo gasto', 1, '2020-04-29 21:08:08', '2020-04-29 21:08:08'),
(2, 'luz', 1, '2020-04-30 02:36:03', '2020-04-30 02:36:03'),
(3, 'agua', 1, '2020-04-30 02:37:53', '2020-04-30 02:37:53'),
(4, 'internet', 1, '2020-04-30 02:39:44', '2020-04-30 02:39:44'),
(5, 'ruta 06', 1, '2020-04-30 06:40:35', '2020-04-30 06:40:35'),
(6, 'renta', 1, '2020-04-30 06:43:26', '2020-04-30 06:43:26'),
(7, 'desarrollo', 1, '2020-05-26 05:10:31', '2020-05-26 05:10:31'),
(8, 'cortina', 1, '2021-02-20 08:57:17', '2021-02-20 08:57:17'),
(9, 'cigarros', 1, '2021-03-25 05:42:53', '2021-03-25 05:42:53'),
(10, 'tienda gdl', 1, '2021-03-25 05:49:11', '2021-03-25 05:49:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_productos`
--

CREATE TABLE `tipo_productos` (
  `id_tipo` bigint(20) UNSIGNED NOT NULL,
  `nombre_produc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_produc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_productos`
--

INSERT INTO `tipo_productos` (`id_tipo`, `nombre_produc`, `descripcion_produc`, `created_at`, `updated_at`) VALUES
(1, 'estuche', 'Este producto se vende en estuche', '2020-03-27 06:00:00', '2020-03-27 06:00:00'),
(2, 'granel', 'esta es prueba de granel ', '2020-03-27 06:00:00', '2020-03-27 06:00:00'),
(3, 'vitrina', 'esta es la vitrina', '2020-04-06 21:47:58', '2020-04-06 21:47:58'),
(4, 'suelta', 'es suelta', '2020-04-30 05:55:52', '2020-04-30 05:55:52'),
(5, 'prueba2', 'es una prueba', '2021-03-25 05:37:45', '2021-03-25 05:37:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apepat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apemat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fktiporol` bigint(20) UNSIGNED NOT NULL,
  `fecha_ingreso` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estatus` tinyint(1) NOT NULL DEFAULT 1,
  `urlfoto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_baja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivo_baja` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `apepat`, `apemat`, `direccion`, `telefono`, `fktiporol`, `fecha_ingreso`, `estatus`, `urlfoto`, `fecha_nacimiento`, `fecha_baja`, `motivo_baja`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Daniel', 'Zuñiga', 'Geronis', 'avenida universidad, ciudad Universitaria', '9107470', 1, '2020-03-23', 1, 'png', '2020-03-02', NULL, NULL, 'admin@admin.com', NULL, '$2y$10$vbkcMJNak.l46zMDKNsQ9Ode6wnOSjSmY5zqVh.5dl/rWkPxsoXfW', NULL, '2020-03-24 01:52:07', '2020-04-03 01:35:29', NULL),
(2, 'trabajador', 'ninguno', 'menos', 'otra', '9808080', 2, '2020-03-25', 2, NULL, '2019-01-29', '2020-03-27', 'por que tal', 'trabajador@admin.com', NULL, '$2y$10$/CYg8Z9QX9Vo//.vO8f4yea5wMnVo7fjvxwc77II/vEH7pjfBrSjK', NULL, '2020-03-26 00:35:31', '2020-03-28 08:26:06', NULL),
(3, 'chofer', 'nada', 'nada2', 'otra direccion', '98765431', 2, '2020-03-25', 1, NULL, '1999-07-16', '2020-03-26', 'este se dio de baja para pruebas', 'chofer@admin.com', NULL, '$2y$10$.IfhxD0wrFkXjTmmSPnvg.cn9qxmCoWGP.37lDnAq1qz5hSS8LLKm', NULL, '2020-03-26 00:37:11', '2020-04-18 05:18:33', NULL),
(4, 'Alonso', 'Juarez', 'Mendez', 'otra direccion', '1234567890', 1, '2020-03-25', 1, NULL, '1999-07-16', NULL, NULL, 'chofer2@admin.com', NULL, '$2y$10$FbkZf/g0UZuY1W95yZH8Ne/laNmlv.xQ82GsKt.kq0XBgo3agt6x2', NULL, '2020-03-26 00:39:25', '2020-04-03 01:41:14', NULL),
(5, 'ejemplo', 'ejemplo', 'ejemplo', 'direccion 1', '9876543', 1, '2020-03-27', 1, NULL, '2003-04-29', NULL, NULL, 'ejemplo@admin.com', NULL, '$2y$10$ia/K/faZqK0hmobZh8UOlOV0ynxFIKL6HApSWO0rvkvI.wENa1.Z.', NULL, '2020-03-28 08:31:24', '2020-03-28 08:32:48', NULL),
(6, 'prueba', 'prueba', 'prueba', 'hola tal tal', '8888888', 1, '2021-03-29', 1, NULL, '2021-03-08', NULL, NULL, 'hola@hola', NULL, '$2y$10$mr3AhsRPlkLiSjqw11b70OZVqlBUJY2i2.Gz0liKklDtyMAwJ785.', NULL, '2021-03-30 06:53:16', '2021-03-30 06:53:16', NULL),
(7, 'otro', 'nada', 'nuevo', 'algo', '90000', 1, '2021-03-29', 1, NULL, '2021-03-22', NULL, NULL, 'algo@algo.com', NULL, '$2y$10$ZMu7ZReyVqvlpiKqW59KA.JQfDw1.uXkp/Kqva16cu1Du8FXcamOC', NULL, '2021-03-30 06:57:14', '2021-03-30 06:57:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehiculo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marca_veh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modelo_veh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placas_veh` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_veh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poliza_veh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_seg_veh` int(11) DEFAULT NULL,
  `inicio_seg_veh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fin_seg_veh` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_com_veh` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_alta_veh` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_baja_veh` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motivo_baja_veh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `km_actual_veh` double(10,2) DEFAULT NULL,
  `estatus_veh` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id`, `vehiculo`, `marca_veh`, `modelo_veh`, `placas_veh`, `desc_veh`, `poliza_veh`, `tel_seg_veh`, `inicio_seg_veh`, `fin_seg_veh`, `fecha_com_veh`, `fecha_alta_veh`, `fecha_baja_veh`, `motivo_baja_veh`, `km_actual_veh`, `estatus_veh`, `created_at`, `updated_at`) VALUES
(1, 'vehiculo 10', 'mazda', '2020', '12iki348', 'esta es una prueba', '98', 9876554, '2020-03-27', '2020-03-27', '2020-03-27', '2020-03-27', NULL, NULL, 3.00, 1, '2020-03-28 07:07:39', '2020-04-29 02:59:37'),
(4, 'vehiculo 1', 'nissan', '2011', '234jjh10', 'Este es un vehivulo normal', 'xxxxxxx', 899999, '2020-02-04', '2020-04-24', '2000-03-24', '2020-04-24', NULL, NULL, 20.00, 1, '2020-04-25 02:57:57', '2020-04-30 05:51:51'),
(5, 'vehiculo gasto', 'mazda', '2001', 'xxer7', 'esta es la de la ruta 10', 'xxxxxxxx', 99999999, '2020-04-29', '2020-07-30', '2009-04-01', '2020-04-29', NULL, NULL, 15000.00, 1, '2020-04-29 21:08:08', '2020-04-30 05:50:30'),
(6, 'ruta 06', 'nissan', '2000', 'xxx78', 'nada', 'xxxxxx', 99999999, '2020-04-14', '2020-04-22', '2010-02-17', '2020-04-29', NULL, NULL, 19901.00, 1, '2020-04-30 06:40:35', '2021-03-25 05:40:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo_rutas`
--

CREATE TABLE `vehiculo_rutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_vehiculo_vr` bigint(20) UNSIGNED NOT NULL,
  `fk_ruta_vr` bigint(20) UNSIGNED NOT NULL,
  `status_vehiculo_ruta` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculo_rutas`
--

INSERT INTO `vehiculo_rutas` (`id`, `fk_vehiculo_vr`, `fk_ruta_vr`, `status_vehiculo_ruta`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-04-25 03:28:47', '2020-05-06 22:11:32'),
(2, 4, 1, 1, '2020-04-25 03:29:03', '2020-04-28 05:06:17'),
(3, 4, 2, 1, '2020-04-25 03:36:04', '2020-04-28 04:57:21'),
(4, 1, 3, 1, '2020-04-30 06:28:51', '2020-04-30 06:29:58'),
(5, 4, 3, 1, '2020-04-30 06:29:29', '2020-04-30 06:29:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_ventas` int(11) NOT NULL,
  `id_ruta` bigint(20) UNSIGNED NOT NULL,
  `total` float NOT NULL,
  `estatus` int(3) NOT NULL DEFAULT 1,
  `fecha_de_venta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_ventas`, `id_ruta`, `total`, `estatus`, `fecha_de_venta`) VALUES
(1, 0, 0, 1, '2021-01-16 14:47:10'),
(2, 0, 0, 1, '2021-02-19 16:28:27'),
(3, 0, 0, 1, '2021-02-19 20:59:34'),
(4, 0, 0, 1, '2021-02-26 21:47:20'),
(5, 0, 0, 1, '2021-03-22 12:41:27'),
(6, 0, 0, 1, '2021-03-22 20:18:05'),
(7, 1, 884.5, 1, '2021-04-09 12:30:32'),
(8, 0, 97, 1, '2021-04-09 14:24:35'),
(9, 2, 163, 1, '2021-04-16 12:09:17'),
(10, 2, 238, 1, '2021-04-16 12:09:56'),
(11, 2, 282, 1, '2021-04-16 12:11:34'),
(12, 3, 44, 1, '2021-04-16 12:19:44'),
(13, 3, 418, 1, '2021-04-16 12:20:07'),
(14, 3, 242, 1, '2021-04-16 12:21:03'),
(15, 3, 375, 1, '2021-04-16 12:21:31'),
(16, 3, 375, 1, '2021-04-16 12:22:17'),
(17, 3, 187.5, 1, '2021-04-16 12:26:07'),
(18, 3, 187.5, 1, '2021-04-16 12:27:19'),
(19, 3, 187.5, 1, '2021-04-16 12:28:52'),
(20, 2, 670, 1, '2021-04-19 20:36:57'),
(21, 1, 1002.5, 1, '2021-04-19 20:52:05'),
(22, 0, 958.5, 1, '2021-04-19 20:56:47'),
(23, 1, 220, 1, '2021-04-20 11:24:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_productos`
--

CREATE TABLE `ventas_productos` (
  `id_ventas_productor` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `costo_unitario` decimal(6,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `subtotal` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas_productos`
--

INSERT INTO `ventas_productos` (`id_ventas_productor`, `id_venta`, `id_producto`, `costo_unitario`, `cantidad`, `subtotal`) VALUES
(1, 1, 4, '24.00', 2, '48.00'),
(2, 1, 2, '38.80', 2, '77.60'),
(3, 2, 4, '22.00', 1, '22.00'),
(4, 3, 1, '37.50', 3, '112.50'),
(5, 4, 4, '22.00', 32, '704.00'),
(6, 5, 1, '37.50', 10, '375.00'),
(7, 5, 4, '22.00', 10, '220.00'),
(8, 5, 2, '37.50', 10, '375.00'),
(9, 6, 5, '52.00', 25, '1300.00'),
(10, 7, 1, '37.50', 23, '862.50'),
(11, 7, 4, '22.00', 1, '22.00'),
(12, 8, 4, '22.00', 1, '22.00'),
(13, 8, 2, '37.50', 2, '75.00'),
(14, 9, 1, '37.50', 2, '75.00'),
(15, 9, 4, '22.00', 4, '88.00'),
(16, 10, 4, '22.00', 4, '88.00'),
(17, 11, 4, '22.00', 6, '132.00'),
(18, 11, 2, '37.50', 4, '150.00'),
(19, 12, 4, '22.00', 2, '44.00'),
(20, 13, 4, '22.00', 19, '418.00'),
(21, 14, 4, '22.00', 11, '242.00'),
(22, 15, 1, '37.50', 10, '375.00'),
(23, 16, 1, '37.50', 10, '375.00'),
(24, 17, 1, '37.50', 5, '187.50'),
(25, 18, 1, '37.50', 5, '187.50'),
(26, 19, 1, '37.50', 5, '187.50'),
(27, 20, 4, '22.00', 10, '220.00'),
(28, 20, 1, '37.50', 12, '450.00'),
(29, 21, 4, '22.00', 20, '440.00'),
(30, 21, 1, '37.50', 15, '562.50'),
(31, 22, 4, '22.00', 18, '396.00'),
(32, 22, 1, '37.50', 7, '262.50'),
(33, 22, 2, '37.50', 8, '300.00'),
(34, 23, 4, '22.00', 10, '220.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_x_rutas`
--

CREATE TABLE `venta_x_rutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_ruta` int(10) UNSIGNED NOT NULL,
  `id_producto` int(10) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `costo` double(8,2) NOT NULL,
  `subtotal` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `tipo_movi` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `venta_x_rutas`
--

INSERT INTO `venta_x_rutas` (`id`, `id_ruta`, `id_producto`, `cantidad`, `costo`, `subtotal`, `total`, `tipo_movi`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, 37.50, 75.00, 75.00, 'Venta', '2021-04-19 19:40:58', '2021-04-19 19:40:58'),
(2, 3, 1, 10, 37.50, 375.00, 562.50, 'Devolucion', '2021-04-19 20:01:02', '2021-04-19 20:01:02'),
(3, 3, 1, 5, 37.50, 187.50, 562.50, 'Devolucion', '2021-04-19 20:01:02', '2021-04-19 20:01:02'),
(4, 3, 1, 10, 37.50, 375.00, 562.50, 'Venta', '2021-04-19 20:03:30', '2021-04-19 20:03:30'),
(5, 3, 1, 5, 37.50, 187.50, 562.50, 'Devolucion', '2021-04-19 20:03:30', '2021-04-19 20:03:30'),
(6, 0, 4, 2, 22.00, 44.00, 119.00, 'Venta', '2021-04-20 01:48:40', '2021-04-20 01:48:40'),
(7, 0, 1, 2, 37.50, 75.00, 119.00, 'Venta', '2021-04-20 01:48:41', '2021-04-20 01:48:41'),
(8, 0, 4, 4, 22.00, 88.00, 198.00, 'Devolucion', '2021-04-20 01:49:57', '2021-04-20 01:49:57'),
(9, 0, 4, 5, 22.00, 110.00, 198.00, 'Venta', '2021-04-20 01:49:57', '2021-04-20 01:49:57'),
(10, 1, 4, 6, 22.00, 132.00, 432.00, 'Venta', '2021-04-20 01:52:37', '2021-04-20 01:52:37'),
(11, 1, 1, 8, 37.50, 300.00, 432.00, 'Devolucion', '2021-04-20 01:52:37', '2021-04-20 01:52:37'),
(12, 0, 4, 10, 22.00, 220.00, 445.00, 'Venta', '2021-04-20 01:57:54', '2021-04-20 01:57:54'),
(13, 0, 1, 2, 37.50, 75.00, 445.00, 'Devolucion', '2021-04-20 01:57:54', '2021-04-20 01:57:54'),
(14, 0, 2, 4, 37.50, 150.00, 445.00, 'Devolucion', '2021-04-20 01:57:54', '2021-04-20 01:57:54'),
(15, 0, 4, 2, 22.00, 44.00, 44.00, 'Venta', '2021-04-20 16:21:26', '2021-04-20 16:21:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `check_list_vehiculos`
--
ALTER TABLE `check_list_vehiculos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_registro` (`fk_registro`);

--
-- Indices de la tabla `colonias`
--
ALTER TABLE `colonias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_codigo_postal` (`fk_codigo_postal`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras-productos`
--
ALTER TABLE `compras-productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lote_compra` (`fk_lote`),
  ADD KEY `fk_id_producto` (`id_producto`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipogasto` (`fk_tipogasto`);

--
-- Indices de la tabla `inventario_rutas`
--
ALTER TABLE `inventario_rutas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ruta` (`id_ruta`),
  ADD KEY `fk_id_producto_inv` (`id_producto`);

--
-- Indices de la tabla `licencias`
--
ALTER TABLE `licencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario` (`fk_usuario`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimiento_productos`
--
ALTER TABLE `movimiento_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkp_producto_mov` (`fk_producto`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tipo_producto` (`fktipo`),
  ADD KEY `fk_proveedor_idproveedor` (`fk_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proveedores_email_pro_unique` (`email_pro`);

--
-- Indices de la tabla `registro_checklists`
--
ALTER TABLE `registro_checklists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro_kms`
--
ALTER TABLE `registro_kms`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol_estatuses`
--
ALTER TABLE `rol_estatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol_usuarios`
--
ALTER TABLE `rol_usuarios`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ruta_tiendas`
--
ALTER TABLE `ruta_tiendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tienda` (`fk_tienda`),
  ADD KEY `fk_ruta` (`fk_ruta`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `fk_rol_userrol` (`fktiporol`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `vehiculo_rutas`
--
ALTER TABLE `vehiculo_rutas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vehiculo_vr` (`fk_vehiculo_vr`),
  ADD KEY `fk_ruta_vr` (`fk_ruta_vr`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_ventas`);

--
-- Indices de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  ADD PRIMARY KEY (`id_ventas_productor`);

--
-- Indices de la tabla `venta_x_rutas`
--
ALTER TABLE `venta_x_rutas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `check_list_vehiculos`
--
ALTER TABLE `check_list_vehiculos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT de la tabla `colonias`
--
ALTER TABLE `colonias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1355;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `compras-productos`
--
ALTER TABLE `compras-productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `inventario_rutas`
--
ALTER TABLE `inventario_rutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `licencias`
--
ALTER TABLE `licencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `movimiento_productos`
--
ALTER TABLE `movimiento_productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registro_checklists`
--
ALTER TABLE `registro_checklists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `registro_kms`
--
ALTER TABLE `registro_kms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `rol_estatuses`
--
ALTER TABLE `rol_estatuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol_usuarios`
--
ALTER TABLE `rol_usuarios`
  MODIFY `id_rol` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ruta_tiendas`
--
ALTER TABLE `ruta_tiendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_productos`
--
ALTER TABLE `tipo_productos`
  MODIFY `id_tipo` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehiculo_rutas`
--
ALTER TABLE `vehiculo_rutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `ventas_productos`
--
ALTER TABLE `ventas_productos`
  MODIFY `id_ventas_productor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `venta_x_rutas`
--
ALTER TABLE `venta_x_rutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `check_list_vehiculos`
--
ALTER TABLE `check_list_vehiculos`
  ADD CONSTRAINT `fk_registro` FOREIGN KEY (`fk_registro`) REFERENCES `registro_checklists` (`id`);

--
-- Filtros para la tabla `compras-productos`
--
ALTER TABLE `compras-productos`
  ADD CONSTRAINT `fk_id_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `fk_lote_compra` FOREIGN KEY (`fk_lote`) REFERENCES `compras` (`id`);

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `fk_gasto_tipogasto` FOREIGN KEY (`fk_tipogasto`) REFERENCES `tipo_gastos` (`id`);

--
-- Filtros para la tabla `inventario_rutas`
--
ALTER TABLE `inventario_rutas`
  ADD CONSTRAINT `fk_id_producto_inv` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `fk_ruta` FOREIGN KEY (`id_ruta`) REFERENCES `rutas` (`id`);

--
-- Filtros para la tabla `licencias`
--
ALTER TABLE `licencias`
  ADD CONSTRAINT `fk_licencia_user` FOREIGN KEY (`fk_usuario`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `movimiento_productos`
--
ALTER TABLE `movimiento_productos`
  ADD CONSTRAINT `fkp_producto_mov` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_proveedor_idproveedor` FOREIGN KEY (`fk_proveedor`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `fk_tipo_producto` FOREIGN KEY (`fktipo`) REFERENCES `tipo_productos` (`id_tipo`);

--
-- Filtros para la tabla `ruta_tiendas`
--
ALTER TABLE `ruta_tiendas`
  ADD CONSTRAINT `fk_ruta_ruta` FOREIGN KEY (`fk_ruta`) REFERENCES `rutas` (`id`),
  ADD CONSTRAINT `fk_tienda_ruta` FOREIGN KEY (`fk_tienda`) REFERENCES `tiendas` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_rol_userrol` FOREIGN KEY (`fktiporol`) REFERENCES `rol_usuarios` (`id_rol`);

--
-- Filtros para la tabla `vehiculo_rutas`
--
ALTER TABLE `vehiculo_rutas`
  ADD CONSTRAINT `fk_ruta_ruta_vr` FOREIGN KEY (`fk_ruta_vr`) REFERENCES `rutas` (`id`),
  ADD CONSTRAINT `fk_ruta_vehiculo_vr` FOREIGN KEY (`fk_vehiculo_vr`) REFERENCES `vehiculos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
