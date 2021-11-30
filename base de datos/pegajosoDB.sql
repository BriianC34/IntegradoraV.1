-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-11-2021 a las 20:48:35
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pegajosoDB`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_INSERT_MENU` (`p_producto` VARCHAR(40), `p_informacion` VARCHAR(200), `p_precio` FLOAT, `p_tipo` INT)  BEGIN

INSERT INTO menu(producto,informacion,precio,tipo,estatus)
VALUES(p_producto,p_informacion,p_precio,p_tipo,1);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_INSERT_USUARIOS` (`p_nombre` VARCHAR(50), `p_email` VARCHAR(45), `p_passwd` BLOB)  BEGIN

INSERT INTO usuarios(nombre, email, passwd, rol_id)VALUES(
p_nombre,
p_email,
AES_ENCRYPT(p_passwd,'rcpswd'),
2
);

END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `PR_UPDATE_MENU` (`p_idmenu` INT, `p_producto` VARCHAR(40), `p_informacion` VARCHAR(200), `p_precio` FLOAT, `p_estatus` TINYINT)  BEGIN

UPDATE menu SET 
producto=p_producto, informacion=p_informacion,
precio=p_precio, estatus=p_estatus
WHERE id_menu=p_idmenu;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `bebidas_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `bebidas_view` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `bebidas_view_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `bebidas_view_EN` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id_bitacora` int(11) NOT NULL,
  `tabla` varchar(40) NOT NULL,
  `evento` varchar(100) NOT NULL,
  `usuario` varchar(40) NOT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id_bitacora`, `tabla`, `evento`, `usuario`, `fecha`) VALUES
(1, 'menu', 'Un producto fue agregado1', 'root@localhost', '2021-11-25 00:00:00'),
(2, 'menu', 'Un producto fue agregado2', 'root@localhost', '2021-11-25 00:00:00'),
(3, 'menu', 'Un producto fue agregado3', 'root@localhost', '2021-11-25 00:00:00'),
(4, 'menu', 'Un producto fue agregado4', 'root@localhost', '2021-11-25 00:00:00'),
(5, 'menu', 'Un producto fue agregado5', 'root@localhost', '2021-11-25 00:00:00'),
(6, 'menu', 'Un producto fue agregado6', 'root@localhost', '2021-11-25 00:00:00'),
(7, 'menu', 'Un producto fue agregado7', 'root@localhost', '2021-11-25 00:00:00'),
(8, 'menu', 'Un producto fue agregado8', 'root@localhost', '2021-11-25 00:00:00'),
(9, 'menu', 'Un producto fue agregado9', 'root@localhost', '2021-11-25 00:00:00'),
(10, 'menu', 'Un producto fue agregado10', 'root@localhost', '2021-11-25 00:00:00'),
(11, 'menu', 'Un producto fue agregado11', 'root@localhost', '2021-11-25 00:00:00'),
(12, 'menu', 'Un producto fue agregado12', 'root@localhost', '2021-11-25 00:00:00'),
(13, 'menu', 'Un producto fue agregado13', 'root@localhost', '2021-11-25 00:00:00'),
(14, 'menu', 'Un producto fue agregado14', 'root@localhost', '2021-11-25 00:00:00'),
(15, 'menu', 'Un producto fue agregado15', 'root@localhost', '2021-11-25 00:00:00'),
(16, 'usuarios', 'Un usuario fue agregado2', 'root@localhost', '2021-11-26 00:00:00'),
(17, 'usuarios', 'Un usuario fue agregado3', 'root@localhost', '2021-11-26 00:00:00'),
(18, 'usuarios', 'Un usuario fue eliminado3', 'root@localhost', '2021-11-26 00:00:00'),
(19, 'usuarios', 'Un usuario fue agregado4', 'root@localhost', '2021-11-26 00:00:00'),
(20, 'usuarios', 'Un usuario fue agregado5', 'root@localhost', '2021-11-26 00:00:00'),
(21, 'usuarios', 'Un usuario fue eliminado4', 'root@localhost', '2021-11-26 00:00:00'),
(22, 'usuarios', 'Un usuario fue eliminado5', 'root@localhost', '2021-11-26 00:00:00'),
(23, 'usuarios', 'Un usuario fue agregado6', 'root@localhost', '2021-11-26 00:00:00'),
(24, 'usuarios', 'Un usuario fue eliminado6', 'root@localhost', '2021-11-26 00:00:00'),
(25, 'usuarios', 'Un usuario fue agregado7', 'root@localhost', '2021-11-26 00:00:00'),
(26, 'usuarios', 'Un usuario fue eliminado7', 'root@localhost', '2021-11-26 00:00:00'),
(27, 'usuarios', 'Un usuario fue agregado8', 'root@localhost', '2021-11-26 00:00:00'),
(28, 'usuarios', 'Un usuario fue eliminado8', 'root@localhost', '2021-11-26 00:00:00'),
(29, 'usuarios', 'Un usuario fue agregado9', 'root@localhost', '2021-11-26 00:00:00'),
(30, 'usuarios', 'Un usuario fue eliminado9', 'root@localhost', '2021-11-26 00:00:00'),
(31, 'usuarios', 'Un usuario fue agregado10', 'root@localhost', '2021-11-26 00:00:00'),
(32, 'usuarios', 'Un usuario fue eliminado10', 'root@localhost', '2021-11-26 00:00:00'),
(33, 'usuarios', 'Un usuario fue agregado11', 'root@localhost', '2021-11-26 00:00:00'),
(34, 'usuarios', 'Un usuario fue eliminado11', 'root@localhost', '2021-11-26 00:00:00'),
(35, 'usuarios', 'Un usuario fue agregado12', 'root@localhost', '2021-11-26 00:00:00'),
(36, 'usuarios', 'Un usuario fue eliminado12', 'root@localhost', '2021-11-26 00:00:00'),
(37, 'usuarios', 'Un usuario fue agregado13', 'root@localhost', '2021-11-26 00:00:00'),
(38, 'usuarios', 'Un usuario fue agregado14', 'root@localhost', '2021-11-26 00:00:00'),
(39, 'usuarios', 'Un usuario fue agregado15', 'root@localhost', '2021-11-26 00:00:00'),
(40, 'usuarios', 'Un usuario fue eliminado15', 'root@localhost', '2021-11-26 00:00:00'),
(41, 'usuarios', 'Un usuario fue eliminado14', 'root@localhost', '2021-11-26 00:00:00'),
(42, 'usuarios', 'Un usuario fue eliminado2', 'root@localhost', '2021-11-26 00:00:00'),
(43, 'usuarios', 'Un usuario fue eliminado13', 'root@localhost', '2021-11-26 00:00:00'),
(44, 'menu', 'Un producto fue modificado2', 'root@localhost', '2021-11-27 00:00:00'),
(45, 'menu', 'Un producto fue modificado2', 'root@localhost', '2021-11-27 00:00:00'),
(46, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(47, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(48, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(49, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(50, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(51, 'menu', 'Un producto fue modificado2', 'root@localhost', '2021-11-28 00:00:00'),
(52, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(53, 'menu', 'Un producto fue modificado2', 'root@localhost', '2021-11-28 00:00:00'),
(54, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(55, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(56, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(57, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(58, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(59, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(60, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(61, 'menu', 'Un producto fue modificado1', 'root@localhost', '2021-11-28 00:00:00'),
(62, 'menu', 'Un producto fue modificado10', 'root@localhost', '2021-11-28 00:00:00'),
(63, 'menu', 'Un producto fue modificado10', 'root@localhost', '2021-11-28 00:00:00'),
(64, 'menu', 'Un producto fue modificado10', 'root@localhost', '2021-11-28 00:00:00'),
(65, 'menu', 'Un producto fue modificado10', 'root@localhost', '2021-11-28 00:00:00'),
(66, 'menu', 'Un producto fue modificado10', 'root@localhost', '2021-11-28 00:00:00'),
(67, 'menu', 'Un producto fue agregado16', 'root@localhost', '2021-11-28 00:00:00'),
(68, 'menu', 'Un producto fue eliminado16', 'root@localhost', '2021-11-28 00:00:00'),
(69, 'menu', 'Un producto fue agregado17', 'root@localhost', '2021-11-28 00:00:00'),
(70, 'menu', 'Un producto fue agregado18', 'root@localhost', '2021-11-28 00:00:00'),
(71, 'menu', 'Un producto fue agregado19', 'root@localhost', '2021-11-28 00:00:00'),
(72, 'menu', 'Un producto fue agregado20', 'root@localhost', '2021-11-28 00:00:00'),
(73, 'menu', 'Un producto fue eliminado17', 'root@localhost', '2021-11-28 00:00:00'),
(74, 'menu', 'Un producto fue eliminado18', 'root@localhost', '2021-11-28 00:00:00'),
(75, 'menu', 'Un producto fue eliminado19', 'root@localhost', '2021-11-28 00:00:00'),
(76, 'menu', 'Un producto fue eliminado20', 'root@localhost', '2021-11-28 00:00:00');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `hamburguesas_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `hamburguesas_view` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `hamburguesas_view_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `hamburguesas_view_EN` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `producto` varchar(40) NOT NULL,
  `informacion` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  `tipo` int(11) NOT NULL,
  `estatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id_menu`, `producto`, `informacion`, `precio`, `tipo`, `estatus`) VALUES
(1, 'Montados', '(Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos)', 60, 1, 1),
(2, 'Montado gigante', '(Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos)', 80, 1, 1),
(3, 'Torta sencilla', '(Carne, Lechuga, Tomate y Aderezos)', 45, 1, 1),
(4, 'Torta especial', '(Carne, Jamón, Queso, Aguacate, Lechuga, Tomate y Aderezos)', 60, 1, 1),
(5, 'Torta (La pegajosa)', '(Carne bistec, Carne de hamburguesa, Aguacate, Queso, Jamón, Lechuga, Tomate y Aderezos)', 80, 1, 1),
(6, 'Hamburguesa sencilla', '(Carne, Aguacate, Jamón, Aderezos, Queso, Lechuga y Tomate)', 40, 1, 1),
(7, 'Hamburguesa especial', '(Carne, Aguacate, Jamón, Aderezos, Queso, Lechuga y Tomate)', 50, 1, 1),
(8, 'Hamburguesa doble', '(dos carnes, Aguacate, dos Jamones, Aderezos, Queso, Lechuga y Tomate)', 65, 1, 1),
(9, 'Tacos de harina', '(Cilantro y Tomate)', 50, 1, 1),
(10, 'Coca cola', '(600ml)', 18, 2, 1),
(11, 'Fanta naranja', '(600ml)', 18, 2, 1),
(12, 'Fanta fresa', '(600ml)', 18, 2, 1),
(13, 'Fresca', '(600ml)', 18, 2, 1),
(14, 'Manzanita', '(600ml)', 18, 2, 1),
(15, 'Sprite', '(600ml)', 18, 2, 1);

--
-- Disparadores `menu`
--
DELIMITER $$
CREATE TRIGGER `tr_delete_menu` BEFORE DELETE ON `menu` FOR EACH ROW INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('menu', CONCAT('Un producto fue eliminado', OLD.id_menu), USER(), DATE(NOW()))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_insert_menu` AFTER INSERT ON `menu` FOR EACH ROW INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('menu', CONCAT('Un producto fue agregado', NEW.id_menu), USER(), DATE(NOW()))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_update_menu` AFTER UPDATE ON `menu` FOR EACH ROW INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('menu', CONCAT('Un producto fue modificado', OLD.id_menu), USER(), DATE(NOW()))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_EN`
--

