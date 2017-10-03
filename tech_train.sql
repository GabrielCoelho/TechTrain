-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04-Out-2017 às 00:42
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novo_tech_train`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `backup`
--

CREATE TABLE `backup` (
  `idBackup` int(11) NOT NULL,
  `horaBackup` time NOT NULL,
  `dataBackup` date NOT NULL,
  `assuntoBackup` text NOT NULL,
  `conteudoBackup` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
--

CREATE TABLE `blog` (
  `idBlog` int(11) NOT NULL,
  `assuntoBlog` text NOT NULL,
  `dataBlog` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificado`
--

CREATE TABLE `certificado` (
  `idCertificado` int(11) NOT NULL,
  `nomeCurso` varchar(50) NOT NULL,
  `cargaHorariaCurso` time NOT NULL,
  `dataInicio` date NOT NULL,
  `dataTermino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `nomeCurso` varchar(50) NOT NULL,
  `duracaoCurso` time NOT NULL,
  `dataCadastro` date NOT NULL,
  `infoCurso` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emailusuario`
--

CREATE TABLE `emailusuario` (
  `emailUsuario` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gradecurso`
--

CREATE TABLE `gradecurso` (
  `gradeCurso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivelusuario`
--

CREATE TABLE `nivelusuario` (
  `nivelUsuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `participa_usuario_curso`
--

CREATE TABLE `participa_usuario_curso` (
  `idUsuario` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idParticipa` int(11) NOT NULL,
  `dataParticipa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tem`
--

CREATE TABLE `tem` (
  `idCertificado` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `loginUsuario` varchar(8) NOT NULL,
  `senhaUsuario` varchar(255) NOT NULL,
  `nomeUsuario` varchar(60) NOT NULL,
  `dataUsuario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_faz`
--

CREATE TABLE `usuario_faz` (
  `idFaz` int(11) NOT NULL,
  `dataFaz` date NOT NULL,
  `idBackup` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario_possui`
--

CREATE TABLE `usuario_possui` (
  `idPossui` int(11) NOT NULL,
  `dataPossui` date NOT NULL,
  `idBlog` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `idBackup` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `idBlog` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `certificado`
--
ALTER TABLE `certificado`
  MODIFY `idCertificado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `participa_usuario_curso`
--
ALTER TABLE `participa_usuario_curso`
  MODIFY `idParticipa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario_faz`
--
ALTER TABLE `usuario_faz`
  MODIFY `idFaz` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario_possui`
--
ALTER TABLE `usuario_possui`
  MODIFY `idPossui` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `participa_usuario_curso`
--
ALTER TABLE `participa_usuario_curso`
  ADD CONSTRAINT `frk_idcurso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `frk_usuarioid` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `tem`
--
ALTER TABLE `tem`
  ADD CONSTRAINT `frk_cursoid` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `frk_idcertificado` FOREIGN KEY (`idCertificado`) REFERENCES `certificado` (`idCertificado`);

--
-- Limitadores para a tabela `usuario_faz`
--
ALTER TABLE `usuario_faz`
  ADD CONSTRAINT `frk_idbackup` FOREIGN KEY (`idBackup`) REFERENCES `backup` (`idBackup`),
  ADD CONSTRAINT `frk_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `usuario_possui`
--
ALTER TABLE `usuario_possui`
  ADD CONSTRAINT `frk_idblog` FOREIGN KEY (`idBlog`) REFERENCES `blog` (`idBlog`),
  ADD CONSTRAINT `frk_idusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
