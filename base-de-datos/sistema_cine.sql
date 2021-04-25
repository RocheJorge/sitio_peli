-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-04-2021 a las 19:04:02
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistema_cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asiento_cine`
--

DROP TABLE IF EXISTS `asiento_cine`;
CREATE TABLE IF NOT EXISTS `asiento_cine` (
  `cod_asi` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `num_asi` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_sal` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_asi`),
  KEY `cod_sal` (`cod_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boletos_cine`
--

DROP TABLE IF EXISTS `boletos_cine`;
CREATE TABLE IF NOT EXISTS `boletos_cine` (
  `cod_bol` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `num_bol` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cos_bol` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_bol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cod_cli` int(11) NOT NULL AUTO_INCREMENT,
  `ced_cli` varchar(12) COLLATE utf8_spanish2_ci NOT NULL,
  `nom1_cli` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `nom2_cli` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ape1_cli` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `ape2_cli` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tel1_cli` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `tel2_cli` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `dir_cli` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cor_cli` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `fec_nac_cli` date NOT NULL,
  `clave_cli` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_cli`),
  UNIQUE KEY `ced_cli` (`ced_cli`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cod_cli`, `ced_cli`, `nom1_cli`, `nom2_cli`, `ape1_cli`, `ape2_cli`, `tel1_cli`, `tel2_cli`, `dir_cli`, `cor_cli`, `fec_nac_cli`, `clave_cli`) VALUES
(2, '12345432', 'Jorge', 'David', 'Roche', 'Castro', '12345678908', '12345678999', 'Caracas', 'ejemplo@gmail.com', '1995-12-24', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
CREATE TABLE IF NOT EXISTS `detalle_factura` (
  `cod_fac` int(11) NOT NULL,
  `cod_bol` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_asi` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_fac`),
  KEY `cod_bol` (`cod_bol`),
  KEY `cod_asi` (`cod_asi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cine`
--

DROP TABLE IF EXISTS `estado_cine`;
CREATE TABLE IF NOT EXISTS `estado_cine` (
  `cod_est` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_est` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_est`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

DROP TABLE IF EXISTS `factura`;
CREATE TABLE IF NOT EXISTS `factura` (
  `cod_fac` int(11) NOT NULL,
  `fec_fac` date NOT NULL,
  `cod_fun` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_for` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_cli` int(11) NOT NULL,
  `cod_sal` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_fac`),
  KEY `cod_fun` (`cod_fun`),
  KEY `cod_for` (`cod_for`),
  KEY `cod_cli` (`cod_cli`),
  KEY `cod_sal` (`cod_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

DROP TABLE IF EXISTS `forma_pago`;
CREATE TABLE IF NOT EXISTS `forma_pago` (
  `cod_for` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_for` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `des_for` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_for`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcion_pelicula`
--

DROP TABLE IF EXISTS `funcion_pelicula`;
CREATE TABLE IF NOT EXISTS `funcion_pelicula` (
  `cod_fun` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `hor_fun` time NOT NULL,
  `cod_pel` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_sal` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_fun`),
  KEY `cod_pel` (`cod_pel`),
  KEY `cod_sal` (`cod_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero_pelicula`
--

DROP TABLE IF EXISTS `genero_pelicula`;
CREATE TABLE IF NOT EXISTS `genero_pelicula` (
  `cod_gen` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `tipo_gen` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `des_gen` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
CREATE TABLE IF NOT EXISTS `pelicula` (
  `cod_pel` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_pel` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `des_pel` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_gen` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_pel`),
  KEY `cod_gen` (`cod_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala_cine`
--

DROP TABLE IF EXISTS `sala_cine`;
CREATE TABLE IF NOT EXISTS `sala_cine` (
  `cod_sal` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `num_sal` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_tip_sal` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_suc` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_sal`),
  KEY `cod_suc` (`cod_suc`),
  KEY `cod_tip_sal` (`cod_tip_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal_cine`
--

DROP TABLE IF EXISTS `sucursal_cine`;
CREATE TABLE IF NOT EXISTS `sucursal_cine` (
  `cod_suc` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_suc` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `dir_suc` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `cod_est` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_suc`),
  KEY `cod_est` (`cod_est`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_sala`
--

DROP TABLE IF EXISTS `tipo_sala`;
CREATE TABLE IF NOT EXISTS `tipo_sala` (
  `cod_tip_sal` varchar(10) COLLATE utf8_spanish2_ci NOT NULL,
  `nom_tip_sal` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `des_tip_sal` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`cod_tip_sal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asiento_cine`
--
ALTER TABLE `asiento_cine`
  ADD CONSTRAINT `asiento_cine_ibfk_1` FOREIGN KEY (`cod_sal`) REFERENCES `sala_cine` (`cod_sal`);

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`cod_fac`) REFERENCES `factura` (`cod_fac`),
  ADD CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`cod_bol`) REFERENCES `boletos_cine` (`cod_bol`),
  ADD CONSTRAINT `detalle_factura_ibfk_3` FOREIGN KEY (`cod_asi`) REFERENCES `asiento_cine` (`cod_asi`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`cod_fun`) REFERENCES `funcion_pelicula` (`cod_fun`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`cod_for`) REFERENCES `forma_pago` (`cod_for`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`cod_cli`) REFERENCES `cliente` (`cod_cli`),
  ADD CONSTRAINT `factura_ibfk_4` FOREIGN KEY (`cod_sal`) REFERENCES `sala_cine` (`cod_sal`);

--
-- Filtros para la tabla `funcion_pelicula`
--
ALTER TABLE `funcion_pelicula`
  ADD CONSTRAINT `funcion_pelicula_ibfk_1` FOREIGN KEY (`cod_pel`) REFERENCES `pelicula` (`cod_pel`),
  ADD CONSTRAINT `funcion_pelicula_ibfk_2` FOREIGN KEY (`cod_sal`) REFERENCES `sala_cine` (`cod_sal`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`cod_gen`) REFERENCES `genero_pelicula` (`cod_gen`);

--
-- Filtros para la tabla `sala_cine`
--
ALTER TABLE `sala_cine`
  ADD CONSTRAINT `sala_cine_ibfk_1` FOREIGN KEY (`cod_suc`) REFERENCES `sucursal_cine` (`cod_suc`),
  ADD CONSTRAINT `sala_cine_ibfk_2` FOREIGN KEY (`cod_tip_sal`) REFERENCES `tipo_sala` (`cod_tip_sal`);

--
-- Filtros para la tabla `sucursal_cine`
--
ALTER TABLE `sucursal_cine`
  ADD CONSTRAINT `sucursal_cine_ibfk_1` FOREIGN KEY (`cod_est`) REFERENCES `estado_cine` (`cod_est`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
