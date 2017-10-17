-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15-Out-2017 às 22:25
-- Versão do servidor: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_train1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessar_devbackup`
--

CREATE TABLE `acessar_devbackup` (
  `idAcesso` int(11) NOT NULL,
  `idDev` int(11) NOT NULL,
  `idBackup` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `dataAcesso` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulacurso`
--

CREATE TABLE `aulacurso` (
  `aulaCurso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `backup`
--

CREATE TABLE `backup` (
  `idBackup` int(11) NOT NULL,
  `assuntoBackup` longtext NOT NULL,
  `conteudoBackup` longtext NOT NULL,
  `dataBackup` date NOT NULL,
  `horaBackup` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
--

CREATE TABLE `blog` (
  `idBlog` int(11) NOT NULL,
  `dataBlog` date NOT NULL,
  `assuntoBlog` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `certificado`
--

CREATE TABLE `certificado` (
  `idCertificado` int(11) NOT NULL,
  `nmCurso` varchar(30) NOT NULL,
  `dataTermino` date NOT NULL,
  `dataInicio` date NOT NULL,
  `cargaHorariaCurso` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `controlar_devcurso`
--

CREATE TABLE `controlar_devcurso` (
  `idControla` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `dataControla` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `idCertificado` int(11) NOT NULL,
  `nmCurso` varchar(80) NOT NULL,
  `infoCurso` longtext,
  `dataCadastro` date DEFAULT NULL,
  `duracaoCurso` time DEFAULT NULL,
  `valorCurso` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dev`
--

CREATE TABLE `dev` (
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `nmDev` varchar(30) NOT NULL,
  `acessoDev` longtext
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
-- Estrutura da tabela `faz_usuario`
--

CREATE TABLE `faz_usuario` (
  `idFaz` int(11) NOT NULL,
  `idBackup` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `emailloginUsuario` varchar(80) NOT NULL,
  `dataFaz` date NOT NULL
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
-- Estrutura da tabela `imagemblog`
--

CREATE TABLE `imagemblog` (
  `imagemBlog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `localizar_devusuario`
--

CREATE TABLE `localizar_devusuario` (
  `idLocaliza` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idDev` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `emailloginUsuario` varchar(80) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `dataLocaliza` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicablog`
--

CREATE TABLE `musicablog` (
  `musicaBlog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivelusuario`
--

CREATE TABLE `nivelusuario` (
  `nivelUsuario` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `participar_usuariocurso`
--

CREATE TABLE `participar_usuariocurso` (
  `idParticipa` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `emailloginUsuario` varchar(80) NOT NULL,
  `dataParticipa` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `possuir_dev`
--

CREATE TABLE `possuir_dev` (
  `idPossuir` int(11) NOT NULL,
  `idDev` int(11) NOT NULL,
  `idBlog` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `dataPossuir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `emailloginUsuario` varchar(80) NOT NULL,
  `nmUsuario` varchar(80) NOT NULL,
  `loginUsuario` varchar(80) NOT NULL,
  `senhaUsuario` varchar(255) NOT NULL,
  `dataUsuario` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ver_devcertificado`
--

CREATE TABLE `ver_devcertificado` (
  `idVer` int(11) NOT NULL,
  `idDev` int(11) NOT NULL,
  `idCertificado` int(11) NOT NULL,
  `CPFDev` int(11) NOT NULL,
  `emailDev` varchar(60) NOT NULL,
  `dataVer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `videoblog`
--

CREATE TABLE `videoblog` (
  `videoBlog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `videocurso`
--

CREATE TABLE `videocurso` (
  `videoCurso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acessar_devbackup`
--
ALTER TABLE `acessar_devbackup`
  ADD PRIMARY KEY (`idAcesso`),
  ADD KEY `idDev` (`idDev`,`CPFDev`,`emailDev`),
  ADD KEY `idBackup` (`idBackup`);

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
-- Indexes for table `controlar_devcurso`
--
ALTER TABLE `controlar_devcurso`
  ADD PRIMARY KEY (`idControla`),
  ADD KEY `idCurso` (`idCurso`),
  ADD KEY `idDev` (`idDev`,`CPFDev`,`emailDev`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`),
  ADD KEY `idCertificado` (`idCertificado`);

--
-- Indexes for table `dev`
--
ALTER TABLE `dev`
  ADD PRIMARY KEY (`idDev`,`CPFDev`,`emailDev`);

--
-- Indexes for table `faz_usuario`
--
ALTER TABLE `faz_usuario`
  ADD PRIMARY KEY (`idFaz`),
  ADD KEY `idBackup` (`idBackup`),
  ADD KEY `idUsuario` (`idUsuario`,`emailloginUsuario`);

--
-- Indexes for table `localizar_devusuario`
--
ALTER TABLE `localizar_devusuario`
  ADD PRIMARY KEY (`idLocaliza`),
  ADD KEY `idUsuario` (`idUsuario`,`emailloginUsuario`),
  ADD KEY `idDev` (`idDev`,`CPFDev`,`emailDev`);

--
-- Indexes for table `participar_usuariocurso`
--
ALTER TABLE `participar_usuariocurso`
  ADD PRIMARY KEY (`idParticipa`),
  ADD KEY `idCurso` (`idCurso`),
  ADD KEY `idUsuario` (`idUsuario`,`emailloginUsuario`);

--
-- Indexes for table `possuir_dev`
--
ALTER TABLE `possuir_dev`
  ADD PRIMARY KEY (`idPossuir`),
  ADD KEY `idDev` (`idDev`,`CPFDev`,`emailDev`),
  ADD KEY `idBlog` (`idBlog`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`,`emailloginUsuario`);

--
-- Indexes for table `ver_devcertificado`
--
ALTER TABLE `ver_devcertificado`
  ADD PRIMARY KEY (`idVer`),
  ADD KEY `idDev` (`idDev`,`CPFDev`,`emailDev`),
  ADD KEY `idCertificado` (`idCertificado`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acessar_devbackup`
--
ALTER TABLE `acessar_devbackup`
  MODIFY `idAcesso` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `controlar_devcurso`
--
ALTER TABLE `controlar_devcurso`
  MODIFY `idControla` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dev`
--
ALTER TABLE `dev`
  MODIFY `idDev` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faz_usuario`
--
ALTER TABLE `faz_usuario`
  MODIFY `idFaz` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `localizar_devusuario`
--
ALTER TABLE `localizar_devusuario`
  MODIFY `idLocaliza` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participar_usuariocurso`
--
ALTER TABLE `participar_usuariocurso`
  MODIFY `idParticipa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `possuir_dev`
--
ALTER TABLE `possuir_dev`
  MODIFY `idPossuir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ver_devcertificado`
--
ALTER TABLE `ver_devcertificado`
  MODIFY `idVer` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `acessar_devbackup`
--
ALTER TABLE `acessar_devbackup`
  ADD CONSTRAINT `acessar_devbackup_ibfk_1` FOREIGN KEY (`idDev`,`CPFDev`,`emailDev`) REFERENCES `dev` (`idDev`, `CPFDev`, `emailDev`),
  ADD CONSTRAINT `acessar_devbackup_ibfk_2` FOREIGN KEY (`idBackup`) REFERENCES `backup` (`idBackup`);

--
-- Limitadores para a tabela `controlar_devcurso`
--
ALTER TABLE `controlar_devcurso`
  ADD CONSTRAINT `controlar_devcurso_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `controlar_devcurso_ibfk_2` FOREIGN KEY (`idDev`,`CPFDev`,`emailDev`) REFERENCES `dev` (`idDev`, `CPFDev`, `emailDev`);

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idCertificado`) REFERENCES `certificado` (`idCertificado`);

--
-- Limitadores para a tabela `faz_usuario`
--
ALTER TABLE `faz_usuario`
  ADD CONSTRAINT `faz_usuario_ibfk_1` FOREIGN KEY (`idBackup`) REFERENCES `backup` (`idBackup`),
  ADD CONSTRAINT `faz_usuario_ibfk_2` FOREIGN KEY (`idUsuario`,`emailloginUsuario`) REFERENCES `usuario` (`idUsuario`, `emailloginUsuario`);

--
-- Limitadores para a tabela `localizar_devusuario`
--
ALTER TABLE `localizar_devusuario`
  ADD CONSTRAINT `localizar_devusuario_ibfk_1` FOREIGN KEY (`idUsuario`,`emailloginUsuario`) REFERENCES `usuario` (`idUsuario`, `emailloginUsuario`),
  ADD CONSTRAINT `localizar_devusuario_ibfk_2` FOREIGN KEY (`idDev`,`CPFDev`,`emailDev`) REFERENCES `dev` (`idDev`, `CPFDev`, `emailDev`);

--
-- Limitadores para a tabela `participar_usuariocurso`
--
ALTER TABLE `participar_usuariocurso`
  ADD CONSTRAINT `participar_usuariocurso_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `participar_usuariocurso_ibfk_2` FOREIGN KEY (`idUsuario`,`emailloginUsuario`) REFERENCES `usuario` (`idUsuario`, `emailloginUsuario`);

--
-- Limitadores para a tabela `possuir_dev`
--
ALTER TABLE `possuir_dev`
  ADD CONSTRAINT `possuir_dev_ibfk_1` FOREIGN KEY (`idDev`,`CPFDev`,`emailDev`) REFERENCES `dev` (`idDev`, `CPFDev`, `emailDev`),
  ADD CONSTRAINT `possuir_dev_ibfk_2` FOREIGN KEY (`idBlog`) REFERENCES `blog` (`idBlog`);

--
-- Limitadores para a tabela `ver_devcertificado`
--
ALTER TABLE `ver_devcertificado`
  ADD CONSTRAINT `ver_devcertificado_ibfk_1` FOREIGN KEY (`idDev`,`CPFDev`,`emailDev`) REFERENCES `dev` (`idDev`, `CPFDev`, `emailDev`),
  ADD CONSTRAINT `ver_devcertificado_ibfk_2` FOREIGN KEY (`idCertificado`) REFERENCES `certificado` (`idCertificado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
