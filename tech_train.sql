-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Out-2017 às 19:14
-- Versão do servidor: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tec_train`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `backup`
--

CREATE TABLE `backup` (
  `idBackup` int(11) NOT NULL,
  `horaBackup` time DEFAULT NULL,
  `dataBackup` date DEFAULT NULL,
  `assuntoBackup` varchar(155) DEFAULT NULL,
  `conteudoBackup` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
--

CREATE TABLE `blog` (
  `idBlog` int(11) NOT NULL,
  `assuntoBlog` varchar(155) DEFAULT NULL,
  `dataBlog` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificado`
--

CREATE TABLE `certificado` (
  `idCertificado` int(11) NOT NULL,
  `nmCurso` varchar(50) DEFAULT NULL,
  `cargaHorariaCurso` time DEFAULT NULL,
  `dataInicio` date DEFAULT NULL,
  `dataTermino` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nmCurso` varchar(50) DEFAULT NULL,
  `duracaoCurso` time DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `infoCurso` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emailusuario`
--

CREATE TABLE `emailusuario` (
  `emailUsuario` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gradecurso`
--

CREATE TABLE `gradecurso` (
  `gradeCurso` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivelusuario`
--

CREATE TABLE `nivelusuario` (
  `nivelUsuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `participa_usuario_curso`
--

CREATE TABLE `participa_usuario_curso` (
  `idUsuario` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL,
  `idParticipa` int(11) NOT NULL,
  `dataParticipa` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tem`
--

CREATE TABLE `tem` (
  `idCertificado` int(11) DEFAULT NULL,
  `idCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `loginUsuario` varchar(8) DEFAULT NULL,
  `senhaUsuario` varchar(8) DEFAULT NULL,
  `nmUsuario` varchar(60) DEFAULT NULL,
  `dataUsuario` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_faz`
--

CREATE TABLE `usuario_faz` (
  `idFaz` int(11) NOT NULL,
  `dataFaz` date DEFAULT NULL,
  `idBackup` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_possui`
--

CREATE TABLE `usuario_possui` (
  `idPossui` int(11) NOT NULL,
  `dataPossui` date DEFAULT NULL,
  `idBlog` int(11) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`idBackup`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`idBlog`);

--
-- Indexes for table `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`idCertificado`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Indexes for table `participa_usuario_curso`
--
ALTER TABLE `participa_usuario_curso`
  ADD PRIMARY KEY (`idParticipa`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indexes for table `tem`
--
ALTER TABLE `tem`
  ADD KEY `idCertificado` (`idCertificado`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `usuario_faz`
--
ALTER TABLE `usuario_faz`
  ADD PRIMARY KEY (`idFaz`),
  ADD KEY `idBackup` (`idBackup`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Indexes for table `usuario_possui`
--
ALTER TABLE `usuario_possui`
  ADD PRIMARY KEY (`idPossui`),
  ADD KEY `idBlog` (`idBlog`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `participa_usuario_curso`
--
ALTER TABLE `participa_usuario_curso`
  ADD CONSTRAINT `participa_usuario_curso_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `participa_usuario_curso_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`);

--
-- Limitadores para a tabela `tem`
--
ALTER TABLE `tem`
  ADD CONSTRAINT `tem_ibfk_1` FOREIGN KEY (`idCertificado`) REFERENCES `certificado` (`idCertificado`),
  ADD CONSTRAINT `tem_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`);

--
-- Limitadores para a tabela `usuario_faz`
--
ALTER TABLE `usuario_faz`
  ADD CONSTRAINT `usuario_faz_ibfk_1` FOREIGN KEY (`idBackup`) REFERENCES `backup` (`idBackup`),
  ADD CONSTRAINT `usuario_faz_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `usuario_possui`
--
ALTER TABLE `usuario_possui`
  ADD CONSTRAINT `usuario_possui_ibfk_1` FOREIGN KEY (`idBlog`) REFERENCES `blog` (`idBlog`),
  ADD CONSTRAINT `usuario_possui_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
