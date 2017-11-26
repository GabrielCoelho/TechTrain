-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Categorias (
idCategoria Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
nmCategoria Varchar(60) NOT NULL UNIQUE,
PRIMARY KEY (idCategoria)
);

CREATE TABLE Curso (
idCurso Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idCategoria Integer(11) NOT NULL UNIQUE,
nmCurso Varchar(60) NOT NULL UNIQUE,
infoCurso_Simples Varchar(20) NOT NULL,
infoCurso_Extensa LongText DEFAULT NULL,
dataCurso Date NOT NULL,
imagCurso Varchar(255) DEFAULT NULL,
CONSTRAINT PK_CURSO PRIMARY KEY (idCurso),
FOREIGN KEY (idCategoria) REFERENCES Categorias (idCategoria)
);

CREATE TABLE Faz_Curso (
idFazCurso Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idUsuario Integer(11) NOT NULL UNIQUE,
idCurso Integer(11) NOT NULL UNIQUE,
dataInscricao Date NOT NULL UNIQUE,
PRIMARY KEY (idFazCurso),
CONSTRAINT FK_UsuarioFaz_Curso FOREIGN KEY (idUsuario)
REFERENCES Usuario (idUsuario)
);

CREATE TABLE Usuario (
idUsuario Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
nmUsuario Varchar(60) NOT NULL UNIQUE,
senhaUsuario Varchar(20) NOT NULL UNIQUE,
emailUsuario Varchar(30) NOT NULL UNIQUE,
PRIMARY KEY (idUsuario)
);

CREATE TABLE Professor (
idProfessor Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
nmProfessor Varchar(60) NOT NULL UNIQUE,
PRIMARY KEY (idProfessor)
);

CREATE TABLE canalProfessor (
canalProfessor Varchar(255) DEFAULT NULL
);

CREATE TABLE Ministra_Curso (
idMiniCurso Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idProfessor Integer(11) NOT NULL UNIQUE,
idCurso Integer(11) NOT NULL UNIQUE,
cargaHorariaCurso Time NOT NULL UNIQUE,
PRIMARY KEY (idMiniCurso),
CONSTRAINT FK_ProfessorMinistra_Curso FOREIGN KEY (idProfessor)
REFERENCES Professor (idProfessor),
CONSTRAINT FK_CursoMinistra_Curso FOREIGN KEY (idCurso)
REFERENCES Curso (idCurso)
);

CREATE TABLE Video (
idVideo Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idCurso Integer(11) NOT NULL,
ordNume_Video Integer(11) NOT NULL,
urlVideo Varchar(255) NOT NULL,
PRIMARY KEY (idVideo),
CONSTRAINT FK_CursoVideo FOREIGN KEY (idCurso)
REFERENCES Curso (idCurso)
);

ALTER TABLE Faz_Curso ADD FOREIGN KEY(idUsuario) REFERENCES Usuario (idUsuario)
