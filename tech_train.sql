-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Nov-2017 às 18:37
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tech_train`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `nmCategoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nmCategoria`) VALUES
(1, 'INFORMÁTICA'),
(2, 'ADMINISTRAÇÃO'),
(3, 'ARTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `nmCurso` varchar(60) NOT NULL,
  `infoCurso_Simples` varchar(20) NOT NULL,
  `infoCurso_Extensa` longtext NOT NULL,
  `dataCurso` date NOT NULL,
  `imagCurso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`idCurso`, `idCategoria`, `nmCurso`, `infoCurso_Simples`, `infoCurso_Extensa`, `dataCurso`, `imagCurso`) VALUES
(1, 1, 'PHP do basico ao avan&ccedil;ado', 'Sistemas para Web', 'Se voc&ecirc; est&aacute; em d&uacute;vida sobre aprender a programar, ou qual linguagem aprender, neste curso algumas informa&ccedil;&otilde;es bem interessantes sobre PHP, bem como algumas vantagens e desvantagens da linguagem s&atilde;o trazidas. O usu&aacute;rio saber&aacute; tamb&eacute;m os conceitos da web inclusivo o que &eacute; o PHP, e import&acirc;ncia desta linguagem de programa&ccedil;&atilde;o no mercado.', '2017-11-28', '/img/php_ba.jpg'),
(2, 2, '&Eacute;TICA EMPRESARIAL', 'Etica empresarial', 'A &eacute;tica empresarial &eacute; o ramo da &eacute;tica diretamente ligado &agrave;s empresas, que &eacute; referente &agrave; conduta &eacute;tica das empresas, ou seja, &agrave; forma moralmente correta com que as empresas interagem com o seu meio envolvente.', '2017-11-28', '/img/etica.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faz_curso`
--

CREATE TABLE `faz_curso` (
  `idFazCurso` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `dataInscricao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ministra_curso`
--

CREATE TABLE `ministra_curso` (
  `idMiniCurso` int(11) NOT NULL,
  `idProfessor` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `cargaHorariaCurso` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ministra_curso`
--

INSERT INTO `ministra_curso` (`idMiniCurso`, `idProfessor`, `idCurso`, `cargaHorariaCurso`) VALUES
(1, 1, 1, '06:00:00'),
(2, 2, 2, '09:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `idProfessor` int(11) NOT NULL,
  `nmProfessor` varchar(60) NOT NULL,
  `fotoProfessor` varchar(30) DEFAULT NULL,
  `canalProfessor` varchar(100) NOT NULL,
  `linkCanalProf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`idProfessor`, `nmProfessor`, `fotoProfessor`, `canalProfessor`, `linkCanalProf`) VALUES
(1, 'João Rubens Filho', '/images/d.jpg', 'Professor Binho', 'https://www.youtube.com/channel/UCeLVLkSv831fCGFZmRaPnQQ'),
(2, ' Tiago', '/images/13.jpg', 'ÉTICA EMPRESARIAL', 'https://www.youtube.com/playlist?list=PLD6mqlYl8U15hJa8FbdhP6cxJYVXioWop');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nmUsuario` varchar(100) NOT NULL,
  `senhaUsuario` varchar(100) NOT NULL,
  `emailUsuario` varchar(1000) CHARACTER SET utf32 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nmUsuario`, `senhaUsuario`, `emailUsuario`) VALUES
(1, 'Admin', '12wGaKkN1hGuw', 'admin@email.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `video`
--

CREATE TABLE `video` (
  `idVideo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `tituloVideo` varchar(50) NOT NULL,
  `urlVideo` varchar(50) NOT NULL,
  `descricaoVideo` text NOT NULL,
  `duracaoVideo` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `video`
--

INSERT INTO `video` (`idVideo`, `idCurso`, `tituloVideo`, `urlVideo`, `descricaoVideo`, `duracaoVideo`) VALUES
(1, 1, 'Vale a Pena aprender PHP?', 'https://www.youtube.com/watch?v=9HEcscFY_oI', 'Neste v&iacute;deo eu trago informa&ccedil;&otilde;es bem interessantes sobre PHP, bem como algumas vantagens e desvantagens da linguagem!', '00:07:56'),
(2, 1, 'Arrays em PHP - Introdu&ccedil;&atilde;o e princip', 'https://www.youtube.com/watch?v=qhLskEIxd2Q', 'Arrays em PHP s&atilde;o muito importantes para manipular dados. Neste v&iacute;deo, eu apresento alguns truques importantes com arrays, como diferenciar arrays associados e indexados, array_map, array_filter.', '00:14:00'),
(3, 1, 'Spaceship Operator - PHP 7', 'https://www.youtube.com/watch?v=dvB4SwjTbCg', 'J&aacute; ouviu falar no operador Spaceship? Ent&atilde;o se liga neste exemplo que vou apresentar utilizando o spaceship. Vamos criar uma classe de cliente e uma classe que fornece um m&eacute;todo de ordena&ccedil;&atilde;o customizado para clientes!', '00:10:00'),
(4, 2, '&Eacute;tica - Neg&oacute;cios e Vida', 'https://www.youtube.com/watch?v=iij2DCvgELg&amp;in', '&Eacute;tica - Neg&oacute;cios e Vida', '00:26:00'),
(5, 2, 'Introdu&ccedil;&atilde;o &agrave; TGA - Cap. 17', 'https://www.youtube.com/watch?v=i_9-9p-qFCU&amp;in', '&Eacute;tica e responsabilidade das organiza&ccedil;&otilde;es', '00:10:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idCurso`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `faz_curso`
--
ALTER TABLE `faz_curso`
  ADD PRIMARY KEY (`idFazCurso`),
  ADD KEY `idUsuario` (`idUsuario`,`idCurso`),
  ADD KEY `fc_ibfk_1` (`idCurso`);

--
-- Indexes for table `ministra_curso`
--
ALTER TABLE `ministra_curso`
  ADD PRIMARY KEY (`idMiniCurso`),
  ADD KEY `idProfessor` (`idProfessor`,`idCurso`),
  ADD KEY `mc_ibfk_1` (`idCurso`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`idProfessor`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`idVideo`),
  ADD KEY `idCurso` (`idCurso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faz_curso`
--
ALTER TABLE `faz_curso`
  MODIFY `idFazCurso` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ministra_curso`
--
ALTER TABLE `ministra_curso`
  MODIFY `idMiniCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `idProfessor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `idVideo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`);

--
-- Limitadores para a tabela `faz_curso`
--
ALTER TABLE `faz_curso`
  ADD CONSTRAINT `fc_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
  ADD CONSTRAINT `fc_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `ministra_curso`
--
ALTER TABLE `ministra_curso`
  ADD CONSTRAINT `mc_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
  ADD CONSTRAINT `mc_ibfk_2` FOREIGN KEY (`idProfessor`) REFERENCES `professor` (`idProfessor`);

--
-- Limitadores para a tabela `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
