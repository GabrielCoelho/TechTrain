-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tech_correto
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `canalprofessor`
--

DROP TABLE IF EXISTS `canalprofessor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canalprofessor` (
  `canalProfessor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canalprofessor`
--

LOCK TABLES `canalprofessor` WRITE;
/*!40000 ALTER TABLE `canalprofessor` DISABLE KEYS */;
/*!40000 ALTER TABLE `canalprofessor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nmCategoria` varchar(60) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `idCategoria` (`idCategoria`),
  UNIQUE KEY `nmCategoria` (`nmCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `idCategoria` int(11) NOT NULL,
  `nmCurso` varchar(60) NOT NULL,
  `infoCurso_Simples` varchar(20) NOT NULL,
  `infoCurso_Extensa` longtext,
  `dataCurso` date NOT NULL,
  `imagCurso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idCurso`),
  UNIQUE KEY `idCurso` (`idCurso`),
  UNIQUE KEY `idCategoria` (`idCategoria`),
  UNIQUE KEY `nmCurso` (`nmCurso`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faz_curso`
--

DROP TABLE IF EXISTS `faz_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faz_curso` (
  `idFazCurso` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `dataInscricao` date NOT NULL,
  PRIMARY KEY (`idFazCurso`),
  UNIQUE KEY `idFazCurso` (`idFazCurso`),
  UNIQUE KEY `idUsuario` (`idUsuario`),
  UNIQUE KEY `idCurso` (`idCurso`),
  UNIQUE KEY `dataInscricao` (`dataInscricao`),
  CONSTRAINT `FK_UsuarioFaz_Curso` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `faz_curso_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faz_curso`
--

LOCK TABLES `faz_curso` WRITE;
/*!40000 ALTER TABLE `faz_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `faz_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministra_curso`
--

DROP TABLE IF EXISTS `ministra_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ministra_curso` (
  `idMiniCurso` int(11) NOT NULL AUTO_INCREMENT,
  `idProfessor` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `cargaHorariaCurso` time NOT NULL,
  PRIMARY KEY (`idMiniCurso`),
  UNIQUE KEY `idMiniCurso` (`idMiniCurso`),
  UNIQUE KEY `idProfessor` (`idProfessor`),
  UNIQUE KEY `idCurso` (`idCurso`),
  UNIQUE KEY `cargaHorariaCurso` (`cargaHorariaCurso`),
  CONSTRAINT `FK_CursoMinistra_Curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `FK_ProfessorMinistra_Curso` FOREIGN KEY (`idProfessor`) REFERENCES `professor` (`idProfessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministra_curso`
--

LOCK TABLES `ministra_curso` WRITE;
/*!40000 ALTER TABLE `ministra_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `ministra_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor` (
  `idProfessor` int(11) NOT NULL AUTO_INCREMENT,
  `nmProfessor` varchar(60) NOT NULL,
  PRIMARY KEY (`idProfessor`),
  UNIQUE KEY `idProfessor` (`idProfessor`),
  UNIQUE KEY `nmProfessor` (`nmProfessor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nmUsuario` varchar(60) NOT NULL,
  `senhaUsuario` varchar(20) NOT NULL,
  `emailUsuario` varchar(30) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `idUsuario` (`idUsuario`),
  UNIQUE KEY `nmUsuario` (`nmUsuario`),
  UNIQUE KEY `senhaUsuario` (`senhaUsuario`),
  UNIQUE KEY `emailUsuario` (`emailUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `idVideo` int(11) NOT NULL AUTO_INCREMENT,
  `idCurso` int(11) NOT NULL,
  `ordNume_Video` int(11) NOT NULL,
  `urlVideo` varchar(255) NOT NULL,
  PRIMARY KEY (`idVideo`),
  UNIQUE KEY `idVideo` (`idVideo`),
  KEY `FK_CursoVideo` (`idCurso`),
  CONSTRAINT `FK_CursoVideo` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tech_correto'
--

--
-- Dumping routines for database 'tech_correto'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-26  2:54:27
