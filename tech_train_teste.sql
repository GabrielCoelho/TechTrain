-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tech_train_teste
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
-- Table structure for table `acesso_dev_backup`
--

DROP TABLE IF EXISTS `acesso_dev_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acesso_dev_backup` (
  `idBackup` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `idAcesso` int(11) NOT NULL AUTO_INCREMENT,
  `dataAcesso` date DEFAULT NULL,
  PRIMARY KEY (`idAcesso`),
  KEY `idBackup` (`idBackup`,`idDev`,`CPFDev`),
  KEY `idDev` (`idDev`,`CPFDev`),
  CONSTRAINT `acesso_dev_backup_ibfk_1` FOREIGN KEY (`idBackup`) REFERENCES `backup` (`idBackup`),
  CONSTRAINT `acesso_dev_backup_ibfk_2` FOREIGN KEY (`idDev`, `CPFDev`) REFERENCES `dev` (`idDev`, `CPFDev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acesso_dev_backup`
--

LOCK TABLES `acesso_dev_backup` WRITE;
/*!40000 ALTER TABLE `acesso_dev_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `acesso_dev_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aula_curso`
--

DROP TABLE IF EXISTS `aula_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aula_curso` (
  `aulaCurso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aula_curso`
--

LOCK TABLES `aula_curso` WRITE;
/*!40000 ALTER TABLE `aula_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `aula_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backup`
--

DROP TABLE IF EXISTS `backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backup` (
  `idBackup` int(11) NOT NULL AUTO_INCREMENT,
  `assuntoBackup` longtext NOT NULL,
  `conteudoBackup` longtext NOT NULL,
  `dataBackup` date NOT NULL,
  `horaBackup` time NOT NULL,
  PRIMARY KEY (`idBackup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backup`
--

LOCK TABLES `backup` WRITE;
/*!40000 ALTER TABLE `backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `idBlog` int(11) NOT NULL AUTO_INCREMENT,
  `dataBlog` date NOT NULL,
  `assuntoBlog` varchar(255) NOT NULL,
  PRIMARY KEY (`idBlog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificado`
--

DROP TABLE IF EXISTS `certificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `certificado` (
  `idCertificado` int(11) NOT NULL AUTO_INCREMENT,
  `nmCurso` varchar(30) NOT NULL,
  `dataTermino` date NOT NULL,
  `dataInicio` date NOT NULL,
  `cargaHorariaCurso` time NOT NULL,
  PRIMARY KEY (`idCertificado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado`
--

LOCK TABLES `certificado` WRITE;
/*!40000 ALTER TABLE `certificado` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controla_dev_curso`
--

DROP TABLE IF EXISTS `controla_dev_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controla_dev_curso` (
  `idCurso` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `dataControla` date NOT NULL,
  `idControla` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idControla`),
  KEY `idCurso` (`idCurso`,`idDev`,`CPFDev`),
  KEY `idDev` (`idDev`,`CPFDev`),
  CONSTRAINT `controla_dev_curso_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `controla_dev_curso_ibfk_2` FOREIGN KEY (`idDev`, `CPFDev`) REFERENCES `dev` (`idDev`, `CPFDev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controla_dev_curso`
--

LOCK TABLES `controla_dev_curso` WRITE;
/*!40000 ALTER TABLE `controla_dev_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `controla_dev_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `duracaoCurso` time NOT NULL,
  `nmCurso` varchar(80) NOT NULL,
  `infoCurso` longtext,
  `valorCurso` float(10,2) NOT NULL,
  `dataCadastro` date NOT NULL,
  PRIMARY KEY (`idCurso`)
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
-- Table structure for table `dev`
--

DROP TABLE IF EXISTS `dev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev` (
  `nmDev` varchar(30) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `acessoDev` longtext,
  `idDev` int(11) NOT NULL AUTO_INCREMENT,
  `CPFDev` int(15) NOT NULL,
  PRIMARY KEY (`idDev`,`CPFDev`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dev`
--

LOCK TABLES `dev` WRITE;
/*!40000 ALTER TABLE `dev` DISABLE KEYS */;
INSERT INTO `dev` VALUES ('Luís Fernando','testando@luisfernando.com.br','Banco de Dados',1,11144455);
/*!40000 ALTER TABLE `dev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_usuario`
--

DROP TABLE IF EXISTS `email_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_usuario` (
  `emailUsuario` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_usuario`
--

LOCK TABLES `email_usuario` WRITE;
/*!40000 ALTER TABLE `email_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faz_usuario`
--

DROP TABLE IF EXISTS `faz_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faz_usuario` (
  `idBackup` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `emailloginUsuario` varchar(80) NOT NULL,
  `idFaz` int(11) NOT NULL AUTO_INCREMENT,
  `dataFaz` date NOT NULL,
  PRIMARY KEY (`idFaz`),
  KEY `idBackup` (`idBackup`),
  KEY `idUsuario` (`idUsuario`,`emailloginUsuario`),
  CONSTRAINT `faz_usuario_ibfk_1` FOREIGN KEY (`idBackup`) REFERENCES `backup` (`idBackup`),
  CONSTRAINT `faz_usuario_ibfk_2` FOREIGN KEY (`idUsuario`, `emailloginUsuario`) REFERENCES `usuario` (`idUsuario`, `emailloginUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faz_usuario`
--

LOCK TABLES `faz_usuario` WRITE;
/*!40000 ALTER TABLE `faz_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `faz_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade_curso`
--

DROP TABLE IF EXISTS `grade_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade_curso` (
  `gradeCurso` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade_curso`
--

LOCK TABLES `grade_curso` WRITE;
/*!40000 ALTER TABLE `grade_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagem_blog`
--

DROP TABLE IF EXISTS `imagem_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagem_blog` (
  `imagemBlog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagem_blog`
--

LOCK TABLES `imagem_blog` WRITE;
/*!40000 ALTER TABLE `imagem_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagem_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localiza_dev_usuario`
--

DROP TABLE IF EXISTS `localiza_dev_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localiza_dev_usuario` (
  `idUsuario` int(11) NOT NULL,
  `emailloginUsuario` varchar(80) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `idLocaliza` int(11) NOT NULL AUTO_INCREMENT,
  `dataLocaliza` date NOT NULL,
  PRIMARY KEY (`idLocaliza`),
  KEY `idUsuario` (`idUsuario`,`emailloginUsuario`,`idDev`,`CPFDev`),
  KEY `idDev` (`idDev`,`CPFDev`),
  CONSTRAINT `localiza_dev_usuario_ibfk_1` FOREIGN KEY (`idUsuario`, `emailloginUsuario`) REFERENCES `usuario` (`idUsuario`, `emailloginUsuario`),
  CONSTRAINT `localiza_dev_usuario_ibfk_2` FOREIGN KEY (`idDev`, `CPFDev`) REFERENCES `dev` (`idDev`, `CPFDev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localiza_dev_usuario`
--

LOCK TABLES `localiza_dev_usuario` WRITE;
/*!40000 ALTER TABLE `localiza_dev_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `localiza_dev_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica_blog`
--

DROP TABLE IF EXISTS `musica_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `musica_blog` (
  `musicaBlog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica_blog`
--

LOCK TABLES `musica_blog` WRITE;
/*!40000 ALTER TABLE `musica_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `musica_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_usuario`
--

DROP TABLE IF EXISTS `nivel_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_usuario` (
  `nivelUsuario` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_usuario`
--

LOCK TABLES `nivel_usuario` WRITE;
/*!40000 ALTER TABLE `nivel_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `nivel_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participa_usuario_curso`
--

DROP TABLE IF EXISTS `participa_usuario_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participa_usuario_curso` (
  `idUsuario` int(11) NOT NULL,
  `emailloginUsuario` varchar(80) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `dataParticipa` date NOT NULL,
  `idParticipa` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idParticipa`),
  KEY `idUsuario` (`idUsuario`,`emailloginUsuario`),
  KEY `idCurso` (`idCurso`),
  CONSTRAINT `participa_usuario_curso_ibfk_1` FOREIGN KEY (`idUsuario`, `emailloginUsuario`) REFERENCES `usuario` (`idUsuario`, `emailloginUsuario`),
  CONSTRAINT `participa_usuario_curso_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participa_usuario_curso`
--

LOCK TABLES `participa_usuario_curso` WRITE;
/*!40000 ALTER TABLE `participa_usuario_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `participa_usuario_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `possui_dev`
--

DROP TABLE IF EXISTS `possui_dev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `possui_dev` (
  `emailDev` varchar(60) NOT NULL,
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `idBlog` int(11) NOT NULL,
  `idPossuir` int(11) NOT NULL AUTO_INCREMENT,
  `dataPossuir` date NOT NULL,
  PRIMARY KEY (`idPossuir`),
  KEY `emailDev` (`idDev`,`CPFDev`),
  KEY `idBlog` (`idBlog`),
  CONSTRAINT `possui_dev_ibfk_1` FOREIGN KEY (`idDev`, `CPFDev`) REFERENCES `dev` (`idDev`, `CPFDev`),
  CONSTRAINT `possui_dev_ibfk_2` FOREIGN KEY (`idBlog`) REFERENCES `blog` (`idBlog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `possui_dev`
--

LOCK TABLES `possui_dev` WRITE;
/*!40000 ALTER TABLE `possui_dev` DISABLE KEYS */;
/*!40000 ALTER TABLE `possui_dev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ter`
--

DROP TABLE IF EXISTS `ter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ter` (
  `idCertificado` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  KEY `idCertificado` (`idCertificado`),
  KEY `idCurso` (`idCurso`),
  CONSTRAINT `ter_ibfk_1` FOREIGN KEY (`idCertificado`) REFERENCES `certificado` (`idCertificado`),
  CONSTRAINT `ter_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ter`
--

LOCK TABLES `ter` WRITE;
/*!40000 ALTER TABLE `ter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `emailloginUsuario` varchar(80) NOT NULL,
  `dataUsuario` date NOT NULL,
  `senhaUsuario` varchar(255) NOT NULL,
  `loginUsuario` varchar(80) NOT NULL,
  `nmUsuario` varchar(80) NOT NULL,
  PRIMARY KEY (`idUsuario`,`emailloginUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'testando@luisfernando.com.br','2011-11-20','0123','luis','Luis Fernando');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ve_dev_certificado`
--

DROP TABLE IF EXISTS `ve_dev_certificado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ve_dev_certificado` (
  `idCertificado` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `idVer` int(11) NOT NULL AUTO_INCREMENT,
  `dataVer` date NOT NULL,
  PRIMARY KEY (`idVer`),
  KEY `idCertificado` (`idCertificado`,`idDev`,`CPFDev`),
  KEY `idDev` (`idDev`,`CPFDev`),
  CONSTRAINT `ve_dev_certificado_ibfk_1` FOREIGN KEY (`idCertificado`) REFERENCES `certificado` (`idCertificado`),
  CONSTRAINT `ve_dev_certificado_ibfk_2` FOREIGN KEY (`idDev`, `CPFDev`) REFERENCES `dev` (`idDev`, `CPFDev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ve_dev_certificado`
--

LOCK TABLES `ve_dev_certificado` WRITE;
/*!40000 ALTER TABLE `ve_dev_certificado` DISABLE KEYS */;
/*!40000 ALTER TABLE `ve_dev_certificado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_blog`
--

DROP TABLE IF EXISTS `video_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_blog` (
  `videoBlog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_blog`
--

LOCK TABLES `video_blog` WRITE;
/*!40000 ALTER TABLE `video_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_curso`
--

DROP TABLE IF EXISTS `video_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_curso` (
  `videoCurso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_curso`
--

LOCK TABLES `video_curso` WRITE;
/*!40000 ALTER TABLE `video_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tech_train_teste'
--

--
-- Dumping routines for database 'tech_train_teste'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-11 21:13:47
