-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-03-2025 a las 21:52:49
-- Versión del servidor: 10.6.20-MariaDB-cll-lve
-- Versión de PHP: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vaninquz_calamar_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadors`
--

CREATE TABLE `jugadors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `numero_jugador` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL DEFAULT 'eliminado',
  `hora_juego` time DEFAULT NULL,
  `papel` varchar(255) NOT NULL DEFAULT 'jugador',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `jugadors`
--

INSERT INTO `jugadors` (`id`, `nombre`, `apellidos`, `telefono`, `foto`, `fecha_nacimiento`, `numero_jugador`, `estado`, `hora_juego`, `papel`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'David', 'Flores', '71039910', 'jugadores/JzV4vfWwiuh2JADkalhAcpXrELvD0U2Yv9M7mfOj.jpg', '2010-12-25', '1', 'eliminado', '11:30:00', 'jugador', 3, '2025-02-26 02:09:09', '2025-02-28 16:39:23'),
(5, 'Dulce María', 'Maeda Pocoaca', '62122470', 'jugadores/m0eEZ8pPHvKdIsTcGOSgo0EYq81moIDDUSL8pTZh.jpg', '2011-02-12', '196', 'eliminado', '11:30:00', 'guardia', 8, '2025-02-26 18:37:09', '2025-02-28 16:40:35'),
(6, 'Delia', 'Zarate flores', '76608515', 'jugadores/OzVABfEMFqLnnlUiXU2ZMxH33K6MNIB08Vf48LP8.jpg', '2016-12-20', '8', 'eliminado', '10:00:00', 'jugador', 9, '2025-02-26 18:44:14', '2025-02-28 16:40:44'),
(7, 'Moisés', 'Mamani Zarate', '76608515', 'jugadores/KGgkltm6n0kfR7yI3PrGdJnXBRuA5NshzlgGuCJC.jpg', '2016-12-20', '5', 'eliminado', '10:00:00', 'jugador', 9, '2025-02-26 18:45:38', '2025-02-28 16:40:57'),
(8, 'Melek', 'Mamani Zarate', '76608515', 'jugadores/m3uVEhCkvLfonGE04RJSwTGezykli5RWv8Joa5tM.jpg', '2019-09-02', '4', 'eliminado', '09:30:00', 'jugador', 9, '2025-02-26 18:48:57', '2025-02-28 16:41:12'),
(9, 'Moises', 'Mamani Zarate', '76608515', 'jugadores/wC6G0nKgkXY6xwngoDrD98bE2K4ZZYunjzFnvNkS.jpg', '2016-12-20', '7', 'eliminado', '10:00:00', 'jugador', 9, '2025-02-26 19:01:50', '2025-02-28 16:41:25'),
(10, 'Carmen rosa', 'Mamani huanca', '76608515', 'jugadores/QO59XeMp7fPCQIGk8nAua2jAYUFMeYShHTKiped7.jpg', '2007-06-02', '17', 'eliminado', '11:30:00', 'jugador', 9, '2025-02-26 19:14:24', '2025-02-28 16:41:43'),
(11, 'Grisel', 'Mamani huanca', '76608515', 'jugadores/6rWc12B3uev1VjWxBCGhl8gsetJyHGn0rLgSgT44.jpg', '2012-12-26', '13', 'eliminado', '11:00:00', 'jugador', 9, '2025-02-26 19:16:44', '2025-02-28 16:42:11'),
(12, 'Mateo Eli', 'saavedra Mamani', '60937778', 'jugadores/Scm5CHBQ1tUcQrwT0Pw71HStj1w33BSH8V2wO7jO.jpg', '2017-10-29', '2', 'eliminado', '10:00:00', 'jugador', 10, '2025-02-26 20:01:05', '2025-03-08 09:20:59'),
(13, 'Dana  Araceli', 'saavedra Mamani', '60937778', 'jugadores/C1TRqWnkgsKqfbut7WSK4twKs5wMZzuPKhU6Tf6L.jpg', '2015-02-08', '3', 'eliminado', '10:30:00', 'jugador', 10, '2025-02-26 20:03:02', '2025-03-08 09:21:18'),
(14, 'Arisa', 'Cárdenas rojas', '75091697', 'jugadores/BdweZFysCR8RlrFCZzKpL0FWMEXNgzR7MVD8mjKM.jpg', '2017-10-12', '39', 'eliminado', '10:30:00', 'jugador', 12, '2025-02-26 21:16:44', '2025-02-28 19:27:01'),
(15, 'Bryan', 'Cárdenas rojas', '75091697', 'jugadores/RJ0DJ3qAyVGVRmLh5wuoaIQlgTvEyaFiunn2qn9p.jpg', '2015-10-12', '26', 'eliminado', '10:30:00', 'jugador', 12, '2025-02-26 21:18:24', '2025-02-28 19:30:47'),
(17, 'Valentina', 'Cárdenas rojas', '75091697', 'jugadores/064hWA5WJ2FakD09LeCcFLsGPszCwTenocLqqql1.jpg', '2020-07-15', '38', 'eliminado', '09:00:00', 'jugador', 12, '2025-02-26 21:21:03', '2025-02-28 19:31:10'),
(18, 'Frank Dux', 'Torrez Coca', '77886280', 'jugadores/5IvgMxeq2m042TNTTB29xQKIixa4nzoB3yCmHITM.jpg', '2019-08-07', '10', 'eliminado', '09:30:00', 'jugador', 14, '2025-02-26 22:06:58', '2025-02-28 16:55:43'),
(19, 'Cristian Humberto', 'Valderrama Mendoza', '68791205', 'jugadores/zdeBR8JAiuNPYIIH8IIoE7wjlQDuvVsLXsmgdpPv.jpg', '2001-12-17', '123', 'eliminado', '11:30:00', 'guardia', 16, '2025-02-26 22:28:20', '2025-02-28 16:56:00'),
(20, 'Brigitt Abigail', 'Flores mita', '74699097', 'jugadores/m7Jbk5K09ikMuzBNiwHSXDoWlKqCInKpMoU5W5Yk.jpg', '2010-09-27', '222', 'eliminado', '11:30:00', 'jugador', 17, '2025-02-26 23:20:50', '2025-02-28 16:56:09'),
(21, 'Aaron fabricio', 'Flores mita', '72687730', 'jugadores/GX1jhKxigClvdqCgMJ9tsxNIQG6mCt7STOFe6CwA.jpg', '2012-01-16', '456', 'eliminado', '11:30:00', 'jugador', 18, '2025-02-26 23:29:04', '2025-02-28 16:56:22'),
(22, 'Luis mario', 'Salazar torrez', '62035630', 'jugadores/pYAL66XqQcCq9BpOkPJrXi8FVc8HhpM0A7CVNVKl.jpg', '2011-04-11', '218', 'eliminado', '11:30:00', 'jugador', 22, '2025-02-27 01:33:07', '2025-02-28 16:56:39'),
(23, 'Ana paola', 'Saygua Fuentes', '71364958', 'jugadores/yZLaCb60g30g9XvECOI6KLpxAiJhb7HJ8w531AAu.jpg', '2017-04-20', '28', 'eliminado', '10:00:00', 'jugador', 23, '2025-02-27 01:57:10', '2025-02-28 16:56:57'),
(24, 'MATÍAS DANIEL', 'VILLCA WILLCARANI', '75041091', 'jugadores/Rwd2AAInUBgI4Jgf7eIazvThwgYGMJ6oirhULBRs.jpg', '2011-08-08', '321', 'eliminado', '11:30:00', 'jugador', 25, '2025-02-27 02:24:41', '2025-02-28 16:57:11'),
(25, 'GISEL', 'VILLCA WILLCARANI', '72667417', 'jugadores/3dgpslWi227NrQTZLLBBTeiX9d3xV4B7Q0YT1cUT.jpg', '2017-01-28', '320', 'eliminado', '10:00:00', 'jugador', 26, '2025-02-27 02:36:11', '2025-02-28 16:57:24'),
(26, 'Silvia Rosario', 'Robles de Magne', '69231356', 'jugadores/rfuzGAWsum5YwSojBbux8WPyvA3ue1TcDKF7wIdq.jpg', '2015-04-24', '300', 'eliminado', '10:30:00', 'guardia', 29, '2025-02-27 03:30:07', '2025-02-28 16:57:58'),
(27, 'Jose angel', 'Magne robles', '69231356', 'jugadores/HslD2dCCB9IFHWJySYSVxRI6gTeZUSX83QIAM52b.jpg', '2015-04-24', '200', 'eliminado', '10:30:00', 'guardia', 29, '2025-02-27 03:33:47', '2025-02-28 16:58:12'),
(28, 'Yuliana Belen', 'Aulo Menacho', '75599226', 'jugadores/MIuNDObPJecpKZuUTnX8TpXtpfxZEKTbAytuZZmO.jpg', '2014-11-14', '11', 'eliminado', '10:30:00', 'jugador', 31, '2025-02-27 03:39:01', '2025-03-01 04:19:29'),
(29, 'Amira aylin', 'Aulo Menacho', '75599226', 'jugadores/vwkvg3RI0xWb3gkviC72l7Lmo5eGxvTESQZhSot1.jpg', '2020-03-30', '207', 'eliminado', '09:00:00', 'jugador', 31, '2025-02-27 03:48:34', '2025-03-01 04:18:49'),
(30, 'SAMANTHA NICOLE', 'Aulo Menacho', '75599226', 'jugadores/YRfKfqHiBFbSJFHrAxrB0T5fHAQWhzxA6tSKsxtz.jpg', '2021-07-26', '73', 'eliminado', '09:00:00', 'jugador', 31, '2025-02-27 03:51:50', '2025-03-01 04:20:14'),
(31, 'Fernanda', 'Soliz', '78042252', 'jugadores/JkqhvbYeGQBwyNTDepck9LogzKnIQ5S6wm3MHnpW.jpg', '2010-05-04', '111', 'eliminado', '11:30:00', 'jugador', 32, '2025-02-27 04:44:30', '2025-03-08 16:19:35'),
(32, 'Arleth', 'Cadiz soliz', '78408500', 'jugadores/Y4cMmoaoOLjbbFXNFVVfvrFhW4uj2UR6Wyki7YMf.jpg', '2012-06-27', '49', 'eliminado', '11:00:00', 'jugador', 34, '2025-02-27 05:06:30', '2025-02-28 17:42:49'),
(33, 'Michel', 'rejas torrez', '62035630', 'jugadores/SWMid9Qw1FGoABv2reoP9n3xc0bG7X5acgNTvRu1.jpg', '2014-11-23', '230', 'eliminado', '10:30:00', 'jugador', 33, '2025-02-27 05:36:51', '2025-02-28 17:44:00'),
(34, 'Rashell', 'González Yepez', '78535237', 'jugadores/Wo1Erc4QjZLUC3p50BOTfatYCWgDPKTuRL0aDrIw.jpg', '2016-06-14', '369', 'eliminado', '10:00:00', 'guardia', 37, '2025-02-27 05:37:34', '2025-02-28 17:41:26'),
(35, 'Yerko Ramses', 'Sarzuri Arredondo', '70245113', 'jugadores/bJI1GtWuSAEbGe6RBAUxO3rZrNH7RXGdh8QxT2zs.jpg', '2017-03-02', '888', 'eliminado', '10:00:00', 'jugador', 39, '2025-02-27 05:50:44', '2025-02-28 19:50:32'),
(36, 'Reina Rochelle', 'Sarzuri Arredondo', '70281916', 'jugadores/fiY9RRrsQmzuyBHEMWOMfsiDnrZj7g7hQFQvDLvJ.jpg', '2015-11-09', '999', 'eliminado', '10:30:00', 'jugador', 41, '2025-02-27 05:53:17', '2025-02-28 19:50:44'),
(37, 'Jesus Reyli', 'González Yepez', '78535237', 'jugadores/9vBD9Xo3aMcCeWBcsyl1XgRtfRpmlDEiZviCMNZ7.jpg', '2013-09-11', '99', 'eliminado', '11:00:00', 'jugador', 43, '2025-02-27 06:20:48', '2025-02-28 17:41:53'),
(38, 'Fernanda', 'González Yepez', '78535237', 'jugadores/FDfqANyz1d4XRHpzvZVDdOkLbquD9L9nEq2vHWYI.jpg', '2017-11-08', '380', 'eliminado', '10:00:00', 'guardia', 44, '2025-02-27 06:26:42', '2025-02-28 17:43:36'),
(39, 'Fabio', 'Baldelomar cespedes', '78400602', 'jugadores/E9WacNxQe2xcEnN5r7SlirlIvG7IRrkNs7SPd09V.jpg', '2021-01-13', '12', 'eliminado', '09:00:00', 'jugador', 45, '2025-02-27 06:31:59', '2025-02-28 17:41:42'),
(40, 'Fabio', 'Baldelomar cespedes', '78400602', 'jugadores/2QNMvtotvfWTbem4JXhpAbtCGsgH7Uh8FD2JuH9t.jpg', '2021-01-13', '15', 'eliminado', '09:00:00', 'jugador', 45, '2025-02-27 06:33:16', '2025-02-28 17:45:12'),
(41, 'SOLEDAD', 'GARCIA', '62123661', 'jugadores/eRKiu9WsfauFOH8tQgqRFLFeqeX3WLhco0kRIdbO.jpg', '2001-02-25', '500', 'eliminado', '11:30:00', 'jugador', 49, '2025-02-27 06:45:22', '2025-02-28 17:42:17'),
(42, 'Samuel', 'Ruiz Rodriguez', '73362916', 'jugadores/Jfbm8oGJZ4RRPSa2g7YfiVQSXpk0ih6Md8QB4AEe.jpg', '2016-11-16', '463', 'eliminado', '10:00:00', 'jugador', 52, '2025-02-27 06:49:43', '2025-02-28 20:26:01'),
(43, 'Mathias Joseph', 'Delgadillo Escobar', '62990783', 'jugadores/s7CJORw5lBW94LGUut0dYQup6skPUYZzB7zHse4m.jpg', '2017-11-27', '399', 'eliminado', '10:00:00', 'jugador', 50, '2025-02-27 06:49:50', '2025-03-01 06:44:05'),
(44, 'ANDRES', 'FLORES', '77003887', 'jugadores/wkKWdBwoiFcCpHwtm4kEjpt8EhBfyUwqUXcrjUiZ.jpg', '2013-02-19', '457', 'eliminado', '11:00:00', 'jugador', 53, '2025-02-27 06:55:04', '2025-02-28 17:44:39'),
(45, 'Santiago', 'Palomequi Rodriguez', '73977288', 'jugadores/7X4ljgcupIoZlByIhBsEkbp3BpTu5MWLOSIoEpYT.jpg', '2015-07-24', '264', 'eliminado', '10:30:00', 'jugador', 54, '2025-02-27 06:59:57', '2025-02-28 17:45:29'),
(46, 'Valeria', 'Bernal', '70002628', 'jugadores/SEHZI3esMOwQrrmtdR7QV53HeoNh3YJYQQKjNGGc.jpg', '2015-02-26', '459', 'eliminado', '10:30:00', 'jugador', 58, '2025-02-27 07:06:17', '2025-02-28 23:47:56'),
(47, 'DANAE', 'SALINAS', '75387431', 'jugadores/V809fM9NbiDBjUeOjghgdSLneyDMPgDDO1ZbxuHF.jpg', '2013-02-12', '120', 'eliminado', '11:00:00', 'jugador', 59, '2025-02-27 07:06:39', '2025-03-01 17:03:48'),
(48, 'Jorge Andrés', 'Flores', '77003887', 'jugadores/cwQezUABWLj9NLj1gkhVTBzeFEZjg049kXCxpvpU.jpg', '2013-02-26', '460', 'eliminado', '11:00:00', 'jugador', 58, '2025-02-27 07:08:28', '2025-02-28 23:49:05'),
(49, 'Gery', 'Saavedra orcko', '60001629', 'jugadores/dVMRNmkiz2RdaSpXTy8KCliRkJmHb5S6PdsN4Prn.jpg', '2016-09-15', '2690', 'eliminado', '10:00:00', 'jugador', 61, '2025-02-27 07:16:34', '2025-02-28 17:44:55'),
(50, 'Ronny', 'Silva', '76394992', 'jugadores/eXwwgOaRgGt39X1g7RwdS5wqCy3yUYoC51NoO1yh.jpg', '2016-06-09', '388', 'eliminado', '10:00:00', 'jugador', 64, '2025-02-27 07:24:18', '2025-03-08 16:54:36'),
(51, 'Renato', 'Silva', '76394992', 'jugadores/HhwLQnlzhW8aKRHu7kuR9YrqSy7s0IkCsaGI9N59.jpg', '2013-10-09', '125', 'eliminado', '11:00:00', 'jugador', 62, '2025-02-27 07:24:27', '2025-02-28 18:35:01'),
(52, 'Vanesa  Leidy', 'Chacon Flores', '60992931', 'jugadores/PYqQgldxtxyu4svyy38f4wGqJw1y05hqWFE75TQu.jpg', '2000-10-16', '773', 'eliminado', '11:30:00', 'jugador', 56, '2025-02-27 07:25:22', '2025-02-28 17:42:34'),
(53, 'Yoselina', 'Aguilar', '61363747', 'jugadores/wNSXoyJr6I34DZwSFHLVK8rouvfl4w3jmHvcv0on.jpg', '2011-02-07', '2011', 'eliminado', '11:30:00', 'jugador', 66, '2025-02-27 07:32:45', '2025-02-28 17:46:14'),
(54, 'Aaron', 'Jaldin teran', '70895812', 'jugadores/75dX48hL81PzYq3qbA6zxXDoktoWwJMSgHMKuHUz.jpg', '2014-07-16', '215', 'eliminado', '10:30:00', 'jugador', 68, '2025-02-27 07:34:44', '2025-03-06 18:28:05'),
(55, 'Matias', 'Herrera carrillo', '76052001', 'jugadores/dCSAt1ar1Rv5WfkFCmn9YHlJaNE84iw1Mg1s6Pvy.jpg', '2014-07-25', '199', 'eliminado', '10:30:00', 'jugador', 67, '2025-02-27 07:37:29', '2025-02-28 20:49:51'),
(56, 'Maria', 'Anaomi Torrez', '67658714', 'jugadores/QHHzyK4t18Sio5s7kYjvZWhtFzV9HxNnilrlHAKs.jpg', '2011-12-15', '356', 'eliminado', '11:30:00', 'jugador', 69, '2025-02-27 07:39:41', '2025-03-08 16:14:13'),
(57, 'Aaron angel', 'Layme salguero', '63407208', 'jugadores/rzjgdYY3Q4EpARpVNT0aJ4mBUjLpzvStjzkPu9Zn.jpg', '1989-10-02', '767', 'eliminado', '11:30:00', 'jugador', 70, '2025-02-27 07:43:37', '2025-02-28 18:02:59'),
(58, 'Martín', 'Herrera  c', '76052001', 'jugadores/tj2yEH4fOaqMq60nuffMJkJdmYzEukvvksz6DtI6.jpg', '2017-12-03', '129', 'eliminado', '10:00:00', 'jugador', 73, '2025-02-27 08:12:19', '2025-02-28 20:49:59'),
(59, 'Rigodehiro', 'Porcel', '61387081', 'jugadores/wqT0XcdlefeImxMNF0jeM0tMFyVej3L2LlwrszCx.jpg', '2014-03-13', '81', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-27 20:06:52', '2025-02-28 18:02:22'),
(60, 'Santiago jesus', 'Urquiza Salvatierra', '60907139', 'jugadores/NZZ3SG5HIgiVq35FMaeGtSY4kDOXh65viJ9YSZAm.jpg', '2016-06-04', '333', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-27 20:08:57', '2025-02-28 18:39:49'),
(61, 'Fabián', 'Pórcel Segovia', '60842403', 'jugadores/ZmhlKZrx0V5Irv40aGfMRHTnxkwHokqh0TvHo8OO.jpg', '2019-09-13', '82', 'eliminado', '09:30:00', 'jugador', 1, '2025-02-27 20:13:42', '2025-02-28 18:22:40'),
(62, 'Shirley', 'Paz', '62023887', 'jugadores/jw9Mh8NxPXNACBr19YJfTPapp8QOzeV4JfxnbUwp.png', '2017-09-21', '220', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-27 20:14:24', '2025-02-28 18:22:52'),
(63, 'Juan Pablo', 'Romero serrudo', '77627790', 'jugadores/HykCRzbhoIfDZACXMKo6lJ71Neoew5NbcssiKBdO.jpg', '2014-09-29', '210', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-27 21:02:40', '2025-03-01 00:44:55'),
(64, 'Juan Pablo', 'Romero serrudo', '77627790', 'jugadores/CZf9w9ROJWPamwpHglivdTWS4trcIBVEvKATURy6.jpg', '2014-09-29', '23', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-27 21:03:57', '2025-02-28 18:03:46'),
(65, 'Iam kaleb', 'Ramírez ríos', '77627790', 'jugadores/1rXwYiBhbwPR7E6MlbiRSZtxGNJJIVIPjPJS82a7.jpg', '2020-01-22', '24', 'eliminado', '09:30:00', 'jugador', 1, '2025-02-27 21:33:14', '2025-03-01 00:45:45'),
(66, 'Said matias', 'Medina poiqui', '71323199', 'jugadores/dUhKrmtpcz3x8sKOZpGDPprKLKAMwDiwC1EFufCK.jpg', '2015-04-04', '331', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-27 22:27:17', '2025-02-28 18:34:08'),
(67, 'Eimy Safhira', 'Sánchez Sirpa', '74633344', 'jugadores/7qXahazxOmDYS79Uea9IGBCjy1XIOdic4fs1izp3.jpg', '2017-06-01', '85', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-27 22:28:48', '2025-02-28 18:04:23'),
(68, 'Josué Eduardo', 'Sirpa Angelo', '76626871', 'jugadores/iQg2SOGawuBMvUVZ5oUO7pLBdVE62DkISNxiJNOB.jpg', '2011-05-12', '86', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-27 22:34:48', '2025-02-28 18:04:33'),
(69, 'Christian', 'Añez cervantes', '78100297', 'jugadores/jlkjWt9ypranxpFzXbg2GKMkBGqImygbLTAFY4EX.jpg', '2018-12-12', '2018', 'eliminado', '09:30:00', 'guardia', 1, '2025-02-27 22:40:13', '2025-03-01 00:42:01'),
(70, 'Abigail', 'La Fuente Rios', '71624422', 'jugadores/qaGQS8SfYgaP62U6a9peGEXWgr0du69RFtHPlPfJ.jpg', '2019-03-12', '77', 'eliminado', '09:30:00', 'jugador', 1, '2025-02-27 22:41:12', '2025-02-28 18:05:13'),
(71, 'Israel', 'Añez cervantes', '78100297', 'jugadores/aZLQmILM73ZvKIBf2UNPdQAFfoW6vF4nKXJM3lbC.jpg', '2020-05-12', '2020', 'eliminado', '09:00:00', 'jugador', 1, '2025-02-27 22:42:44', '2025-02-28 18:05:25'),
(72, 'Israel', 'Añez cervantes', '78100297', 'jugadores/nZLN1IMscagWCuRO1PCSfEcrKGZRtAogrTWD8wSC.jpg', '2020-05-12', '2017', 'eliminado', '09:00:00', 'jugador', 1, '2025-02-27 22:43:54', '2025-03-01 00:41:12'),
(73, 'Abigail', 'La Fuente Rios', '71624422', 'jugadores/7OojluU7xfY3bABknLAy9ll69WU2TeqZVJx1ZDLl.jpg', '2019-03-12', '229', 'eliminado', '09:30:00', 'jugador', 1, '2025-02-27 22:44:59', '2025-02-28 18:05:37'),
(75, 'KATALEHIA', 'BAILABA', '71324941', 'jugadores/JyNMI5f26A0BGiDUBJY0DS8JQt82N5DVStFCwCG6.jpg', '2017-02-26', '987', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-27 23:05:26', '2025-02-28 17:47:51'),
(76, 'KATALEHIA', 'BAILABA', '71324941', 'jugadores/qNhffsCmRJX6hZZhzBF3d1Kw54P3p9YBqbgogRC9.jpg', '2017-02-26', '986', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-27 23:08:25', '2025-02-28 17:47:40'),
(77, 'Ellien scarlet', 'Flores zenteno', '60861550', 'jugadores/fVVBUbtFwiDHpZ7OfmMX7vCYZ29agHyjdU9AlFTx.jpg', '2016-06-16', '67', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-27 23:28:15', '2025-02-28 18:35:58'),
(78, 'Valeria', 'Guerra león', '73147948', 'jugadores/x4FPxiaRggI0lAIN2i3l5P2CJU5ATjEunSjmaxjj.jpg', '2011-03-21', '21', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-27 23:57:49', '2025-02-28 18:35:37'),
(79, 'Ian Jhoniel', 'Montaño Ticona', '60816088', 'jugadores/sy48anu4cWepJ34MWhGV4Fr2cxC4AaFUmBzsNdJ3.jpg', '2012-03-19', '2025', 'eliminado', '11:00:00', 'jugador', 1, '2025-02-28 00:52:36', '2025-02-28 18:36:16'),
(80, 'SANTINO YEI IKU', 'HUARI CONDORI', '77717242', 'jugadores/h0IP2PmNKOqNKAfdPCQMKZtgK43TOqLa8iDHb6MJ.jpg', '2015-01-12', '296', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 01:43:54', '2025-03-01 03:55:37'),
(81, 'Jose Antonio', 'Garnica Giles', '77061986', 'jugadores/cG9gwpoHH634ELcKxWfeoeCWCLXlmemIOxEbhPt4.jpg', '2012-03-19', '666', 'eliminado', '11:00:00', 'jugador', 1, '2025-02-28 02:08:46', '2025-02-28 18:29:57'),
(82, 'Angelica Clarita', 'Gemio Rodriguez', '78033986', 'jugadores/RvqFP9aAHFWHnBiBYDbUXP5I9g60eKQifCWO9EXj.jpg', '2012-01-04', '201', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 02:31:35', '2025-02-28 18:29:29'),
(83, 'Victoria', 'Mamani', '64841335', 'jugadores/ujCypikL7MnJRCwL7b0Mhq24z3jXzvT3v7kwX76D.jpg', '2011-06-10', '328', 'eliminado', '11:30:00', 'guardia', 1, '2025-02-28 02:41:44', '2025-02-28 18:29:16'),
(84, 'Ricardo Daniel', 'Quiroga vilcaez', '75319294', 'jugadores/RA9KayrMVOiRJHLPGQSWwLjfOvTGb7lxtqYD5fLV.jpg', '2013-12-04', '20', 'eliminado', '11:00:00', 'jugador', 1, '2025-02-28 02:45:15', '2025-02-28 18:29:39'),
(85, 'Victoria', 'Mamani', '64841335', 'jugadores/ZmFaihjANLTdkGCl4mrkq6BSUtPJhufJOAvx330k.jpg', '2011-06-10', '590', 'eliminado', '11:30:00', 'guardia', 1, '2025-02-28 02:51:54', '2025-02-28 18:21:43'),
(86, 'Alison', 'Zeballos', '76345330', 'jugadores/Za3c5f2u8s54DvBcpwlQl9ajioiMvuC2y7eg27Cy.jpg', '2014-12-02', '214', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 03:34:55', '2025-02-28 18:20:58'),
(87, 'OZIEL', 'SUAREZ CHURQUI', '73830838', 'jugadores/b9AG7LkV5FXRODt6oKa9fCmLsCgh5K57l023bZFV.png', '2014-02-01', '346', 'eliminado', '11:00:00', 'jugador', 1, '2025-02-28 03:48:33', '2025-03-07 02:40:36'),
(88, 'Marcelo', 'Ayma', '75332592', 'jugadores/BpU9vinxIY5JHZNnyof2VEus5P5WojkGohsR1H7N.jpg', '2010-09-13', '599', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 03:49:23', '2025-02-28 18:08:27'),
(89, 'Marcelo', 'Ayma', '75332592', 'jugadores/ZxNdNcQzKvsm7cvFD9IAGdeAGmJPIChk1Gzc0xvj.jpg', '2010-09-13', '390', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 03:56:44', '2025-02-28 18:08:14'),
(90, 'Mischel yammi', 'Soto Limachi', '69034475', 'jugadores/Q2JclW3vb3TjyMzgNuPqIHUQ9nHx2yk18pNSf8E1.jpg', '2016-02-10', '240', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 04:45:41', '2025-02-28 18:21:28'),
(91, 'Luis Andres', 'Gallo', '75294694', 'jugadores/bC7QiO4wqN9ffAkTwZlIcEn9dR1bdlfjFX8SuaMR.jpg', '2019-01-14', '357', 'eliminado', '09:30:00', 'jugador', 1, '2025-02-28 05:30:15', '2025-03-02 01:28:51'),
(92, 'Marcelo fabian', 'Ignacio pozo', '62795110', 'jugadores/qkIDVLWN4zqaWOr5ptkGkNABMbufE7nm3LBqDnOM.jpg', '2016-07-01', '1601', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-28 05:32:15', '2025-02-28 18:08:00'),
(94, 'Alex', 'Carlo Calle', '73165563', 'jugadores/m0vf4smlVfUsJCZnNTFDbfe0mXh7goiUPUW1t6dv.jpg', '1998-11-10', '63', 'eliminado', '11:30:00', 'guardia', 1, '2025-02-28 05:41:09', '2025-02-28 18:07:31'),
(95, 'Joseph eliel', 'Carrasco Gallego', '76698802', 'jugadores/ZygAjVGH76XUtZMiC5pEPjjnu1sTRcsrybP2Oc2Q.jpg', '2014-06-20', '149', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 05:41:42', '2025-02-28 18:07:14'),
(96, 'Josué', 'Zambrana', '75616055', 'jugadores/8WyoIDYM6S6vKRNIYeEcRlr3Jh6x8QFHnpSw0TlO.jpg', '2002-04-04', '424', 'eliminado', '11:30:00', 'guardia', 1, '2025-02-28 05:43:07', '2025-02-28 18:06:59'),
(97, 'Valentina', 'Carvajal Fernández', '62155418', 'jugadores/LBT7Wk1nN9rIS83rfMaMJAk3E7unZFbkuJcs73Nc.jpg', '2017-06-19', '180', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-28 05:43:36', '2025-02-28 18:40:31'),
(98, 'Josué', 'Zambrana Ortiz', '75616055', 'jugadores/RuU6ddhNqji5cTsiIDLTuI9pIgnfc9ijvrtkxffS.jpg', '2002-04-04', '756', 'eliminado', '11:30:00', 'guardia', 1, '2025-02-28 05:44:56', '2025-02-28 17:23:10'),
(99, 'Rafael Santiago', 'Huanca Mora', '68616041', 'jugadores/6KfHSqGGw8x6cJfHLL29H9pUtlpGmoF2MhIq5wYU.jpg', '2010-03-30', '266', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 05:45:15', '2025-02-28 17:27:13'),
(100, 'AXEL RAFAEL', 'MARTINEZ SORIA', '75670012', 'jugadores/se0tfe4xfjxnpu4EtUIiObQHGlT9DcWCpMAADVVK.jpg', '2017-04-27', '2704', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-28 05:46:01', '2025-02-28 17:22:53'),
(101, 'Angel adolfo', 'Perez coronado', '60862417', 'jugadores/WZ3kj0CVaY9vWeMTQMq7KIoZeJEUQKXF7NXeUcIv.jpg', '2024-09-30', '14', 'eliminado', '09:00:00', 'jugador', 1, '2025-02-28 05:52:42', '2025-02-28 17:22:40'),
(102, 'Mike daniel', 'Martinez soria', '75670012', 'jugadores/0Su5o03GcYb0fyxwDyB7CjOCBWIPgNX4xlugryvG.jpg', '2012-09-14', '122', 'eliminado', '11:00:00', 'jugador', 1, '2025-02-28 06:10:11', '2025-02-28 17:22:29'),
(103, 'Mary', 'Ardaya', '76335963', 'jugadores/dpg2diPq9fTeygDrCEdWv399w79nuTlAgxWkpCm3.jpg', '2020-06-25', '326', 'eliminado', '09:00:00', 'jugador', 1, '2025-02-28 06:23:41', '2025-02-28 17:22:18'),
(104, 'Diana', 'Portales tordoya', '62739619', 'jugadores/g1CivXMrmAhe4EY5z7UNV1LPWWu4GZFrqlmCJvgV.jpg', '2011-08-12', '18', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 06:33:47', '2025-02-28 18:41:14'),
(105, 'Mischel yammi', 'Soto limachi', '69034475', 'jugadores/h35HPyce2uwhQOwdmlr7fV29pzyogOlKKinpXsla.jpg', '2016-02-10', '211', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 07:37:11', '2025-02-28 17:17:25'),
(106, 'Sergio Ronald', 'Zambrana Chambi', '68067977', 'jugadores/rweuDOLx5fnqxe1fe4iydfDmrAeTUZAHuSZ7XQhO.jpg', '2014-12-22', '250', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 16:56:48', '2025-02-28 17:17:16'),
(107, 'Carla Diana', 'Aguilar Justiniano', '69086874', 'jugadores/UlNbQjdJxYxbHGA2Lrq4f6jXhGzBt8yPT5jKMkoM.jpg', '2001-11-04', '50', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 17:59:11', '2025-02-28 23:43:31'),
(108, 'Gerald oliver', 'Apaza apaza', '63387710', 'jugadores/GRIyGwReSlMMnMxZUJiIkNcYXw2YJfv6vs6t8Mir.jpg', '2007-10-01', '468', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 18:48:18', '2025-02-28 18:50:42'),
(109, 'Ángel  mateo', 'Solíz  Falcón', '70641013', 'jugadores/ZXm0lowgFKssnR1GkTEK3GqtuJcqzOBIu1oyUgEJ.jpg', '2015-06-16', '126', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 20:14:36', '2025-02-28 20:14:36'),
(110, 'Ian', 'Trujillo Villarroel', '79481240', 'jugadores/wPZpvZW5zMtTaQSUhDOHffKuigHHjgbShPLxswZE.jpg', '2017-05-05', '257', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-28 20:18:03', '2025-02-28 20:18:03'),
(111, 'Raphaela', 'Molina Arias', '75617807', 'jugadores/RAYpsnoWiGQe1jCFKgDNEFN0HSNrr8Cx5tIMk1KC.jpg', '2015-01-15', '308', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 22:27:15', '2025-02-28 22:27:15'),
(112, 'Raphaela', 'Molina Arias', '75617807', 'jugadores/uhSHQFW7a60XivPHOLsA2c7wBKL0NRABhLXXecqs.jpg', '2015-01-15', '150', 'eliminado', '10:30:00', 'jugador', 1, '2025-02-28 22:31:16', '2025-03-01 15:13:47'),
(113, 'Iker Daniel', 'Poiqui perez', '79068877', 'jugadores/d8icvcDoOSRUVQQIIxGEilO9qRK3u5Rt4jt4OX26.jpg', '2014-02-03', '325', 'eliminado', '11:00:00', 'jugador', 1, '2025-02-28 22:45:05', '2025-02-28 22:45:05'),
(114, 'Wilson Gary', 'Aguilar Justiniano', '67821418', 'jugadores/WkPvTtLiDcCHvcOO7W3MRGRdwgg6omGeI6oulhLr.jpg', '2008-05-16', '16', 'eliminado', '11:30:00', 'jugador', 1, '2025-02-28 23:10:09', '2025-02-28 23:28:55'),
(115, 'Gregoryt', 'Solano', '62011080', 'jugadores/YGeXTttAOAQwLI7QaJLyB73IlrJwKANcjCsoevpo.jpg', '2013-03-01', '402', 'eliminado', '11:00:00', 'jugador', 1, '2025-02-28 23:17:15', '2025-03-01 02:33:46'),
(116, 'Bayron', 'Fernández Saavedra', '68505119', 'jugadores/HIWD9eLxpDI1Gv5JWuS1mnhY5Ndj6rSIsefk46M5.jpg', '2017-09-27', '27', 'eliminado', '10:00:00', 'jugador', 1, '2025-02-28 23:48:15', '2025-03-01 17:15:08'),
(117, 'Ainhoa Erika', 'Fernández Saavedra', '68505119', 'jugadores/JQ3j6F69toRz0yY5Umo8GNyvY93Gc9ALYquO2WM4.jpg', '2018-01-02', '30', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 00:05:23', '2025-03-01 00:59:37'),
(118, 'Jhonatan Moisés', 'Mendoza Morales', '78588919', 'jugadores/8EhFmZIHP493bArB0VixfZ1pJW3lhiSzL5yXhigg.jpg', '2015-02-12', '127', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 01:09:31', '2025-03-01 01:54:16'),
(119, 'Afrontar yadiel', 'Solano', '62011080', 'jugadores/2QkLNCronMnIbYfZEolFS6paTaVWCVVoizUU0DyA.jpg', '2014-11-18', '306', 'eliminado', '10:30:00', 'jefe', 1, '2025-03-01 01:13:56', '2025-03-01 17:16:06'),
(120, 'Aaron Yadiel', 'Solano', '62011080', 'jugadores/YnVpkOuwslo0rk6Kg4A1loBnOYaF29hcCQ7E3Pol.jpg', '2014-11-18', '208', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 01:16:52', '2025-03-01 02:32:32'),
(121, 'Jesús Andres', 'Solano', '62011080', 'jugadores/RTeTewLhksskRhTdpUPBPLPQ3EjPLYwngd5drWiM.jpg', '2017-11-07', '100', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 01:22:46', '2025-03-01 02:30:49'),
(122, 'Anthonella yuvinka', 'Vaca uriarte', '76034132', 'jugadores/g7XoUT8AcypPS4qgDhVCyF6luMoo3fATEKw41yeY.jpg', '2014-03-29', '193', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 01:50:16', '2025-03-08 08:47:20'),
(123, 'Hannah Isabella', 'Da silva Chavez', '75075258', 'jugadores/uAR1tjCaJUL44RxjBLV6rtIR83fbJTunb3SXUvjD.jpg', '2019-07-05', '256', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-01 02:29:32', '2025-03-01 02:29:32'),
(124, 'Thiago', 'Silva', '75009242', 'jugadores/EI3D233jsdqXsxFRjRvMVnYG7P18dzmZ2ngVof4Q.jpg', '2013-09-13', '101', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 02:30:09', '2025-03-01 02:30:09'),
(125, 'Rossy Valentina', 'Villegas Salvatierra', '78201144', 'jugadores/SqDRLALOXgUhK44AF8jdVvJ7Bn0zHTAPPMSeCJGP.jpg', '2017-12-23', '137', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 02:30:46', '2025-03-01 02:53:05'),
(126, 'Antho', 'Flores', '75009242', 'jugadores/6KQC5dLaRfvhKcBUb3AcGmrYyHu2Q2bs5IxS8Udp.jpg', '2016-07-08', '225', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 02:33:25', '2025-03-01 02:33:25'),
(127, 'Aaron', 'Escalante Marcy', '75510260', 'jugadores/bDXJSJD7detunRbDzdzzQKkX8oC52yYozoJPubG7.jpg', '2017-07-16', '455', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 04:02:06', '2025-03-01 04:02:06'),
(128, 'Aaron', 'Mendieta Severiche', '75340972', 'jugadores/XyPdX3cU6d84rocVlQckCtFdtktRfIMsQHtq83dP.jpg', '2017-06-08', '1708', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 04:06:48', '2025-03-01 04:06:48'),
(129, 'Keyler Mijael', 'Estrada Aguilar', '70079897', 'jugadores/yNJRZ0cCvHf8q0uYKxv3olkkiSjLolwKtdykzU8J.jpg', '2019-03-11', '98', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-01 04:17:11', '2025-03-01 04:17:11'),
(130, 'Cristopher Jafet', 'Rivera Rivera', '77009607', 'jugadores/9d1BOe54TH8bI5ZQEsoEzxNPkap0AvNx9PZzhPoY.jpg', '2019-05-05', '355', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-01 04:24:41', '2025-03-01 04:24:41'),
(131, 'Aaron Mateo', 'Montaño Vega', '75363140', 'jugadores/1KupLvTMrtEoucHB3Z4QuXTXqI6C0BsV9GxisFPz.jpg', '2015-02-16', '432', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 04:38:29', '2025-03-05 19:16:29'),
(132, 'Ian vidal', 'Zeballos', '73164335', 'jugadores/zXyNddvwvZ8SMnC8idZ7Wdze6mcxkZ16chAkgL6X.jpg', '2018-01-15', '917', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 05:55:45', '2025-03-01 05:55:45'),
(133, 'Jhoan Sebastian', 'Navarro Serrano', '72871265', 'jugadores/sx9Qg9crtqNBt1ZNJgYY1BZw8NJALd3lDdS1hjOI.jpg', '2015-04-03', '148', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 05:58:57', '2025-03-01 05:58:57'),
(134, 'Jhoan Sebastian', 'Navarro Serrano', '72871265', 'jugadores/PSOstmlnp7m78hZYVIzUEyOv3SxjkMLHqXYeAh1z.jpg', '2015-04-03', '189', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 06:03:32', '2025-03-01 06:03:32'),
(135, 'Jhoan Sebastian', 'Navarro Serrano', '72871265', 'jugadores/hNlJvYxSSI68oH2x47AoYtY4WVi0siYyBGvGH7U6.jpg', '2015-04-03', '794', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 06:03:46', '2025-03-01 06:03:46'),
(136, 'Jhoan Sebastian', 'Navarro Serrano', '72871265', 'jugadores/0hB3Rnz4G08vw7dQoXMtJc8tsAh2dzFecVyf1y6d.jpg', '2015-04-03', '258', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 06:04:18', '2025-03-01 06:04:18'),
(137, 'Gabriel', 'Mendez Flores', '72603047', 'jugadores/qKteUhvuvWAiFZe2GWiezsc2Vushj5kqdepvRDsN.jpg', '2015-04-11', '330', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 06:04:40', '2025-03-01 17:32:24'),
(138, 'Camila Libanesa', 'Arredondo flores', '76683220', 'jugadores/uRsUyPlijCHWx07RYG6eopL7rlqjFVjRCsCNh8wY.jpg', '2010-06-20', '206', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 06:09:36', '2025-03-01 17:22:35'),
(139, 'Hannah', 'Da silva', '75075258', 'jugadores/nvbZ6c1e47xVZMenviV6qadFsyI8Oo0IqkeexguS.jpg', '2019-07-05', '156', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-01 06:13:44', '2025-03-05 19:08:06'),
(140, 'Gabriel', 'Flores Chavarria', '73371009', 'jugadores/cUwVVnQM9e4impXcpJ0tgKIF4zLjK1ibF5FGUMTI.jpg', '2004-02-27', '227', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 06:17:17', '2025-03-01 06:17:17'),
(141, 'Jhoan Sebastian', 'Navarro Serrano', '72871265', 'jugadores/4o1YexHTOfTd3egaBz6Xb79qpqhtNHBx4cv4mXsC.jpg', '2015-04-03', '344', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 06:24:20', '2025-03-01 06:24:20'),
(142, 'Gabriel', 'Chavez Rivero', '71083888', 'jugadores/2s38xGqewZ79oez9zGVU7ehphutqskz0HHM4uwal.jpg', '2018-11-06', '140', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-01 06:30:38', '2025-03-01 15:07:33'),
(143, 'Matheo', 'Montero Flores', '67871525', 'jugadores/l1kMHh5Yhmn2JQdSyExPzhajXlwxI3FMKU3iyqb4.jpg', '2014-01-30', '444', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 06:33:42', '2025-03-01 06:33:42'),
(144, 'Matheo', 'Montero Flores', '67871525', 'jugadores/lQ3EONbiSWIlAGzQf8pS8Sxd4CNLNZvtu8odB8nk.jpg', '2014-01-30', '555', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 06:34:04', '2025-03-01 06:34:04'),
(145, 'Mathias', 'Montero Flores', '67871525', 'jugadores/RnAxpZrk5XJPodAzeMlqfHVXh3lCs6pcn0D94XvH.jpg', '2014-01-30', '185', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 06:34:13', '2025-03-01 17:24:16'),
(146, 'Matheo', 'Montero Flores', '67871525', 'jugadores/60X2yh9WcFp6uyIGadBnnLnQSgCXJyTnqhP4r1IX.jpg', '2014-01-30', '265', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 06:34:38', '2025-03-01 06:34:38'),
(147, 'Luis Alejandro', 'Herrera Alcázar', '62095501', 'jugadores/GCyTe2RbgEMDJZvJc0JONQTQnsyEcHCUyag4FOQ6.jpg', '2010-12-23', '301', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 06:49:31', '2025-03-01 17:25:04'),
(148, 'Luis Alejandro', 'Herrera Alcázar', '62095501', 'jugadores/0mUZ9JOZgEVXodfiYU7tLVUp4A8wuXCaq5cYoNXs.jpg', '2010-12-23', '401', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 06:50:40', '2025-03-01 15:00:18'),
(149, 'Alexa Liana', 'Choque Leon', '73640339', 'jugadores/4szKwkVF108tFj8ggmHvAIQ4za5fzFfih9WBuYkd.jpg', '2010-04-17', '244', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 07:22:27', '2025-03-01 07:22:27'),
(150, 'Alexa Liana', 'Choque Leon', '73640339', 'jugadores/Dwzf4J2ckT0wCNj6fVZmD7NBEZhsmsDZkVwsAUOV.jpg', '2010-04-17', '236', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 07:27:08', '2025-03-01 07:27:08'),
(151, 'Gabriel', 'Justiniano Díaz', '63692554', 'jugadores/7eFG9HQ2QtDxPaFimyuxh8CGnxDXV19p1t2hOOxr.jpg', '2016-05-02', '128', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 07:36:45', '2025-03-01 07:36:45'),
(152, 'Kevin albert', 'Marca condori', '73136471', 'jugadores/xDpPz7BY2eboyFdCRKDLi1hq2zBwDKfl2qIixTdR.jpg', '2014-03-10', '526', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 07:52:13', '2025-03-01 07:52:13'),
(153, 'Briana keily', 'Fernández Herrera', '73160209', 'jugadores/2ZuEUGmbjz6Vol12lVIKkjNgix1UQeXLIQzDhKe0.jpg', '2017-04-12', '403', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 08:10:33', '2025-03-08 16:16:32'),
(154, 'Valentina', 'Chura', '77363189', 'jugadores/pmWEVFsRuKgqg4HOL7H2wD7YXc3eqR7H2X9O8rdU.jpg', '2019-01-25', '25', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-01 09:53:58', '2025-03-01 09:53:58'),
(155, 'Liam Mathias', 'Ortiz Laura', '69145559', 'jugadores/b625rsWP9KAe9mzfui55CdDNZtUw2Mn7tGaCQowX.jpg', '2018-12-11', '113', 'eliminado', '09:30:00', 'guardia', 1, '2025-03-01 10:58:07', '2025-03-01 10:58:07'),
(156, 'Noelia Graciela', 'Velarde Gonzales', '69248447', 'jugadores/hern9IOvtSUoEFyBdEkcsIU9vL1VS8DoxT0HhPI9.jpg', '2000-01-29', '58', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 11:40:55', '2025-03-01 11:40:55'),
(157, 'Anette Briana', 'Martinez Villca', '65871699', 'jugadores/jHclWhhaYTczE5QFi5YR0CYbS5SWmLNoKgAQ9pgL.jpg', '2018-01-02', '35', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 14:36:51', '2025-03-01 14:54:40'),
(158, 'Diego ghael', 'Comdori tumiri', '63458386', 'jugadores/w1XS594dVk8IhMArGBMz46VkYy1yh5N9R2ousDj6.jpg', '2015-06-29', '29', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 15:32:25', '2025-03-01 15:41:56'),
(159, 'David', 'Quenta Maciel', '70095072', 'jugadores/7Xns175UC4e6JQpQJIceu2Hitni07UO6HCgSNkzU.jpg', '2013-11-01', '365', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 15:40:07', '2025-03-05 20:47:45'),
(160, 'Benjamin', 'Pérez Maciel', '70095072', 'jugadores/dsKl3eXX5x5L6hpX98VyQJ6LGPyCbi6lh1PqQBLZ.jpg', '2016-05-16', '366', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 15:47:43', '2025-03-05 20:47:56'),
(161, 'José Armando', 'Vasquez Ortega', '74561220', 'jugadores/Vn9bzOshesG1BIRT0aG8nK7XiUXgg38lBOpF24Go.jpg', '2012-06-12', '7771', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 17:29:21', '2025-03-05 17:07:18'),
(162, 'Said', 'Choque Venavides', '63490898', 'jugadores/g75WbSYKfrrPFaMonbc2KR6BYRjCIoZX4miNfBaJ.jpg', '2012-12-05', '654', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 17:33:36', '2025-03-01 17:33:36'),
(163, 'Zaira Paulette', 'García Mostacedo', '75541801', 'jugadores/pokT5plYOERUynSLO4UZwRfrEbg1TXW7iRMflk86.jpg', '2015-12-22', '246', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 17:38:34', '2025-03-05 23:51:19'),
(164, 'Leslie Melany', 'Claros Arancibia', '62993168', 'jugadores/oftZe5atwrkP83SPQc43tOpOv0mXuUdWf1rPRzVm.jpg', '2010-05-08', '426', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 18:05:33', '2025-03-01 18:45:13'),
(165, 'Ericka', 'Varagas', '60943917', 'jugadores/amhfO7Wsr7I2aY2JueUXrfniq8J5gvVc0j8VwKqR.jpg', '2001-10-13', '33', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 19:23:21', '2025-03-01 19:23:21'),
(166, 'Meily', 'Vargas', '60943917', 'jugadores/vcQhaI4niNmXaI9pA2rg1A4rtTx20rxcZuHW63yb.jpg', '2017-06-12', '55', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 19:30:07', '2025-03-01 19:42:33'),
(167, 'Fernando Derek', 'Rojas chuve', '69936467', 'jugadores/iuWzLeAT4cpbXujJ3A7CUKW2liUY0sMfDvb5YqGn.jpg', '2018-08-04', '56', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-01 20:05:22', '2025-03-01 20:05:22'),
(168, 'Mateo German', 'Vallejos Suyo', '70091891', 'jugadores/tkocTdDEmPeNUipmNTH1hiAq4gNidtq8j88iEmxn.jpg', '2016-02-11', '2225', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 21:04:52', '2025-03-06 18:14:08'),
(169, 'Gabriel', 'Justiniano Díaz', '63692554', 'jugadores/tkvKRXNd6ynapGHLlM1gGBcSd5ORNkLbyVYAaw7S.jpg', '2016-05-02', '170', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 21:24:49', '2025-03-01 23:33:19'),
(170, 'Ariel', 'Justiniano Díaz', '63692554', 'jugadores/HH57EtJRWZVy1Li0uaqbMooSDtcsWjA7MuNVOWHL.jpg', '2016-05-02', '71', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 21:34:06', '2025-03-01 23:34:17'),
(171, 'Ivanna pamela', 'Chiri luque', '62333823', 'jugadores/YOhYY1kml2y7UC54qPVfUZbYAhpuKrEnQnDyoKKT.jpg', '2016-09-16', '66', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-01 22:07:01', '2025-03-01 23:54:14'),
(172, 'Marco andres', 'Zuñiga calizaya', '60704824', 'jugadores/CxTAX8TnBchNF5swm6hgBmzaaFznuCbbLPkWw8fu.jpg', '1997-12-13', '1312', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-01 23:27:57', '2025-03-01 23:27:57'),
(173, 'Milagritos', 'Estrada Caro', '68750138', 'jugadores/u00kJZvDUDuCN48rgyYZ6EyYsv7A1p4DP5aM541b.jpg', '2015-11-24', '1000', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 23:29:01', '2025-03-01 23:37:52'),
(174, 'Jeancarlo', 'Rivera Villarroel', '77009607', 'jugadores/XxVKz7aSJWXs4AjMRxnBAVp5DNN7ZEKpPOVlC5LX.png', '2012-12-26', '235', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-01 23:32:21', '2025-03-01 23:32:21'),
(175, 'Carly', 'Uriondo Pizarro', '68750138', 'jugadores/Ga1sX2drmQc5D9SLeAdaOzzOjVanlPGYlLmNhdCA.jpg', '2015-09-21', '1001', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-01 23:58:06', '2025-03-02 00:30:53'),
(176, 'Carly', 'Uriondo Pizarro', '68750138', 'jugadores/CEOa8nUYl9YIrUHD30ZdND94EOA4DMzTws2GmYst.jpg', '2015-09-21', '1002', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-02 00:06:16', '2025-03-02 00:06:16'),
(177, 'Maria', 'Venavides', '63498098', 'jugadores/khjO178iiYEjiyVr7dxS202vJM1nMJL41Q7UOlDW.jpg', '1995-02-14', '653', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 00:30:41', '2025-03-02 00:30:41'),
(178, 'Cristian', 'Chojllu Quispe', '69118582', 'jugadores/Ott8BMoOka3b4jbCEydYgyGepVe2pqCqJXky4YyF.jpg', '2004-04-26', '633', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 00:54:08', '2025-03-02 00:54:08'),
(179, 'NAOMI', 'GALLO VASQUEZ', '75294694', 'jugadores/mrXIWooSKdIYbdZNM7AB4xmaGOfW3sc6xuikm25u.jpg', '2016-10-31', '1111', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-02 01:21:55', '2025-03-02 01:24:59'),
(180, 'Kamilah', 'Porco', '74716611', 'jugadores/F2VL6iYVQ1MRZsdDNXCudD27OeGhQXpv5jIchGxm.jpg', '2013-07-27', '451', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-02 01:32:29', '2025-03-06 18:22:30'),
(181, 'ROLI', 'Yucra', '73153527', 'jugadores/P5C0NcP5amTArQTvhJGmL6ZsjGzuLiFbpEed1y73.jpg', '2007-10-09', '22', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 01:32:51', '2025-03-02 02:22:25'),
(183, 'Mauren yoliberh', 'Siancas', '62008301', 'jugadores/ejvK2YMAUPZio0ybQW5BAA9G5FrUdsix3O3avJ49.jpg', '2011-09-02', '299', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 01:58:13', '2025-03-02 02:13:16'),
(184, 'Diego Saúl', 'Ortiz Mendez', '60957183', 'jugadores/zwgVIjcxkkLdfIXnIS5xlMPoJQXjiUruVdJ1TLew.jpg', '2012-10-04', '7410', 'eliminado', '11:00:00', 'guardia', 1, '2025-03-02 01:58:44', '2025-03-02 02:11:28'),
(185, 'Evans Lionel', 'Cortez Cabral', '65895731', 'jugadores/QGyuLW0VYXl4JeCAQR1hAcwWhuQAxYHUP6DWWh9c.jpg', '2011-09-24', '190', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 03:39:08', '2025-03-02 03:39:08'),
(186, 'Daniel mathias', 'Soria prña', '63516239', 'jugadores/4u9CSC7YplsZKGkA6U1ZeiqEDxWA7KjKKGmA9Rpx.jpg', '2013-01-22', '956', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-02 03:43:04', '2025-03-05 17:04:39'),
(187, 'Nicolas', 'Soria prña', '63516239', 'jugadores/WMxWOlWetWvv7YRaPjytTgfrDghADjWc3Wuj47TD.jpg', '2014-07-12', '957', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-02 03:49:55', '2025-03-05 17:05:54'),
(188, 'Lara thais', 'Calzadilla peña', '63516239', 'jugadores/QOicXzABPfmVbJR5n9yvTiNmuLYQMOQ05UkedzQI.jpg', '2010-04-20', '600', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 04:02:43', '2025-03-05 19:27:26'),
(189, 'Mateo', 'Calderonflores', '69091369', 'jugadores/5Rt4Hfgt11WrLuc61kgZFz9AzXHbWUAfxMOmjzrU.jpg', '2016-02-05', '420', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-02 04:08:02', '2025-03-02 04:08:02'),
(190, 'Tereza', 'Marzana Vadillo', '61545867', 'jugadores/2nG4Q6P6CLquRXpEZNfDmgpC6bVtb0kr28mtUZaY.jpg', '2008-01-29', '349', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 05:53:01', '2025-03-02 05:53:01'),
(191, 'Horacio', 'Horta Nogales', '75671564', 'jugadores/thf1TcMcW7dJWrQAjBaYCHSx2bIZq4JIUk0fOCyR.jpg', '2010-09-21', '777', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 05:57:02', '2025-03-05 23:45:00'),
(192, 'Juan Leandro', 'Leon Aguilera', '68786804', 'jugadores/Lr5sHKE53Xx2epyV5zGUX8D3Ba7mgBiOopJQ9HfN.jpg', '2011-11-29', '7772', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 06:41:54', '2025-03-05 23:47:49'),
(193, 'Horacio', 'Horta Nogales', '75671564', 'jugadores/WOqbd5jwwj3EGY3Yd92N0wJJ5j2z0t545RwScvcn.jpg', '2010-09-21', '7773', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 06:59:04', '2025-03-02 06:59:04'),
(194, 'Fabricio', 'Horta Nogales', '72106588', 'jugadores/qZZF20KqpAsHfgNYZQxbTHdD3EnI6ZralB6WnCHJ.png', '2012-04-06', '911', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-02 07:02:31', '2025-03-08 17:01:23'),
(195, 'Adriana', 'Rios Ardaya', '65891059', 'jugadores/ax84CMH3Cjpn3sIihXgbazroHDSb0qjmBZBYJgBV.jpg', '2020-02-20', '467', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-02 07:46:49', '2025-03-02 07:46:49'),
(196, 'Lombard Fidel', 'Colque Cabrera', '73363392', 'jugadores/98xZMvgUORTyYzvWwgVuAVr20boug2VSKUsQUS2N.jpg', '2016-05-13', '1113', 'eliminado', '10:00:00', 'guardia', 1, '2025-03-02 18:58:58', '2025-03-06 00:08:37'),
(197, 'Mishel', 'Nina Rodríguez', '75792274', 'jugadores/SWN0m4Rs7dPmBWdMwDmbfX0pbnwkGNKFrEV9rYpP.jpg', '2011-12-30', '19', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 19:00:04', '2025-03-02 19:00:04'),
(198, 'Mishel', 'Nina Rodríguez', '75792274', 'jugadores/MzIcxm6ppr2LftCqKrtnYfKNaCFT22ltOJupYszw.jpg', '2011-12-30', '41', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-02 22:06:12', '2025-03-07 03:14:52'),
(199, 'Ezequiel', 'Cordova Torrez', '62182929', 'jugadores/2d3zYEOpLVttxdBZOz58FKTHjR0G7OLaQH8zHGpq.jpg', '2017-01-01', '191', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-03 01:38:01', '2025-03-05 18:41:26'),
(200, 'Edrick gael', 'Espinoza salvatierra', '76898464', 'jugadores/7I9jiPSkCOqqcypDDUI2jfVh8ZAaylUw4xECiCtJ.jpg', '2018-08-14', '6', 'eliminado', '09:30:00', 'guardia', 1, '2025-03-03 02:27:43', '2025-03-06 00:15:59'),
(201, 'Damian', 'Rivero Mamani', '69125675', 'jugadores/xkAUuevsgeb1X66HqycipsO20QbZgKaVjxRL5p7u.jpg', '2015-04-23', '124', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-03 03:45:54', '2025-03-05 17:59:25'),
(202, 'Fabiana', 'Millón perez', '77077283', 'jugadores/34K6nEN5hjm4TH7WhWsI10w5I6Mxx1hfTOEKlfdf.jpg', '2011-11-08', '2056', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-03 17:08:19', '2025-03-03 17:08:19'),
(203, 'Nicolás Alejandro', 'Arias García', '76017931', 'jugadores/aHAbC68NJB8ydgBE7NC1yBY86eDZ1XfjcWVE7HHV.jpg', '2010-11-11', '108', 'eliminado', '11:30:00', 'guardia', 1, '2025-03-03 18:43:58', '2025-03-04 07:13:16'),
(204, 'Lucas', 'Silva', '63448006', 'jugadores/Bx1uc5K1FqofInW534oluOK1U5Xygb29WSZa9BRn.jpg', '2015-10-14', '372', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-03 19:26:08', '2025-03-03 19:26:08'),
(205, 'Lucas emiliano', 'Silva hurtado', '63448006', 'jugadores/cP8FIlJgJ1uavO0h5OS8kG7JHPSsCVqalOQKaM6B.jpg', '2013-09-18', '478', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-03 19:37:02', '2025-03-03 19:37:02'),
(206, 'Aly Hans', 'Saravia picon', '69249113', 'jugadores/E91Jn5l4h7YmoQFTnG9HISzoeuAt8zud8woUO2Pk.jpg', '2017-07-29', '263', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-03 23:39:55', '2025-03-06 01:40:39'),
(207, 'Deberlyn', 'Limón Porcel', '70046398', 'jugadores/6UIrYr9WS0HNSyKTE98b5uLKjraLaN3khIpqPEYj.jpg', '2012-03-31', '9', 'eliminado', '11:00:00', 'guardia', 1, '2025-03-04 17:12:12', '2025-03-04 17:12:12'),
(208, 'Deberlyn', 'Limón Porcel', '70046398', 'jugadores/fMolG8EWaorDztgz8UTSQ3DlNfCtv2HioF1GGRQy.jpg', '2017-03-31', '80', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-04 17:29:09', '2025-03-04 17:29:09'),
(209, 'Raquel génesis', 'Revollo Román', '63455169', 'jugadores/TGLcuDXtqknpRO3XFIyTNF2ABNfRXFU1vNTJAePI.jpg', '2013-02-03', '550', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-05 06:34:18', '2025-03-06 01:08:47'),
(210, 'Renesmel Scarlet', 'Revollo Román', '63455169', 'jugadores/2zYV36wUnvy1yfp6kStX3OMd9ShUNgIjY48rIB7m.jpg', '2016-04-06', '551', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-05 07:09:33', '2025-03-06 01:08:28'),
(211, 'Damarys', 'Duran montaño', '68818575', 'jugadores/oTzB1TS59dLYTPaMAH00K8DvnndOtqwNM0w2hcoO.jpg', '2007-01-21', '223', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-05 22:13:19', '2025-03-05 22:13:19'),
(212, 'Damarys', 'Duran montaño', '68818575', 'jugadores/QgDZ0tgNSQuL0b4H16T1f2gJwH5kiMeQm8afBhAz.jpg', '2007-01-21', '445', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-05 22:14:01', '2025-03-05 22:14:01'),
(213, 'Denar Adrian', 'Salvatierra cuciba', '60836800', 'jugadores/5CCPHbiR89ESGYmeZuuUokKvHo3e6AkbvnRmjTzb.jpg', '2016-10-24', '260', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-06 02:58:25', '2025-03-06 03:07:28'),
(214, 'Willi', 'Choque cruz', '63490898', 'jugadores/v20FtoS1qftmc0xqo24qRysHSdtmfI4Xl3VZsTtt.jpg', '1989-06-17', '655', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-06 04:28:17', '2025-03-06 04:28:17'),
(215, 'Ismael', 'Loaiza Rivera', '60986328', 'jugadores/gyLqYWmr46LQioTtUhi4bSj80PNhbaOfxgdWIlMM.jpg', '2013-12-13', '1233', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-06 08:02:04', '2025-03-06 08:02:04'),
(216, 'Lourdes', 'Luján', '76426944', 'jugadores/PXisN8UfL9BjEH77hbjuw6yS2dkYDSBzL1wn8HLP.jpg', '1995-02-11', '70', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-06 18:53:10', '2025-03-06 18:53:10'),
(217, 'Lourdes', 'Luján', '76426944', 'jugadores/Cc7OTNU7PHV1mRAvBXVQ4CCcdFn7w3aHNXxm8Zqy.jpg', '1995-02-11', '2000', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-06 18:53:47', '2025-03-06 18:53:47'),
(218, 'David', 'Flores', '60902299', 'jugadores/Enog6JZ5Y40ZQHjsLy7XJDWpOkVOdv8OawYApT1R.jpg', '2010-03-06', '6090', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-06 19:19:53', '2025-03-06 19:19:53'),
(219, 'Genesis', 'Lopez Ayarachi', '70091891', 'jugadores/5pzY1Xfxlwk7mi4p6exPLgi9An4smtaBeR8tKnBD.jpg', '2017-01-03', '112', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-06 22:38:50', '2025-03-06 23:41:50'),
(220, 'Juliano Valentino', 'Chávez Alvarez', '75568676', 'jugadores/PR9xn5o7dKMYJiyUZUvlUk3MdZ4FOsx4THFWJXmu.jpg', '2012-09-30', '119', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-06 22:41:49', '2025-03-06 22:41:49'),
(221, 'Thiago', 'Lopez Ayarachi', '70091891', 'jugadores/TQj3gmfzgdgIctRMHcYGMvRFK6ByQ6EIjZ9yytpW.jpg', '2019-03-24', '114', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-06 22:42:15', '2025-03-06 23:42:11'),
(222, 'GENESIS YOHANNA', 'MENACHO SUAREZ', '69082824', 'jugadores/70b1QX58G062eQVu0HrhmD6dgjqp4F6s3WX6qugs.jpg', '2017-12-27', '496', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-06 22:58:28', '2025-03-06 22:58:28'),
(223, 'Jayli Miley', 'Viamonte Mamani', '77351528', 'jugadores/IDYTJPD6azogJKXcbcKxL4yY5GTwy8LEIRCyUUMn.jpg', '2013-08-25', '8000', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-06 22:59:54', '2025-03-08 09:40:33'),
(224, 'Thiago', 'Batallanos Gomez', '62065133', 'jugadores/1o15IMyfNFeQ2hZad5RSd687bkY8wuAT6mODQBjs.jpg', '2017-04-19', '163', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-06 23:11:50', '2025-03-07 02:03:07'),
(225, 'Joel', 'Angola', '64479497', 'jugadores/4T3XjKlsu1hr6qYTjU3zgflYh1SMADxw6PjTi8qr.jpg', '2006-07-24', '95', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-06 23:18:19', '2025-03-06 23:18:19'),
(226, 'Jhon arnold', 'Torrez', '75603051', 'jugadores/qYtjqslQJNBM26yZrQi5KpIW34fW2zxbGnyrQXYP.jpg', '1997-02-25', '925', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-07 00:17:36', '2025-03-07 00:17:36'),
(227, 'Abigail', 'Araúzmolina', '63807342', 'jugadores/4bGQYADlrFoMWlk74VBTL4gSyPY8cNwnAjbnBvas.jpg', '2013-09-18', '386', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 00:22:54', '2025-03-07 00:22:54'),
(228, 'Emanuel', 'Mayta Quispe', '63459473', 'jugadores/UI9Mq7ZQFmEoKtCI3nPFhUhFSiMOrWczZ0wyzJPz.jpg', '2018-05-08', '813', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-07 00:23:40', '2025-03-07 01:37:55'),
(229, 'Thiago Joaquin', 'Amaru Sirpa', '69144353', 'jugadores/9e36ubBTdaFTmNPVtUNGyIlu6lEBMUiMuaU25lWa.jpg', '2018-04-01', '453', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-07 01:04:12', '2025-03-07 01:23:55'),
(230, 'Antonela', 'Condori laime', '75150029', 'jugadores/DCqgZJo7fn0uCil7z4hWBRj0vR2CZz1d23ttvarh.jpg', '2017-04-28', '8001', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 01:22:14', '2025-03-07 01:43:44'),
(231, 'Abigail', 'Araúzmolina', '63807342', 'jugadores/ac4QKKPU4PrqM5u7SSDVkqakDL1EoN1wwJLuaEKT.jpg', '2013-09-18', '382', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 01:23:45', '2025-03-07 01:23:45'),
(232, 'Abigail', 'Araúzmolina', '63807342', 'jugadores/ZUkrCddQPMIt6FWqUaozVcO9o7En1svX3flxqR5p.jpg', '2013-09-18', '608', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 01:25:56', '2025-03-07 01:25:56'),
(233, 'Valentín Armando', 'Hinojosa montenegro', '75150029', 'jugadores/AlAFoZsbspVHxDZoNRsrjzRAXLfLvwZnElXvJAsD.jpg', '2016-02-18', '8002', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 01:26:11', '2025-03-07 01:57:53'),
(234, 'Lucas Daniel', 'Perrogón Rodríguez', '69157946', 'jugadores/Xswz2MUjbzVOb73iu0o7Cnm0HSmvC859jkI1xBqM.jpg', '2015-05-22', '2205', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 01:28:38', '2025-03-07 01:40:39'),
(235, 'Aaron Gualberto', 'Huanca Soliz', '75656369', 'jugadores/POdKgcqBLgjdWbI9BRsnv5UJ8kcuvhkbzQKEd6TV.jpg', '2013-03-13', '87', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 02:07:42', '2025-03-07 02:10:07'),
(236, 'Gael', 'Soliz', '75656369', 'jugadores/qN7aZjdG1d6K3pUYi02rAeve6KT5zBWzIf7vqx3l.jpg', '2015-02-14', '36', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 02:18:35', '2025-03-07 02:19:19'),
(237, 'Luis Ángel', 'Navia Aceituna', '69137427', 'jugadores/5ex1hygrUPSUsFxzdbQZwGsjfplpWb0vCqWiPQap.jpg', '2014-11-05', '74', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 02:27:55', '2025-03-08 16:21:05'),
(238, 'Sheila', 'Garzón Romero', '74643724', 'jugadores/BbQemrhkqyytBgHxwn0nhGbJEKVPfWigxMrxJ6Sn.jpg', '2012-06-07', '57', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 02:28:01', '2025-03-07 02:57:33'),
(239, 'Katerin', 'Medina Antelo', '78033469', 'jugadores/kAV1fN2JyOS6wrrqEXLiKFhm7KXgf1atKZyzIXZE.jpg', '2014-01-02', '339', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 04:06:31', '2025-03-07 04:06:31'),
(240, 'Samanta', 'Marquez Orellana', '69033121', 'jugadores/UN801u15AkJVT82587tNfqJvPdsYgXiQs6mr6IKV.jpg', '2015-05-13', '707', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 04:15:56', '2025-03-07 17:13:38'),
(241, 'Abigail', 'Ramos Kahuana', '74615237', 'jugadores/32N71ERozFAKddpKIA1cHMWZ2NRqORKKx6ueaouc.jpg', '2005-07-03', '219', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-07 04:20:34', '2025-03-07 04:20:34'),
(242, 'Franz Daniel', 'Nina', '73159134', 'jugadores/MTZ07ZWWBrawYjACaEbfi2d2gRAZqYfqiTctwFw2.jpg', '2016-08-09', '1009', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 04:24:39', '2025-03-07 17:01:19'),
(243, 'Briana', 'Mamani Ordóñez', '61381726', 'jugadores/7K802fvNRqU1OqUKgxWbopbsNFwfXM9G3dXwrsYL.jpg', '2014-06-06', '885', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 04:56:02', '2025-03-07 17:43:03');
INSERT INTO `jugadors` (`id`, `nombre`, `apellidos`, `telefono`, `foto`, `fecha_nacimiento`, `numero_jugador`, `estado`, `hora_juego`, `papel`, `user_id`, `created_at`, `updated_at`) VALUES
(244, 'Abigail', 'Siles Ordóñez', '60167183', 'jugadores/sVENN9j0db4MY70qfTpm2bCoh0YMFJbuurRWXiBP.jpg', '2016-12-16', '169', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 04:58:23', '2025-03-07 17:06:24'),
(245, 'Raul', 'Martinez Lima', '69110074', 'jugadores/MtJqzTa9AAQI7wXS1PB7eOkzI3vJ2SeHyjiHYO2b.jpg', '2010-07-17', '2010', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-07 04:59:57', '2025-03-07 04:59:57'),
(246, 'Fiorella', 'Mamani  sosa', '61381726', 'jugadores/45tq3PlttASnHa8SHs9eeghvZ0hJgSIIv43fj7ek.jpg', '2015-09-24', '889', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 05:03:45', '2025-03-07 17:44:16'),
(247, 'Samanta', 'Marquez Orellana', '69033121', 'jugadores/GXV3JP27u2pViwCBvfUR2OMJxGNve70qR9j7prAg.jpg', '2015-05-13', '704', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 05:21:44', '2025-03-07 05:21:44'),
(248, 'Mathias Samuel', 'Rodríguez Cáceres', '73970953', 'jugadores/Rz6wRDWwElBpRVht9FtnC1BPjnK5OMX9j3RR1JMO.jpg', '2020-04-25', '486', 'eliminado', '09:00:00', 'jugador', 1, '2025-03-07 05:34:02', '2025-03-07 17:22:11'),
(249, 'Victoria Rashel', 'Quispe Padilla', '62021933', 'jugadores/wCJQmQmp954G4jGyxvBnZxPrGIMg7znIwcT5k4gy.jpg', '2007-03-01', '312', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-07 05:57:01', '2025-03-07 05:57:01'),
(250, 'Eliana', 'Vedia', '77383506', 'jugadores/mUqzRqSewg66uyBlqH4MiXPgCcZtTeROk5l7gzZp.jpg', '1991-11-17', '1711', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-07 06:00:07', '2025-03-07 06:00:07'),
(251, 'Jose ivan', 'Suárez zambrana', '78408965', 'jugadores/Ev1DgdjZ48jtUwfn6hwZO8LBH5pxDjk6K2hZ1Gxi.jpg', '2015-04-24', '780', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 06:06:09', '2025-03-07 06:06:09'),
(252, 'David', 'Porcel melgar', '69270292', 'jugadores/vdp5rw6HfXCW6HyKdt0vu0ks0UcDPIuBThRdJJpJ.jpg', '2012-10-29', '102', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 06:06:39', '2025-03-07 06:06:39'),
(253, 'Leonardo', 'Salazar Castedo', '78005221', 'jugadores/4QUrbhhefqRwLhFiwxZQHmCjyHg12KjgrYhoiiqs.jpg', '2013-04-01', '363', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 06:08:17', '2025-03-07 18:26:03'),
(254, 'David', 'Porcel melgar', '69270292', 'jugadores/6BjBYRKf3rHluxFH5yJXVL38r1aApreQQ8ImCa9i.jpg', '2012-10-29', '259', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 06:08:52', '2025-03-07 06:08:52'),
(255, 'Leonardo', 'Salazar Castedo', '78005221', 'jugadores/EwjxhKRC00krg4MFVXttrcPdxkBDOa8ef47CWeq3.jpg', '2013-04-01', '228', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 06:09:11', '2025-03-07 06:09:11'),
(256, 'Alexia', 'Suárez zambrana', '78408965', 'jugadores/7y4YX7Kt5Ent4h4GKZn8FUZihuaCnfOnjNTtSIKn.jpg', '2017-09-17', '213', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 06:13:56', '2025-03-07 17:16:28'),
(257, 'Hanna alexia', 'Parada Borja', '63442417', 'jugadores/aUnkEKu2BJeSop4l9V9V60EEjZjfOsZ3fkNdysJa.jpg', '2025-03-06', '245', 'eliminado', '09:00:00', 'jugador', 1, '2025-03-07 06:20:47', '2025-03-07 06:20:47'),
(258, 'MIDORI TOMOYO', 'JUSTINIANO HEREDIA', '70488292', 'jugadores/2db6SE7gYlF6ZZi8F2VRQhOZnXO5wlk2bzmpJu5c.jpg', '2014-08-03', '121', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 06:24:34', '2025-03-07 18:57:51'),
(259, 'PRIYASHA', 'BAUDDH', '70488292', 'jugadores/MSPgzqEdFDsANx2k7nmSagNisYBJsB2V6iBn7aoS.jpg', '2015-10-22', '130', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 06:32:05', '2025-03-07 18:59:12'),
(260, 'Ester marisol', 'Cruz urquizo', '78175235', 'jugadores/lrukT0lx9ndxaCcnTxDP1kZsOVdlJudJcBdQdHKE.jpg', '2003-04-05', '289', 'eliminado', '11:30:00', 'guardia', 1, '2025-03-07 06:39:13', '2025-03-07 06:39:13'),
(261, 'Mateo', 'Tacoo', '70287850', 'jugadores/kIA5OMG4Z8ScN4hUKBJ8MgpExtPIY97qpoO7Ay4A.jpg', '2015-02-09', '351', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 06:39:15', '2025-03-07 19:19:35'),
(262, 'Ester marisol', 'Cruz urquizo', '78175235', 'jugadores/zdTfBWD8GEzGqW2ygP1TtiyCErOsb6v4tN4qnF6F.jpg', '2003-04-05', '280', 'eliminado', '11:30:00', 'jefe', 1, '2025-03-07 06:42:03', '2025-03-07 06:42:03'),
(263, 'Matias', 'Condarco', '79554591', 'jugadores/48n1jhIuzqaOK6Q9dk0K0jzoNGYl6FYcQGSlX6BT.jpg', '2013-09-30', '430', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 06:42:58', '2025-03-07 18:23:17'),
(264, 'Leonardo', 'Salazar Castedo', '78005221', 'jugadores/9p6AbNVx1ttl3Z8DV2vyaBjfPQ9O45KIJzgmEGBA.jpg', '2013-04-01', '435', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 06:43:35', '2025-03-07 06:43:35'),
(265, 'Martina', 'Tacoo', '70286850', 'jugadores/yxt5MWEkiXWopadMTCrvqlSAK3RVPTYwP2wmDfx3.jpg', '2016-05-22', '350', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 06:57:45', '2025-03-07 19:20:48'),
(266, 'Martina', 'Tacoo', '70286850', 'jugadores/7PywyDdzrhjx0QlDM569KcNRH25KFgj73XHUJuG3.jpg', '2016-05-22', '352', 'eliminado', '10:00:00', 'guardia', 1, '2025-03-07 06:58:44', '2025-03-07 06:58:44'),
(267, 'Dulce', 'Diaz', '77072695', 'jugadores/b22wRdlMOmIXv0YR8vPWvL9fC0K6eV4fnfAjCPsN.jpg', '2007-09-29', '695', 'eliminado', '11:30:00', 'guardia', 1, '2025-03-07 07:00:19', '2025-03-07 07:00:19'),
(268, 'Leonardo', 'Salazar Castedo', '78005221', 'jugadores/SHZIpPMS8titSTJZZaaLDCrMPWHiktCgkSlp282a.jpg', '2013-04-01', '135', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 07:22:37', '2025-03-07 07:22:37'),
(269, 'Ana Thais', 'Muñoz Peña', '60835333', 'jugadores/ywgEpbxeNpGYyFboMje1WazMZhB4Qs63LxsZLY0V.png', '2014-05-15', '5221', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 07:26:59', '2025-03-07 07:26:59'),
(270, 'Ana Thais', 'Muñoz Peña', '60835333', 'jugadores/zMpQ3pbj0tlyFPYftmZW4jg2bvQJspYl1NyqGK4m.png', '2014-05-15', '5222', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 07:30:28', '2025-03-08 16:24:01'),
(271, 'Luz Marina', 'Muñoz Peña', '60994946', 'jugadores/bAi2tEmb4nanOGXfRX9QEj9eD88ybtGsQYFqFjEV.png', '2015-12-31', '3112', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 07:32:51', '2025-03-08 16:59:14'),
(272, 'Milagros', 'Muñoz Peña', '70966755', 'jugadores/QA7IS1T5oEXA0CZRFxggVM9WQkylAru8XaQbnwsL.png', '2017-11-09', '1109', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 07:35:21', '2025-03-08 16:56:42'),
(273, 'Briana Isabella', 'Reus Ajata', '60975875', 'jugadores/djj54xzRztsef2P9j1Y6pYFnjt6EIF74j3xDvNmV.jpg', '2014-06-09', '452', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 07:38:41', '2025-03-07 17:35:39'),
(274, 'Caleb', 'Reus Ajata', '60975875', 'jugadores/neAJ2KbjSGH2wIWBpMIuwxwXnlhKj26qPGGFBvdn.jpg', '2019-04-17', '425', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-07 07:42:55', '2025-03-07 17:38:48'),
(275, 'Zoe aysel', 'Roca Alanoca', '75387134', 'jugadores/jNLcwL0EgtBDrObnDQDdygXSbKxEjh31zlY2f9bl.jpg', '2019-03-30', '640', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-07 07:44:36', '2025-03-07 07:44:36'),
(276, 'Jeremias', 'Urañabi huallpa', '74962003', 'jugadores/d3EpNRGCaLRCTGwIDUQwTF0WAxlSKi3cJd3Nh03h.jpg', '2018-12-21', '221', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-07 14:13:43', '2025-03-07 17:32:03'),
(277, 'María Scarlet', 'Ávila Aceituna', '69137427', 'jugadores/w07mANR69Mr9pzMoFDJP1ZTdPmCEJ44A77hXZgBW.jpg', '2016-02-18', '91', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 18:49:17', '2025-03-08 16:21:19'),
(278, 'Favio Andres', 'Ávila Aceituna', '69137427', 'jugadores/6tgW7yn6AtRsc4BJPrHyQHoru3Qsp204aKAESnbk.jpg', '2017-02-21', '93', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 18:54:23', '2025-03-08 16:21:27'),
(279, 'William Steven', 'Soliz Rodríguez', '78113440', 'jugadores/TxWecGPmYKGnvIBh2GJ6lFbbme62leUXxwaGUYsA.jpg', '2013-07-02', '2302', 'eliminado', '11:00:00', 'jefe', 1, '2025-03-07 19:16:43', '2025-03-07 19:16:43'),
(280, 'Denisse Ayelen', 'Serataya Rios', '69065599', 'jugadores/sotWQX6Af29TtE1qH6sbRLxPQMm646HaTxSXK9c4.jpg', '2019-01-06', '146', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-07 19:39:56', '2025-03-07 20:07:31'),
(281, 'Jhoan Andres', 'Serataya Rios', '69065599', 'jugadores/Fnx0TKdfTzhCvMPJI7mowcaoEfO0YZkj0tVHLIex.jpg', '2014-07-29', '147', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 19:40:02', '2025-03-07 20:07:39'),
(282, 'Brian Yael', 'Serataya Rios', '69065599', 'jugadores/nSjSZXrooshQwORxgEVcN2trlBUuPWTZ99gN5AG0.jpg', '2014-07-29', '145', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 19:40:24', '2025-03-07 20:07:47'),
(283, 'Yordy Alexander', 'Bascope Coronado', '78571894', 'jugadores/r63aa1lH59REzUwqKVJyJ4S09JS8ACH9wzm4EFyh.jpg', '2012-04-23', '2304', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 19:44:06', '2025-03-07 19:49:20'),
(284, 'Jorge', 'Lipacho', '73659855', 'jugadores/F3HGo6iCDnwrqULJe214NgCETBEhOkDMe6WikgGR.png', '2000-09-11', '117', 'eliminado', '11:30:00', 'guardia', 1, '2025-03-07 19:48:41', '2025-03-07 19:48:41'),
(285, 'William Steven', 'Soliz Rodríguez', '78113440', 'jugadores/xanST6deCjOkQ0VKY3pP7S0gfaGGOi3m3LIjChDx.jpg', '2013-07-02', '2303', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 20:19:20', '2025-03-07 20:25:52'),
(286, 'Barinia', 'Vargas', '67721247', 'jugadores/pOGbjwi5xyD55J1XxAjgaQxZs2LboVttDnMUzQck.jpg', '2017-02-03', '52', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-07 22:00:29', '2025-03-07 23:12:43'),
(287, 'Danna Luzmila', 'Perez Carreño', '76370206', 'jugadores/rZ2uaZM0p0R3MjfHZuFUlXu9CLROM3LQTYq9fMi1.jpg', '2015-02-02', '792', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-07 23:40:06', '2025-03-07 23:59:20'),
(288, 'Mirco Ali', 'Cossío Zurita', '75363140', 'jugadores/2FNzNIoVORs2ZC3SHLtT6AMSXmU1q6xMshHWg6p1.jpg', '2012-11-10', '431', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-07 23:53:11', '2025-03-07 23:56:33'),
(289, 'Gènesis Yohanna', 'Menacho Montero', '69082824', 'jugadores/TlWbnIM02vEmT13TSHVARinYl2X16b20HpxBxWmS.jpg', '2017-12-27', '497', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 00:07:33', '2025-03-08 00:45:16'),
(290, 'Carlos', 'Taca', '60868350', 'jugadores/TsFeuRzaLiRWX5NiJiG4nHyI0nowJFTyCL4CuTOh.jpg', '2018-09-12', '69', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 00:53:27', '2025-03-08 01:25:07'),
(291, 'Mariana', 'Copacaba Revollo', '69168535', 'jugadores/GEsYGL2bxxaputldAUlyAWsgoUzUzoiUAKKFCXCw.jpg', '2011-01-15', '251', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 01:03:03', '2025-03-08 02:52:56'),
(292, 'Emanuel', 'Tola rojas', '73371772', 'jugadores/XmqpQJNDw69Pi8zOp6FB5O1Z37qc2CbMGfENtLpw.jpg', '2017-01-03', '505', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 01:28:03', '2025-03-08 02:11:05'),
(293, 'Valentina', 'Tola rojas', '73371772', 'jugadores/VRtqcckEbpvdfplKEtD8rwQHRIC04gh8RI6ATfXX.jpg', '2020-02-14', '506', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 02:07:08', '2025-03-08 02:11:19'),
(294, 'Neithan jhoel', 'Huanca rojas', '74368198', 'jugadores/NZDQt5voodVnsxGfVFj4I4RP6mdXDIYEYm6Xnc1N.jpg', '2019-07-16', '253', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 02:16:42', '2025-03-08 02:27:11'),
(295, 'Maria', 'Duarte', '71047597', 'jugadores/AmSPKLxwzPahn3PNuEfAUX19UEDaQ6ZHoMl5zM3r.jpg', '2005-07-08', '696', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 02:17:44', '2025-03-08 02:17:44'),
(296, 'Alejandra Myreya', 'Beltrán Medinaceli', '77044012', 'jugadores/WlPHtwiZaaIoZzh7k52mDQd7A2pCgBSlEGTTZ5VJ.jpg', '2005-05-31', '209', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 02:26:51', '2025-03-08 02:26:51'),
(297, 'Jesús Jhonatan', 'Tola Condori', '70009004', 'jugadores/47xXSSK3wANAA8kmaXSCirtGgaoMbcnOIyx24lOf.jpg', '2017-07-01', '115', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 02:32:17', '2025-03-08 02:46:12'),
(298, 'Anabel Azeneth', 'Tola Condori', '70009004', 'jugadores/v7jwGbiursSEIdvSP9HMIBfgel9HT4QGMCw5cbrV.jpg', '2016-06-09', '116', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 02:36:28', '2025-03-08 02:46:46'),
(299, 'Arturo', 'Herbas', '68701263', 'jugadores/sAe7GVMh8EVg7rjNnvw4KE5idXX8wyyXDPEj2TXB.jpg', '2010-05-26', '334', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 02:37:22', '2025-03-08 02:37:22'),
(300, 'Felix', 'Candia', '62014353', 'jugadores/kja4kmtseid8PBtiv9dieg54pBc2OdzsVJzqqFeu.jpg', '2010-03-28', '400', 'eliminado', '11:30:00', 'vip', 1, '2025-03-08 02:42:13', '2025-03-08 02:42:13'),
(301, 'Felix', 'Candia', '62014353', 'jugadores/jrKf058yxTRxT95jfTSB2pwFXw4ZaWG4DBfrOjVw.jpg', '2010-03-28', '158', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 02:43:40', '2025-03-08 02:43:40'),
(302, 'Mariana', 'Copacaba Revollo', '69168535', 'jugadores/9danzhHrXsWMMiuLBVAR7Bf8nskcbsXvme2sKoDw.jpg', '2011-01-15', '203', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 02:50:46', '2025-03-08 02:50:46'),
(304, 'Angel zaid', 'Apaza uriarte', '76034132', 'jugadores/tPXK7gHwlxzh2inSqSuOoNaj58vdT2sFnBmKfPF6.jpg', '2019-09-28', '2019', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 04:55:21', '2025-03-08 08:39:50'),
(305, 'Anthony leonel', 'Camacho', '78429403', 'jugadores/BgZJ2Qdie8NwN87S5faGGJsZfbeJaz14EErIdcwA.jpg', '2013-11-24', '92', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 05:00:17', '2025-03-08 08:54:53'),
(306, 'Juan diego', 'Rodriguez guerrero', '74662183', 'jugadores/Krksgvz8y7xWQ35U1SJ0COHnxD3YfOnwmS8VMWaN.jpg', '2003-12-08', '1089', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 05:11:14', '2025-03-08 05:11:14'),
(307, 'Jhoan caleb', 'Apaza uriarte', '76034132', 'jugadores/e8VPM4rwZIQ5UfVkVYDBb4SzaLlejUqRPIR7XUXw.jpg', '2016-10-18', '2016', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 05:12:23', '2025-03-08 08:39:30'),
(308, 'Pedro Fernando', 'Justiniano Parapaino', '73617568', 'jugadores/NePUwQpV5FcgjJ89a2vjhmdpfAgWKtWMNl9V1ekB.jpg', '2012-10-12', '1833', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 05:13:03', '2025-03-08 05:13:03'),
(309, 'Reyna Margarita', 'Duarte Caro', '72646017', 'jugadores/iAr3RgkUfwHLMM5w2tGsihcACLDmQg1JfAB1FfNh.jpg', '2008-08-14', '226', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 05:13:25', '2025-03-08 05:13:25'),
(310, 'Camila', 'Rodriguez', '75628272', 'jugadores/SmDlwVcY0uOMVLyouMSNIU1nheBm9ge6YOIA8CIZ.jpg', '2000-08-02', '950', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 05:13:30', '2025-03-08 09:52:30'),
(311, 'Pedro Fernando', 'Justiniano Parapaino', '73617568', 'jugadores/cEdHfEwbii2FYLeYs9PNmuIEGYDmFgzTbmmM83me.jpg', '2012-10-12', '7631', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 05:18:26', '2025-03-08 05:18:26'),
(312, 'Pedro Fernando', 'Justiniano Parapaino', '73617568', 'jugadores/mTstrtRyCYkJrMvn7N1yBjK9hyGi7gXt58Ck13ef.jpg', '2012-10-12', '1992', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 05:22:07', '2025-03-08 05:22:07'),
(313, 'Natalia Carolina', 'Ramos Altamirano', '60989125', 'jugadores/dDMyboq3hVMhzwYsuQ8aAVAAWmG4ZuNPZ7UG2Kpr.jpg', '2016-01-08', '472', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 05:41:19', '2025-03-08 16:57:48'),
(314, 'Hillary', 'Rivero flores', '78429403', 'jugadores/k1iSySho5NtE1YDMlIXojPjSyvvWtdlJZu6ABHU5.jpg', '2017-03-15', '602', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 05:47:01', '2025-03-08 08:57:55'),
(315, 'Neydi', 'Roca', '69190469', 'jugadores/PeSsyGAlPoeCZqJIBzZIP6ydH51IG7G95KCpMU9A.jpg', '2018-10-31', '9000', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 05:47:34', '2025-03-08 08:59:22'),
(316, 'Alex', 'Lucas melendres', '69135671', 'jugadores/iDHZoADwQpHuONSIOSok9qdIFIDycn9I6uJQPV4V.jpg', '2015-12-26', '202', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 06:06:13', '2025-03-08 06:06:13'),
(317, 'Alex', 'Lucas melendres', '69135671', 'jugadores/bBLgWoiBmQqNVscaCJD90u7rt3sU1kW4ENU3HLmt.jpg', '2015-12-26', '103', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 06:10:14', '2025-03-08 06:10:14'),
(318, 'Alex', 'Lucas melendres', '69135671', 'jugadores/TXcuGCUBceLldEFmaugVwoeJEfWMGUdh9a6S2M2V.jpg', '2015-12-26', '546', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 06:11:43', '2025-03-08 06:11:43'),
(319, 'J', 'D', '60840365', 'jugadores/prP6LM7suNetBS73B1EmGcGWPBrMelHJpYc8wMIz.png', '2016-03-07', '5795', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 06:41:27', '2025-03-08 06:41:27'),
(320, 'Jheferson', 'Quispe Aguilera', '76646244', 'jugadores/34f2LXaujj0MfxsZH5Y9TvdhEAVcNZp9h6BLXUKK.jpg', '2020-03-06', '548', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 07:08:04', '2025-03-08 07:08:04'),
(321, 'Michelle', 'Estrda', '69261182', 'jugadores/7mnySaOAj9gkMwvhdSyee7gtXhc51PaV7BkcOuZe.jpg', '2015-10-08', '182', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 07:10:32', '2025-03-08 07:10:32'),
(322, 'Matheo', 'Montero Flores', '67871525', 'jugadores/W64nXaeG0cyS9X0az34CNiktbovK2rV5KGxHoFei.jpg', '2014-01-30', '186', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 07:12:43', '2025-03-08 09:31:20'),
(323, 'Danitza Nair', 'Gomez', '75509100', 'jugadores/SoQL8fvetCCcgdwBQqWSIW0GH00D0g6YNTy474LA.jpg', '2010-11-18', '9500', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 07:19:59', '2025-03-08 07:19:59'),
(324, 'Jheferson', 'Quispe Aguilera', '76646244', 'jugadores/Kw9fEVKvKWcXpULUP46PQYlE186bZtV4zF9f6vUM.jpg', '2020-03-06', '656', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 07:21:00', '2025-03-08 07:21:00'),
(325, 'Jesús Abraham', 'Quispe Velasco', '77883812', 'jugadores/lIshTEJ36UYpWGxl4SG9Ifc3GASF45DTb10qFMnH.jpg', '2007-01-02', '1234', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 07:23:26', '2025-03-08 07:23:26'),
(326, 'Jesús', 'Gutierrez', '78029130', 'jugadores/ICMTTSuWTFrDHjZ7xvRiHckA29aSqUuCitm8178C.jpg', '2014-12-31', '0', 'eliminado', '10:30:00', 'guardia', 1, '2025-03-08 07:37:28', '2025-03-08 07:37:28'),
(327, 'Yeraldine', 'Viana aguilar', '74694157', 'jugadores/LryScBteEauUX8wSa25glq0Uqn3ETs7ioVD8ElPJ.jpg', '2011-06-30', '51', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 08:09:16', '2025-03-08 08:09:16'),
(328, 'Oseias Adriel', 'Siles Espinoza', '68794102', 'jugadores/ArMOwMzrIj57K7U0jACl2xfHfU5fjWDjAH1HP6gx.jpg', '2017-03-12', '212', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 08:31:20', '2025-03-08 16:18:12'),
(329, 'Melisa', 'Cuellar Espinoza', '68794102', 'jugadores/cgNnfbqzYsOD0kfoSqO8d7RfdYwURM8ToD0ocwFV.jpg', '2008-08-07', '800', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 08:47:25', '2025-03-08 08:47:25'),
(330, 'Caled', 'Faldin flores', '75351562', 'jugadores/HznJ5jOBGWvIY9JqCFuuItFqzoc385QWUmPyseA9.jpg', '2020-11-02', '604', 'eliminado', '09:00:00', 'jugador', 1, '2025-03-08 09:10:12', '2025-03-08 09:12:08'),
(331, 'Angel', 'Chumacero', '69199917', 'jugadores/HT8Bm2gATdwlS9nxmUPbhL0q3L6PGHqbTAmGwOXG.jpg', '2016-09-19', '303', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 16:41:04', '2025-03-08 16:41:04'),
(332, 'Jennifer', 'Challapa copa', '68835716', 'jugadores/ZUJLptajY5EIKsiChJAfA8DiuO97eMXGQ6mBrHmv.jpg', '2012-04-28', '6580', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 16:42:39', '2025-03-08 16:42:39'),
(333, 'Jennifer', 'Challapa copa', '68835716', 'jugadores/s2nWEETGDgT7UVEYmlyqIzSscU9uUkScgO5xz1N4.jpg', '2012-04-28', '4056', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 16:45:27', '2025-03-08 16:45:27'),
(334, 'Olga', 'Copa puma', '68835716', 'jugadores/8YcjRxlTZH5YPK1KLFtX29DpASzQCfvvCnwjOvlL.jpg', '1990-06-20', '6325', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 16:58:18', '2025-03-08 16:58:18'),
(335, 'AARON', 'Rios', '75699151', 'jugadores/J1ZDTUFZxL7bYsRJcMTX898UHpefLt4ctDkTbVea.jpg', '2018-10-11', '310', 'eliminado', '09:30:00', 'jugador', 1, '2025-03-08 17:02:40', '2025-03-08 17:02:40'),
(336, 'Matias', 'Vedia jove', '62220018', 'jugadores/uUes7wAe3pRUzNBEkjTetsHeLPYmBK2NlDjiNFbS.jpg', '2014-03-18', '406', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 17:11:36', '2025-03-08 17:11:36'),
(337, 'Yudith', 'Mamani luna', '67350561', 'jugadores/kNNQuW3zIR0L9cHsR1gVpX2ZExF8GyxdUtsRafb1.jpg', '2012-03-03', '160', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-08 17:53:02', '2025-03-08 17:53:02'),
(338, 'Ángela', 'Sea Mamani', '81587508', 'jugadores/3T6XY9XbkJU4GxGTMAEJBocmnr28YOgnpq9uobww.jpg', '2012-04-05', '45', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-08 17:58:28', '2025-03-08 17:58:28'),
(339, 'Maria', 'Sea Mamani', '81587508', 'jugadores/D7mAv1d5npRUhBLXRykg4eMf1Q6CaW1e3kLhPAFy.jpg', '2015-10-27', '48', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-08 18:07:20', '2025-03-08 18:07:20'),
(340, 'Arely', 'Sea Mamani', '81587508', 'jugadores/w08llUlpfwEFkaYVoIeyJpv6rG1jZTHJirkvfrGR.jpg', '2017-11-15', '42', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-08 18:17:53', '2025-03-08 18:17:53'),
(341, 'Andrea nicole', 'Robles mendez', '74939901', 'jugadores/wYrlHhsP7GodbnNEGBDI2e3EZoCrJtneP9iqOJTc.jpg', '2017-06-08', '458', 'eliminado', '10:00:00', 'jugador', 1, '2025-03-09 16:15:09', '2025-03-09 16:15:09'),
(342, 'Thiago', 'Ribera', '72139666', 'jugadores/YhKM4CEiImFeYCQV8ORResddiew4AAkmSAXuKKd6.jpg', '2015-08-19', '408', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-09 23:36:29', '2025-03-09 23:36:29'),
(343, 'Thiago', 'Ribera', '72139666', 'jugadores/sbCef03ZgWEusWd9F0eERwjGFJvPwM3Un8szJlQE.jpg', '2015-08-19', '697', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-09 23:39:06', '2025-03-09 23:39:06'),
(344, 'Thiago', 'Ribera', '72139666', 'jugadores/WTZ493pH25n3kWFbygjLMaVIDlHzafZMZVLQ9zc1.jpg', '2015-08-19', '255', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-09 23:40:59', '2025-03-09 23:40:59'),
(345, 'Thiago', 'Ribera', '72139666', 'jugadores/CnUsaqG66DvlZZVSluSIH2NT8lwz9zYIXep4ujFS.jpg', '2015-08-19', '649', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-09 23:47:00', '2025-03-09 23:47:00'),
(346, 'Moisés', 'Ochoa Colque', '67797030', 'jugadores/Itf4MjCSWNhvCHO7uvUpfRlTFYiOIUCKBYOvjEQG.png', '2000-08-01', '2500', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-10 01:38:12', '2025-03-10 01:38:12'),
(347, 'José Luis', 'Chávez ron', '77070903', 'jugadores/Ap48H8dbADdhjoZBXrSWexgCYX3ZaxF0it5nUH1N.jpg', '1999-03-11', '109', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-11 17:58:40', '2025-03-11 17:58:40'),
(348, 'Luis Angel', 'Quispe Romero', '63544289', 'jugadores/OcY4tfLUyvthzOhciM2a1CEaKRNluQA0h42RNmlD.jpg', '2007-10-06', '504', 'eliminado', '11:30:00', 'guardia', 1, '2025-03-11 18:17:54', '2025-03-11 18:17:54'),
(349, 'Leo', 'Leonardo', '76012380', 'jugadores/gXWssQnKlZoWX2u9n4pk99K4jrvaeCOxGMaFGIhf.jpg', '2010-07-19', '7301', 'eliminado', '11:30:00', 'guardia', 1, '2025-03-14 05:25:13', '2025-03-14 05:25:13'),
(350, 'Axel', 'Vargas', '69107905', 'jugadores/hOL0nDtKTjHBpcJ8wj5HPAdDCnV4vlcahV7QS64M.jpg', '2008-10-10', '97', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-18 01:33:54', '2025-03-18 01:33:54'),
(351, 'Alex Uriel', 'Untol Pérez', '77839179', 'jugadores/asOsCO84wBkDVmqOgyBVmlLXahsKmgqbtxmj0x7b.jpg', '2011-08-26', '618', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-19 07:51:26', '2025-03-19 07:51:26'),
(352, 'José neymar', 'Tamacuine layme', '62178970', 'jugadores/cQfs5GfmRCIAlenQWJCHwow2u6yf97n7nIwtqQ5a.jpg', '2025-01-10', '454', 'eliminado', '09:00:00', 'jugador', 1, '2025-03-19 21:04:09', '2025-03-19 21:04:09'),
(353, 'Ruth noemi', 'Acarapi cori', '69083760', 'jugadores/gjxKpdxlMaf6HqBcJXaCSauvGEyj7gDcidIburv1.jpg', '2009-04-18', '157', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-19 21:43:24', '2025-03-19 21:43:24'),
(354, 'Briana Maite', 'Aruquipa. Gómez', '61372110', 'jugadores/TPKe49KQjNZ1cz2RyZiKq1hRB4ZTr0fVl2g6fbIE.jpg', '2014-03-26', '40', 'eliminado', '10:30:00', 'jugador', 1, '2025-03-20 01:20:14', '2025-03-20 01:20:14'),
(355, 'Saíb', 'Degadillo Alejandro', '68882284', 'jugadores/DHFeCSR4gi9ROeUe1quimSPJf6W3Tzxq06SApfMf.jpg', '2013-08-24', '9999', 'eliminado', '11:00:00', 'jugador', 1, '2025-03-20 02:43:30', '2025-03-20 02:43:30'),
(356, 'Dembert', 'Colque', '64440508', 'jugadores/IbMdLLyUZtOhd3RR55d6WS1yDkxBh3hO5fm1bsAu.jpg', '2006-08-01', '900', 'eliminado', '11:30:00', 'jugador', 1, '2025-03-20 05:28:25', '2025-03-20 05:28:25'),
(357, 'Milagritos Luzmayer', 'Estrada Caro', '68750138', 'jugadores/2qpqi9dAPeqQ47VzUECvT3kKOLMLE0RlBtt2oKGV.jpg', '2015-11-24', '450', 'Eliminado', '10:00:00', 'jugador', 1, '2025-03-21 03:46:30', '2025-03-21 03:46:30'),
(358, 'Carly Catalina', 'Uriondo Pizarro', '68750138', 'jugadores/cPR95OFqNiKz4PqTtf9RpYz9YcWX7saCErEEGyUM.jpg', '2015-09-21', '446', 'Eliminado', '10:00:00', 'jugador', 1, '2025-03-21 03:51:27', '2025-03-21 03:51:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_25_223127_create_jugadors_table', 1),
(6, '2025_01_25_223430_create_pays_table', 1),
(7, '2025_01_31_052044_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(3, 'App\\Models\\User', 25),
(3, 'App\\Models\\User', 26),
(3, 'App\\Models\\User', 27),
(3, 'App\\Models\\User', 28),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(3, 'App\\Models\\User', 35),
(3, 'App\\Models\\User', 36),
(3, 'App\\Models\\User', 37),
(3, 'App\\Models\\User', 38),
(3, 'App\\Models\\User', 39),
(3, 'App\\Models\\User', 40),
(3, 'App\\Models\\User', 41),
(3, 'App\\Models\\User', 42),
(3, 'App\\Models\\User', 43),
(3, 'App\\Models\\User', 44),
(3, 'App\\Models\\User', 45),
(3, 'App\\Models\\User', 46),
(3, 'App\\Models\\User', 47),
(3, 'App\\Models\\User', 48),
(3, 'App\\Models\\User', 49),
(3, 'App\\Models\\User', 50),
(3, 'App\\Models\\User', 51),
(3, 'App\\Models\\User', 52),
(3, 'App\\Models\\User', 53),
(3, 'App\\Models\\User', 54),
(3, 'App\\Models\\User', 55),
(3, 'App\\Models\\User', 56),
(3, 'App\\Models\\User', 57),
(3, 'App\\Models\\User', 58),
(3, 'App\\Models\\User', 59),
(3, 'App\\Models\\User', 60),
(3, 'App\\Models\\User', 61),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 63),
(3, 'App\\Models\\User', 64),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 84),
(3, 'App\\Models\\User', 85),
(3, 'App\\Models\\User', 86);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jugador_id` bigint(20) UNSIGNED NOT NULL,
  `monto` decimal(8,2) NOT NULL,
  `metodo_pago` varchar(255) NOT NULL,
  `fecha_pago` date NOT NULL,
  `estado_pago` varchar(255) NOT NULL DEFAULT 'pendiente',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-02-26 00:34:35', '2025-02-26 00:34:35'),
(2, 'guardia', 'web', '2025-02-26 00:34:35', '2025-02-26 00:34:35'),
(3, 'jugador', 'web', '2025-02-26 00:34:35', '2025-02-26 00:34:35'),
(4, 'voluntario', 'web', '2025-02-26 00:34:35', '2025-02-26 00:34:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '2025-02-26 00:34:36', '$2y$12$VL3/1.ihCe8h80KH2PLA4uANrojne3/VzdDtumLKcKDoC00G4vd0a', NULL, '2025-02-26 00:34:36', '2025-02-26 00:34:36'),
(2, 'david', 'david@ite.com.bo', NULL, '$2y$12$8cj4EvFn1oJc59Wn6iaANOCrdA5zVOsjFbjveL1bU.v5nT5Q6D/PS', NULL, '2025-02-26 01:58:57', '2025-02-26 01:58:57'),
(3, 'David1', 'david1@ite.com.bo', NULL, '$2y$12$eBzYaHvA8kZj0AVmvQy7/upGjGKo6nH8yGCR19sDbpHuPaox7chnK', NULL, '2025-02-26 02:06:45', '2025-02-26 02:06:45'),
(4, 'Davidflores', 'davidflores@ite.com.bo', NULL, '$2y$12$t3y4uMl7pJBbMH3m93PkZ.sxbcQh1QVp3vWrZDAIyiiTTgsdIvTx.', NULL, '2025-02-26 02:15:00', '2025-02-26 02:15:00'),
(5, 'huesocanelotyson@gmail.com', 'huesocanelotyson-at-gmailcom@ite.com.bo', NULL, '$2y$12$WJddqjz5OUK3064pDjAh5umEJnhBOBlLzYriNlbZCyGOVRSdTxX9u', NULL, '2025-02-26 07:39:22', '2025-02-26 07:39:22'),
(6, 'jugador', 'jugador@ite.com.bo', NULL, '$2y$12$oKiPXC1Cp.S.kwYR1wpFSe7ogBbwQYC3ba7ag0qBuoTMDtQzC0Ira', NULL, '2025-02-26 17:05:24', '2025-02-26 17:05:24'),
(7, 'LUSMILA', 'lusmila@ite.com.bo', NULL, '$2y$12$GTG5XeYmA2Qw01u23jlswOYJkBEjpiJ05/1VV2RQx9F9pYwzt/YZO', NULL, '2025-02-26 17:38:45', '2025-02-26 17:38:45'),
(8, 'Dulce', 'dulce@ite.com.bo', NULL, '$2y$12$TtgsLnvH1OUWPR5Y4VM3gOxfgezoBlwR.rwCDjd3WRoBBiCb70Rye', NULL, '2025-02-26 18:32:30', '2025-02-26 18:32:30'),
(9, 'deliazarateflores2@gmail.com', 'deliazarateflores2-at-gmailcom@ite.com.bo', NULL, '$2y$12$mF/n/tOZIjxhXqSU0LmoDuI1FXQ460sTtjn1cEr/qeVMw9r9LiJMG', NULL, '2025-02-26 18:39:01', '2025-02-26 18:39:01'),
(10, 'David Saavedra Yujra', 'david-saavedra-yujra@ite.com.bo', NULL, '$2y$12$ss/mAuuiM31EoOYAhdjF9eYxKDZC.HtocjS.D9C/9GrO/dJZW8WiO', NULL, '2025-02-26 19:56:55', '2025-02-26 19:56:55'),
(11, 'Bryancardenasrojas', 'bryancardenasrojas@ite.com.bo', NULL, '$2y$12$L2ZIuSeH.2lJyt/emqhDhe/NseDQkudqdnKy.DxEB5ZW76x1YgKgm', NULL, '2025-02-26 20:56:37', '2025-02-26 20:56:37'),
(12, 'Arisacardenas', 'arisacardenas@ite.com.bo', NULL, '$2y$12$xtD5nDiZSEMaw8wTWmtyquE6EFO2PenTues1DIijEZnejTovUUJqW', NULL, '2025-02-26 21:08:00', '2025-02-26 21:08:00'),
(13, 'LiamNelsonArnezArce', 'liamnelsonarnezarce@ite.com.bo', NULL, '$2y$12$EkFlvs9ORJNtOshODJqJw.VAelt.aeIfIF2KG.3Zla5gHw1zYhaWe', NULL, '2025-02-26 21:55:17', '2025-02-26 21:55:17'),
(14, 'Frank Dux Torrez Coca', 'frank-dux-torrez-coca@ite.com.bo', NULL, '$2y$12$WZrpQHDHT1vRM2rd/Tbdb.P9ZsWsmprF9OiVuDIxOkESi46GIuooy', NULL, '2025-02-26 22:03:04', '2025-02-26 22:03:04'),
(15, 'JHON SEBASTIAN CABRERA SANDOVAL', 'jhon-sebastian-cabrera-sandoval@ite.com.bo', NULL, '$2y$12$f2AcD4JHYL6KLvy07ZNdh.1MGmA6vNbKtaArx1zc/OfZKcIcC/F96', NULL, '2025-02-26 22:03:49', '2025-02-26 22:03:49'),
(16, 'Cristian17wachiman', 'cristian17wachiman@ite.com.bo', NULL, '$2y$12$OFBSY1ASNS6THjr6cCsEfOm.Wpr9DUV4uYdveATf.KGqSuxW3rQ62', NULL, '2025-02-26 22:25:32', '2025-02-26 22:25:32'),
(17, 'Brigitt', 'brigitt@ite.com.bo', NULL, '$2y$12$1TNcZvUJkaKLBQpKJWGiV.xK1NYxNtvrQHzA7WxG2/ao6sVvc7izy', NULL, '2025-02-26 23:16:58', '2025-02-26 23:16:58'),
(18, 'Aaron', 'aaron@ite.com.bo', NULL, '$2y$12$NJs8j6.qds75fk6rg.0ExePj2oOSytu.HG36JeOyOjmT12r0kGI1W', NULL, '2025-02-26 23:24:45', '2025-02-26 23:24:45'),
(19, 'Estefani', 'estefani@ite.com.bo', NULL, '$2y$12$zpIZQZjrzyLIkKl6LAtHdOscpgaesmSTPYF8t4p/XkYsldP1zZjo6', NULL, '2025-02-27 00:09:19', '2025-02-27 00:09:19'),
(20, 'Yeremy', 'yeremy@ite.com.bo', NULL, '$2y$12$1MKqccXtiDi/yuNK6Udk8OlYdWXMqo5G8m1wWiepbNHCswPIElx4K', NULL, '2025-02-27 00:41:48', '2025-02-27 00:41:48'),
(21, 'Nemy', 'nemy@ite.com.bo', NULL, '$2y$12$plweqwfqRGe.GMI65LJoN.2T9kxoJ1ec38MwFtp3AR.bB31mT58Cy', NULL, '2025-02-27 00:44:40', '2025-02-27 00:44:40'),
(22, 'paolatorrez', 'paolatorrez@ite.com.bo', NULL, '$2y$12$yd9NIzbi87QgM1FpoRrTHeNNLUdCwO8yVZ4zmRnRKQxwQP3v6Y3.2', NULL, '2025-02-27 01:21:56', '2025-02-27 01:21:56'),
(23, '28', '28@ite.com.bo', NULL, '$2y$12$1EmC6EmNuCRtdhW0SxkNXOlFXgoTcEbOHD64oFv4mAvwvowOfas1.', NULL, '2025-02-27 01:50:50', '2025-02-27 01:50:50'),
(24, 'Emanuel Terceros Mondaca', 'emanuel-terceros-mondaca@ite.com.bo', NULL, '$2y$12$cujqlITQMmtZH2ft2b4o7e5sQ5H7QDB/NBnY8Ch0Kl9zNXkkA4HNq', NULL, '2025-02-27 01:52:19', '2025-02-27 01:52:19'),
(25, 'MatiasVillca', 'matiasvillca@ite.com.bo', NULL, '$2y$12$A3hmoIAp4uJ2m6rgPA/o5OSKfqagV6dpPRJQURA1PdOJs.cfBp8bW', NULL, '2025-02-27 02:15:22', '2025-02-27 02:15:22'),
(26, 'GISELVILLCA', 'giselvillca@ite.com.bo', NULL, '$2y$12$ilE1ob9TE.er./P.3jJsueTbhUJwdN4R1Ae9WD1gwi1Aie5G0t566', NULL, '2025-02-27 02:27:10', '2025-02-27 02:27:10'),
(27, 'paola', 'paola@ite.com.bo', NULL, '$2y$12$wSK3RaVc4h.GOVmdohNlQOoj2bzNCqm/ZMdtAG6y5FqfkVn0AxZSW', NULL, '2025-02-27 02:30:20', '2025-02-27 02:30:20'),
(28, 'Bayron Sánchez', 'bayron-sanchez@ite.com.bo', NULL, '$2y$12$bRFehYwHElzBj.gUaVcvRuUnIxi7FHNPJevJQmmD3lbPRq6StQPoq', NULL, '2025-02-27 02:33:35', '2025-02-27 02:33:35'),
(29, 'Silbiarosariorobles@gmail.com', 'silbiarosariorobles-at-gmailcom@ite.com.bo', NULL, '$2y$12$XDz/kOVxQLdtxC44qLRRZ.BJnMxruS9xwdiGC5MSqtHrJFIbn/Psa', NULL, '2025-02-27 02:48:46', '2025-02-27 02:48:46'),
(30, 'Aaronmendieta17', 'aaronmendieta17@ite.com.bo', NULL, '$2y$12$KADz6nmFgRSylCCY9FMraO7RXvcwmXiR6OSHehfpkv44p8HfG2LCe', NULL, '2025-02-27 03:13:15', '2025-02-27 03:13:15'),
(31, 'Yuliana Aulo', 'yuliana-aulo@ite.com.bo', NULL, '$2y$12$6eUt6AAwK.30GBG6SfISDOBeqUbxzxYOZOdIg6e8dxRdeJLN1Bufm', NULL, '2025-02-27 03:30:58', '2025-02-27 03:30:58'),
(32, 'Fernanda301', 'fernanda301@ite.com.bo', NULL, '$2y$12$NhC6sc/b8F/TnEU5D/q5ReaFrL0fGQx6NGsErzvxNG9Af9rpzNf9C', NULL, '2025-02-27 04:39:09', '2025-02-27 04:39:09'),
(33, 'Michel rejas', 'michel-rejas@ite.com.bo', NULL, '$2y$12$BSyq6QFLRg72DcZOnEvBd.76UpN8mSXYdYek6GB8Z4Oeqket8S2Ye', NULL, '2025-02-27 04:45:56', '2025-02-27 04:45:56'),
(34, 'Orcawar', 'orcawar@ite.com.bo', NULL, '$2y$12$BFMLIWTOWEV4o2JML9vwpOrJNkmZ2ETUX7Und4Ovk5ARladHbOatC', NULL, '2025-02-27 04:54:14', '2025-02-27 04:54:14'),
(35, 'Jesus Reyli', 'jesus-reyli@ite.com.bo', NULL, '$2y$12$UuY.fhwdNCWMQL5nTDR2MOeQEQPIpytVwZtVy/vlAFj1lDpcp3V1q', NULL, '2025-02-27 05:00:39', '2025-02-27 05:00:39'),
(36, 'SarzuriRamses', 'sarzuriramses@ite.com.bo', NULL, '$2y$12$p.ofDzHcohzCgwVxVjKBr.WhL5NqMa3DLKBWJp3W7Hs9Cac01sKPe', NULL, '2025-02-27 05:07:22', '2025-02-27 05:07:22'),
(37, 'Rashell', 'rashell@ite.com.bo', NULL, '$2y$12$vG.YYzh2kXrVRFe9Zf5jPuW3AU82Ijz/iXng0KEghLybEBHemMi7O', NULL, '2025-02-27 05:35:00', '2025-02-27 05:35:00'),
(38, 'Yimmi cm', 'yimmi-cm@ite.com.bo', NULL, '$2y$12$whpotubYzwK4rGYeaIefLehv6jOh966PQWMwgMInMRkyN2DkGKjsO', NULL, '2025-02-27 05:45:51', '2025-02-27 05:45:51'),
(39, 'ramsessarzuri', 'ramsessarzuri@ite.com.bo', NULL, '$2y$12$.9VA8b7cE38GEdOx7s73wu.juIK2uOyRwOoiXAU.fg.zGgbr6k.te', NULL, '2025-02-27 05:49:07', '2025-02-27 05:49:07'),
(40, 'Rigodehiroporcel@gmail.com', 'rigodehiroporcel-at-gmailcom@ite.com.bo', NULL, '$2y$12$1v1sK4ECEkqOHVI9i04K4OgHMX5FjfGGGKP2.kxkrwjAosWwzAEI6', NULL, '2025-02-27 05:50:24', '2025-02-27 05:50:24'),
(41, 'reinasarzuri', 'reinasarzuri@ite.com.bo', NULL, '$2y$12$LuxQbpV//Z4ECkCm.Nd5h.U6n/EGRtx/AUqqPOidjEEmvgwRZnObu', NULL, '2025-02-27 05:52:35', '2025-02-27 05:52:35'),
(42, 'Fernanda', 'fernanda@ite.com.bo', NULL, '$2y$12$zpmIIzNwTenrUVsbUif1XeR91N2M6AV1d/v9ClZMyyCENnas.1.LS', NULL, '2025-02-27 06:05:26', '2025-02-27 06:05:26'),
(43, 'JesusReyli', 'jesusreyli@ite.com.bo', NULL, '$2y$12$Opa3Hco7y.zwsUoTGsWdK.0tUlU1tSKDuDU8ZUp5zS8mH4iIWP/fK', NULL, '2025-02-27 06:18:23', '2025-02-27 06:18:23'),
(44, 'María Fernanda', 'maria-fernanda@ite.com.bo', NULL, '$2y$12$GihK/N9IhsqbKY0XSmTBI.fLcNiQ9gqDH/q0D.H9Jj1Enaxg.SUCq', NULL, '2025-02-27 06:25:26', '2025-02-27 06:25:26'),
(45, 'Fabio Baldelomar cespedes', 'fabio-baldelomar-cespedes@ite.com.bo', NULL, '$2y$12$x8JqDDwXG7y8ia3mzro6KekUhy/erLfgnd3.80B//81IqkrfXa3xi', NULL, '2025-02-27 06:28:49', '2025-02-27 06:28:49'),
(46, 'Cool187', 'cool187@ite.com.bo', NULL, '$2y$12$sD1EgC7H4Cl22k0L/apCb.B/7wuwnM5xO1y0NaBkoVNHxl9dwZsSC', NULL, '2025-02-27 06:33:52', '2025-02-27 06:33:52'),
(47, 'Coolsito187', 'coolsito187@ite.com.bo', NULL, '$2y$12$ZXG7EXb.CeFaeXC/2oAwaeTUDw1japbx5k2oN8A8zxt9JZXwJMmB.', NULL, '2025-02-27 06:35:37', '2025-02-27 06:35:37'),
(48, 'Emiliano1611', 'emiliano1611@ite.com.bo', NULL, '$2y$12$uaZUX3qdZUnIF4.hBnuJNe3V4hb1zXZFScorbYSN2whjP.u.1AIc2', NULL, '2025-02-27 06:36:46', '2025-02-27 06:36:46'),
(49, 'soledad', 'soledad@ite.com.bo', NULL, '$2y$12$uZHA7WfpM7rrNZMleg1sLu0WiTU/IGgdbZKuLjo2tDL8vwvjRBHIG', NULL, '2025-02-27 06:42:14', '2025-02-27 06:42:14'),
(50, 'mathias', 'mathias@ite.com.bo', NULL, '$2y$12$G1HNewJ4sxKbjfkSBosL3.VyvxqVOUBFIQGFOWQxYHIvZPttJ0EAW', NULL, '2025-02-27 06:44:02', '2025-02-27 06:44:02'),
(51, 'Emiliano16118', 'emiliano16118@ite.com.bo', NULL, '$2y$12$wgN1CwC5wchtzJTRnfCBhuh9/NnicaMaFLtFyKlnqBo4Y.Qs5bpBC', NULL, '2025-02-27 06:44:19', '2025-02-27 06:44:19'),
(52, '020816sami', '020816sami@ite.com.bo', NULL, '$2y$12$1OAzVl0mk9bsosyuejCudeRKXUA42gjPJfqzXwUVfN6fwb8rUBmGK', NULL, '2025-02-27 06:46:34', '2025-02-27 06:46:34'),
(53, 'ANDRES', 'andres@ite.com.bo', NULL, '$2y$12$dcZB9pq0YBIMXRqEaNoiG.h8I2xsdu8WqSzBiRceE.Ag7t5NuxBFa', NULL, '2025-02-27 06:52:00', '2025-02-27 06:52:00'),
(54, 'Laura962', 'laura962@ite.com.bo', NULL, '$2y$12$qXwbeRskCTeDrY1Uhi5y4egVGN60TBp7leDalEetjXWZ7xSnR5bLK', NULL, '2025-02-27 06:52:14', '2025-02-27 06:52:14'),
(55, 'Javier', 'javier@ite.com.bo', NULL, '$2y$12$8EiszInimP6Op2heoUur7OayOI25vWFYCBMRDvcp8o.LIKL3q.o0q', NULL, '2025-02-27 06:53:00', '2025-02-27 06:53:00'),
(56, '60992931', '60992931@ite.com.bo', NULL, '$2y$12$ejU6lyNs6j6UaVheSQ0qGO2BblsdiUqjXaQlaWOu5cMsaH7v2xtve', NULL, '2025-02-27 06:56:30', '2025-02-27 06:56:30'),
(57, 'Valeria', 'valeria@ite.com.bo', NULL, '$2y$12$gnnvzwatM/aWNMZZjSmBEehw7GOCt.uD6sVUtjHJkgpkd6ZygMJHC', NULL, '2025-02-27 07:03:49', '2025-02-27 07:03:49'),
(58, 'Valeria Bernal', 'valeria-bernal@ite.com.bo', NULL, '$2y$12$lIw4cMDiaS.mh9K5q1wkuO56Qy7kU0lQBbihAI2Ac.YYU/9Owy0xy', NULL, '2025-02-27 07:04:09', '2025-02-27 07:04:09'),
(59, 'danae', 'danae@ite.com.bo', NULL, '$2y$12$UnaPuxUJJSN9fdopxffsTuqVTnmfZe6ZANttcZAs.Wd9SEx5i/ufi', NULL, '2025-02-27 07:04:30', '2025-02-27 07:04:30'),
(60, 'Aaronjaldin', 'aaronjaldin@ite.com.bo', NULL, '$2y$12$RWysFLgGlFAGVwILsXFxj.HFg3.56vfJcxZbt45P/5AlTYHPPmdg2', NULL, '2025-02-27 07:06:56', '2025-02-27 07:06:56'),
(61, 'Lunelisaavedra', 'lunelisaavedra@ite.com.bo', NULL, '$2y$12$P52tq24ojGzU59TwgVA6suXsuI3eM2rC53mcytxBbvw9Byoginn6G', NULL, '2025-02-27 07:10:57', '2025-02-27 07:10:57'),
(62, 'Renato', 'renato@ite.com.bo', NULL, '$2y$12$/yZI5nq2kux2dbqCShSF8ObBIbEWH1ZOAagNiRzPs3KlYv8/3zlAm', NULL, '2025-02-27 07:16:40', '2025-02-27 07:16:40'),
(63, 'Franco', 'franco@ite.com.bo', NULL, '$2y$12$k4r1fPK4rA73f0xfNveYV.h.qILRp2s.4hqr3PiZeMhrJ3wXvIRWO', NULL, '2025-02-27 07:19:48', '2025-02-27 07:19:48'),
(64, 'franki', 'franki@ite.com.bo', NULL, '$2y$12$rBMXs0MVmPr.LdoNBB9xz.d0dhKmCsBCfUoPRAXWQkxSl2l8amts6', NULL, '2025-02-27 07:21:13', '2025-02-27 07:21:13'),
(65, 'Samuel', 'samuel@ite.com.bo', NULL, '$2y$12$HVK4KHZbrNCFxNO7zdwSOeVSeHAwGbfSuZzO7pBKtTYozZxU6DpUe', NULL, '2025-02-27 07:28:03', '2025-02-27 07:28:03'),
(66, 'andyluca', 'andyluca@ite.com.bo', NULL, '$2y$12$OaD.b7x0wG1G8yUH.oR5tOz0wfweCZZtCApFwggE3yfzz7.g5Wxw6', NULL, '2025-02-27 07:28:06', '2025-02-27 07:28:06'),
(67, 'Matías Herrera carrillo', 'matias-herrera-carrillo@ite.com.bo', NULL, '$2y$12$SBylmkHFSiBCGAGXXmQQcum/vfTLFAbhZxYHDTqlQB3s9.G/vL3A6', NULL, '2025-02-27 07:30:31', '2025-02-27 07:30:31'),
(68, 'Aaronjaldinteran', 'aaronjaldinteran@ite.com.bo', NULL, '$2y$12$hnE0ZwaCjUQAvZ.l24Ge4e1Xil3DuGsqpTbi4UFjQmX21.yAYMo7S', NULL, '2025-02-27 07:32:55', '2025-02-27 07:32:55'),
(69, 'anaomi', 'anaomi@ite.com.bo', NULL, '$2y$12$kdVdUVwsdDNG1.KrVymIEeYRCxgSisC5KwPlRKYRXaW5Aesc/tm6K', NULL, '2025-02-27 07:34:43', '2025-02-27 07:34:43'),
(70, 'Aaronangellaime', 'aaronangellaime@ite.com.bo', NULL, '$2y$12$uM.u/0wsGSHhhIuyorBCzOPZf1/XaMns3.M3.4tncu4/yefg1zMqG', NULL, '2025-02-27 07:38:05', '2025-02-27 07:38:05'),
(71, 'MartínHerreraCarrillo', 'martinherreracarrillo@ite.com.bo', NULL, '$2y$12$uVQX65UuwsIyjjSBJhuFiuRwOqL10nMyWcdm4ZVGOwM4c1x2bLH8q', NULL, '2025-02-27 07:41:54', '2025-02-27 07:41:54'),
(72, 'Martín Herrera Carrillo', 'martin-herrera-carrillo@ite.com.bo', NULL, '$2y$12$vTO.TkJFU1zkW6CLUKI7FupGlxz55FjLhoGeKYamHlzCOgoufpQWW', NULL, '2025-02-27 07:58:57', '2025-02-27 07:58:57'),
(73, 'Martín Herrera c', 'martin-herrera-c@ite.com.bo', NULL, '$2y$12$KcL2eN5X000G/LSRkf.BiuJvZNh4YfHsIYFPxgTlvwuVj/JR3ckfG', NULL, '2025-02-27 08:09:05', '2025-02-27 08:09:05'),
(74, 'Sinespacios', 'sinespacios@ite.com.bo', NULL, '$2y$12$VT0GrdQpRTh/JvtAWc9CheXuCkAo/1a1W7MkyNJOHqoJFfki/T.GC', NULL, '2025-02-27 20:56:58', '2025-02-27 20:56:58'),
(75, 'Sin espacios', 'sin-espacios@ite.com.bo', NULL, '$2y$12$oGsdK4HqaoEPbPijzQjFBONLijfTk4QLEjJby6fs1Mm9v/xbcEW1W', NULL, '2025-02-27 21:21:54', '2025-02-27 21:21:54'),
(76, 'Angélica', 'angelica@ite.com.bo', NULL, '$2y$12$dKLQoDkcM3D/aD/GlSdWSOL2WglNHnLAJlIcxOy.vMK4nMD4ezFCS', NULL, '2025-02-28 20:10:13', '2025-02-28 20:10:13'),
(77, 'Angélica murga pinto', 'angelica-murga-pinto@ite.com.bo', NULL, '$2y$12$TPvnBOmouqsWYx79QYu4p.uw2LoUbV7WL0gZ4xf0q4KrMIL2ihDma', NULL, '2025-02-28 20:11:19', '2025-02-28 20:11:19'),
(78, 'karoltorrez506@gmail.com', 'karoltorrez506-at-gmailcom@ite.com.bo', NULL, '$2y$12$kuYU4RXMXjYbDalGEshoVOUDVPitWnegPvUucOcWnTEeMA8d3kJJ2', NULL, '2025-03-01 23:28:58', '2025-03-01 23:28:58'),
(79, 'Michel', 'michel@ite.com.bo', NULL, '$2y$12$4yR8V4Q0pHbCsxtK3JX0g.06oekb3DBCItRAKzygGpE140lOQCTWG', NULL, '2025-03-06 23:13:31', '2025-03-06 23:13:31'),
(80, 'informaciones.ite@gmail.com', 'informacionesite-at-gmailcom@ite.com.bo', NULL, '$2y$12$PJw7tLoqwYXii3rmeXho7ujjph/ivOGPVDL20.U4xbNz1UR/zfCNq', NULL, '2025-03-07 04:12:54', '2025-03-07 04:12:54'),
(81, 'Eliana', 'eliana@ite.com.bo', NULL, '$2y$12$258K3vcUp4Aov8VD7dkZ9OqTwOlhaxlzz3b79/Q/o0C/u83jyUMC2', NULL, '2025-03-07 05:55:37', '2025-03-07 05:55:37'),
(82, 'María', 'maria@ite.com.bo', NULL, '$2y$12$ofQhzESI2fC4kFfRX21aYuV1PVlQt42RC4A4HEeQh8tsKVE9yGbZu', NULL, '2025-03-08 02:01:22', '2025-03-08 02:01:22'),
(84, 'MariaDuarte', 'mariaduarte@ite.com.bo', NULL, '$2y$12$VEQsdvlCfpoJcivm7yvJL.o5SzF5hSN7wx2txB0ABujoI.twfZ6qi', NULL, '2025-03-08 02:01:48', '2025-03-08 02:01:48'),
(85, 'Reyna margarita', 'reyna-margarita@ite.com.bo', NULL, '$2y$12$G5t9c7EJH/B6f7.3T92Xhear3WF/2KPnaskGWJ30qJBZ/Oyky1Mou', NULL, '2025-03-08 05:10:01', '2025-03-08 05:10:01'),
(86, 'Michelleestrada', 'michelleestrada@ite.com.bo', NULL, '$2y$12$XXlVQC//h8NRyW4/uce.WO1G.JREHbg35Tt7NLNA/.isOPZhFHVFS', NULL, '2025-03-08 07:01:03', '2025-03-08 07:01:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jugadors`
--
ALTER TABLE `jugadors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jugadors_numero_jugador_unique` (`numero_jugador`),
  ADD KEY `jugadors_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pays_jugador_id_foreign` (`jugador_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jugadors`
--
ALTER TABLE `jugadors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadors`
--
ALTER TABLE `jugadors`
  ADD CONSTRAINT `jugadors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_jugador_id_foreign` FOREIGN KEY (`jugador_id`) REFERENCES `jugadors` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