CREATE TABLE `menu_EN` (
  `id_menu` int(11) NOT NULL,
  `producto` varchar(40) NOT NULL,
  `informacion` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  `tipo` int(11) NOT NULL,
  `estatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `menu_EN`
--

INSERT INTO `menu_EN` (`id_menu`, `producto`, `informacion`, `precio`, `tipo`, `estatus`) VALUES
(1, 'Montado', '(Meat, ham, cheese, avocado, lettuce, tomato and dressings)', 60, 1, 1),
(2, 'Gigant montado', '(Meat, ham, cheese, avocado, lettuce, tomato and dressings)', 80, 1, 1),
(3, 'Simple torta', '(Meat, lettuce, tomato and dressings)', 45, 1, 1),
(4, 'Special torta', '(Meat, ham, cheese, avocado, lettuce, tomato and dressings)', 60, 1, 1),
(5, 'Torta (La pegajosa)', '(Beef steak, hamburger meat, avocado, cheese, ham, lettuce, tomato and dressings)', 80, 1, 1),
(6, 'Simple hamburger', '(Meat, avocado, ham, dressing, cheese, lettuce and tomato.)', 40, 1, 1),
(7, 'Special hamburguer', '(Meat, ham, cheese, avocado, lettuce, tomato and dressings)', 50, 1, 1),
(8, 'Double hamburger', '(two meats, avocado, two hams, dressings, cheese, lettuce and tomato)', 65, 1, 1),
(9, 'Flour tortilla tacos', '(Cilantro and tomato)', 50, 1, 1),
(10, 'Coke', '(600ml)', 18, 2, 1),
(11, 'Orange fanta', '(600ml)', 18, 2, 1),
(12, 'Strawberry fanta', '(600ml)', 18, 2, 1),
(13, 'Fresca', '(600ml)', 18, 2, 1),
(14, 'Manzanita', '(600ml)', 18, 2, 1),
(15, 'Sprite', '(600ml)', 18, 2, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `montados_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `montados_view` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `montados_view_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `montados_view_EN` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `platillos_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `platillos_view` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `platillos_view_edit`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `platillos_view_edit` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `platillos_view_edit_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `platillos_view_edit_EN` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `platillos_view_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `platillos_view_EN` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `refrescos_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `refrescos_view` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `refrescos_view_edit`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `refrescos_view_edit` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `refrescos_view_edit_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `refrescos_view_edit_EN` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `refrescos_view_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `refrescos_view_EN` (
`id_menu` int(11)
,`producto` varchar(40)
,`informacion` varchar(200)
,`precio` float
,`estatus` tinyint(4)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_roles` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_roles`, `rol`) VALUES
(1, 'Admin'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id_sucursales` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `horario` varchar(50) NOT NULL,
  `estatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id_sucursales`, `nombre`, `direccion`, `telefono`, `horario`, `estatus`) VALUES
