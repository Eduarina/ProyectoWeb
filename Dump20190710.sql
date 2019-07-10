CREATE DATABASE  IF NOT EXISTS `rodlp` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rodlp`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: rodlp
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ct_clienteprovedor`
--

DROP TABLE IF EXISTS `ct_clienteprovedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_clienteprovedor` (
  `Id_ClienteProvedor` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_ClienteProvedor`),
  KEY `Union_Status13_idx` (`Status`),
  CONSTRAINT `Union_Status13` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_clienteprovedor`
--

LOCK TABLES `ct_clienteprovedor` WRITE;
/*!40000 ALTER TABLE `ct_clienteprovedor` DISABLE KEYS */;
INSERT INTO `ct_clienteprovedor` VALUES (1,'cliente',1,'root@localhost'),(2,'proveedor',1,'root@localhost'),(3,'productor',1,'root@localhost'),(4,'intermediario',1,'root@localhost');
/*!40000 ALTER TABLE `ct_clienteprovedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_formaspago`
--

DROP TABLE IF EXISTS `ct_formaspago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_formaspago` (
  `Id_FormaPago` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_FormaPago`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status7` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_formaspago`
--

LOCK TABLES `ct_formaspago` WRITE;
/*!40000 ALTER TABLE `ct_formaspago` DISABLE KEYS */;
INSERT INTO `ct_formaspago` VALUES (1,'Pago en una sola exhibicion',1,'root@localhost'),(2,'Pago en parcialidades',1,'root@localhost');
/*!40000 ALTER TABLE `ct_formaspago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_grupomovi`
--

DROP TABLE IF EXISTS `ct_grupomovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_grupomovi` (
  `Id_GrupoMov` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_GrupoMov`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status4` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_grupomovi`
--

LOCK TABLES `ct_grupomovi` WRITE;
/*!40000 ALTER TABLE `ct_grupomovi` DISABLE KEYS */;
INSERT INTO `ct_grupomovi` VALUES (1,'Gastos internos',1,'root@localhost'),(2,'Gastos externos',1,'root@localhost'),(3,'Otros gastos',1,'root@localhost'),(4,'Ganancias',1,'root@localhost'),(5,'No hubo gastos',1,'root@localhost');
/*!40000 ALTER TABLE `ct_grupomovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_ingresoegreso`
--

DROP TABLE IF EXISTS `ct_ingresoegreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_ingresoegreso` (
  `Id_IE` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_IE`),
  KEY `Union_Status15_idx` (`Status`),
  CONSTRAINT `Union_Status15` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_ingresoegreso`
--

LOCK TABLES `ct_ingresoegreso` WRITE;
/*!40000 ALTER TABLE `ct_ingresoegreso` DISABLE KEYS */;
INSERT INTO `ct_ingresoegreso` VALUES (1,'ingreso',1,'root@localhost'),(2,'egreso',1,'root@localhost'),(3,'extras',1,'root@localhost');
/*!40000 ALTER TABLE `ct_ingresoegreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_metodopago`
--

DROP TABLE IF EXISTS `ct_metodopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_metodopago` (
  `Id_Metodo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Metodo`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status8` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_metodopago`
--

LOCK TABLES `ct_metodopago` WRITE;
/*!40000 ALTER TABLE `ct_metodopago` DISABLE KEYS */;
INSERT INTO `ct_metodopago` VALUES (1,'Efectivo',1,'root@localhost'),(2,'Cheque',1,'root@localhost'),(3,'Transferencia',1,'root@localhost'),(4,'Tarjeta de credito',1,'root@localhost'),(5,'Monederos electronicos',1,'root@localhost'),(6,'Dinero electronico',1,'root@localhost'),(7,'Tarjetas digitales',1,'root@localhost'),(8,'Vales de despensa',1,'root@localhost'),(9,'Bienes',1,'root@localhost'),(10,'Servicio',1,'root@localhost'),(11,'Por cuenta a terceros',1,'root@localhost'),(12,'Dacion en pagos',1,'root@localhost'),(13,'Pagos por subrogacion',1,'root@localhost'),(14,'NA',1,'root@localhost'),(15,'Otros',1,'root@localhost');
/*!40000 ALTER TABLE `ct_metodopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_monedas`
--

DROP TABLE IF EXISTS `ct_monedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_monedas` (
  `Id_Moneda` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Moneda`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status6` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_monedas`
--

LOCK TABLES `ct_monedas` WRITE;
/*!40000 ALTER TABLE `ct_monedas` DISABLE KEYS */;
INSERT INTO `ct_monedas` VALUES (1,'Peso Mexicano',1,'root@localhost'),(2,'Dolar Estadounidense',1,'root@localhost'),(3,'Euro',1,'root@localhost'),(4,'Libra',2,'root@localhost');
/*!40000 ALTER TABLE `ct_monedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_proyecto`
--

DROP TABLE IF EXISTS `ct_proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_proyecto` (
  `Id_Proyectos` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(250) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Proyectos`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status10` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_proyecto`
--

LOCK TABLES `ct_proyecto` WRITE;
/*!40000 ALTER TABLE `ct_proyecto` DISABLE KEYS */;
INSERT INTO `ct_proyecto` VALUES (1,'Proyecto empresa privada S.A de C.v',1,'root@localhost'),(2,'Proyecto constructora S.A de C.V.',1,'root@localhost'),(3,'Farmacia de genericos',3,'root@localhost'),(4,'Proyecto de hotel costero',4,'root@localhost'),(5,'Proyecto farmacia hospital',5,'root@localhost');
/*!40000 ALTER TABLE `ct_proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_tipocomprobante`
--

DROP TABLE IF EXISTS `ct_tipocomprobante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ct_tipocomprobante` (
  `Id_Comprobante` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Comprobante`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status9` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_tipocomprobante`
--

LOCK TABLES `ct_tipocomprobante` WRITE;
/*!40000 ALTER TABLE `ct_tipocomprobante` DISABLE KEYS */;
INSERT INTO `ct_tipocomprobante` VALUES (1,'Comprobante de ingreso',1,'root@localhost'),(2,'Comprobante de egreso',1,'root@localhost'),(3,'Comprobante de Traslado',1,'root@localhost'),(4,'Comprobante de recepcion',1,'root@localhost'),(5,'Comprobante de nomina',1,'root@localhost'),(6,'Comprobante de palabra',2,'root@localhost');
/*!40000 ALTER TABLE `ct_tipocomprobante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cuentas`
--

DROP TABLE IF EXISTS `tb_cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_cuentas` (
  `Id_Cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Grupo` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Cuenta`),
  KEY `Union_Grupo_idx` (`Grupo`),
  KEY `Union_Status3_idx` (`Status`),
  CONSTRAINT `Union_Grupo` FOREIGN KEY (`Grupo`) REFERENCES `ct_grupomovi` (`Id_GrupoMov`),
  CONSTRAINT `Union_Status3` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cuentas`
--

LOCK TABLES `tb_cuentas` WRITE;
/*!40000 ALTER TABLE `tb_cuentas` DISABLE KEYS */;
INSERT INTO `tb_cuentas` VALUES (1,'gasto de luz',1,1,'root@localhost'),(2,'pago personal',1,1,'root@localhost'),(3,'pago internet',1,1,'root@localhost'),(4,'pagos de empresa pivada',4,1,'root@localhost'),(5,'pagos de la constructora',4,1,'root@localhost'),(6,'pago de equipo ofinista',1,1,'root@localhost'),(7,'pago de hotel costero',4,3,'root@localhost');
/*!40000 ALTER TABLE `tb_cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_empresa`
--

DROP TABLE IF EXISTS `tb_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_empresa` (
  `Id_Empresa` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) DEFAULT NULL,
  `RFC` varchar(45) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Ciudad` varchar(50) DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Empresa`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status2` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_empresa`
--

LOCK TABLES `tb_empresa` WRITE;
/*!40000 ALTER TABLE `tb_empresa` DISABLE KEYS */;
INSERT INTO `tb_empresa` VALUES (1,'Empresa privada S.A de C.v','EPSC972019','Calle 8 #150 Col.Vista','Veracruz','Veracruz',1,'root@localhost'),(2,'Empresa Constructora S.A de C.V','ECSC962018','Calle 20 de noviembre #525 Col.centro','Merida','Yucatan',1,'root@localhost'),(3,'Farmacia Similares','FAMSI122006','Av. Simon Bolivar #333 col.Centro','Boca del Rio','Veracruz',3,'root@localhost');
/*!40000 ALTER TABLE `tb_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_impuestos`
--

DROP TABLE IF EXISTS `tb_impuestos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_impuestos` (
  `Id_Impuesto` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre_Impuesto` varchar(50) DEFAULT NULL,
  `Porcentaje` double DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Impuesto`),
  KEY `Union_Status_idx` (`Status`),
  CONSTRAINT `Union_Status11` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_impuestos`
--

LOCK TABLES `tb_impuestos` WRITE;
/*!40000 ALTER TABLE `tb_impuestos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_impuestos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_movimientos`
--

DROP TABLE IF EXISTS `tb_movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_movimientos` (
  `Folio` varchar(10) NOT NULL,
  `Id_Movimiento` int(11) DEFAULT NULL,
  `Id_Proyecto` int(11) DEFAULT NULL,
  `Ingreso_Egreso` int(11) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `RFC` varchar(45) DEFAULT NULL,
  `Id_Empresas` int(11) DEFAULT NULL,
  `Id_Personas` int(11) DEFAULT NULL,
  `Id_Cuenta` int(11) DEFAULT NULL,
  `Id_MetodoPago` int(11) DEFAULT NULL,
  `Id_FormPago` int(11) DEFAULT NULL,
  `Id_Monedas` int(11) DEFAULT NULL,
  `Id_TipoComprobante` int(11) DEFAULT NULL,
  `Concepto` varchar(100) DEFAULT NULL,
  `Precio_Unitario` double DEFAULT NULL,
  `Descuento` float DEFAULT NULL,
  `Subtotal` double DEFAULT NULL,
  `IVA` float DEFAULT NULL,
  `Ret_IVA` float DEFAULT NULL,
  `Ret_ISR` float DEFAULT NULL,
  `IEPS` float DEFAULT NULL,
  `Total` double DEFAULT NULL,
  `UUID` varchar(35) DEFAULT NULL,
  `Tipo_Cambio` varchar(45) DEFAULT NULL,
  `Conversion` varchar(45) DEFAULT NULL,
  `Ruta_Archivo` varchar(50) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  `Impuestos` int(11) DEFAULT NULL,
  PRIMARY KEY (`Folio`),
  KEY `Union_Status_idx` (`Status`),
  KEY `Union_FormaPago_idx` (`Id_FormPago`),
  KEY `Union_MetodoPago_idx` (`Id_MetodoPago`),
  KEY `Union_Monedas_idx` (`Id_Monedas`),
  KEY `Union_Comprobante_idx` (`Id_TipoComprobante`),
  KEY `Union_Personas_idx` (`Id_Personas`),
  KEY `Union_Empresas_idx` (`Id_Empresas`),
  KEY `Union_Proyecto_idx` (`Id_Proyecto`),
  KEY `Union_EI_idx` (`Ingreso_Egreso`),
  KEY `Union_Cuentas_idx` (`Id_Cuenta`),
  CONSTRAINT `Union_Comprobante` FOREIGN KEY (`Id_TipoComprobante`) REFERENCES `ct_tipocomprobante` (`Id_Comprobante`),
  CONSTRAINT `Union_Cuentas` FOREIGN KEY (`Id_Cuenta`) REFERENCES `tb_cuentas` (`Id_Cuenta`),
  CONSTRAINT `Union_EI` FOREIGN KEY (`Ingreso_Egreso`) REFERENCES `ct_ingresoegreso` (`Id_IE`),
  CONSTRAINT `Union_Empresas` FOREIGN KEY (`Id_Empresas`) REFERENCES `tb_empresa` (`Id_Empresa`),
  CONSTRAINT `Union_FormaPago` FOREIGN KEY (`Id_FormPago`) REFERENCES `ct_formaspago` (`Id_FormaPago`),
  CONSTRAINT `Union_MetodoPago` FOREIGN KEY (`Id_MetodoPago`) REFERENCES `ct_metodopago` (`Id_Metodo`),
  CONSTRAINT `Union_Monedas` FOREIGN KEY (`Id_Monedas`) REFERENCES `ct_monedas` (`Id_Moneda`),
  CONSTRAINT `Union_Personas` FOREIGN KEY (`Id_Personas`) REFERENCES `tb_personas` (`Id_Persona`),
  CONSTRAINT `Union_Proyecto` FOREIGN KEY (`Id_Proyecto`) REFERENCES `ct_proyecto` (`Id_Proyectos`),
  CONSTRAINT `Union_Status5` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_movimientos`
--

LOCK TABLES `tb_movimientos` WRITE;
/*!40000 ALTER TABLE `tb_movimientos` DISABLE KEYS */;
INSERT INTO `tb_movimientos` VALUES ('1234',2,1,3,'2019-07-10','123',1,1,1,1,1,1,1,'1234',123,123,132,1,13,14,123,371.84,'1234',NULL,NULL,NULL,1,'esoriano',123),('NUM01',1,1,1,'2019-06-09','FACTU2891',1,1,4,3,2,1,1,'Facturacion',1500000,0,1500000,0,0,0,0,1500000,'no entendi','TIIE 28 DIAS 8.5139%','no se','C:Users\rafaoTopicos.docx',1,'root@localhost',1234);
/*!40000 ALTER TABLE `tb_movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_personas`
--

DROP TABLE IF EXISTS `tb_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_personas` (
  `Id_Persona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) DEFAULT NULL,
  `RFC` varchar(10) DEFAULT NULL,
  `Direccion` varchar(150) DEFAULT NULL,
  `Localidad` varchar(45) DEFAULT NULL,
  `Municipio` varchar(45) DEFAULT NULL,
  `Entidad` varchar(45) DEFAULT NULL,
  `CP` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `E_mail` varchar(45) DEFAULT NULL,
  `Nombre_Empresa` varchar(60) DEFAULT NULL,
  `Id_Cliente_Proveedor` int(11) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id_Persona`),
  KEY `Union_Status_idx` (`Status`),
  KEY `Union_ClienteProve_idx` (`Id_Cliente_Proveedor`),
  CONSTRAINT `Union_ClienteProve` FOREIGN KEY (`Id_Cliente_Proveedor`) REFERENCES `ct_clienteprovedor` (`Id_ClienteProvedor`),
  CONSTRAINT `Union_Status1` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_personas`
--

LOCK TABLES `tb_personas` WRITE;
/*!40000 ALTER TABLE `tb_personas` DISABLE KEYS */;
INSERT INTO `tb_personas` VALUES (1,'Roberto Garcia Martinez','GAMR950927','Real Mandinga #130 Col. Loma Bonira','Alvarado','Alvarado','Veracruz','90879','2290255214','robergarcia@gmail.com',NULL,1,1,'root@localhost'),(2,'Gabriela Gonzalez Bolado','GOBG961002','Calle 10 #345 Col.Reforma','Boca del Rio','Boca del Rio','Veracruz','98345','2297799555','gaby123@gmail.com',NULL,3,1,'root@localhost'),(3,'Rafael Ortiz Lagunes','OILR970113','Isla de guadalupe #515 Col. Astilleros','Veracruz','Veracruz','Veracruz','91800','2291099026','rafaortiz@gmail.com',NULL,2,1,'root@localhost');
/*!40000 ALTER TABLE `tb_personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_resumen`
--

DROP TABLE IF EXISTS `tb_resumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_resumen` (
  `Folio` varchar(10) NOT NULL,
  `Proyecto` varchar(250) DEFAULT NULL,
  `Ingreso_Egreso` varchar(50) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Empresa` varchar(100) DEFAULT NULL,
  `Persona` varchar(150) DEFAULT NULL,
  `Cuenta` varchar(45) DEFAULT NULL,
  `Grupo` varchar(250) DEFAULT NULL,
  `Descuento` float DEFAULT NULL,
  `Subtotal` double DEFAULT NULL,
  `Suma_Impuestos` double DEFAULT NULL,
  `Total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_resumen`
--

LOCK TABLES `tb_resumen` WRITE;
/*!40000 ALTER TABLE `tb_resumen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_resumen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_status`
--

DROP TABLE IF EXISTS `tb_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tb_status` (
  `Id_Status` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_status`
--

LOCK TABLES `tb_status` WRITE;
/*!40000 ALTER TABLE `tb_status` DISABLE KEYS */;
INSERT INTO `tb_status` VALUES (1,'Alta'),(2,'Baja'),(3,'Terminado'),(4,'Cancelado'),(5,'Pendiente'),(6,'Cerrando contrato');
/*!40000 ALTER TABLE `tb_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_usuario` varchar(45) DEFAULT NULL,
  `Contrasena` varchar(45) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(100) DEFAULT NULL,
  `Sexo` varchar(100) DEFAULT NULL,
  `Fecha_Nacimiento` varchar(100) DEFAULT NULL,
  `Telefono` varchar(100) DEFAULT NULL,
  `Tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`),
  KEY `Status_idx` (`Status`),
  CONSTRAINT `Status` FOREIGN KEY (`Status`) REFERENCES `tb_status` (`Id_Status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'gabriela','827ccb0eea8a706c4c34a16891f84e7b',1,NULL,NULL,NULL,NULL,NULL,'1'),(2,'esoriano','827ccb0eea8a706c4c34a16891f84e7b',1,NULL,NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_movimientos_descrip`
--

DROP TABLE IF EXISTS `vw_movimientos_descrip`;
/*!50001 DROP VIEW IF EXISTS `vw_movimientos_descrip`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vw_movimientos_descrip` AS SELECT 
 1 AS `Folio`,
 1 AS `Id_Movimiento`,
 1 AS `Proyecto`,
 1 AS `Ingreso_Egreso`,
 1 AS `Fecha`,
 1 AS `Empresa`,
 1 AS `Persona`,
 1 AS `Cuenta`,
 1 AS `Grupo`,
 1 AS `Metodo_Pago`,
 1 AS `Forma_Pago`,
 1 AS `Moneda`,
 1 AS `Tipo_Comprobante`,
 1 AS `Concepto`,
 1 AS `Precio_Unitario`,
 1 AS `Descuento`,
 1 AS `Subtotal`,
 1 AS `IVA`,
 1 AS `Ret_IVA`,
 1 AS `Ret_ISR`,
 1 AS `IEPS`,
 1 AS `Total`,
 1 AS `UUID`,
 1 AS `Tipo_Cambio`,
 1 AS `Conversion`,
 1 AS `Ruta_Archivo`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_personas`
--

DROP TABLE IF EXISTS `vw_personas`;
/*!50001 DROP VIEW IF EXISTS `vw_personas`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `vw_personas` AS SELECT 
 1 AS `Nombre`,
 1 AS `RFC`,
 1 AS `Direccion`,
 1 AS `Telefono`,
 1 AS `E_mail`,
 1 AS `Cliente_Provedor`,
 1 AS `Cuenta`,
 1 AS `Grupo`,
 1 AS `Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_movimientos_descrip`
--

/*!50001 DROP VIEW IF EXISTS `vw_movimientos_descrip`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_movimientos_descrip` AS select `a`.`Folio` AS `Folio`,`a`.`Id_Movimiento` AS `Id_Movimiento`,`b`.`Descripcion` AS `Proyecto`,`c`.`Descripcion` AS `Ingreso_Egreso`,`a`.`Fecha` AS `Fecha`,`d`.`Nombre` AS `Empresa`,`e`.`Nombre` AS `Persona`,`f`.`Descripcion` AS `Cuenta`,`g`.`Descripcion` AS `Grupo`,`h`.`Descripcion` AS `Metodo_Pago`,`i`.`Descripcion` AS `Forma_Pago`,`j`.`Descripcion` AS `Moneda`,`k`.`Descripcion` AS `Tipo_Comprobante`,`a`.`Concepto` AS `Concepto`,`a`.`Precio_Unitario` AS `Precio_Unitario`,`a`.`Descuento` AS `Descuento`,`a`.`Subtotal` AS `Subtotal`,`a`.`IVA` AS `IVA`,`a`.`Ret_IVA` AS `Ret_IVA`,`a`.`Ret_ISR` AS `Ret_ISR`,`a`.`IEPS` AS `IEPS`,`a`.`Total` AS `Total`,`a`.`UUID` AS `UUID`,`a`.`Tipo_Cambio` AS `Tipo_Cambio`,`a`.`Conversion` AS `Conversion`,`a`.`Ruta_Archivo` AS `Ruta_Archivo`,`l`.`Descripcion` AS `Status` from (((((((((((`tb_movimientos` `a` join `ct_proyecto` `b` on((`a`.`Id_Proyecto` = `b`.`Id_Proyectos`))) join `ct_ingresoegreso` `c` on((`a`.`Ingreso_Egreso` = `c`.`Id_IE`))) join `tb_empresa` `d` on((`a`.`Id_Empresas` = `d`.`Id_Empresa`))) join `tb_personas` `e` on((`a`.`Id_Personas` = `e`.`Id_Persona`))) join `tb_cuentas` `f` on((`a`.`Id_Cuenta` = `f`.`Id_Cuenta`))) join `ct_grupomovi` `g` on((`f`.`Grupo` = `g`.`Id_GrupoMov`))) join `ct_metodopago` `h` on((`a`.`Id_MetodoPago` = `h`.`Id_Metodo`))) join `ct_formaspago` `i` on((`a`.`Id_FormPago` = `i`.`Id_FormaPago`))) join `ct_monedas` `j` on((`a`.`Id_Monedas` = `j`.`Id_Moneda`))) join `ct_tipocomprobante` `k` on((`a`.`Id_TipoComprobante` = `k`.`Id_Comprobante`))) join `tb_status` `l` on((`a`.`Status` = `l`.`Id_Status`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_personas`
--

/*!50001 DROP VIEW IF EXISTS `vw_personas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_personas` AS select `a`.`Nombre` AS `Nombre`,`a`.`RFC` AS `RFC`,`a`.`Direccion` AS `Direccion`,`a`.`Telefono` AS `Telefono`,`a`.`E_mail` AS `E_mail`,`b`.`Descripcion` AS `Cliente_Provedor`,`e`.`Descripcion` AS `Cuenta`,`f`.`Descripcion` AS `Grupo`,`c`.`Descripcion` AS `Status` from (((((`tb_personas` `a` join `ct_clienteprovedor` `b` on((`a`.`Id_Cliente_Proveedor` = `b`.`Id_ClienteProvedor`))) join `tb_status` `c` on((`a`.`Status` = `c`.`Id_Status`))) left join `tb_movimientos` `d` on((`a`.`Id_Persona` = `d`.`Id_Personas`))) left join `tb_cuentas` `e` on((`d`.`Id_Cuenta` = `e`.`Id_Cuenta`))) left join `ct_grupomovi` `f` on((`e`.`Grupo` = `f`.`Id_GrupoMov`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-10 15:45:27
