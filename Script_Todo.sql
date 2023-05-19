-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `Codigo_Asignatura` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Tipologia` varchar(45) DEFAULT NULL,
  `Creditos` int DEFAULT NULL,
  `Facultad_Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo_Asignatura`,`Facultad_Codigo`),
  KEY `fk_Asignatura_Facultad1_idx` (`Facultad_Codigo`),
  CONSTRAINT `fk_Asignatura_Facultad1` FOREIGN KEY (`Facultad_Codigo`) REFERENCES `facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'Pintura','fundamentales',4,101),(2,'Dibujo','fundamentales',3,102),(3,'Escultura','fundamentales',4,103),(4,'Fotografía','fundamentales',2,104),(5,'Cerámica','fundamentales',3,105),(6,'Artesanía','fundamentales',1,101),(7,'Grabado','fundamentales',4,102),(8,'Arte digital','fundamentales',3,103),(9,'Instalación','fundamentales',4,104),(10,'Performance','fundamentales',3,105),(11,'Escultura','fundamentales',4,101),(12,'Teoría del arte','fundamentales',2,102),(13,'Pintura','fundamentales',2,103),(14,'Dibujo','fundamentales',3,104),(15,'Escultura','fundamentales',4,105),(16,'Fotografía','fundamentales',3,101),(17,'Cerámica','fundamentales',4,102),(18,'Artesanía','fundamentales',3,103),(19,'Grabado','fundamentales',3,104),(20,'Arte digital','fundamentales',2,105),(21,'Instalación','fundamentales',2,101),(22,'Performance','fundamentales',3,102),(23,'Escultura','fundamentales',4,103),(24,'Teoría del arte','fundamentales',3,104),(25,'Pintura','fundamentales',4,105),(26,'Dibujo','fundamentales',1,101),(27,'Escultura','fundamentales',3,102),(28,'Fotografía','fundamentales',2,103),(29,'Cerámica','fundamentales',4,104),(30,'Artesanía','fundamentales',2,105),(31,'Grabado','fundamentales',2,101),(32,'Arte digital','fundamentales',1,102),(33,'Instalación','fundamentales',1,103),(34,'Performance','fundamentales',1,104),(35,'Escultura','fundamentales',1,105),(36,'Teoría del arte','Electiva',4,101),(37,'Pintura','fundamentales',3,102),(38,'Dibujo','fundamentales',1,103),(39,'Escultura','fundamentales',1,104),(40,'Fotografía','fundamentales',4,105),(41,'Álgebra Lineal','fundamentales',4,111),(42,'Cálculo Diferencial e Integral','fundamentales',1,111),(43,'Física','fundamentales',3,111),(44,'Mecánica Clásica','fundamentales',3,111),(45,'Termodinámica','fundamentales',1,111),(46,'Electricidad y Magnetismo','fundamentales',4,111),(47,'Ecuaciones Diferenciales','fundamentales',3,111),(48,'Métodos Numéricos','fundamentales',3,111),(49,'Mecánica de Fluidos','fundamentales',4,111),(50,'Electrónica','fundamentales',4,111),(51,'Álgebra Lineal','fundamentales',4,111),(52,'Historia','fundamentales',2,106),(53,'Geografía','fundamentales',1,107),(54,'Sociología','fundamentales',4,106),(55,'Antropología','fundamentales',2,107),(56,'Psicología','fundamentales',2,106),(57,'Economía','fundamentales',1,107),(58,'Filosofía','fundamentales',1,106),(59,'Política','fundamentales',3,107),(60,'Derecho','fundamentales',3,106),(61,'Comunicación','fundamentales',3,107),(62,'Historia','fundamentales',4,106),(63,'Geografía','fundamentales',3,107),(64,'Sociología','fundamentales',4,106),(65,'Antropología','fundamentales',1,107),(66,'Psicología','fundamentales',2,106),(67,'Economía','fundamentales',3,107),(68,'Filosofía','fundamentales',3,106),(69,'Política','fundamentales',3,107),(70,'Derecho','fundamentales',4,106),(71,'Comunicación','fundamentales',4,107),(72,'Historia del Arte','Libre Eleccion',3,124),(73,'Introducción a la Fotografía','Libre Eleccion',1,125),(74,'Cocina Internacional','Libre Eleccion',4,124),(75,'Música Contemporánea','Libre Eleccion',1,125),(76,'Diseño de Moda','Libre Eleccion',1,124),(77,'Marketing Digital','Libre Eleccion',3,125),(78,'Introducción a la Programación','Libre Eleccion',4,124),(79,'Derecho Ambiental','Libre Eleccion',2,125),(80,'Psicología del Deporte','Libre Eleccion',1,124),(81,'Economía Global','Libre Eleccion',3,125),(82,'Arquitectura Sustentable','Libre Eleccion',4,124),(83,'Literatura Latinoamericana','Libre Eleccion',2,125),(84,'Negocios Internacionales','Libre Eleccion',3,124),(85,'Filosofía Política','Libre Eleccion',2,125),(86,'Cine Documental','Libre Eleccion',1,124),(87,'Diseño Gráfico Avanzado','Libre Eleccion',4,125),(88,'Innovación y Emprendimiento','Libre Eleccion',1,124),(89,'Estudios de Género','Libre Eleccion',1,125),(90,'Periodismo de Investigación','Libre Eleccion',1,124),(91,'Derechos Humanos y Democracia','Libre Eleccion',1,125),(92,'Fotoperiodismo','Libre Eleccion',1,124),(93,'Diseño de Interiores','Libre Eleccion',1,125),(94,'Introducción a la Robótica','Libre Eleccion',4,124),(95,'Marketing de Contenidos','Libre Eleccion',3,125),(96,'Derecho Internacional','Libre Eleccion',3,124),(97,'Historia del Arte','Libre Eleccion',1,125),(98,'Introducción a la Fotografía','Libre Eleccion',4,124),(99,'Cocina Internacional','Libre Eleccion',4,125),(100,'Música Contemporánea','Libre Eleccion',1,124),(101,'Diseño de Moda','Libre Eleccion',3,125),(102,'Marketing Digital','Libre Eleccion',3,124),(103,'Introducción a la Programación','Libre Eleccion',3,125),(104,'Derecho Ambiental','Libre Eleccion',3,124),(105,'Psicología del Deporte','Libre Eleccion',1,125),(106,'Economía Global','Libre Eleccion',1,124),(107,'Arquitectura Sustentable','Libre Eleccion',1,125),(108,'Literatura Latinoamericana','Libre Eleccion',4,124),(109,'Negocios Internacionales','Libre Eleccion',4,125),(110,'Filosofía Política','Libre Eleccion',4,124),(111,'Cine Documental','Libre Eleccion',1,125);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_has_asignatura`
--

DROP TABLE IF EXISTS `asignatura_has_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura_has_asignatura` (
  `Asignatura_Codigo_Asignatura` int NOT NULL,
  `Asignatura_Facultad_Codigo` int NOT NULL,
  `Asignatura_Codigo_Asignatura1` int NOT NULL,
  `Asignatura_Facultad_Codigo1` int NOT NULL,
  PRIMARY KEY (`Asignatura_Codigo_Asignatura`,`Asignatura_Facultad_Codigo`,`Asignatura_Codigo_Asignatura1`,`Asignatura_Facultad_Codigo1`),
  KEY `fk_Asignatura_has_Asignatura_Asignatura2_idx` (`Asignatura_Codigo_Asignatura1`,`Asignatura_Facultad_Codigo1`),
  KEY `fk_Asignatura_has_Asignatura_Asignatura1_idx` (`Asignatura_Codigo_Asignatura`,`Asignatura_Facultad_Codigo`),
  CONSTRAINT `fk_Asignatura_has_Asignatura_Asignatura1` FOREIGN KEY (`Asignatura_Codigo_Asignatura`, `Asignatura_Facultad_Codigo`) REFERENCES `asignatura` (`Codigo_Asignatura`, `Facultad_Codigo`),
  CONSTRAINT `fk_Asignatura_has_Asignatura_Asignatura2` FOREIGN KEY (`Asignatura_Codigo_Asignatura1`, `Asignatura_Facultad_Codigo1`) REFERENCES `asignatura` (`Codigo_Asignatura`, `Facultad_Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_has_asignatura`
--

LOCK TABLES `asignatura_has_asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura_has_asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignatura_has_asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_inscrita`
--

DROP TABLE IF EXISTS `asignatura_inscrita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura_inscrita` (
  `ID_Grupo` int NOT NULL,
  `Grupo_ID_Grupo` int NOT NULL,
  `Periodo_Academico` int DEFAULT NULL,
  PRIMARY KEY (`ID_Grupo`),
  KEY `fk_ASignatura_Inscrita_Grupo1_idx` (`Grupo_ID_Grupo`),
  CONSTRAINT `fk_ASignatura_Inscrita_Grupo1` FOREIGN KEY (`Grupo_ID_Grupo`) REFERENCES `grupo` (`ID_Grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_inscrita`
--

LOCK TABLES `asignatura_inscrita` WRITE;
/*!40000 ALTER TABLE `asignatura_inscrita` DISABLE KEYS */;
INSERT INTO `asignatura_inscrita` VALUES (1,29,1),(2,29,2),(3,30,1),(4,23,2),(5,15,1),(6,28,2),(7,11,1),(8,4,2),(9,19,1),(10,24,2),(11,3,1),(12,23,2),(13,18,4),(14,20,2),(15,22,1);
/*!40000 ALTER TABLE `asignatura_inscrita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura_inscrita_has_historial academico`
--

DROP TABLE IF EXISTS `asignatura_inscrita_has_historial academico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura_inscrita_has_historial academico` (
  `ASignatura_Inscrita_ID_Grupo` int NOT NULL,
  `Historial Academico_ID_HIstorial` int NOT NULL,
  PRIMARY KEY (`ASignatura_Inscrita_ID_Grupo`,`Historial Academico_ID_HIstorial`),
  KEY `fk_ASignatura_Inscrita_has_Historial Academico_Historial Ac_idx` (`Historial Academico_ID_HIstorial`),
  KEY `fk_ASignatura_Inscrita_has_Historial Academico_ASignatura_I_idx` (`ASignatura_Inscrita_ID_Grupo`),
  CONSTRAINT `fk_ASignatura_Inscrita_has_Historial Academico_ASignatura_Ins1` FOREIGN KEY (`ASignatura_Inscrita_ID_Grupo`) REFERENCES `asignatura_inscrita` (`ID_Grupo`),
  CONSTRAINT `fk_ASignatura_Inscrita_has_Historial Academico_Historial Acad1` FOREIGN KEY (`Historial Academico_ID_HIstorial`) REFERENCES `historial academico` (`ID_HIstorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura_inscrita_has_historial academico`
--

LOCK TABLES `asignatura_inscrita_has_historial academico` WRITE;
/*!40000 ALTER TABLE `asignatura_inscrita_has_historial academico` DISABLE KEYS */;
INSERT INTO `asignatura_inscrita_has_historial academico` VALUES (2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15);
/*!40000 ALTER TABLE `asignatura_inscrita_has_historial academico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita inscripcion`
--

DROP TABLE IF EXISTS `cita inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita inscripcion` (
  `ID Cita` int NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  PRIMARY KEY (`ID Cita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita inscripcion`
--

LOCK TABLES `cita inscripcion` WRITE;
/*!40000 ALTER TABLE `cita inscripcion` DISABLE KEYS */;
INSERT INTO `cita inscripcion` VALUES (1,'2023-09-01','14:29:00'),(2,'2022-07-15','13:39:00'),(3,'2022-11-07','09:19:00'),(4,'2023-09-01','15:01:00'),(5,'2022-08-18','13:26:00'),(6,'2023-03-18','11:17:00'),(7,'2022-10-30','10:56:00'),(8,'2022-07-26','06:47:00'),(9,'2023-09-01','15:59:00'),(10,'2023-04-08','10:40:00'),(11,'2023-09-01','17:04:00'),(12,'2023-02-27','07:28:00'),(13,'2023-01-31','08:08:00'),(14,'2023-05-04','06:15:00'),(15,'2022-08-09','12:39:00'),(16,'2023-09-01','19:19:00'),(17,'2022-09-04','06:27:00'),(18,'2023-09-01','18:56:00'),(19,'2023-04-10','09:15:00'),(20,'2023-09-01','17:22:00'),(21,'2022-10-03','09:30:00'),(22,'2023-03-29','12:55:00'),(23,'2022-11-22','07:20:00'),(24,'2023-09-01','19:35:00'),(25,'2022-08-03','07:08:00'),(26,'2022-09-04','08:34:00'),(27,'2023-09-01','16:11:00'),(28,'2023-09-01','18:58:00'),(29,'2023-04-08','13:27:00'),(30,'2023-01-07','13:32:00'),(31,'2023-05-14','12:47:00'),(32,'2022-07-21','11:06:00'),(33,'2023-03-18','07:08:00'),(34,'2023-09-01','19:47:00'),(35,'2022-09-03','10:53:00'),(36,'2023-01-15','06:08:00'),(37,'2022-10-21','06:09:00'),(38,'2022-12-19','09:47:00'),(39,'2023-03-09','07:12:00'),(40,'2022-09-14','10:53:00');
/*!40000 ALTER TABLE `cita inscripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cupo_creditos`
--

DROP TABLE IF EXISTS `cupo_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cupo_creditos` (
  `Creditos_adicionales` int DEFAULT NULL,
  `Cupo_creditos` int DEFAULT NULL,
  `Creditos_Disponibles` int DEFAULT NULL,
  `Creditos_doble_titulacion` int DEFAULT NULL,
  `Historial Academico_ID_HIstorial` int NOT NULL,
  PRIMARY KEY (`Historial Academico_ID_HIstorial`),
  KEY `fk_Cupo _creditos_Historial Academico1_idx` (`Historial Academico_ID_HIstorial`),
  CONSTRAINT `fk_Cupo _creditos_Historial Academico1` FOREIGN KEY (`Historial Academico_ID_HIstorial`) REFERENCES `historial academico` (`ID_HIstorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cupo_creditos`
--

LOCK TABLES `cupo_creditos` WRITE;
/*!40000 ALTER TABLE `cupo_creditos` DISABLE KEYS */;
INSERT INTO `cupo_creditos` VALUES (16,132,84,22,3),(84,186,82,36,4),(46,113,78,79,5),(21,134,97,59,6),(53,141,90,41,7),(89,166,69,24,12),(62,183,46,16,16),(33,141,84,12,17),(57,100,98,38,18),(58,119,7,61,20),(57,144,63,36,21),(66,111,71,59,24),(56,197,93,16,25);
/*!40000 ALTER TABLE `cupo_creditos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  ` Codigo_Departamento` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Facultad_Codigo` int NOT NULL,
  PRIMARY KEY (` Codigo_Departamento`,`Facultad_Codigo`),
  KEY `fk_Departamento_Facultad1_idx` (`Facultad_Codigo`),
  CONSTRAINT `fk_Departamento_Facultad1` FOREIGN KEY (`Facultad_Codigo`) REFERENCES `facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (101,'Ingenieria de civil y agricola',112),(102,'Ingenieria de sistemas e industrial',112),(103,'Electrica y Electronica',112),(104,'Mecanica y mecatronica',112),(105,'Quimica y Ambiental',112),(106,'Intituto de extension e investigacion EIE',112);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `idDocente` int NOT NULL,
  `Persona Vinculada_Documento_ID` int NOT NULL,
  PRIMARY KEY (`idDocente`,`Persona Vinculada_Documento_ID`),
  KEY `fk_Docente_Persona Vinculada1_idx` (`Persona Vinculada_Documento_ID`),
  CONSTRAINT `fk_Docente_Persona Vinculada1` FOREIGN KEY (`Persona Vinculada_Documento_ID`) REFERENCES `persona vinculada` (`Documento_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES (22,113258),(37,125173),(35,129941),(17,137850),(2,153674),(42,159605),(40,171032),(46,197389),(45,209637),(19,230255),(30,230346),(15,241755),(29,286188),(31,289965),(25,292215),(24,294131),(47,301374),(27,326941),(16,357079),(14,382440),(6,392251),(7,422199),(11,442126),(43,453285),(8,485228),(39,494845),(38,517111),(41,523756),(3,551786),(10,553050),(1,557419),(36,613045),(44,645655),(49,674489),(4,677777),(28,707305),(33,744279),(5,750471),(34,797906),(26,804564),(13,832903),(9,833335),(23,843529),(12,849723),(21,865595),(18,878438),(32,894540),(48,923714),(20,977254),(50,987616);
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docente_has_grupo`
--

DROP TABLE IF EXISTS `docente_has_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente_has_grupo` (
  `Docente_idDocente` int NOT NULL,
  `Grupo_ID_Grupo` int NOT NULL,
  PRIMARY KEY (`Docente_idDocente`,`Grupo_ID_Grupo`),
  KEY `fk_Docente_has_Grupo_Grupo1_idx` (`Grupo_ID_Grupo`),
  KEY `fk_Docente_has_Grupo_Docente1_idx` (`Docente_idDocente`),
  CONSTRAINT `fk_Docente_has_Grupo_Docente1` FOREIGN KEY (`Docente_idDocente`) REFERENCES `docente` (`idDocente`),
  CONSTRAINT `fk_Docente_has_Grupo_Grupo1` FOREIGN KEY (`Grupo_ID_Grupo`) REFERENCES `grupo` (`ID_Grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente_has_grupo`
--

LOCK TABLES `docente_has_grupo` WRITE;
/*!40000 ALTER TABLE `docente_has_grupo` DISABLE KEYS */;
INSERT INTO `docente_has_grupo` VALUES (18,1),(26,1),(1,7),(36,7),(40,7),(33,8),(38,8),(10,9),(26,9),(1,10),(3,11),(14,13),(27,21),(8,26),(12,27),(29,30),(40,33),(32,35),(32,38),(5,44),(19,50),(10,51),(38,51),(18,53),(10,54),(20,55),(17,61),(35,63),(12,65),(22,65),(39,66),(4,71),(6,72),(11,73),(37,73),(13,76),(35,76),(31,78);
/*!40000 ALTER TABLE `docente_has_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `espacio`
--

DROP TABLE IF EXISTS `espacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `espacio` (
  `Dia` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  `Edificio` int DEFAULT NULL,
  `Salon` int DEFAULT NULL,
  `ID_espacio` int NOT NULL,
  PRIMARY KEY (`ID_espacio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `espacio`
--

LOCK TABLES `espacio` WRITE;
/*!40000 ALTER TABLE `espacio` DISABLE KEYS */;
INSERT INTO `espacio` VALUES ('2023-05-01','07:00:00',101,203,1),('2023-05-01','09:00:00',222,204,2),('2023-05-01','11:40:00',101,103,3),('2023-05-01','14:40:00',111,603,4),('2023-05-01','16:40:00',101,303,5),('2023-05-01','18:40:00',222,303,6),('2023-05-01','20:40:00',101,503,7),('2023-06-01','07:00:00',222,223,8),('2023-06-01','09:00:00',222,123,9),('2023-06-01','11:40:00',101,313,10),('2023-06-01','14:40:00',111,233,11),('2023-06-01','16:40:00',101,323,12),('2023-06-01','18:40:00',111,323,13),('2023-06-01','20:40:00',101,200,14);
/*!40000 ALTER TABLE `espacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `ID_Estudiante` int NOT NULL,
  `Peama` tinyint DEFAULT NULL,
  `Persona Vinculada_Documento_ID` int NOT NULL,
  PRIMARY KEY (`ID_Estudiante`,`Persona Vinculada_Documento_ID`),
  KEY `fk_Estudiante_Persona Vinculada1` (`Persona Vinculada_Documento_ID`),
  CONSTRAINT `fk_Estudiante_Persona Vinculada1` FOREIGN KEY (`Persona Vinculada_Documento_ID`) REFERENCES `persona vinculada` (`Documento_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (2,1,557644),(3,0,486508),(4,1,803011),(5,1,521603),(6,0,339106),(7,1,924848),(8,0,195321),(9,1,740959),(10,0,396701),(11,0,726451),(12,1,304537),(13,1,951074),(14,0,293538),(15,0,849071),(16,1,231138),(17,0,216137),(18,0,810093),(19,1,524960),(20,1,731718),(21,0,468843),(22,0,992917),(23,1,731990),(24,1,140164),(25,1,475369),(26,1,875861),(27,1,318032),(28,0,486784),(29,0,766647),(30,0,870664),(31,1,380817),(32,0,138123),(33,0,581317),(34,1,784257),(35,1,894677),(36,1,267198),(37,1,861621),(38,1,577221),(39,0,509131),(40,0,558004),(41,0,548057),(42,0,552204),(43,0,711751),(44,1,977422),(45,1,667632),(46,0,747591),(47,0,550104),(48,1,108167),(49,1,415913),(50,0,180927),(51,0,352685),(52,1,852784),(53,0,682125),(54,0,602971),(55,1,119777),(56,0,133160),(57,0,503565),(58,0,165534),(59,1,704721),(60,0,776428),(61,0,970191),(62,1,917631),(63,0,194293),(64,0,341647),(65,1,223449),(66,1,766065),(67,0,531293),(68,1,328397),(69,1,146531),(70,0,689029),(71,0,523220),(72,1,448173),(73,1,594911),(74,1,475807),(75,0,698132),(76,0,156309),(77,0,770556),(78,1,846950),(79,0,313224),(80,1,354739),(81,0,237670),(82,1,918436),(83,1,787892),(84,0,238376),(85,0,876771),(86,1,449741),(87,0,439464),(88,0,161512),(89,0,870546),(90,1,835678),(91,1,200991),(92,1,678443),(93,1,615274),(94,0,881304),(95,0,925229),(96,0,222601),(97,1,246950),(98,0,150609),(99,1,928973),(100,1,623499),(101,0,495461),(102,0,392009),(103,0,491481),(104,0,109586),(105,0,500220),(106,1,442608),(107,1,528351),(108,1,165021),(109,0,619044),(110,0,405736),(111,0,956142),(112,1,679664),(113,0,326949),(114,0,706911),(115,0,171830),(116,1,690049),(117,0,592935),(118,1,572828),(119,1,738914),(120,0,967209),(121,1,288337),(122,0,282793),(123,0,348547),(124,1,460210),(125,0,595158),(126,1,766272),(127,1,558935),(128,0,785432),(129,1,589497),(130,0,764520),(131,0,189009),(132,0,484631),(133,0,413365),(134,1,605361),(135,0,993770),(136,1,763160),(137,0,670292),(138,0,406451),(139,0,764977),(140,1,302093),(141,0,719551),(142,1,483122),(143,0,526501),(144,1,794351),(145,0,212140),(146,1,714405),(147,0,652086),(148,1,181308),(149,0,544320),(150,0,974776),(151,1,615800),(152,1,412775),(153,1,896069),(154,1,955168),(155,1,140900),(156,1,495263),(157,1,460883),(158,1,684151),(159,0,823618),(160,0,180147),(161,1,933131),(162,0,948159),(163,1,928978),(164,0,332219),(165,1,324791),(166,0,824914),(167,1,626711),(168,0,305471),(169,1,643588),(170,1,164017),(171,1,822078),(172,1,289416),(173,0,669308),(174,0,993122),(175,1,195342),(176,1,464309),(177,0,349118),(178,0,143596),(179,0,798501),(180,1,222311),(181,1,644469),(182,1,291446),(183,1,237644),(184,1,385456),(185,0,670069),(186,0,735237),(187,0,730645),(188,1,261128),(189,1,328775),(190,0,842086),(191,1,963068),(192,0,677840),(193,1,921369),(194,1,127973),(195,0,762613),(196,0,995904),(197,1,556761),(198,0,797934),(199,0,728872),(200,0,705957);
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultad`
--

DROP TABLE IF EXISTS `facultad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultad` (
  `Codigo` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Sede_ID_Sede` int NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `fk_Facultad_Sede1_idx` (`Sede_ID_Sede`),
  CONSTRAINT `fk_Facultad_Sede1` FOREIGN KEY (`Sede_ID_Sede`) REFERENCES `sede` (`ID_Sede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultad`
--

LOCK TABLES `facultad` WRITE;
/*!40000 ALTER TABLE `facultad` DISABLE KEYS */;
INSERT INTO `facultad` VALUES (101,'Artes',1),(102,'Artes',2),(103,'Artes',3),(104,'Artes',4),(105,'Artes',5),(106,'Ciencias Humanas',1),(107,'Ciencias Humanas',2),(108,'Ciencias Humanas',3),(109,'Ciencias Humanas',4),(110,'Ciencias Humanas',5),(111,'Ingenieria',1),(112,'Ingenieria',2),(113,'Ingenieria',3),(114,'Ingenieria',4),(115,'Ingenieria',5),(116,'Economicas',1),(117,'Economicas',2),(118,'Economicas',3),(119,'Economicas',4),(120,'Economicas',5),(121,'Medicina',2),(122,'Derecho',2),(123,'Derecho',3),(124,'Bogota',2),(125,'Manizales',2),(126,'Medellin',2),(127,'Palmira',2);
/*!40000 ALTER TABLE `facultad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `Cupos` int DEFAULT NULL,
  `ID_Grupo` int NOT NULL,
  `Numero de grupo` int DEFAULT NULL,
  `Asignatura_Codigo_Asignatura` int NOT NULL,
  PRIMARY KEY (`ID_Grupo`,`Asignatura_Codigo_Asignatura`),
  KEY `fk_Grupo_Asignatura1_idx` (`Asignatura_Codigo_Asignatura`),
  CONSTRAINT `fk_Grupo_Asignatura1` FOREIGN KEY (`Asignatura_Codigo_Asignatura`) REFERENCES `asignatura` (`Codigo_Asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (10,1,1451,1),(5,2,2753,2),(26,3,2303,3),(4,4,8575,4),(17,5,6728,5),(28,6,1350,6),(10,7,3163,7),(8,8,7159,8),(12,9,2363,9),(21,10,1669,10),(23,11,1850,11),(31,12,2846,12),(35,13,5672,13),(2,14,2874,14),(7,15,4341,15),(23,16,7120,16),(35,17,4976,17),(5,18,5082,18),(28,19,1216,19),(21,20,8000,20),(5,21,2664,21),(6,22,8676,22),(27,23,1225,23),(21,24,2652,24),(15,25,7889,25),(16,26,1789,26),(19,27,2555,27),(10,28,1405,28),(31,29,5374,29),(1,30,7565,30),(24,31,9850,31),(16,32,2406,32),(15,33,9957,33),(6,34,2454,34),(12,35,7292,35),(3,36,1732,36),(34,37,6041,37),(6,38,6921,38),(25,39,2402,39),(11,40,6034,40),(29,41,6475,41),(3,42,9684,42),(13,43,1218,43),(30,44,8753,44),(14,45,8274,45),(3,46,3197,46),(35,47,5411,47),(35,48,9488,48),(30,49,7800,49),(18,50,1389,50),(31,51,8486,51),(28,52,7480,52),(16,53,2883,53),(16,54,9565,54),(12,55,3751,55),(6,56,4325,56),(6,57,8428,57),(8,58,1082,58),(16,59,7754,59),(23,60,3210,60),(15,61,1349,61),(20,62,2997,62),(35,63,4450,63),(21,64,5348,64),(31,65,5566,65),(33,66,7328,66),(16,67,3282,67),(32,68,9972,68),(24,69,3920,69),(18,70,6645,70),(2,71,8936,71),(18,72,5023,72),(9,73,2803,73),(30,74,2534,74),(35,75,8364,75),(16,76,6192,76),(1,77,8524,77),(19,78,8032,78),(13,79,4832,79),(1,80,9520,80),(33,81,5999,81),(19,82,9274,82),(32,83,3268,83),(9,84,2242,84),(4,85,5985,85),(15,86,5050,86),(7,87,2094,87),(3,88,1125,88),(8,89,8535,89),(9,90,2476,90),(1,91,7904,91),(6,92,4059,92),(21,93,8161,93),(30,94,2462,94),(25,95,7221,95),(5,96,7363,96),(17,97,9939,97),(32,98,6922,98),(12,99,3942,99),(15,100,9901,100);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_has_espacio`
--

DROP TABLE IF EXISTS `grupo_has_espacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo_has_espacio` (
  `Grupo_Id_grupo` int NOT NULL,
  `Espacio_ID_espacio` int NOT NULL,
  PRIMARY KEY (`Grupo_Id_grupo`,`Espacio_ID_espacio`),
  KEY `fk_Grupo_has_Espacio_Espacio1_idx` (`Espacio_ID_espacio`),
  KEY `fk_Grupo_has_Espacio_Grupo1_idx` (`Grupo_Id_grupo`),
  CONSTRAINT `fk_Grupo_has_Espacio_Espacio1` FOREIGN KEY (`Espacio_ID_espacio`) REFERENCES `espacio` (`ID_espacio`),
  CONSTRAINT `fk_Grupo_has_Espacio_Grupo1` FOREIGN KEY (`Grupo_Id_grupo`) REFERENCES `grupo` (`ID_Grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_has_espacio`
--

LOCK TABLES `grupo_has_espacio` WRITE;
/*!40000 ALTER TABLE `grupo_has_espacio` DISABLE KEYS */;
INSERT INTO `grupo_has_espacio` VALUES (1,1),(55,1),(78,1),(85,1),(1,2),(2,2),(3,2),(33,2),(3,3),(14,3),(32,3),(53,3),(55,3),(69,3),(71,3),(4,4),(18,4),(81,4),(5,5),(11,5),(13,5),(22,5),(26,5),(43,5),(47,5),(5,6),(6,6),(30,6),(38,6),(48,6),(58,6),(96,6),(7,7),(19,7),(72,7),(88,7),(90,7),(8,8),(11,8),(19,8),(26,8),(98,8),(9,9),(3,10),(10,10),(95,10),(11,11),(21,11),(88,11),(12,12),(13,13),(17,13),(30,13),(44,13),(60,13),(70,13),(14,14),(36,14),(65,14),(76,14),(95,14);
/*!40000 ALTER TABLE `grupo_has_espacio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial academico`
--

DROP TABLE IF EXISTS `historial academico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial academico` (
  `ID_HIstorial` int NOT NULL,
  `PAPA` float DEFAULT NULL,
  `Pa` float DEFAULT NULL,
  `Semestre` int DEFAULT NULL,
  `Estudiante_ID_Estudiante` int NOT NULL,
  `Programa_Codigo SNIES` int NOT NULL,
  PRIMARY KEY (`ID_HIstorial`,`Estudiante_ID_Estudiante`),
  KEY `fk_Historial Academico_Estudiante1_idx` (`Estudiante_ID_Estudiante`),
  KEY `fk_Historial Academico_Programa1_idx` (`Programa_Codigo SNIES`),
  CONSTRAINT `fk_Historial Academico_Estudiante1` FOREIGN KEY (`Estudiante_ID_Estudiante`) REFERENCES `estudiante` (`ID_Estudiante`),
  CONSTRAINT `fk_Historial Academico_Programa1` FOREIGN KEY (`Programa_Codigo SNIES`) REFERENCES `programa` (`Codigo SNIES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial academico`
--

LOCK TABLES `historial academico` WRITE;
/*!40000 ALTER TABLE `historial academico` DISABLE KEYS */;
INSERT INTO `historial academico` VALUES (2,2.29,1.01,2,2,103),(3,4.89,3.07,3,3,129),(4,2.56,2.33,4,4,109),(5,3.16,2.42,3,5,107),(6,3.09,0.13,3,6,140),(7,0.98,3.39,2,7,122),(8,0.64,1.57,2,8,103),(9,0.26,2.67,1,9,124),(10,4.39,3.66,3,10,112),(11,1.15,0.28,1,11,133),(12,2.57,0.43,2,12,142),(13,4.42,1.28,1,13,103),(14,4.36,0.13,3,14,128),(15,3.57,1.82,2,15,112),(16,4.77,3.69,4,16,142),(17,3.12,2.98,4,17,142),(18,1.32,3.86,1,18,106),(19,2.22,0.34,2,19,123),(20,2.14,0.13,2,20,138),(21,4.04,4.62,4,21,134),(22,3.78,2.73,2,22,132),(23,1.8,4.79,4,23,137),(24,2.63,0.73,1,24,132),(25,2.77,4.31,4,25,117),(26,0.95,4.35,3,26,118),(27,1.46,3.81,1,27,122),(28,4.45,1.01,2,28,137),(29,2.85,3.63,1,29,142),(30,0.91,0.11,4,30,140),(31,1.01,4.66,4,31,105),(32,2.3,2.97,4,32,113),(33,3.5,0.86,1,33,124),(34,0.58,0.39,2,34,132),(35,2.4,4.36,4,35,136),(36,0.28,0.64,1,36,102),(37,4.19,0.14,1,37,127),(38,0.11,3.75,2,38,137),(39,2.99,3.34,4,39,124),(40,4.62,0.44,2,40,123),(41,4.12,2.18,1,41,103),(42,1.73,4.59,2,42,107),(43,1.3,1.4,3,43,136),(44,1.3,3.22,3,44,141),(45,2.62,1.89,3,45,137),(46,4.19,4.82,1,46,135),(47,3.09,3.42,4,47,113),(48,2.9,2.62,2,48,141),(49,0.2,2.86,2,49,136),(50,2.32,1.43,2,50,123);
/*!40000 ALTER TABLE `historial academico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion/cancelacion`
--

DROP TABLE IF EXISTS `inscripcion/cancelacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion/cancelacion` (
  `Numero_Creditos_Disponibles` int DEFAULT NULL,
  `ID_Inscripcion` int NOT NULL,
  `Cita Inscripcion_ID Cita1` int NOT NULL,
  `Estudiante_ID_Estudiante` int NOT NULL,
  PRIMARY KEY (`ID_Inscripcion`,`Cita Inscripcion_ID Cita1`,`Estudiante_ID_Estudiante`),
  KEY `fk_Inscripcion/Cancelacion_Cita Inscripcion1_idx` (`Cita Inscripcion_ID Cita1`),
  KEY `fk_Inscripcion/Cancelacion_Estudiante1_idx` (`Estudiante_ID_Estudiante`),
  CONSTRAINT `fk_Inscripcion/Cancelacion_Cita Inscripcion1` FOREIGN KEY (`Cita Inscripcion_ID Cita1`) REFERENCES `cita inscripcion` (`ID Cita`),
  CONSTRAINT `fk_Inscripcion/Cancelacion_Estudiante1` FOREIGN KEY (`Estudiante_ID_Estudiante`) REFERENCES `estudiante` (`ID_Estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion/cancelacion`
--

LOCK TABLES `inscripcion/cancelacion` WRITE;
/*!40000 ALTER TABLE `inscripcion/cancelacion` DISABLE KEYS */;
INSERT INTO `inscripcion/cancelacion` VALUES (76,2,2,2),(17,3,3,3),(141,4,4,4),(196,5,5,5),(74,6,6,6),(185,7,7,7),(31,8,8,8),(75,9,9,9),(45,10,10,10),(44,11,11,11),(116,12,12,12),(75,13,13,13),(38,14,14,14),(122,15,15,15),(63,16,16,16),(162,17,17,17),(45,18,18,18),(164,19,19,19),(89,20,20,20),(135,21,21,21),(129,22,22,22),(44,23,23,23),(88,24,24,24),(90,25,25,25),(100,26,26,26),(4,27,27,27),(4,28,28,28),(5,29,29,29),(87,30,30,30),(14,31,31,31),(92,32,32,32),(44,33,33,33),(13,34,34,34),(161,35,35,35),(56,36,36,36),(27,37,37,37),(136,38,38,38),(176,39,39,39),(37,40,40,40);
/*!40000 ALTER TABLE `inscripcion/cancelacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion/cancelacion_has_grupo`
--

DROP TABLE IF EXISTS `inscripcion/cancelacion_has_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion/cancelacion_has_grupo` (
  `Inscripcion/Cancelacion_ID_Inscripcion` int NOT NULL,
  `Grupo_ID_Grupo` int NOT NULL,
  PRIMARY KEY (`Inscripcion/Cancelacion_ID_Inscripcion`,`Grupo_ID_Grupo`),
  KEY `fk_Inscripcion/Cancelacion_has_Grupo_Grupo1_idx` (`Grupo_ID_Grupo`),
  KEY `fk_Inscripcion/Cancelacion_has_Grupo_Inscripcion/Cancelacio_idx` (`Inscripcion/Cancelacion_ID_Inscripcion`),
  CONSTRAINT `fk_Inscripcion/Cancelacion_has_Grupo_Grupo1` FOREIGN KEY (`Grupo_ID_Grupo`) REFERENCES `grupo` (`ID_Grupo`),
  CONSTRAINT `fk_Inscripcion/Cancelacion_has_Grupo_Inscripcion/Cancelacion1` FOREIGN KEY (`Inscripcion/Cancelacion_ID_Inscripcion`) REFERENCES `inscripcion/cancelacion` (`ID_Inscripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion/cancelacion_has_grupo`
--

LOCK TABLES `inscripcion/cancelacion_has_grupo` WRITE;
/*!40000 ALTER TABLE `inscripcion/cancelacion_has_grupo` DISABLE KEYS */;
INSERT INTO `inscripcion/cancelacion_has_grupo` VALUES (2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25);
/*!40000 ALTER TABLE `inscripcion/cancelacion_has_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota` (
  `Primer Corte` float DEFAULT NULL,
  `Segundo Corte` float DEFAULT NULL,
  `Tercer Corte` float DEFAULT NULL,
  `Final` float DEFAULT NULL,
  `Aprobado` tinyint DEFAULT NULL,
  `ID_Nota` int NOT NULL AUTO_INCREMENT,
  `Docente_idDocente` int NOT NULL,
  `Grupo_ID_Grupo` int NOT NULL,
  `Historial Academico_ID_HIstorial` int NOT NULL,
  PRIMARY KEY (`ID_Nota`,`Docente_idDocente`,`Grupo_ID_Grupo`,`Historial Academico_ID_HIstorial`),
  KEY `fk_Nota_Docente_has_Grupo1_idx` (`Docente_idDocente`,`Grupo_ID_Grupo`),
  KEY `fk_Nota_ASignatura_Inscrita_has_Historial Academico1_idx` (`Historial Academico_ID_HIstorial`),
  CONSTRAINT `fk_Nota_ASignatura_Inscrita_has_Historial Academico1` FOREIGN KEY (`Historial Academico_ID_HIstorial`) REFERENCES `asignatura_inscrita_has_historial academico` (`Historial Academico_ID_HIstorial`),
  CONSTRAINT `fk_Nota_Docente_has_Grupo1` FOREIGN KEY (`Docente_idDocente`, `Grupo_ID_Grupo`) REFERENCES `docente_has_grupo` (`Docente_idDocente`, `Grupo_ID_Grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (2,4,5,3.7,1,2,18,1,13),(3.5,3.4,2.66,3.2,1,6,1,10,6),(0.9,2.8,0.92,1.5,0,7,3,11,7),(3.4,4.7,1.6,3.2,1,9,27,21,10),(4.9,0.6,0.42,2,0,10,8,26,11),(4.9,3.2,1.42,3.2,1,23,13,76,4),(3.9,3.1,4.42,3.8,1,24,13,76,5),(3.8,2.8,4,3.5,1,27,13,76,8),(1.2,1.5,2.8,1.8,0,28,13,76,9),(3,3.3,2.9,3.1,1,29,13,76,15),(4.7,2.4,5,4,1,31,19,50,13),(3.9,3.8,2.6,3.4,1,32,19,50,15),(4.9,3.6,2.42,3.6,1,33,20,55,4),(4.9,3.2,1.42,3.2,1,34,31,78,4),(3.9,3.1,4.42,3.8,1,35,11,73,5),(2.4,1.1,1.4,1.6,0,36,32,35,12),(4.7,3.4,1.9,3.3,1,37,32,35,13),(3.8,2.8,4,3.5,1,41,19,50,8),(1.7,1.5,1.4,1.5,0,42,26,1,10),(4.9,4.7,3.7,4.4,1,44,5,44,8),(1.7,3.1,1.6,2.1,0,45,5,44,10),(1.2,1.5,2.8,1.8,0,46,12,27,9),(3,3.3,2.9,3.1,1,47,8,26,15);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona vinculada`
--

DROP TABLE IF EXISTS `persona vinculada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona vinculada` (
  `Documento_ID` int NOT NULL,
  `Tipo_Documento` varchar(30) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Sexo_Biologico` varchar(45) DEFAULT NULL,
  `Correo_Personal` varchar(45) DEFAULT NULL,
  `Telefono_celular` bigint DEFAULT NULL,
  `Telefono_movil` bigint DEFAULT NULL,
  `Nacionalidad` varchar(45) DEFAULT NULL,
  `Correo_institucional` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Documento_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona vinculada`
--

LOCK TABLES `persona vinculada` WRITE;
/*!40000 ALTER TABLE `persona vinculada` DISABLE KEYS */;
INSERT INTO `persona vinculada` VALUES (108167,'CC','Noelyn','Foote','Female','nfoote1b@marriott.com',1931853066,4872826522,'Colombia','NFoote@unal.edu.co'),(109586,'CC','Fredrick','Breeton','Male','fbreeton2v@devhub.com',5246361362,8103591059,'Colombia','FBreeton@unal.edu.co'),(113258,'CC','Radcliffe','Yearn','Male','ryearnl@addtoany.com',2515472870,9538684740,'Colombia','RYearn@unal.edu.co'),(119777,'CC','Jamie','Orbon','Female','jorbon1i@stanford.edu',1415578657,1564882751,'Argentino','JOrbon@unal.edu.co'),(125173,'CC','Cleon','Thunder','Male','cthunder10@mapy.cz',4133539830,7565601596,'Argentina','CThunder@unal.edu.co'),(127973,'CC','Mallorie','Gowanson','Female','mgowanson5d@jugem.jp',2053072430,1675905573,'Argentina','MGowanson@unal.edu.co'),(129941,'CC','Terrence','Eddie','Male','teddiey@macromedia.com',6276720479,3534725055,'Colombia','TEddie@unal.edu.co'),(133160,'CC','Tamiko','Pauluzzi','Female','tpauluzzi1j@princeton.edu',9054805524,3103186707,'Colombia','TPauluzzi@unal.edu.co'),(137850,'CC','Wilhelm','Hubball','Male','whubballg@amazonaws.com',2388003639,4049105920,'Argentina','WHubball@unal.edu.co'),(138123,'CC','Alli','Willey','Female','awilleyv@csmonitor.com',1637099428,6035841579,'Colombia','AWilley@unal.edu.co'),(140164,'CC','Finn','Dyton','Male','fdytonn@soup.io',8712778270,4996450935,'Colombia','FDyton@unal.edu.co'),(140900,'CC','Pavel','Stubley','Male','pstubley4a@shinystat.com',7573720909,9027206255,'Colombia','PStubley@unal.edu.co'),(143596,'CC','Jillene','Shobbrook','Female','jshobbrook4x@independent.co.uk',6131824862,2351893246,'Colombia','JShobbrook@unal.edu.co'),(146531,'CC','Hill','Sprason','Male','hsprason1w@mashable.com',1263768126,5127365727,'Peru','HSprason@unal.edu.co'),(150609,'TI','Lamar','Domico','Male','ldomico2p@symantec.com',7747150512,9076226028,'Colombia','LDomico@unal.edu.co'),(153674,'CC','Gabbie','Perez','Female','gperez1@altervista.org',4607070516,6164999449,'Colombia','GPerez@unal.edu.co'),(156309,'CC','Fidelity','Gounet','Female','fgounet23@comsenz.com',6421373561,2085346417,'Peru','FGounet@unal.edu.co'),(159605,'CC','Fionna','Russon','Female','frusson15@usatoday.com',6126739802,6011761151,'Colombia','FRusson@unal.edu.co'),(161512,'CC','Piper','Ramelot','Female','pramelot2f@aboutads.info',4748223714,9991705409,'Colombia','PRamelot@unal.edu.co'),(164017,'TI','Dov','Wooder','Male','dwooder4p@list-manage.com',1896152114,8906571393,'Peru','DWooder@unal.edu.co'),(165021,'CC','Daisy','Mynard','Female','dmynard2z@booking.com',5459249410,7879898841,'Peru','DMynard@unal.edu.co'),(165534,'CC','Carolus','Escala','Male','cescala1l@constantcontact.com',3185596430,5126009626,'Colombia','CEscala@unal.edu.co'),(171032,'CC','Theresa','Busain','Female','tbusain13@netscape.com',4522244841,9811801065,'Colombia','TBusain@unal.edu.co'),(171830,'CC','Corny','Jerrans','Male','cjerrans36@admin.ch',7611933032,5617403795,'Colombia','CJerrans@unal.edu.co'),(180147,'CC','Leigh','Abbay','Male','labbay4f@intel.com',1919371703,2081713730,'Colombia','LAbbay@unal.edu.co'),(180927,'CC','Mada','Brendel','Female','mbrendel1d@newyorker.com',2987917209,8874534782,'Colombia','MBrendel@unal.edu.co'),(181308,'CC','Frank','Shaughnessy','Male','fshaughnessy43@ask.com',2266034704,9717391318,'Colombia','FShaughnessy@unal.edu.co'),(189009,'TI','Ursa','Schroder','Female','uschroder3m@narod.ru',2066621003,7767459009,'Peru','USchroder@unal.edu.co'),(194293,'CC','Dunc','Lampet','Male','dlampet1q@telegraph.co.uk',4251599651,8789892565,'Argentina','DLampet@unal.edu.co'),(195321,'CC','Mychal','Harriot','Male','mharriot7@wiley.com',6141325317,5266545972,'Colombia','MHarriot@unal.edu.co'),(195342,'CC','Conny','Bradneck','Male','cbradneck4u@ow.ly',2092135687,1817550293,'Colombia','CBradneck@unal.edu.co'),(197389,'CC','Mufinella','Aked','Female','maked19@mit.edu',6021137834,6116823158,'Colombia','MAked@unal.edu.co'),(200991,'TI','Dionysus','Dewicke','Male','ddewicke2i@aboutads.info',4621801006,6802631577,'Colombia','DDewicke@unal.edu.co'),(209637,'CC','Gabriele','True','Male','gtrue18@instagram.com',7161202417,6614532694,'Peru','GTrue@unal.edu.co'),(212140,'TI','Minnaminnie','O\'Hagirtie','Female','mohagirtie40@google.de',9257042644,1638913930,'Colombia','MO\'Hagirtie@unal.edu.co'),(216137,'CC','Bobine','Westmorland','Female','bwestmorlandg@sciencedaily.com',9097982487,6892366099,'Mexico','BWestmorland@unal.edu.co'),(222311,'CC','Sergio','Crossgrove','Male','scrossgrove4z@omniture.com',3626605475,6186504370,'Colombia','SCrossgrove@unal.edu.co'),(222601,'TI','Obediah','Mowsdell','Male','omowsdell2n@si.edu',8951571423,4545699801,'Colombia','OMowsdell@unal.edu.co'),(223449,'TI','Alida','Jagoe','Female','ajagoe1s@soup.io',3024044468,4056755744,'Argentina','AJagoe@unal.edu.co'),(230255,'CC','Merrili','Belli','Female','mbellii@unc.edu',8648305410,2145747680,'Argentina','MBelli@unal.edu.co'),(230346,'CC','Friedrick','Moncrieffe','Male','fmoncrieffet@livejournal.com',1051273609,6833555695,'Colombia','FMoncrieffe@unal.edu.co'),(231138,'CC','Saul','Rouse','Male','srousef@is.gd',2734054463,9031907507,'Colombia','SRouse@unal.edu.co'),(237644,'CC','Adi','Yven','Female','ayven52@nydailynews.com',4008724638,1766439523,'Colombia','AYven@unal.edu.co'),(237670,'TI','Paton','Ferrige','Male','pferrige28@bloglovin.com',7871311728,8771329731,'Colombia','PFerrige@unal.edu.co'),(238376,'TI','Ave','Hagston','Male','ahagston2b@istockphoto.com',8025768502,2065283050,'Colombia','AHagston@unal.edu.co'),(241755,'CC','Cassie','Godehard.sf','Male','cgodehardsfe@loc.gov',1332076244,4089020906,'Colombia','CGodehard.sf@unal.edu.co'),(246950,'CC','Tanhya','Smardon','Female','tsmardon2o@army.mil',2442808518,2433273980,'Colombia','TSmardon@unal.edu.co'),(261128,'CC','Devan','Carus','Female','dcarus57@addthis.com',5591424242,5165600764,'Colombia','DCarus@unal.edu.co'),(267198,'CC','Rosy','Danielut','Female','rdanielutz@delicious.com',8441599720,5752595322,'Colombia','RDanielut@unal.edu.co'),(282793,'CC','Ally','Caple','Female','acaple3d@google.fr',8031097589,7382436057,'Colombia','ACaple@unal.edu.co'),(286188,'CC','Tadeas','Berridge','Male','tberridges@blinklist.com',1526868652,8485927660,'Argentina','TBerridge@unal.edu.co'),(288337,'TI','Leonora','Baverstock','Female','lbaverstock3c@myspace.com',1821977429,6604586249,'Chile','LBaverstock@unal.edu.co'),(289416,'CC','Tina','Lotze','Female','tlotze4r@hud.gov',2456975795,4204716842,'Argentina','TLotze@unal.edu.co'),(289965,'CC','Humphrey','Barrowcliff','Male','hbarrowcliffu@usda.gov',9702651303,1198509282,'Peru','HBarrowcliff@unal.edu.co'),(291446,'CC','Casper','Bainbrigge','Male','cbainbrigge51@google.ru',4151720836,9416975254,'Colombia','CBainbrigge@unal.edu.co'),(292215,'CC','Lennie','Shafto','Male','lshaftoo@phpbb.com',1559514708,5509758508,'Colombia','LShafto@unal.edu.co'),(293538,'CC','Selle','Faulder','Female','sfaulderd@mediafire.com',2264005782,9939378412,'Colombia','SFaulder@unal.edu.co'),(294131,'CC','Veronike','Ronchetti','Female','vronchettin@latimes.com',8663602360,1033103219,'Colombia','VRonchetti@unal.edu.co'),(301374,'CC','Marina','Endean','Female','mendean1a@51.la',7577821997,7058467888,'Colombia','MEndean@unal.edu.co'),(302093,'CC','Yankee','Hatchell','Male','yhatchell3v@independent.co.uk',6896965673,2244875384,'Colombia','YHatchell@unal.edu.co'),(304537,'CC','Ellie','Larvin','Female','elarvinb@businessweek.com',4764400019,4749100642,'Colombia','ELarvin@unal.edu.co'),(305471,'CC','Tristan','Jurkowski','Male','tjurkowski4n@rediff.com',3939633107,5681967939,'Colombia','TJurkowski@unal.edu.co'),(313224,'CC','Vincenz','Galero','Male','vgalero26@who.int',7719939672,4398191741,'Colombia','VGalero@unal.edu.co'),(318032,'CC','Bjorn','Bamford','Male','bbamfordq@cbslocal.com',2555072990,7895324719,'Colombia','BBamford@unal.edu.co'),(324791,'CC','Joshia','Tripet','Male','jtripet4k@reddit.com',1136617984,6894764750,'Peru','JTripet@unal.edu.co'),(326941,'CC','Aylmar','Trebilcock','Male','atrebilcockq@goo.ne.jp',6365023262,7238603792,'Chile','ATrebilcock@unal.edu.co'),(326949,'CC','Karly','Buff','Female','kbuff34@psu.edu',2872717430,1632347716,'Mexico','KBuff@unal.edu.co'),(328397,'TI','Cindelyn','Swains','Female','cswains1v@imgur.com',3949537865,6931337852,'Colombia','CSwains@unal.edu.co'),(328775,'CC','Sherm','Priestman','Male','spriestman58@yelp.com',3686153912,3914225196,'Colombia','SPriestman@unal.edu.co'),(332219,'CC','Rabbi','Tinston','Male','rtinston4j@techcrunch.com',8806756369,2448236400,'Colombia','RTinston@unal.edu.co'),(339106,'CC','Hogan','Ellson','Male','hellson5@weather.com',2868525844,2157965251,'Colombia','HEllson@unal.edu.co'),(341647,'CC','Pearline','Farncomb','Female','pfarncomb1r@google.com',1813136478,6555791832,'Colombia','PFarncomb@unal.edu.co'),(348547,'CC','Brita','Kissick','Female','bkissick3e@addtoany.com',3312677561,4015230422,'Colombia','BKissick@unal.edu.co'),(349118,'CC','Holly','Madgwich','Male','hmadgwich4w@xrea.com',8903026342,9358509937,'Colombia','HMadgwich@unal.edu.co'),(352685,'CC','Derick','Strong','Male','dstrong1e@delicious.com',2356474356,6304320135,'Colombia','DStrong@unal.edu.co'),(354739,'CC','Brodie','Downton','Male','bdownton27@people.com.cn',3901626459,4671106105,'Colombia','BDownton@unal.edu.co'),(357079,'CC','Forrester','McMenemy','Male','fmcmenemyf@tiny.cc',5708858439,8634174006,'Chile','FMcMenemy@unal.edu.co'),(380817,'TI','Ardeen','Slane','Female','aslaneu@google.com.au',3743812643,1568379070,'Colombia','ASlane@unal.edu.co'),(382440,'CC','Garrott','Earle','Male','gearled@auda.org.au',2047736748,4359533864,'Mexico','GEarle@unal.edu.co'),(385456,'CC','Rinaldo','Beeble','Male','rbeeble53@businessweek.com',8489828037,6532061577,'Colombia','RBeeble@unal.edu.co'),(392009,'CC','Pincus','Blethyn','Male','pblethyn2t@gizmodo.com',6726965958,1299994876,'Colombia','PBlethyn@unal.edu.co'),(392251,'CC','Mirna','Brignell','Female','mbrignell5@washingtonpost.com',3826047391,8855859225,'Colombia','MBrignell@unal.edu.co'),(396701,'CC','Iris','Ambroziak','Female','iambroziak9@boston.com',4914936403,1572172380,'Colombia','IAmbroziak@unal.edu.co'),(405736,'CC','Gabie','Sarch','Male','gsarch31@delicious.com',6952061324,6695978478,'Colombia','GSarch@unal.edu.co'),(406451,'CC','Waylon','Currer','Male','wcurrer3t@ft.com',5555792347,9667558249,'Colombia','WCurrer@unal.edu.co'),(412775,'TI','Chrissy','Razoux','Female','crazoux47@japanpost.jp',7534758521,6931081646,'Colombia','CRazoux@unal.edu.co'),(413365,'CC','Kariotta','Munsey','Female','kmunsey3o@geocities.com',6649435017,4732436121,'Colombia','KMunsey@unal.edu.co'),(415913,'TI','Wye','Pelcheur','Male','wpelcheur1c@amazon.co.jp',3014534212,2792927948,'Colombia','WPelcheur@unal.edu.co'),(422199,'CC','Culver','Tice','Male','ctice6@alibaba.com',7225505907,7704439511,'Colombia','CTice@unal.edu.co'),(439464,'CC','Deerdre','Chesney','Female','dchesney2e@nymag.com',3141924637,4361249763,'Colombia','DChesney@unal.edu.co'),(442126,'CC','Sheri','Bessant','Female','sbessanta@addtoany.com',2485014976,6756091533,'Mexico','SBessant@unal.edu.co'),(442608,'TI','Lurlene','Farfoot','Female','lfarfoot2x@comcast.net',1387206226,2089729739,'Colombia','LFarfoot@unal.edu.co'),(448173,'CC','Eugen','Edgar','Male','eedgar1z@unicef.org',1666455113,5798963858,'Colombia','EEdgar@unal.edu.co'),(449741,'CC','Harmonie','Starmer','Female','hstarmer2d@discuz.net',4587417460,6673052655,'Peru','HStarmer@unal.edu.co'),(453285,'CC','Odelle','Cranshaw','Female','ocranshaw16@liveinternet.ru',2466507797,4404561022,'Chile','OCranshaw@unal.edu.co'),(460210,'CC','Heindrick','Cuncarr','Male','hcuncarr3f@arstechnica.com',5629304854,1673647238,'Peru','HCuncarr@unal.edu.co'),(460883,'TI','Micki','Ixor','Female','mixor4c@google.it',9735741221,7553328640,'Colombia','MIxor@unal.edu.co'),(464309,'CC','Dulcea','Ritchman','Female','dritchman4v@blog.com',2023230019,5647658521,'Colombia','DRitchman@unal.edu.co'),(468843,'CC','Kali','Hackley','Female','khackleyk@europa.eu',7095264106,5367844143,'Colombia','KHackley@unal.edu.co'),(475369,'CC','Caleb','Blasl','Male','cblaslo@google.ca',4728179971,2143067667,'Colombia','CBlasl@unal.edu.co'),(475807,'CC','Gerome','Gibbins','Male','ggibbins21@ft.com',1617219336,5436546647,'Mexico','GGibbins@unal.edu.co'),(483122,'CC','Ignacio','Minico','Male','iminico3x@google.it',7167397658,8242737734,'Colombia','IMinico@unal.edu.co'),(484631,'TI','Costa','Macoun','Male','cmacoun3n@mapy.cz',9938347476,8406083379,'Argentina','CMacoun@unal.edu.co'),(485228,'CC','Madelin','Halliday','Female','mhalliday7@youtube.com',4808056728,5182383825,'Colombia','MHalliday@unal.edu.co'),(486508,'TI','Sutton','Castagnasso','Male','scastagnasso2@seattletimes.com',2211696990,2467902204,'Colombia','SCastagnasso@unal.edu.co'),(486784,'CC','Bernardine','Caile','Female','bcailer@wordpress.org',2356176082,4096060541,'Peru','BCaile@unal.edu.co'),(491481,'CC','Kimberly','Jeanin','Female','kjeanin2u@nytimes.com',1828480050,3412817785,'Mexico','KJeanin@unal.edu.co'),(494845,'CC','Orren','Wasbey','Male','owasbey12@wunderground.com',8983751015,9839970980,'Colombia','OWasbey@unal.edu.co'),(495263,'TI','Nealon','Siebert','Male','nsiebert4b@mapy.cz',8088223369,1343069180,'Colombia','NSiebert@unal.edu.co'),(495461,'CC','Alon','Rickets','Male','arickets2s@sina.com.cn',1424349773,9304440689,'Colombia','ARickets@unal.edu.co'),(500220,'CC','Lilly','Whiff','Female','lwhiff2w@mayoclinic.com',1867805887,8408803201,'Colombia','LWhiff@unal.edu.co'),(503565,'CC','Chucho','Pearson','Male','cpearson1k@diigo.com',1494952699,7752982765,'Colombia','CPearson@unal.edu.co'),(509131,'TI','Carolina','Stanluck','Female','cstanluck12@nydailynews.com',3405969264,9051496217,'Colombia','CStanluck@unal.edu.co'),(517111,'CC','Tremayne','Cobbe','Male','tcobbe11@tuttocitta.it',4978490921,4235966322,'Colombia','TCobbe@unal.edu.co'),(521603,'CC','Chrissie','Domegan','Female','cdomegan4@npr.org',2402054692,9666877046,'Colombia','CDomegan@unal.edu.co'),(523220,'TI','Jorge','Falkinder','Male','jfalkinder1y@blogspot.com',7762742856,6508366535,'Colombia','JFalkinder@unal.edu.co'),(523756,'CC','Nicoline','Liddiatt','Female','nliddiatt14@time.com',7904106677,2856652336,'Colombia','NLiddiatt@unal.edu.co'),(524960,'TI','Liza','Langhorne','Female','llanghornei@tamu.edu',2833502922,5053201705,'Mexico','LLanghorne@unal.edu.co'),(526501,'TI','Elroy','Shimmin','Male','eshimmin3y@barnesandnoble.com',2475224009,5653428367,'Colombia','EShimmin@unal.edu.co'),(528351,'TI','Bettina','Rosa','Female','brosa2y@state.gov',5042266562,7489172077,'Colombia','BRosa@unal.edu.co'),(531293,'TI','Orazio','Nozzolinii','Male','onozzolinii1u@histats.com',7143587739,6212544658,'Colombia','ONozzolinii@unal.edu.co'),(544320,'CC','Inez','Fellgate','Female','ifellgate44@alexa.com',9259412615,6023416759,'Colombia','IFellgate@unal.edu.co'),(548057,'CC','Mel','Denisyev','Male','mdenisyev14@reverbnation.com',6574713657,9007233061,'Colombia','MDenisyev@unal.edu.co'),(550104,'CC','Riane','Moss','Female','rmoss1a@purevolume.com',6787380771,4909403603,'Colombia','RMoss@unal.edu.co'),(551786,'CC','Edithe','Huggons','Female','ehuggons2@google.co.jp',2411280203,6929430811,'Colombia','EHuggons@unal.edu.co'),(552204,'CC','Harmony','Knapman','Female','hknapman15@barnesandnoble.com',3207460479,3153117651,'Colombia','HKnapman@unal.edu.co'),(553050,'CC','Terrel','Deakins','Male','tdeakins9@ehow.com',5649855678,5135722957,'Colombia','TDeakins@unal.edu.co'),(556761,'CC','Megan','Fincham','Female','mfincham5g@wufoo.com',8306414426,8197305090,'Colombia','MFincham@unal.edu.co'),(557419,'CC','Tobi','Brunstan','Female','tbrunstan0@bloomberg.com',5194793633,2998154162,'Colombia','TBrunstan@unal.edu.co'),(557644,'TI','Cecile','Oliffe','Female','coliffe1@jigsy.com',4091834677,7013404640,'Colombia','COliffe@unal.edu.co'),(558004,'CC','Lindie','Hickeringill','Female','lhickeringill13@themeforest.net',1726912477,3196781292,'Chile','LHickeringill@unal.edu.co'),(558935,'CC','Dame','Stang-Gjertsen','Male','dstanggjertsen3i@cisco.com',9648892016,6561230188,'Mexico','DStang-Gjertsen@unal.edu.co'),(572828,'CC','Myra','Upton','Female','mupton39@angelfire.com',4997663812,4256629887,'Colombia','MUpton@unal.edu.co'),(577221,'CC','Charlean','Smiz','Female','csmiz11@mayoclinic.com',6413172977,4239144375,'Colombia','CSmiz@unal.edu.co'),(581317,'CC','Rancell','Ramalhete','Male','rramalhetew@amazon.de',1829702609,8406857231,'Colombia','RRamalhete@unal.edu.co'),(589497,'CC','Lita','Foster','Female','lfoster3k@skype.com',5759854051,6469344883,'Colombia','LFoster@unal.edu.co'),(592935,'CC','Ernst','Galliard','Male','egalliard38@samsung.com',5889803818,1365822780,'Colombia','EGalliard@unal.edu.co'),(594911,'CC','Gerianna','Wardale','Female','gwardale20@sciencedaily.com',6793535943,4545506206,'Colombia','GWardale@unal.edu.co'),(595158,'CC','Seth','Heazel','Male','sheazel3g@edublogs.org',6211856432,2231191999,'Mexico','SHeazel@unal.edu.co'),(602971,'CC','Armin','Timpany','Male','atimpany1h@slate.com',2562418796,4986333928,'Colombia','ATimpany@unal.edu.co'),(605361,'TI','Isidoro','Itzakson','Male','iitzakson3p@facebook.com',9883177980,1275404483,'Colombia','IItzakson@unal.edu.co'),(613045,'CC','Roanne','Bleiman','Female','rbleimanz@canalblog.com',5963536165,1763179199,'Colombia','RBleiman@unal.edu.co'),(615274,'CC','Hildagard','Tabart','Female','htabart2k@yale.edu',3991125926,1534544440,'Colombia','HTabart@unal.edu.co'),(615800,'CC','Jewell','Robjohns','Female','jrobjohns46@uiuc.edu',7399885925,9307533501,'Colombia','JRobjohns@unal.edu.co'),(619044,'TI','Claire','Jumel','Male','cjumel30@springer.com',7964386466,7787335072,'Colombia','CJumel@unal.edu.co'),(623499,'CC','Dal','Deville','Male','ddeville2r@yahoo.co.jp',7287208321,5714929419,'Colombia','DDeville@unal.edu.co'),(626711,'CC','Valentine','Piatkowski','Female','vpiatkowski4m@4shared.com',9942722685,1667130006,'Colombia','VPiatkowski@unal.edu.co'),(643588,'CC','Wade','Babb','Male','wbabb4o@kickstarter.com',8878006929,7821414609,'Colombia','WBabb@unal.edu.co'),(644469,'CC','Basil','De Meis','Male','bdemeis50@blinklist.com',8412379367,3373132280,'Colombia','BDe Meis@unal.edu.co'),(645655,'CC','Syman','Lowless','Male','slowless17@imdb.com',3419504795,4727130319,'Colombia','SLowless@unal.edu.co'),(652086,'CC','Ashil','Sibbs','Female','asibbs42@hud.gov',7552478987,4099420814,'Colombia','ASibbs@unal.edu.co'),(667632,'CC','Maia','Stoeckle','Female','mstoeckle18@yahoo.co.jp',8122778855,8548799173,'Colombia','MStoeckle@unal.edu.co'),(669308,'TI','Fedora','De Castri','Female','fdecastri4s@cnet.com',4259669216,2263254510,'Colombia','FDe Castri@unal.edu.co'),(670069,'CC','Elane','Ricks','Female','ericks54@google.de',2479902881,9437780866,'Mexico','ERicks@unal.edu.co'),(670292,'CC','Cherri','De Witt','Female','cdewitt3s@domainmarket.com',7336709102,4605526866,'Peru','CDe Witt@unal.edu.co'),(674489,'CC','Fayre','Docket','Female','fdocket1c@abc.net.au',3014086691,5111272326,'Colombia','FDocket@unal.edu.co'),(677777,'CC','Clo','Boddy','Female','cboddy3@google.ca',7402589027,5971066294,'Colombia','CBoddy@unal.edu.co'),(677840,'CC','Ivor','Hocking','Male','ihocking5b@lycos.com',4582429040,9465054415,'Colombia','IHocking@unal.edu.co'),(678443,'CC','Emmott','Snarie','Male','esnarie2j@nba.com',4539352598,5784422414,'Colombia','ESnarie@unal.edu.co'),(679664,'TI','Rosita','Worsnip','Female','rworsnip33@dell.com',9668927755,7569163558,'Colombia','RWorsnip@unal.edu.co'),(682125,'CC','Liz','Targe','Female','ltarge1g@cam.ac.uk',3546585274,4807910679,'Argentina','LTarge@unal.edu.co'),(684151,'CC','Birk','Akram','Male','bakram4d@51.la',2266873552,3975561816,'Mexico','BAkram@unal.edu.co'),(689029,'TI','Georges','Lukasik','Male','glukasik1x@godaddy.com',8434708704,5988237121,'Chile','GLukasik@unal.edu.co'),(690049,'CC','Morie','Plewes','Male','mplewes37@bravesites.com',3749007165,1734493072,'Colombia','MPlewes@unal.edu.co'),(698132,'CC','Emily','Leeves','Female','eleeves22@stumbleupon.com',9273771789,7726127404,'Colombia','ELeeves@unal.edu.co'),(704721,'CC','Jean','Calder','Female','jcalder1m@accuweather.com',2141863533,1431647420,'Colombia','JCalder@unal.edu.co'),(705957,'TI','Syd','Bamlet','Male','sbamlet5j@purevolume.com',6665644091,9832228675,'Colombia','SBamlet@unal.edu.co'),(706911,'CC','Alistair','Chrispin','Male','achrispin35@stanford.edu',3546293991,3091506209,'Colombia','AChrispin@unal.edu.co'),(707305,'CC','Aloysius','McMorran','Male','amcmorranr@prnewswire.com',3338225169,4729417299,'Colombia','AMcMorran@unal.edu.co'),(711751,'TI','Hebert','Campagne','Male','hcampagne16@squarespace.com',7618720780,7116977606,'Colombia','HCampagne@unal.edu.co'),(714405,'CC','Bambi','Dominico','Female','bdominico41@tiny.cc',5895290037,8189362093,'Colombia','BDominico@unal.edu.co'),(719551,'TI','Stanley','Lineham','Male','slineham3w@usa.gov',6655811641,4738410309,'Colombia','SLineham@unal.edu.co'),(726451,'CC','Ingelbert','d\' Elboux','Male','idelbouxa@cornell.edu',3295096982,3897640923,'Colombia','Id\' Elboux@unal.edu.co'),(728872,'CC','Olav','Sprakes','Male','osprakes5i@hugedomains.com',8246360032,2386399802,'Colombia','OSprakes@unal.edu.co'),(730645,'TI','Thibaut','O\'Loughlin','Male','toloughlin56@booking.com',2091631040,2883817709,'Colombia','TO\'Loughlin@unal.edu.co'),(731718,'CC','Fernanda','Nani','Female','fnanij@slate.com',2998466956,4866048907,'Colombia','FNani@unal.edu.co'),(731990,'CC','Druci','Kirdsch','Female','dkirdschm@washington.edu',4782932233,8264390598,'Chile','DKirdsch@unal.edu.co'),(735237,'TI','Danielle','Filler','Female','dfiller55@fema.gov',5048784748,9472519702,'Peru','DFiller@unal.edu.co'),(738914,'TI','Eileen','Caseley','Female','ecaseley3a@google.it',4323890129,6034602351,'Argentina','ECaseley@unal.edu.co'),(740959,'CC','Silvio','Murley','Male','smurley8@a8.net',7137904028,1429735046,'Colombia','SMurley@unal.edu.co'),(744279,'CC','Noel','Mawhinney','Male','nmawhinneyw@dropbox.com',1361192165,2319240041,'Colombia','NMawhinney@unal.edu.co'),(747591,'TI','Gordon','Trevarthen','Male','gtrevarthen19@hao123.com',4352297071,3222926513,'Argentina','GTrevarthen@unal.edu.co'),(750471,'CC','Rabi','Grist','Male','rgrist4@ca.gov',1808789258,6058858108,'Colombia','RGrist@unal.edu.co'),(762613,'TI','Alvan','Storrock','Male','astorrock5e@smugmug.com',1112958513,2112818244,'Colombia','AStorrock@unal.edu.co'),(763160,'CC','Lawry','Hirsthouse','Male','lhirsthouse3r@phoca.cz',7026499005,6288635898,'Colombia','LHirsthouse@unal.edu.co'),(764520,'CC','Curry','Trevallion','Male','ctrevallion3l@mail.ru',1149311298,4404854890,'Colombia','CTrevallion@unal.edu.co'),(764977,'TI','Druci','Whittam','Female','dwhittam3u@arizona.edu',7745729945,1371195633,'Colombia','DWhittam@unal.edu.co'),(766065,'TI','Artemis','Schubart','Male','aschubart1t@last.fm',9582117046,4266911112,'Mexico','ASchubart@unal.edu.co'),(766272,'TI','Nanni','MacDermid','Female','nmacdermid3h@unicef.org',6227738399,3471923456,'Colombia','NMacDermid@unal.edu.co'),(766647,'CC','Kipp','Rosenberg','Male','krosenbergs@nationalgeographic.com',4528987408,1082424025,'Colombia','KRosenberg@unal.edu.co'),(770556,'TI','Dieter','Tuvey','Male','dtuvey24@digg.com',3573817063,7844847622,'Peru','DTuvey@unal.edu.co'),(776428,'CC','Krystle','Wadly','Female','kwadly1n@state.tx.us',5317612953,1458232196,'Colombia','KWadly@unal.edu.co'),(784257,'TI','Simonne','Jaspar','Female','sjasparx@biglobe.ne.jp',9177435878,7046147013,'Colombia','SJaspar@unal.edu.co'),(785432,'CC','Lark','Cuppitt','Female','lcuppitt3j@wisc.edu',4448773660,3907002127,'Peru','LCuppitt@unal.edu.co'),(787892,'TI','Venus','McGeown','Female','vmcgeown2a@dyndns.org',1345366473,7871648364,'Argentina','VMcGeown@unal.edu.co'),(794351,'CC','Jayme','Eskrigge','Female','jeskrigge3z@ameblo.jp',7003354675,1323614349,'Colombia','JEskrigge@unal.edu.co'),(797906,'CC','Malchy','Vaughten','Male','mvaughtenx@vkontakte.ru',3261017022,3843776416,'Peru','MVaughten@unal.edu.co'),(797934,'TI','Berton','Fownes','Male','bfownes5h@census.gov',9133554963,1702352445,'Colombia','BFownes@unal.edu.co'),(798501,'CC','Ozzie','Sundin','Male','osundin4y@cisco.com',3516197304,9408309398,'Mexico','OSundin@unal.edu.co'),(803011,'CC','Rosemarie','Chapelle','Female','rchapelle3@skype.com',9228178050,1689992942,'Colombia','RChapelle@unal.edu.co'),(804564,'CC','Garrott','Claybourne','Male','gclaybournep@about.com',3074856771,4733267210,'Colombia','GClaybourne@unal.edu.co'),(810093,'CC','Kenyon','Langabeer','Male','klangabeerh@friendfeed.com',2845082788,2068694345,'Argentina','KLangabeer@unal.edu.co'),(822078,'TI','Belicia','Burgis','Female','bburgis4q@forbes.com',5869405131,6424174461,'Colombia','BBurgis@unal.edu.co'),(823618,'TI','Antoine','Druitt','Male','adruitt4e@rediff.com',8125319170,7741034179,'Colombia','ADruitt@unal.edu.co'),(824914,'CC','Kiley','Eckly','Female','keckly4l@creativecommons.org',2404517191,8685526041,'Colombia','KEckly@unal.edu.co'),(832903,'CC','Brian','Sheen','Male','bsheenc@hhs.gov',4739597928,3349186237,'Colombia','BSheen@unal.edu.co'),(833335,'CC','Douglas','Brougham','Male','dbrougham8@bizjournals.com',8001396562,8071696147,'Colombia','DBrougham@unal.edu.co'),(835678,'TI','Efren','Daw','Male','edaw2h@opera.com',7593010426,4447105861,'Colombia','EDaw@unal.edu.co'),(842086,'CC','Dimitri','Dautry','Male','ddautry59@mysql.com',4387633285,2619744222,'Colombia','DDautry@unal.edu.co'),(843529,'CC','Jonell','Gascoigne','Female','jgascoignem@devhub.com',2074931060,3529776329,'Colombia','JGascoigne@unal.edu.co'),(846950,'CC','Van','Coventry','Male','vcoventry25@dagondesign.com',2253368469,4966329961,'Peru','VCoventry@unal.edu.co'),(849071,'CC','Mile','Sudddard','Male','msudddarde@plala.or.jp',4151870752,4428514721,'Colombia','MSudddard@unal.edu.co'),(849723,'CC','Ingram','Ringsell','Male','iringsellb@typepad.com',2271898917,4179620272,'Colombia','IRingsell@unal.edu.co'),(852784,'TI','Lydie','Schoales','Female','lschoales1f@geocities.com',2776617871,2099238527,'Colombia','LSchoales@unal.edu.co'),(861621,'CC','Emmalyn','Pennycook','Female','epennycook10@guardian.co.uk',4678415966,1167387903,'Colombia','EPennycook@unal.edu.co'),(865595,'CC','Kania','Peete','Female','kpeetek@tamu.edu',3031493176,6835001151,'Colombia','KPeete@unal.edu.co'),(870546,'CC','Tana','Novello','Female','tnovello2g@rambler.ru',7167119873,6886527314,'Mexico','TNovello@unal.edu.co'),(870664,'TI','Malory','Kneafsey','Female','mkneafseyt@photobucket.com',5332114028,1211328337,'Mexico','MKneafsey@unal.edu.co'),(875861,'CC','Tiena','Trenbay','Female','ttrenbayp@slate.com',6666087370,5951669887,'Colombia','TTrenbay@unal.edu.co'),(876771,'TI','Daniela','Lortz','Female','dlortz2c@mozilla.org',8164469722,2044268290,'Colombia','DLortz@unal.edu.co'),(878438,'CC','Allyn','Seak','Male','aseakh@cocolog-nifty.com',2964695314,8928588107,'Mexico','ASeak@unal.edu.co'),(881304,'TI','Kaspar','Bolus','Male','kbolus2l@google.es',9898805069,2226874775,'Colombia','KBolus@unal.edu.co'),(894540,'CC','Ursala','Garrettson','Female','ugarrettsonv@spotify.com',4556177698,8131675351,'Chile','UGarrettson@unal.edu.co'),(894677,'CC','Latisha','Fentem','Female','lfentemy@woothemes.com',5344320211,7043102780,'Colombia','LFentem@unal.edu.co'),(896069,'CC','Suzi','Leckey','Female','sleckey48@themeforest.net',6263700635,4827934039,'Colombia','SLeckey@unal.edu.co'),(917631,'CC','Clarisse','McRory','Female','cmcrory1p@npr.org',9786865602,2026571002,'Peru','CMcRory@unal.edu.co'),(918436,'CC','Ignacius','Falconbridge','Male','ifalconbridge29@cnet.com',8267316621,8838894390,'Argentina','IFalconbridge@unal.edu.co'),(921369,'TI','Alejoa','Twinborough','Male','atwinborough5c@blog.com',9291674968,1739872313,'Colombia','ATwinborough@unal.edu.co'),(923714,'CC','Bradford','Shooter','Male','bshooter1b@irs.gov',5164046080,1839654521,'Colombia','BShooter@unal.edu.co'),(924848,'CC','Park','Mabb','Male','pmabb6@wsj.com',9693284290,2286334675,'Argentina','PMabb@unal.edu.co'),(925229,'CC','Jean','Wagstaffe','Female','jwagstaffe2m@tamu.edu',3086529169,6681019604,'Colombia','JWagstaffe@unal.edu.co'),(928973,'TI','Meta','Devine','Female','mdevine2q@eventbrite.com',7667777733,5253769910,'Colombia','MDevine@unal.edu.co'),(928978,'TI','Adi','Yarrall','Female','ayarrall4i@uiuc.edu',4351539597,2828546583,'Argentina','AYarrall@unal.edu.co'),(933131,'TI','Poppy','Tringham','Female','ptringham4g@unesco.org',4867886965,7587176601,'Colombia','PTringham@unal.edu.co'),(948159,'CC','Sheridan','Dreng','Male','sdreng4h@vkontakte.ru',8752770895,3363466208,'Argentina','SDreng@unal.edu.co'),(951074,'CC','Marcille','Seal','Female','msealc@weibo.com',4896866373,2398523783,'Colombia','MSeal@unal.edu.co'),(955168,'TI','Ame','Levee','Female','alevee49@cornell.edu',2372009502,1238888111,'Colombia','ALevee@unal.edu.co'),(956142,'CC','Cheri','Dymock','Female','cdymock32@reddit.com',7347558385,4192964989,'Peru','CDymock@unal.edu.co'),(963068,'CC','Rockwell','Perillo','Male','rperillo5a@gnu.org',8577725498,8314814204,'Colombia','RPerillo@unal.edu.co'),(967209,'CC','Selie','Langfat','Female','slangfat3b@usnews.com',3834217013,6394414586,'Argentina','SLangfat@unal.edu.co'),(970191,'CC','Shannah','Steffans','Female','ssteffans1o@msn.com',1926919026,6236304977,'Colombia','SSteffans@unal.edu.co'),(974776,'CC','Jillene','Tabner','Female','jtabner45@unblog.fr',4496074785,2219101919,'Peru','JTabner@unal.edu.co'),(977254,'CC','Carline','Gianilli','Female','cgianillij@vkontakte.ru',7781179682,9711457095,'Colombia','CGianilli@unal.edu.co'),(977422,'CC','Salomi','Shark','Female','sshark17@google.ru',7175566466,6366532007,'Colombia','SShark@unal.edu.co'),(987616,'CC','Cosimo','Nottle','Male','cnottle1d@furl.net',3942794689,3125650768,'Chile','CNottle@unal.edu.co'),(992917,'CC','Wilbur','Steinhammer','Male','wsteinhammerl@mediafire.com',8611944371,4861001863,'Colombia','WSteinhammer@unal.edu.co'),(993122,'CC','Tedie','Honig','Male','thonig4t@narod.ru',7453856393,3864738590,'Colombia','THonig@unal.edu.co'),(993770,'CC','Corry','Dargan','Female','cdargan3q@exblog.jp',5779205081,1729823934,'Chile','CDargan@unal.edu.co'),(995904,'CC','Ralina','Bellon','Female','rbellon5f@vistaprint.com',2724718917,5664504620,'Colombia','RBellon@unal.edu.co');
/*!40000 ALTER TABLE `persona vinculada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa` (
  `Codigo SNIES` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Creditos_exigidos` int DEFAULT NULL,
  `Grado_de_licenciatura` varchar(40) DEFAULT NULL,
  `Facultad_Codigo` int NOT NULL,
  PRIMARY KEY (`Codigo SNIES`,`Facultad_Codigo`),
  KEY `fk_Programa_Facultad1_idx` (`Facultad_Codigo`),
  CONSTRAINT `fk_Programa_Facultad1` FOREIGN KEY (`Facultad_Codigo`) REFERENCES `facultad` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` VALUES (2,'Arquitectura',173,'pregrado',102),(3,'Arquitectura',141,'Posgrado',101),(4,'Arquitectura',138,'pregrado',103),(5,'Artes Plásticas',147,'pregrado',102),(6,'Artes Plásticas',132,'pregrado',103),(7,'Cine y Televisión',170,'pregrado',102),(8,'Diseño Gráfico',122,'pregrado',102),(9,'Diseño Industrial',123,'pregrado',102),(10,'Diseño Industrial',127,'pregrado',104),(11,'Música',149,'pregrado',102),(12,'Música Instrumental',171,'pregrado',102),(13,'Construcción',146,'pregrado',103),(102,'Ingeniería Agrícola',168,'pregrado',114),(103,'Ingeniería Agrícola',143,'pregrado',112),(104,'Ingeniería Agrícola',163,'pregrado',113),(105,'Ingeniería Agroindustrial',125,'pregrado',114),(106,'Ingeniería Ambiental',158,'pregrado',113),(107,'Ingeniería Ambiental',153,'pregrado',114),(108,'Ingeniería Biológica',173,'pregrado',113),(109,'Ingeniería Biológica',143,'pregrado',114),(110,'Ingeniería Civil',146,'pregrado',113),(111,'Ingeniería Civil',182,'pregrado',112),(112,'Ingeniería Civil',140,'pregrado',111),(113,'Ingeniería de Control',178,'pregrado',113),(114,'Ingeniería de Minas y Metalurgia',137,'pregrado',113),(115,'Ingeniería de Petróleos',172,'pregrado',113),(116,'Ingeniería de Sistemas e Informática',190,'pregrado',113),(117,'Ingeniería de Sistemas y Computación',171,'pregrado',112),(118,'Ingeniería Eléctrica',166,'pregrado',113),(119,'Ingeniería Eléctrica',125,'pregrado',112),(120,'Ingeniería Eléctrica',150,'pregrado',111),(121,'Ingeniería Electrónica',187,'pregrado',112),(122,'Ingeniería Electrónica',150,'pregrado',111),(123,'Ingeniería Física',140,'pregrado',111),(124,'Ingeniería Física',133,'pregrado',113),(125,'Ingeniería Forestal',126,'pregrado',113),(126,'Ingeniería Geológica',180,'pregrado',113),(127,'Ingeniería Industrial',120,'pregrado',113),(128,'Ingeniería Industrial',155,'pregrado',112),(129,'Ingeniería Industrial',153,'pregrado',111),(130,'Ingeniería Mecánica',179,'pregrado',113),(131,'Ingeniería Mecánica',176,'pregrado',112),(132,'Ingeniería Mecatrónica',152,'pregrado',112),(133,'Ingeniería Mecatrónica',183,'pregrado',115),(134,'Ingeniería Química',126,'pregrado',113),(135,'Ingeniería Química',176,'pregrado',112),(136,'Ingeniería Química',171,'pregrado',111),(137,'Ingeniería Agronómica',134,'pregrado',112),(138,'Ingeniería Agronómica',180,'pregrado',114),(139,'Ingeniería Agronómica',166,'pregrado',113),(140,'Enfermería',168,'pregrado',121),(141,'Derecho',155,'pregrado',122),(142,'Ciencia Política',148,'pregrado',123),(143,'Ciencia Política',158,'pregrado',122);
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requerir`
--

DROP TABLE IF EXISTS `requerir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requerir` (
  `Historial Academico_ID_HIstorial` int NOT NULL,
  `Cita Inscripcion_ID Cita` int NOT NULL,
  PRIMARY KEY (`Historial Academico_ID_HIstorial`,`Cita Inscripcion_ID Cita`),
  KEY `fk_Historial Academico_has_Cita Inscripcion_Cita Inscripcio_idx` (`Cita Inscripcion_ID Cita`),
  KEY `fk_Historial Academico_has_Cita Inscripcion_Historial Acade_idx` (`Historial Academico_ID_HIstorial`),
  CONSTRAINT `fk_Historial Academico_has_Cita Inscripcion_Cita Inscripcion1` FOREIGN KEY (`Cita Inscripcion_ID Cita`) REFERENCES `cita inscripcion` (`ID Cita`),
  CONSTRAINT `fk_Historial Academico_has_Cita Inscripcion_Historial Academi1` FOREIGN KEY (`Historial Academico_ID_HIstorial`) REFERENCES `historial academico` (`ID_HIstorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requerir`
--

LOCK TABLES `requerir` WRITE;
/*!40000 ALTER TABLE `requerir` DISABLE KEYS */;
INSERT INTO `requerir` VALUES (2,2),(2,3),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(2,10),(10,10),(2,11),(4,11),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `requerir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residencia`
--

DROP TABLE IF EXISTS `residencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residencia` (
  ` Estrato` int DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `Calle` varchar(45) DEFAULT NULL,
  `Numero` bigint DEFAULT NULL,
  `ID_residencia` int NOT NULL,
  `Estudiante_ID_Estudiante` int NOT NULL,
  PRIMARY KEY (`ID_residencia`,`Estudiante_ID_Estudiante`),
  KEY `fk_Residencia_Estudiante1_idx` (`Estudiante_ID_Estudiante`),
  CONSTRAINT `fk_Residencia_Estudiante1` FOREIGN KEY (`Estudiante_ID_Estudiante`) REFERENCES `estudiante` (`ID_Estudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residencia`
--

LOCK TABLES `residencia` WRITE;
/*!40000 ALTER TABLE `residencia` DISABLE KEYS */;
INSERT INTO `residencia` VALUES (4,'Sogamoso','84888 Mandrake Junction',5913395123,2,2),(4,'Malambo','84053 Butterfield Drive',7661676568,3,3),(3,'Bogotá','47254 Weeping Birch Court',8566989988,4,4),(3,'Sogamoso','096 Dennis Center',3533212076,5,5),(4,'Bucaramanga','17 Rutledge Point',3099125843,6,6),(1,'Piedecuesta','24983 Hauk Plaza',6986793236,7,7),(2,'Piedecuesta','94 South Point',7865229407,8,8),(3,'Tunja','3 Pierstorff Plaza',2386173233,9,9),(2,'Tunja','86 Talmadge Avenue',6141303944,10,10),(4,'Envigado','35298 Brentwood Circle',5657447706,11,11),(3,'Bogotá','9 Talisman Circle',8241006323,12,12),(2,'Duitama','058 Butternut Center',4725388349,13,13),(3,'Rionegro','55312 Novick Way',3471597295,14,14),(2,'Nariño','98767 Norway Maple Crossing',1506607960,15,15),(4,'Leticia','0 Spohn Junction',6685684724,16,16),(3,'Sogamoso','1832 Sachtjen Avenue',8896331327,17,17),(1,'Bogotá','317 Meadow Ridge Circle',7342786779,18,18),(4,'Sogamoso','227 Green Ridge Terrace',4348355388,19,19),(3,'Palmira','84176 Iowa Drive',8274303518,20,20),(4,'Malambo','740 Butternut Street',6748018810,21,21),(3,'Bogotá','6 Northfield Circle',9454567322,22,22),(4,'Medellín','3894 Linden Park',2657169962,23,23),(2,'Leticia','71567 Dexter Place',5742898033,24,24),(2,'Rionegro','841 Hallows Way',4488281506,25,25),(3,'Tunja','785 Mosinee Terrace',3304360707,26,26),(3,'Barranquilla','0 Fairfield Court',4069933740,27,27),(4,'Floridablanca','47329 Marquette Avenue',4443568007,28,28),(2,'Sogamoso','03 Maryland Trail',8113658729,29,29),(4,'Envigado','985 Twin Pines Alley',5756505308,30,30),(2,'Tuluá','01457 Claremont Avenue',6574173491,31,31),(3,'Medellín','1 Heffernan Junction',8833456026,32,32),(3,'Bogotá','85716 Stoughton Avenue',8273298153,33,33),(1,'Floridablanca','7039 Artisan Center',6243078095,34,34),(3,'Buenaventura','370 Parkside Terrace',9145647851,35,35),(1,'Barrancabermeja','347 Bowman Terrace',2777742400,36,36),(3,'Envigado','925 Lakewood Gardens Avenue',6836263957,37,37),(2,'Bogotá','3 Coolidge Junction',3269765294,38,38),(3,'Magangué','59 Lakewood Gardens Court',3743949598,39,39),(4,'Cali','6 Fair Oaks Circle',7868197890,40,40),(4,'Duitama','77 Boyd Lane',3391402338,41,41),(3,'Bogotá','133 Hazelcrest Alley',2953552806,42,42),(3,'Barranquilla','6 American Drive',4294820406,43,43),(3,'Bogotá','0880 Loeprich Trail',8502881786,44,44),(3,'Bogotá','78 American Ash Junction',6009604469,45,45),(2,'Itagüí','93 Leroy Junction',7318987788,46,46),(4,'Tuluá','29 Springs Crossing',7157685717,47,47),(1,'Duitama','1473 Elgar Park',3018781679,48,48),(4,'Arauca','84 Elka Parkway',3148722188,49,49),(2,'Sabaneta','852 Spenser Trail',7939617019,50,50),(2,'Medellín','5758 Moose Plaza',7124234184,51,51),(3,'Rionegro','44237 Vahlen Way',7601011623,52,52),(4,'Floridablanca','74 Sloan Court',1128439534,53,53),(2,'Sabaneta','0386 Kingsford Alley',9717032678,54,54),(1,'Barrancabermeja','06 Oakridge Lane',6734935704,55,55),(4,'Sogamoso','074 Blackbird Pass',1885589898,56,56),(3,'Sogamoso','6 Autumn Leaf Drive',3048707182,57,57),(1,'Bogotá','2655 Ronald Regan Place',8397003561,58,58),(2,'Medellín','6 Ohio Pass',3271937846,59,59),(1,'Leticia','800 Basil Point',5313338429,60,60),(4,'Barranquilla','075 Summit Park',7843415163,61,61),(4,'Barrancabermeja','247 Londonderry Junction',9251928166,62,62),(1,'Bogotá','1418 Tomscot Avenue',2365918550,63,63),(3,'Sabaneta','15236 Autumn Leaf Drive',5174570763,64,64),(4,'Medellín','11 Reindahl Park',4127607913,65,65),(2,'Envigado','144 Harper Lane',4546234938,66,66),(1,'Floridablanca','94422 Arkansas Pass',3752388621,67,67),(1,'Malambo','39 South Plaza',2404760897,68,68),(2,'Sabanalarga','0 Sommers Point',6882023762,69,69),(3,'Itagüí','22054 Fulton Plaza',8379316212,70,70),(2,'Sogamoso','99418 West Court',8647715327,71,71),(2,'Bogotá','3 Lunder Center',7982496083,72,72),(3,'Envigado','62694 Bowman Avenue',7475848282,73,73),(3,'Leticia','439 Glacier Hill Park',2265030972,74,74),(1,'Barranquilla','51 Heffernan Drive',2995060071,75,75),(2,'Sogamoso','46426 Canary Street',7326227496,76,76),(4,'Magangué','0 Monument Trail',9308543660,77,77),(2,'Tunja','029 Wayridge Center',2172102958,78,78),(3,'Cali','86034 Everett Hill',9577066301,79,79),(2,'Envigado','25550 8th Street',6964813416,80,80),(4,'Arauca','17 Moulton Trail',3902085561,81,81),(3,'Bogotá','40608 Lawn Place',6427601526,82,82),(2,'Tuluá','33848 Fulton Road',6528080272,83,83),(3,'Bogotá','531 Sunfield Park',5395355354,84,84),(1,'Piedecuesta','9 East Circle',7289966473,85,85),(2,'Itagüí','80123 Starling Trail',8801774203,86,86),(2,'Barrancabermeja','4668 Lakeland Park',5004347429,87,87),(2,'Duitama','79 Merry Avenue',1001507507,88,88),(4,'Cartagena','7923 Spenser Trail',4849359301,89,89),(1,'Itagüí','108 Del Sol Place',8231425117,90,90),(3,'Sabanalarga','0 Di Loreto Parkway',9662558029,91,91),(4,'Medellín','3106 Maryland Court',1886752188,92,92),(4,'Bogotá','57 Roxbury Way',9041724847,93,93),(2,'Duitama','18625 Briar Crest Court',9491967534,94,94),(1,'Magangué','47653 Scott Court',6953998958,95,95),(3,'Magangué','233 Cherokee Trail',2002434891,96,96),(3,'Arauca','1387 Golden Leaf Circle',3645773675,97,97),(4,'Bucaramanga','0 Iowa Crossing',5487288000,98,98),(1,'Sogamoso','4 Service Park',3472250657,99,99),(1,'Bucaramanga','48237 Sheridan Lane',9314623756,100,100),(3,'Sogamoso','75892 Ronald Regan Parkway',5739114380,101,101),(1,'Itagüí','3607 Oxford Circle',6523984571,102,102),(4,'Sabanalarga','275 Ridgeway Way',2636493903,103,103),(3,'Medellín','606 Heffernan Alley',6978786027,104,104),(3,'Bogotá','99418 Meadow Valley Crossing',4308588802,105,105),(4,'Duitama','4 Clyde Gallagher Hill',7173691068,106,106),(4,'Bogotá','8804 Buena Vista Pass',8475520089,107,107),(2,'Bogotá','26270 Aberg Hill',1933579942,108,108),(1,'Envigado','8052 Glacier Hill Lane',7958148605,109,109),(3,'Piedecuesta','1629 Green Junction',2141735899,110,110),(3,'Bucaramanga','81715 Burrows Alley',4694955274,111,111),(4,'Medellín','50 Alpine Plaza',6466886353,112,112),(3,'Bello','283 Drewry Point',4426833515,113,113),(1,'Itagüí','6 Scofield Circle',4612262080,114,114),(3,'Bogotá','29 Dennis Court',2431374636,115,115),(2,'Rionegro','1347 Namekagon Avenue',9459320298,116,116),(4,'Bucaramanga','152 Reinke Lane',9242897139,117,117),(2,'Floridablanca','4 Forest Dale Street',2123260686,118,118),(3,'Sogamoso','5492 Roth Drive',4306465807,119,119),(4,'Sogamoso','5 Mayfield Street',4015180857,120,120),(3,'Cali','51 Sommers Court',4872885615,121,121),(4,'Leticia','0 Mifflin Crossing',5105792696,122,122),(3,'Cali','2 Clemons Hill',4133176201,123,123),(4,'Medellín','09491 Fallview Street',5469938411,124,124),(3,'Sogamoso','355 Karstens Junction',4349291862,125,125),(1,'Bogotá','671 Memorial Crossing',8178077968,126,126),(4,'Tunja','3 Eastlawn Point',3527270864,127,127),(1,'Medellín','8134 Sloan Parkway',7736226582,128,128),(1,'Sogamoso','06204 Helena Trail',9643589410,129,129),(3,'Itagüí','5277 Linden Road',8043094363,130,130),(2,'Duitama','561 Lerdahl Crossing',1546702178,131,131),(1,'Bello','2245 4th Park',5179037489,132,132),(2,'Medellín','923 Brown Point',6622057917,133,133),(2,'Buenaventura','87 Corben Junction',9751725763,134,134),(1,'Palmira','67948 Sommers Point',7518586780,135,135),(4,'Cali','758 Killdeer Terrace',4619354838,136,136),(1,'Sogamoso','36 Commercial Junction',2208175991,137,137),(1,'Sabanalarga','935 Hooker Way',2447798644,138,138),(1,'Malambo','36 Bowman Center',2307946147,139,139),(2,'Soledad','22 Straubel Way',3885500073,140,140),(4,'Sogamoso','8 Chive Terrace',8249668325,141,141),(1,'Bogotá','8 Mallory Park',8955077590,142,142),(4,'Bogotá','2 Pankratz Terrace',7031690610,143,143),(2,'Sabaneta','52 Mosinee Hill',6926742091,144,144),(3,'Floridablanca','78 Fuller Parkway',6694061467,145,145),(3,'Cali','88 Sheridan Plaza',9919291010,146,146),(2,'Arauca','5 South Alley',6026945267,147,147),(4,'Sogamoso','895 Grasskamp Street',9075001874,148,148),(1,'Cali','836 Petterle Center',9203934741,149,149),(1,'Envigado','7776 Helena Way',3786755593,150,150),(4,'Barranquilla','6741 Pepper Wood Road',4421193552,151,151),(4,'Bogotá','98 Shasta Center',2892211302,152,152),(3,'Piedecuesta','2113 Barnett Junction',2864539726,153,153),(4,'Palmira','38099 High Crossing Trail',2517540692,154,154),(2,'Leticia','2775 Rutledge Lane',7257434246,155,155),(4,'Bogotá','2 Oxford Crossing',7801181620,156,156),(2,'Palmira','84 Mayer Lane',9573167486,157,157),(4,'Bogotá','5 Fairfield Alley',2405402086,158,158),(1,'Bogotá','7986 Summerview Parkway',7592573962,159,159),(4,'Bogotá','25 Valley Edge Lane',6808125360,160,160),(3,'Rionegro','7 Fallview Lane',1908434304,161,161),(1,'Bucaramanga','9 Merrick Pass',6114136791,162,162),(2,'Bogotá','303 Dovetail Way',9272133263,163,163),(2,'Duitama','50212 Petterle Point',9341964006,164,164),(4,'Duitama','5 Grim Circle',9386203399,165,165),(4,'Palmira','173 Toban Street',6881510381,166,166),(3,'Sogamoso','3318 Leroy Hill',9554038415,167,167),(3,'Cali','59358 Hooker Terrace',5065718161,168,168),(4,'Bogotá','39637 Longview Road',9492179911,169,169),(1,'Bogotá','4 Mccormick Avenue',5656752226,170,170),(1,'Barrancabermeja','97 Pierstorff Terrace',2117425370,171,171),(4,'Rionegro','03883 Garrison Way',9343515407,172,172),(4,'Medellín','864 Fisk Plaza',3613002287,173,173),(4,'Bogotá','2 Badeau Plaza',8806378862,174,174),(1,'Floridablanca','06139 Superior Park',9293741210,175,175),(2,'Bogotá','644 Northridge Lane',7912572768,176,176),(4,'Duitama','271 Hagan Street',6456457262,177,177),(1,'Bogotá','3 Roth Way',7116081228,178,178),(1,'Itagüí','8 Shopko Court',5217234049,179,179),(2,'Sabanalarga','92501 Warner Crossing',3554501704,180,180),(3,'Tunja','92257 Lighthouse Bay Park',1046417989,181,181),(1,'Floridablanca','96846 Cherokee Pass',9544822817,182,182),(3,'Bogotá','707 Tennessee Plaza',1249582276,183,183),(1,'Sogamoso','5 Loeprich Lane',4282601472,184,184),(3,'Bogotá','7727 Fisk Junction',4604385818,185,185),(4,'Itagüí','0 Myrtle Drive',1151916516,186,186),(3,'Barrancabermeja','4548 Dawn Pass',6363491499,187,187),(1,'Bogotá','957 Riverside Point',8779138623,188,188),(1,'Barranquilla','2928 Village Lane',2372957058,189,189),(4,'Itagüí','83923 Bonner Drive',4461386189,190,190),(3,'Piedecuesta','00 Meadow Ridge Avenue',5468447208,191,191),(1,'Bogotá','1 Orin Plaza',4209703881,192,192),(2,'Tunja','0 Arizona Point',9791649819,193,193),(2,'Tunja','7 Bobwhite Terrace',5322351592,194,194),(2,'Bogotá','970 Badeau Parkway',6196269221,195,195),(1,'Tunja','728 Dawn Pass',3928098694,196,196),(4,'Arauca','5 Oneill Circle',2062816545,197,197),(3,'Barranquilla','447 Esker Street',6322253697,198,198),(1,'Duitama','3 Kropf Court',2454417257,199,199),(4,'Floridablanca','0 Debs Pass',3665342779,200,200);
/*!40000 ALTER TABLE `residencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumen_creditos`
--

DROP TABLE IF EXISTS `resumen_creditos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resumen_creditos` (
  `Creditos_Exigidos` int DEFAULT NULL,
  `Creditos_Aprobados` int DEFAULT NULL,
  `Pendientes` int DEFAULT NULL,
  `Inscritos` int DEFAULT NULL,
  `Cursados` int DEFAULT NULL,
  `Historial Academico_ID_HIstorial` int NOT NULL,
  PRIMARY KEY (`Historial Academico_ID_HIstorial`),
  CONSTRAINT `fk_Resumen Creditos_Historial Academico1` FOREIGN KEY (`Historial Academico_ID_HIstorial`) REFERENCES `historial academico` (`ID_HIstorial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumen_creditos`
--

LOCK TABLES `resumen_creditos` WRITE;
/*!40000 ALTER TABLE `resumen_creditos` DISABLE KEYS */;
INSERT INTO `resumen_creditos` VALUES (106,151,13,7,102,2),(172,136,22,3,87,3),(148,148,58,11,79,5),(138,45,77,17,24,6),(121,44,11,3,12,8),(169,172,129,7,141,10),(173,60,34,14,57,12),(115,63,8,17,91,13),(102,190,108,13,10,14),(157,25,111,18,89,15),(105,51,9,8,123,16),(161,153,18,5,19,17),(156,73,6,8,6,18),(139,30,30,3,107,19),(130,87,7,2,138,20),(118,133,124,13,23,23),(166,124,147,11,29,25);
/*!40000 ALTER TABLE `resumen_creditos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sede` (
  `Nombre` varchar(30) DEFAULT NULL,
  `ID_Sede` int NOT NULL,
  PRIMARY KEY (`ID_Sede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES ('Manizales',1),('Bogota',2),('Medellin',3),('Palmira',4),('La Paz',5);
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-10  8:19:04