(1, 'Villa Juárez', '16 de Septiembre 18, Ejidal, 31065 Chihuahua, Chih.', '6144561497', 'V,S,D 18:00 - 1:30', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales_menu`
--

CREATE TABLE `sucursales_menu` (
  `id_sm` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `idsucursales` int(11) NOT NULL,
  `estatus` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales_menu`
--

INSERT INTO `sucursales_menu` (`id_sm`, `idmenu`, `idsucursales`, `estatus`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 3, 1, 1),
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 1),
(7, 7, 1, 1),
(8, 8, 1, 1),
(9, 9, 1, 1),
(10, 10, 1, 1),
(11, 11, 1, 1),
(12, 12, 1, 1),
(13, 13, 1, 1),
(14, 14, 1, 1),
(15, 15, 1, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `tacos_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `tacos_view` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `tacos_view_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `tacos_view_EN` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id_tipos` int(11) NOT NULL,
  `tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipos`, `tipo`) VALUES
(2, 'Bebida'),
(1, 'Comida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_EN`
--

CREATE TABLE `tipos_EN` (
  `id_tipos` int(11) NOT NULL,
  `tipo` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_EN`
--

INSERT INTO `tipos_EN` (`id_tipos`, `tipo`) VALUES
(2, 'Drinks'),
(1, 'Food');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `tortas_view`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `tortas_view` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `tortas_view_EN`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `tortas_view_EN` (
`producto` varchar(40)
,`precio` float
,`informacion` varchar(200)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `passwd` blob NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `nombre`, `email`, `passwd`, `rol_id`) VALUES
(1, 'adminstrador', 'montados.pegajoso@gmail.com', 0x4d6f6e74616a6f736f53333224, 1);

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `tr_delete_usuarios` BEFORE DELETE ON `usuarios` FOR EACH ROW INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('usuarios', CONCAT('Un usuario fue eliminado', OLD.id_usuarios), USER(), DATE(NOW()))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_insert_usuarios` AFTER INSERT ON `usuarios` FOR EACH ROW INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('usuarios', CONCAT('Un usuario fue agregado', NEW.id_usuarios), USER(), DATE(NOW()))
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_update_usuarios` AFTER UPDATE ON `usuarios` FOR EACH ROW INSERT INTO bitacora (tabla, evento, usuario, fecha)
VALUES('usuarios', CONCAT('Un usuario fue modificado', OLD.id_usuarios), USER(), DATE(NOW()))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura para la vista `bebidas_view`
--
DROP TABLE IF EXISTS `bebidas_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bebidas_view`  AS SELECT `menu`.`producto` AS `producto`, `menu`.`precio` AS `precio`, `menu`.`informacion` AS `informacion` FROM `menu` WHERE `menu`.`id_menu` = 10 OR `menu`.`id_menu` = 11 OR `menu`.`id_menu` = 12 OR `menu`.`id_menu` = 13 OR `menu`.`id_menu` = 14 OR `menu`.`id_menu` = 15 AND `menu`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `bebidas_view_EN`
--
DROP TABLE IF EXISTS `bebidas_view_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bebidas_view_EN`  AS SELECT `menu_EN`.`producto` AS `producto`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`informacion` AS `informacion` FROM `menu_EN` WHERE `menu_EN`.`id_menu` = 10 OR `menu_EN`.`id_menu` = 11 OR `menu_EN`.`id_menu` = 12 OR `menu_EN`.`id_menu` = 13 OR `menu_EN`.`id_menu` = 14 OR `menu_EN`.`id_menu` = 15 AND `menu_EN`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `hamburguesas_view`
--
DROP TABLE IF EXISTS `hamburguesas_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hamburguesas_view`  AS SELECT `menu`.`producto` AS `producto`, `menu`.`precio` AS `precio`, `menu`.`informacion` AS `informacion` FROM `menu` WHERE `menu`.`id_menu` = 6 OR `menu`.`id_menu` = 7 OR `menu`.`id_menu` = 8 AND `menu`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `hamburguesas_view_EN`
--
DROP TABLE IF EXISTS `hamburguesas_view_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hamburguesas_view_EN`  AS SELECT `menu_EN`.`producto` AS `producto`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`informacion` AS `informacion` FROM `menu_EN` WHERE `menu_EN`.`id_menu` = 6 OR `menu_EN`.`id_menu` = 7 OR `menu_EN`.`id_menu` = 8 AND `menu_EN`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `montados_view`
--
DROP TABLE IF EXISTS `montados_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `montados_view`  AS SELECT `menu`.`producto` AS `producto`, `menu`.`precio` AS `precio`, `menu`.`informacion` AS `informacion` FROM `menu` WHERE `menu`.`id_menu` = 1 OR `menu`.`id_menu` = 2 AND `menu`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `montados_view_EN`
--
DROP TABLE IF EXISTS `montados_view_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `montados_view_EN`  AS SELECT `menu_EN`.`producto` AS `producto`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`informacion` AS `informacion` FROM `menu_EN` WHERE `menu_EN`.`id_menu` = 1 OR `menu_EN`.`id_menu` = 2 AND `menu_EN`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `platillos_view`
--
DROP TABLE IF EXISTS `platillos_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platillos_view`  AS SELECT `menu`.`id_menu` AS `id_menu`, `menu`.`producto` AS `producto`, `menu`.`informacion` AS `informacion`, `menu`.`precio` AS `precio`, `menu`.`estatus` AS `estatus` FROM `menu` WHERE `menu`.`tipo` = 1 AND `menu`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `platillos_view_edit`
--
DROP TABLE IF EXISTS `platillos_view_edit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platillos_view_edit`  AS SELECT `menu`.`id_menu` AS `id_menu`, `menu`.`producto` AS `producto`, `menu`.`informacion` AS `informacion`, `menu`.`precio` AS `precio`, `menu`.`estatus` AS `estatus` FROM `menu` WHERE `menu`.`tipo` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `platillos_view_edit_EN`
--
DROP TABLE IF EXISTS `platillos_view_edit_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platillos_view_edit_EN`  AS SELECT `menu_EN`.`id_menu` AS `id_menu`, `menu_EN`.`producto` AS `producto`, `menu_EN`.`informacion` AS `informacion`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`estatus` AS `estatus` FROM `menu_EN` WHERE `menu_EN`.`tipo` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `platillos_view_EN`
--
DROP TABLE IF EXISTS `platillos_view_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `platillos_view_EN`  AS SELECT `menu_EN`.`id_menu` AS `id_menu`, `menu_EN`.`producto` AS `producto`, `menu_EN`.`informacion` AS `informacion`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`estatus` AS `estatus` FROM `menu_EN` WHERE `menu_EN`.`tipo` = 1 AND `menu_EN`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `refrescos_view`
--
DROP TABLE IF EXISTS `refrescos_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `refrescos_view`  AS SELECT `menu`.`id_menu` AS `id_menu`, `menu`.`producto` AS `producto`, `menu`.`informacion` AS `informacion`, `menu`.`precio` AS `precio`, `menu`.`estatus` AS `estatus` FROM `menu` WHERE `menu`.`tipo` = 2 AND `menu`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `refrescos_view_edit`
--
DROP TABLE IF EXISTS `refrescos_view_edit`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `refrescos_view_edit`  AS SELECT `menu`.`id_menu` AS `id_menu`, `menu`.`producto` AS `producto`, `menu`.`informacion` AS `informacion`, `menu`.`precio` AS `precio`, `menu`.`estatus` AS `estatus` FROM `menu` WHERE `menu`.`tipo` = 2 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `refrescos_view_edit_EN`
--
DROP TABLE IF EXISTS `refrescos_view_edit_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `refrescos_view_edit_EN`  AS SELECT `menu_EN`.`id_menu` AS `id_menu`, `menu_EN`.`producto` AS `producto`, `menu_EN`.`informacion` AS `informacion`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`estatus` AS `estatus` FROM `menu_EN` WHERE `menu_EN`.`tipo` = 2 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `refrescos_view_EN`
--
DROP TABLE IF EXISTS `refrescos_view_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `refrescos_view_EN`  AS SELECT `menu_EN`.`id_menu` AS `id_menu`, `menu_EN`.`producto` AS `producto`, `menu_EN`.`informacion` AS `informacion`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`estatus` AS `estatus` FROM `menu_EN` WHERE `menu_EN`.`tipo` = 2 AND `menu_EN`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `tacos_view`
--
DROP TABLE IF EXISTS `tacos_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tacos_view`  AS SELECT `menu`.`producto` AS `producto`, `menu`.`precio` AS `precio`, `menu`.`informacion` AS `informacion` FROM `menu` WHERE `menu`.`id_menu` = 9 AND `menu`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `tacos_view_EN`
--
DROP TABLE IF EXISTS `tacos_view_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tacos_view_EN`  AS SELECT `menu_EN`.`producto` AS `producto`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`informacion` AS `informacion` FROM `menu_EN` WHERE `menu_EN`.`id_menu` = 9 AND `menu_EN`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `tortas_view`
--
DROP TABLE IF EXISTS `tortas_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tortas_view`  AS SELECT `menu`.`producto` AS `producto`, `menu`.`precio` AS `precio`, `menu`.`informacion` AS `informacion` FROM `menu` WHERE `menu`.`id_menu` = 3 OR `menu`.`id_menu` = 4 OR `menu`.`id_menu` = 5 AND `menu`.`estatus` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `tortas_view_EN`
--
DROP TABLE IF EXISTS `tortas_view_EN`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tortas_view_EN`  AS SELECT `menu_EN`.`producto` AS `producto`, `menu_EN`.`precio` AS `precio`, `menu_EN`.`informacion` AS `informacion` FROM `menu_EN` WHERE `menu_EN`.`id_menu` = 3 OR `menu_EN`.`id_menu` = 4 OR `menu_EN`.`id_menu` = 5 AND `menu_EN`.`estatus` = 1 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id_bitacora`),
  ADD KEY `tabla_index` (`tabla`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD UNIQUE KEY `producto` (`producto`),
  ADD KEY `tipo` (`tipo`),
  ADD KEY `producto_index` (`producto`);

--
-- Indices de la tabla `menu_EN`
--
ALTER TABLE `menu_EN`
  ADD PRIMARY KEY (`id_menu`),
  ADD UNIQUE KEY `producto` (`producto`),
  ADD KEY `tipo` (`tipo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_roles`),
  ADD KEY `rol` (`rol`) USING BTREE;

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id_sucursales`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `sucursales_menu`
--
ALTER TABLE `sucursales_menu`
  ADD PRIMARY KEY (`id_sm`),
  ADD KEY `idsucursales` (`idsucursales`),
  ADD KEY `idmenu` (`idmenu`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id_tipos`),
  ADD UNIQUE KEY `tipo` (`tipo`);

--
-- Indices de la tabla `tipos_EN`
--
ALTER TABLE `tipos_EN`
  ADD PRIMARY KEY (`id_tipos`),
  ADD UNIQUE KEY `tipo` (`tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id_bitacora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `menu_EN`
--
ALTER TABLE `menu_EN`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id_sucursales` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sucursales_menu`
--
ALTER TABLE `sucursales_menu`
  MODIFY `id_sm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id_tipos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos_EN`
--
ALTER TABLE `tipos_EN`
  MODIFY `id_tipos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipos` (`id_tipos`);

--
-- Filtros para la tabla `menu_EN`
--
ALTER TABLE `menu_EN`
  ADD CONSTRAINT `menu_EN_ibfk_1` FOREIGN KEY (`tipo`) REFERENCES `tipos_EN` (`id_tipos`);

--
-- Filtros para la tabla `sucursales_menu`
--
ALTER TABLE `sucursales_menu`
  ADD CONSTRAINT `sucursales_menu_ibfk_1` FOREIGN KEY (`idsucursales`) REFERENCES `sucursales` (`id_sucursales`),
  ADD CONSTRAINT `sucursales_menu_ibfk_2` FOREIGN KEY (`idmenu`) REFERENCES `menu` (`id_menu`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id_roles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
