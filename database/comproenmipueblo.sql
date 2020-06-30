-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2020 a las 00:20:48
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mpd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` smallint(5) UNSIGNED NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `tipo`, `imagen`) VALUES
(1, 'Tienda de Alimentos', 'tiendadealimentos.jpg'),
(2, 'Hogar y Tecnologia', 'hogarytecnologia.jpg'),
(3, 'Indumentaria y Calzado', 'indumentariaycalzado.jpg'),
(4, 'Automotor', 'automotor.jpg'),
(5, 'Servicios', 'servicios.jpg'),
(6, 'Libreria y Arte', 'libreriayarte.jpg'),
(7, 'Ferreterias y Construccion', 'ferreteriasyconstruccion.jpg'),
(8, 'Cuidado Personal y Limpieza', 'cuidadopersonalylimpieza.jpg'),
(9, 'Fabrica, Depositos y Transporte', 'fabricasdepositosytransporte.jpg'),
(10, 'Bares, Rotiserias y Restaurantes', 'baresrotiseriasyrestaurantes.jpg'),
(11, 'Ocio y Entretenimiento', 'ocioyentretenimiento.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercios`
--

CREATE TABLE `comercios` (
  `id_comercio` mediumint(5) UNSIGNED NOT NULL,
  `id_rubro` smallint(5) UNSIGNED NOT NULL,
  `titular` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `dni` int(11) DEFAULT NULL,
  `nombre_fantasia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `barrio` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `whatsapp` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_linea` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(75) COLLATE utf8_spanish_ci DEFAULT NULL,
  `web` varchar(110) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horario` varchar(180) COLLATE utf8_spanish_ci DEFAULT NULL,
  `activo` enum('S','N') COLLATE utf8_spanish_ci DEFAULT NULL,
  `usuario` varchar(15) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercios`
--

INSERT INTO `comercios` (`id_comercio`, `id_rubro`, `titular`, `dni`, `nombre_fantasia`, `direccion`, `barrio`, `whatsapp`, `tel_linea`, `email`, `web`, `horario`, `activo`, `usuario`) VALUES
(170, 13, 'Ezequiel Salinas', NULL, 'CALA-MAR', 'Montevideo 1745 ', '13', '1132683440', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(171, 13, 'Mario ', NULL, 'El Nacional ', 'Alem 548', '13', '', '4775850 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(172, 13, 'Carmen Dominga', NULL, 'El Marcadito Del Barrio ', 'Victoria Ocampo 1210', '24', '1168152686', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(173, 53, 'David ', NULL, 'Verdulería David', 'Avellaneda 2056 ', '1', '2227475523', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs ', '', 'Administrator '),
(174, 22, 'Maru Rizzo', NULL, 'Maru Rizzo', 'Bernardo Irigoyen 29', '1', '1165776495', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(175, 24, 'Maximiliano/Rocio ', NULL, 'Ferretodo ', 'Sarmiento 2954', NULL, '', '4770181 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(176, 25, 'Eliseo Ciliberti', NULL, 'Carniceria San Jorge', 'Sarmiento 982 ', '17', '1140421743', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(178, 25, 'Julio Mallona ', NULL, 'La Familia - Granja y Fca de Pasta', 'San Martín 1', '1', '', '4776795 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(179, 10, 'SOFIA RIVAS ', NULL, 'Cuando Quieras', 'Independencia 137 ', '1', '', '4773041 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(180, 13, 'Daniel', NULL, 'Almacen Tino', 'Dagnilo 566 ', '13', '112888154 ', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(181, 57, 'Marina Sagardoy Bornetto', 39743689, 'El Almacén del Repostero', 'Belgrano 1830 ', '1', '1136630645', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(182, 14, 'Taruselli Santiago Marcelo', NULL, 'Grafica m&m - Impresiones ', 'Independencia 261 ', '1', '1132471682', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(183, 13, 'Valado, Jose Dario', 18291602, 'Caramelos - Kiosco', 'Hipólito Yrigoyen 310 - Al costado del Colegio San Jose ', '13', '', '4773785 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(184, 57, 'Maximiliano Macia ', NULL, 'Cybermax', 'Alisna 69 ', '1', '1139369850', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(185, 49, 'Alfonsina Grand ', NULL, 'Aibar ', 'Sarmiento 1975', '1', '', '4774209 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(186, 49, 'Diego Netto ', NULL, 'Buffet de la U', 'Arias esq Emilio Mitre', '40', '1133480097', '', 'NULL', 'FB / INSTA: Buffet de la U Buffetde.la.u', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(187, 15, 'Pablo ', NULL, 'Encendido Marcos Paz', 'Dr. Marcos Paz 1297 ', NULL, '1130517674', '', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(188, 34, 'Mariñansky Yesica Solange ', 36817631, 'Espacio Bebe', 'Sarmiento 2343', '1', '111535917 ', '', 'yesicasolange.m@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(189, 57, 'Lorena Edith Gonzalez ', 27441241, 'Katia Cotillón', 'Balcarce 2015 ', NULL, '1135966079', '', 'lorenacarusso@hotmail.com ', 'FB: Katia Cotillon', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(190, 11, 'Rosaura Encarnación Gimenez ', 31415300, 'Remis Lucas ', 'Arturo Illia 101', NULL, '1169525960', '', 'remislucas1010@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(191, 57, 'Pedro Mallona ', 26942203, 'Pc Service Comp ', 'Avellaneda 2002 ', '1', '', '4771640 ', 'pcservicecomp@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(192, 57, 'Nuria Barrozo ', 36136986, 'Stand By Peluqueria ', 'Alsina 68 ', NULL, '', '4775582 ', 'nuriabarrozo56@gmail.com', 'FB: Standby Peluqueria', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(193, 57, 'Patricia Ines Marciano', 17054575, 'Plantas y Macetas Artesanales ', 'Feria Itinerante Municipal', NULL, '1161483214', '', 'marcianopatriciaines174@gmail.com ', 'FB: Patricia Marciano ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(194, 13, 'Blanca Beatriz Escobar', 93026150, 'Panificados Beatriz ', 'Feria Itinerante Municipal', NULL, '1121568029', '', 'blancapanificados@gmail.com ', 'FB: Blanca Escobar', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(195, 53, 'Maria Beltran Cardenas', 93007304, 'Verduleria Maria', 'Feria Itinerante Municipal', NULL, '1169337260', '', 'mariaverduleriaferia@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(196, 57, 'Mariano Antonio Isarralde ', 11208246, 'Correas Centenario', 'Centenario 146', '1', '', '4775412 ', 'info@correascentenario.com.ar ', 'Instagram: Correas Centenario ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(197, 57, 'Gabriel Eugenio Morali', 27930193, 'Optica Prisma ', 'Melgar 2019 ', NULL, '', '4772622 ', 'info@optoca-prisma.net', 'NULL', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(198, 48, 'Mirta Susana Aguilera ', 13111388, 'Tienda Los Tios ', 'Aguero 157', '1', '1141777577', '', 'lostiostienda@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(199, 57, 'Jose Raul Yañez ', 11466220, 'Sanitarios Mi Casa', 'San Martin 2', '1', '', '4776891 ', 'sanitariosmicasa@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(200, 34, 'Maria Veronica Fasano ', 32255568, 'By Veronica ', 'Sarmiento 3093', '1', '1157207858', '', 'verodiego32@gmail.com ', 'Facebook: Veronica Fasano By Veronica ', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(201, 57, 'Eduardo Bernardi', 7661897, 'Textil Marcos Paz ', 'Sarmiento 2084', '1', '', '4771048 ', 'monicasanchez.tex@hotmail.com ', 'Facebook: Textil Marcos Paz ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(202, 57, 'Marcelo Matias Vallone', 33879819, 'Planta de Grabado Marcos Paz', 'Mendoza 60', '1', '', '4771166 ', 'grabadosmarcospaz@gmail.com ', 'Facebook: Planta de Grabados Marcos Paz Intagram: centro_grabadodeautopartes', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(203, 57, 'Juan Manuel Timo', 24717365, 'Aberturas San Marcos', 'Doctor Marcos Paz 2205', NULL, '', '4770802 ', 'distrinuidorasanmarcos@yahoo.com.ar ', 'Facebokk: DSMABERTURAS Instagram: Aberturas San Marcos', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(204, 15, 'Mauro Nardelli', 28253552, 'Repuestos Fama', 'Dr Marcos Paz 614 ', NULL, '', '4776817 ', 'repuestosfama@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(205, 48, 'Jonny Martinez', 92692432, 'Ekilibrio Indumentaria', 'Sarmiento 1867', '1', '', '4772360 ', 'zul.rtellez@gmail.com ', 'Facebook/Instagram Ekilibrio Indumentaria ', 'Lun a Sab de 9:00 a 13:00hs - Delivery hasta las 13:00hs', '', 'Administrator '),
(206, 13, 'Valeria Giselle Fernandez ', 32465394, 'Jose', 'Eva Duarte 292', NULL, '1169077459', '', 'Medranomicaela1995@hotmail.com', 'FB Valeria Fernandez', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(207, 15, 'Horacio Anibal Ruiz ', 10634198, 'REPUESTOS RUIZ', 'Lavalle 2115', NULL, '', '4771570 ', 'REPRUIZ2115@HOTMAIL.COM ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(208, 57, 'Miguel Fittipaldi ', 17054520, 'R40Bike ', 'Dr.M.Paz 2031 ', NULL, '', '4774453 ', 'angeles.du@hotmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(209, 57, 'SILVIA SUSANA CUGNONI ', 13748374, 'GIOIA SEGUROS ', 'BARTOLOME MITRE 278 ', NULL, '', '4772104 ', 'oficinagioia@gmail.com', 'FB Gioia Pas', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(210, 44, 'Leandro Crespi', 28839378, 'Oeste Baires SRL', 'Ruta 40 (ex. 200) Km 48.200 ', NULL, '', '4771935 ', 'administracion@e-shell.com.ar ', 'FB /shellmarcospazar - IG@shellmarcospaz', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(211, 13, 'Liu Wei ', 95375353, 'Supermercado Bianka ', 'scalabrini ortiz 146', NULL, '1149604800', '', 'sabry_saavedra@hotmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(212, 57, 'José Luis Pareta', 11749003, 'Distribuidora Pareta', 'Sarmiento 2055', NULL, '', '4771083 ', 'paretadistribuidora@gmail.com ', 'FB Distribuidora Pareta - IG Merceria pareta', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(213, 13, 'Jorge Antonio Martinez', 21500183, 'Almacén La Trocha ', 'Mendoza 766 ', NULL, '1126419337', '', 'georgezr250@gmail.com ', 'FB Almacen La Trocha', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(214, 57, 'Alicia Susana Mendes Canelo ', 23047970, 'Foto Dany ', 'Sarmiento 2001', NULL, '1155621548', '', 'fotoestudiodany@yahoo.com.ar', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(215, 13, 'Sergio Baez ', 28006806, 'Shekinah', 'Libertad 60 ', NULL, '1155894725', '', 'NULL', 'FB Shekinah ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(216, 57, 'Laura Edith González', 21010750, 'Mercería Las Violetas ', 'Sarmiento 3095', NULL, '2227616406', '', 'lgonzalear@yahoo.com.ar ', 'FB Merceria Las Violetas - IG @mercerialasvioletas', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(217, 57, 'Gisela Ledesma', 27130667, 'Gisela Ledesma Peluquería ', 'San Martín 71 ', NULL, '1136379460', '', 'ledesmajennifer65@gmail.com ', 'FB Peluquería Gisela Ledesma - IG @gigi_donata', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(218, 12, 'Ana María Rodriguez ', 5868475, 'Zapatería Rodriguez ', 'Sarmiento 2198', NULL, '', '4772800 ', 'zaparodriguez@hotmail.com ', 'FB Zapatería Rodriguez', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(219, 57, 'Norma Beatriz Esteves ', 17054591, 'Norma Esteves Estilista ', 'Roque Saenz Peña 211', NULL, '', '4772378 ', 'norma.esteves@hotmail.com ', 'FB Norma Esteves Peluquería - IG Norma Esteves Peluquería ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(220, 57, 'Carlos Nicolas Teglia ', 37556850, 'The Monkeys Growshop', 'Sarmiento 1758', NULL, '1136482876', '', 'monkeysgrow@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(221, 48, 'Agustin Mariano Postolov', 30137560, 'Agustin Mariano Postolov - Equipo e Indumentaria Deportiva', 'Sarmiento 1985', NULL, '', '4777302 ', 'Marianopostolov@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(222, 57, 'Alejandra Garcia', 26421390, 'Digital Center', 'Aguero 81 ', NULL, '', '4771088 ', 'nikobouvet@hotmail.com', 'FB digitalcenterfoto - IG @digitalcenter', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(223, 49, 'Pablo Ferrari Bonofiglio', 24459776, 'Bonafide', 'INDEPENDENCIA 184 ', NULL, '1158450401', '', 'Bonafidemarcospaz@gmail.com ', 'FB Bonafide Marcos Paz', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(224, 34, 'Romina Norbedo', 32912652, 'Laca Marcos Paz ', 'Alem 565', NULL, '1132978246', '', 'romi_norbedo@hotmail.com', 'FB Laca Marcos Paz', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(225, 57, 'Pablo Alejandro Longhitano', 23333251, 'Depósito', 'Luis Beltran y Enrique Rosas', NULL, '1141684031', '', 'pabloysandra1999@hotmail.com', 'FB Pablo Alejandro Longhitano - IG Pablo Longhitano ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(226, 18, 'Matias Alberto Ambrosio ', 30098759, 'Neumáticos El Tanito 3', 'Dr. Marcos Paz 1136 ', NULL, '1126722051', '', 'neumaticos35@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(227, 57, 'Carlos Javier Aijenbon', 36797367, 'Dormibien ', 'Dr. Marcos paz 908', NULL, '', '4772071 ', 'dormibiencolchones@hotmail.com', 'FB Dormibien Colchones - IG @dormibienmpaz', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(228, 29, 'Angel Gabriel Díaz', 11331229, 'Embalajes Las Toscas', 'Bernardo de Irigoyen 440', NULL, '', '4772463 ', 'embalajes_lastoscas@hotmail.com ', 'FB Embalajes Las Toscas Daiana', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(229, 48, 'Laura Silvana Becerra ', 22834414, 'Freakstyle', 'Pellegrini 88 ', NULL, '', '4775578 ', 'laurafreakstyle@hotmail.com ', 'IG @freakstyle2020', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(230, 57, 'Andres Fitzi', 17298414, 'San Andres', 'Sarmiento 3076', NULL, '', '4774435 ', 'fitziandres@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(231, 13, 'Melany Batuch ', 38827032, 'Almazen Dietética ', 'AgÃ¼ero 58', NULL, '1123624178', '', 'sanburgos@hotmail.com.ar', 'FB Almazen Dietetica - IG @almazen_dietetica', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(232, 13, 'Fabian Algieri', 16334692, 'Fiambreria La Antigua ', 'San Martín 93 ', NULL, '1161732817', '', 'marcelatincho09@gmail.com ', 'FB Marcela Pita ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(233, 57, 'Angélica Merchan', 11749360, 'MERCHAN ANGELICA', 'Independencia 141 ', NULL, '', '4773126 ', 'merchanangelica0@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(234, 13, 'Linyu Huang ', 94013526, 'MAYOR SUPER ', 'Piedras 51', NULL, '', '4731013 ', 'gustavo199096@yahoo.com.ar', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(235, 25, 'Loreley Rodríguez ', 95450860, 'Marlu ', 'Sarmiento 1716', NULL, '', '4770881 ', 'wgggioia@gmail.com', 'FB Loreley Rodríguez', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(236, 49, 'Hernán Azcune ', 8273434, 'Villa Mercedes', 'Montesquiu 908', NULL, '2227616900', '', 'info@espaciovmercedes.com.ar', 'FB Espacio Villa Mercedes ', 'de Lun a Sab de 9:00 a 13:00hs', '', 'Administrator '),
(237, 57, 'Yanina Lopez', 29762068, 'Manicuría Integral', 'Pueyrredón 1030 ', NULL, '1163083228', '', 'lopezyanina733@gmail.com', 'FB Manicuriaintegral - IG Manicuríaintegral36 ', '9 a 13hs. (lunes a Viernes) â€“ 10 a 13hs (Sábados) ', '', 'Administrator '),
(238, 13, 'Li Xiufang', 94840711, 'Mini Mercado', 'Sarmiento 2168', NULL, '1156550065', '', 'iara.uribao@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(239, 48, 'Yamila Soledad Gonzalez ', 34978915, 'Pido Gancho ', 'El Rosillo 1558 ', NULL, '1156211626', '', 'yamil_sg@hotmai.com ', 'FB Pido Gancho By Yamila - IG @pidogancho.byyamila', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(240, 57, 'Maria Angelica Orquin ', 13748090, 'Agencia de Loteria Orquin ', 'Aguero 115', NULL, '', '4770608 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(241, 48, 'Martin Condori', 30429927, 'Principitos ', 'Sarmiento 2155', NULL, '', '4776410 ', 'martin2638@hotmail.com', 'FB Principitos Joel Martin - IG @joel21 ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(242, 57, 'Sandra Elena Raimundi ', 17969323, 'Pet Shop Scooby ', 'AgÃ¼ero 158 ', NULL, '1165559922', '', 'pet.scooby.marcospaz@gmail.com', 'Pet Shop Scooby ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(243, 48, 'Silvana Teresa Bibas', 23627103, 'Utopía', 'Carlos Pellegrini 119 ', NULL, '', '4776258 ', 'silbibas@yahoo.com.ar ', 'FB Utopia Utopia - IG @utopiamarcospaz', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(244, 53, 'David Osvaldo Cardoso ', 24822596, 'Verduleria David', 'Avellaneda 2056 ', NULL, '2227475523', '', 'doguitodavid@hotmail.com', 'FB Verdulería David ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(245, 57, 'Angel Daniel Panci', 18011553, 'P&amp;P-house ', 'Sarmiento 1865', NULL, '', '4776531 ', 'pyphouse@live.com.ar', 'FB P&amp;P-house \"Una casa para vos y tu casa\" - IG ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(246, 13, 'Walter Fabian Caputo', 29563061, 'Minimercado WAL-MAR ', 'San Martin 552', NULL, '1140826654', '', 'gri.1984@hotmail.com', 'FB Minimercado Wal-Mar', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(247, 13, 'Carmen Aguirre', 16950299, 'Supermercado Mi Chiche el 2 ', 'San Martin 167', NULL, '', '4770085 ', 'NULL', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(248, 14, 'Santiago Taruselli', 13748343, 'M&amp;M Librería, Maxikiosco y Gráfica', 'Independencia 261 ', NULL, '', '4776368 ', 'mymdigital@yahoo.com.ar ', 'FB /graficamym - IG @graficamym ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(249, 57, 'Roberto Corvalan', 92462523, 'Oficina de Seguros Roberto Corvalan ', 'Sarmiento 2255', NULL, '', '4772480 ', 'marcospaz@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(250, 14, 'Daniela Hurt', 31653697, 'Librería y Artística Viva La Pepa ', 'El Malacara 2315', NULL, '', '4988392 ', 'libreriayartisticavivalapepa@gmail.com', 'FB Libreria y artistica viva la pepa - IG Libreria viva la pepa ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(251, 57, 'Sandra Chiesa ', 21471298, 'Agata Accesorios', 'Pellegrini 123', NULL, '', '4770378 ', 'sandri_92_04@hotmail. com ', 'FB Agata Acces - IG Agata acces ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(252, 13, 'Mauro Bianchi ', 36315442, 'Maxikiosco Stop ', 'Salta 106 ', NULL, '1158389359', '', 'maurodbianchi@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(253, 13, 'Federico Jose Abreu ', 28803153, 'Almacén Lo De Blas', 'Piedras 201 ', NULL, '1168951942', '', 'almacenlodeblas@gmail.com ', 'FB almacenlodeblas', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(254, 13, 'Liqin Wu', 94514973, 'El Nuevo Palacio', 'Bartolomé Mitre 211 ', NULL, '', '4771920 ', 'wubety8010@gmail.com', 'FB elnuevopalacio marcospaz ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs -', '', 'Administrator '),
(255, 13, 'Liqin Wu', 94514973, 'Biank ', 'Monteagudo 222', NULL, '', '4771587 ', 'wubety8010@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(256, 48, 'Paola Alejandra Garzon', 29563141, 'Renatta ', 'Independencia 210 ', NULL, '', '4773167 ', 'paolagarzon1302@gmail.com ', 'FB Renatta Marcos Paz - IG @renattamarcospaz', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(257, 19, 'Mengping Chen ', 95296285, 'CHEN Supermercado ', 'San Martin 455', NULL, '1140300904', '', 'gustavo199096@yahoo.com.ar', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(258, 34, 'Alejandro Fabian Basualdo ', 18188455, 'Perfumeria Babys', 'Sarmiento 2116', NULL, '', '4776438 ', 'perfumeriassbabys@hotmail.com ', 'IG @perfubabys', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(259, 48, 'Victoria Gonzalez ', 28866497, 'Las Lulas ', 'Independencia 255 ', NULL, '1150613407', '', 'vitogonzalez11@gmail.com', 'IG@laslulasindumentaria ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(260, 48, 'Judit Rivas ', 27096881, 'No Me Olvides ', 'Independencia 180 ', NULL, '2227473189', '', 'judit_rivas@hotmail.com ', 'IG @nomeolvides_lasheras', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(261, 10, 'Cynthia Andrea Paez ', 22795925, 'GRIDO ', 'Avellaneda 1965 ', NULL, '3515206060', '', 'cynpaez@hotmail.com ', 'FB Grido Marcos Paz ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(262, 49, 'Ulises Damian Diez', 30887743, 'El Gato Negro ', 'San Martin 829', NULL, '1158254135', '', 'uli_diez@hotmail.com', 'FB El Gato Negro', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(263, 58, 'Denis Ricardo Rodríguez ', 25509113, 'HENDEL HOGAR S.A. ', 'Sarmiento 1959', NULL, '', '4774000 ', 'denisr@hendel.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(264, 58, 'Denis Ricardo Rodríguez ', 25509113, 'HENDEL HOGAR S.A. ', 'Sarmiento 1933', NULL, '', '4774000 ', 'denisr@hendel.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(265, 59, 'Mariel Albanessi', 13689649, 'ALBANESSI COMPUTERS ', 'Sarmiento y Pellegrini', NULL, '8102680054', '', 'diego@albanessi.com.ar', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(266, 48, 'Mirta Liliana Flores', 21793943, 'Tienda Tomi ', 'San Martín 743', NULL, '1169575027', '', 'gustavo199096@yahoo.com.ar', 'NULL', '9 a 13hs. (lunes a Viernes) â€“ 10 a 13hs (Sábados) ', '', 'Administrator '),
(267, 13, 'Celia Echave', 25619972, 'MiniSu', 'España 1648 ', NULL, '', '4770694 ', 'ferde4loto@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(268, 25, 'Osvaldo Carlos Alberto Arnaiz ', 22274844, 'El Palacio de la Carne', 'Piedras 60', NULL, '1157416243', '', 'Pao_16.82@hotmail.com.ar', 'FB Palacio de la carne Albertelli_arnaiz', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(269, 57, 'Matias Senestro ', 27457719, 'Administradora Las Hojas S.A. ', 'Ruta 6 Km. 129', NULL, '1122384060', '', 'lashojasclubdecampo@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(270, 22, 'Virginia Alderete ', 16404816, 'Panificados Artesanales Virginia', 'Alemania 1106 ', NULL, '1140726057', '', 'virgialderete@gmail.com ', 'FB Virginia Alderete - IG Virginia Alderete ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(271, 14, 'Romina Lopez', 35406549, 'Librería Planeta Papel', 'Pellegrini 724', NULL, '1150559812', '', 'LIBRERIAPLANETAPAPEL@GMAIL.COM', 'FB /libreriaplanetapapel/ - IG @libreriaplanetapapel', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(272, 14, 'Juan Osbaldo Segovia', 32711226, 'Cyber Sheena', 'Carlos Gardel 482 ', NULL, '2204983948', '', 'cybersheena@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(273, 15, 'Nuri Olga Rossi ', 17481253, 'Accesorios Narel Arai ', 'Sarmiento 2736', NULL, '1135712448', '', 'accesoriosnarelarai@hotmail.com ', 'FB accesoriosnarelarai - IG accesoriosnarelarai ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(274, 48, 'Conte Mariela ', 23793804, 'Candor Infinito ', 'Avellaneda 2018 ', NULL, '', '4774462 ', 'conte-mariela@hotmail.com ', 'FB Candor Infinito - IG Candor Infinito ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(275, 57, 'Elisabet Aquino ', 17567046, 'NUEVO HOTEL LOS AROMOS', 'JUAN DOMINGO PERON 664', NULL, '', '4775788 ', 'NULL', 'FB NUEVO HOTEL LOS AROMOS - IG HOTELLOSAROMOS ', 'NULL', '', 'Administrator '),
(276, 57, 'Daiana Bouchet', 34216299, 'Forrajería', 'Libertad 2129 ', NULL, '1156017140', '', 'daianabouchet07@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(277, 24, 'Gustavo Javier Schiaffi ', 18320835, 'Ferretería El Esquía', 'Avellaneda 1683 ', NULL, '', '4771980 ', 'ferreteriaelesquia@hotmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(278, 37, 'Juan Sebastián Casco', 25149780, 'Frenos y Embragues San Marcos ', 'Alem 291 y esq ruta 40', NULL, '', '4771769 ', 'frenos y embraguessanmarcos@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(279, 57, 'Leandro Chautemps ', 24190045, 'Leandro Chautemps ', 'Balcarce 2035 ', NULL, '', '4773219 ', 'consultorioftalmo@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(280, 57, 'Maria Aranzazu Sanchez', 23047878, 'Consultorio Aguero', 'AgÃ¼ero 64', NULL, '', '4771455 ', 'consultorioaguero64@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(281, 57, 'Esteban Arturo Deagustini ', 25577119, 'Chacinados Los Domos', 'El gavilán 1053 ', NULL, '1137918587', '', 'estebandea@gmail.com', 'FB /edeagustini - IG @deagustiniesteban ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(282, 13, 'Marcia Del Castillo ', 35723665, 'Variette de Sabores ', 'Tacuari 58', NULL, '1140856861', '', 'marciana.andromeda@gmail.com', 'FB Variette de Sabores', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(283, 57, 'Marina Raquel Ledesma ', 24814082, 'Marina Ledesma Estilista', 'Fogón 838 ', NULL, '1161752120', '', 'abrilyjuli17 @gmail.com ', 'FB Marina Ledesma Estilista - IG @marinarl 73 ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(284, 14, 'Monica Maria Albornoz ', 20067076, 'Atrevete a soñar', 'Sarmiento 1729', NULL, '1169420864', '', 'atrevetemarcospaz@gmail.com ', 'FB Atrevete a soñar - IG Atrevete a soñar ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(285, 25, 'Carlos Raul Tavaut', 25873044, 'CARNICERIA Y GRANJA EL VASQUITO ', 'INDEPENDENCIA 285 ', NULL, '', '4770422 ', 'carniceriaelvasquito@gmail.com', 'FB CARNICERIA Y GRANJA EL VASQUITO', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(286, 57, 'Carlos Raul Tavaut', 25873044, 'Lavadero Marva', 'Independencia 302 ', NULL, '', '4774613 ', 'charles.tavaut@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(287, 57, 'Federico Pareta ', 30430049, 'Mercería Miguel Pareta', 'San Martín 565', NULL, '1149718706', '', 'fedepareta@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(288, 48, 'Eva Gladys Pedroski ', 24725066, 'New Life', 'San Martín 485', NULL, '1132137470', '', 'piliar17@hotmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(289, 32, 'Jose Darío Valado ', 18291602, 'Kiosco', 'Hipólito Irigoyen 310 ', NULL, '', '4773785 ', 'graoje72@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(290, 13, 'Roque Corletta', 8339776, 'Autoservicio La Esperanza ', 'Lavalle 2301', NULL, '', '4776207 ', 'autoserviciolaesperanza@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(291, 57, 'Guillermo Truszkowski ', 26004314, 'La Veterinaria', 'Sarmiento 2332', NULL, '', '4776207 ', 'laveterinaria2012@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(292, 13, 'Maria Ines Honeker', 17654258, 'Hokener Maria Ines', 'Dr.Marcos Paz 1189', NULL, '1131677574', '', 'mariaineshoneker@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(294, 34, 'Maria Cristina Isabel ', 13021146, 'Regina Productos de Limpieza', 'Feria Itinerante Municipal', NULL, '1161396553', '', 'mariacristinaisabel57@gmail.com ', 'FB Cristina Canales ', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs - Delivery hasta las 21:00hs ', '', 'Administrator '),
(295, 25, 'Andrea Hernández', 22649159, 'Granja', 'Monteagudo 193', NULL, '1137953102', '', 'matyrinal@hotmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(296, 13, 'Guo Xianzeng', 95644970, 'Supermercado', 'Doctor Marcos Paz 658 ', NULL, '1136150604', '', 'yujun20171110@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(297, 57, 'Daiana Paola Rojas', 32255437, 'Daiana Rojas Estilista Integral ', 'San Martin 809', NULL, '1154957546', '', 'dairojas59@gmail.com', 'FB Daiana Rojas Estilista Integral', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(298, 37, 'Carlos Ruben Tortonese', 26004254, 'Lubricar Autoagrovial ', 'Dr Marcos Paz 896 ', NULL, '', '4776089 ', 'carlostortonese102@hotmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(299, 57, 'Natalia Alvarez ', 29921162, 'Espacio Enlazar ', 'Polero 3615 ', NULL, '1560590236', '', 'espacioenlazar@gmail.com', 'FB @espacioenlazar - IG @espacioenlazar ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(300, 18, 'Doniselli Adrián', 33872101, 'Doniselli Neumáticos', 'Dr Marcos Paz 870 ', NULL, '1151251158', '', 'donisellineumaticos@hotmail.com ', 'FB Donisellineumaticos - IG Donisellineumaticos ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(301, 57, 'Alfredo Cayetano Narvaez', 11981680, 'Cerrajería San Pedro', 'Monteagudo 192', NULL, '', '4774523 ', 'alfredonarvaez75@gmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(302, 22, 'Irma Sanabria ', 16125014, 'Panificados Irma', 'Feria Itinerante Municipal', NULL, '1161432080', '', 'sanabriairma21@gmail.com', 'FB Irma Sanabria', 'Lun a Sab de 9:00 a 18:00hs - Dom y Feriados 10:00 a 15:00hs', '', 'Administrator '),
(303, 57, 'Carolina Marco', 16334488, 'Carolina Marco Arte ', 'Independencia 730 ', NULL, '1161755542', '', 'carolinamarcoarte@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(304, 57, 'Adriana Haydee Pérez', 17567121, 'Bordados Bonhomia ', 'España 1526 ', NULL, '1136859816', '', 'NULL', 'FB Bordados Bonhomia - IG bordadosbonhomia_ ', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(305, 57, 'Jorge Horacio De Paula', 18214021, 'DE PAULA JORGE HORACIO', 'Dr. Marcos Paz 1566 ', NULL, '1158343404', '', 'jhdepaula66@gmail.com ', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator '),
(306, 57, 'Agustina Marciano ', 24813465, 'Agustina Marciano Propiedades ', 'Avellaneda 1750 ', NULL, '', '4773283 ', 'agusmarciano@hotmail.com', 'NULL', 'Lun a Sab de 9:00 a 13:00hs ', '', 'Administrator ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercios_rubro`
--

CREATE TABLE `comercios_rubro` (
  `id_rubro` smallint(5) UNSIGNED NOT NULL,
  `tipo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_categoria` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercios_rubro`
--

INSERT INTO `comercios_rubro` (`id_rubro`, `tipo`, `id_categoria`) VALUES
(10, 'Heladería', 1),
(11, 'Remises', 5),
(12, 'Indumentaria', 3),
(13, 'Supermercados y Almacenes', 1),
(14, 'Libreria-Grafica', 6),
(15, 'Repuestos del Automotor', 4),
(17, 'Transporte de mercadería', 9),
(18, 'Gomerías', 4),
(22, 'Panaderias', 1),
(24, 'Ferreterías', 7),
(25, 'Carnicería y Granja', 1),
(29, 'Fábricas', 9),
(32, 'Kiosko', 1),
(34, 'Perfumerías y Limpieza', 8),
(37, 'Talleres Mecánicos', 4),
(44, 'Estación de Servicio', 4),
(47, 'Pescaderia', 1),
(48, 'Venta de Indumentaria', 3),
(49, 'Restaurante - Bar', 10),
(50, 'Hospedaje', 11),
(51, 'Venta de Materiales', 7),
(52, 'Depósito de Lácteos', 1),
(53, 'Fruteria y Verdulería', 1),
(56, 'Venta de garrafas', 5),
(57, 'Otros', 5),
(58, 'Venta de Artículos para el Hogar/Muebles', 2),
(59, 'Tecnología, Artículos para el Hogar', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `comercios_rubro`
--
ALTER TABLE `comercios_rubro`
  ADD PRIMARY KEY (`id_rubro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `comercios_rubro`
--
ALTER TABLE `comercios_rubro`
  MODIFY `id_rubro` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
