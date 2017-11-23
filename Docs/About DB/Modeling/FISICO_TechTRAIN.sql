-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Grade_Curso (
idGrade Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
nmGrade Varchar(60) NOT NULL, 
PRIMARY KEY (idGrade)
);

CREATE TABLE Vídeo (
idVideo Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idCurso Integer(11) NOT NULL, 
ordNume_Video Integer(11) DEFAULT NULL,
urlVideo Varchar(50) DEFAULT NULL,
PRIMARY KEY (idVideo)
);

CREATE TABLE Usuario (
idUsuario Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
nmUsuario Varchar(60) NOT NULL,
senhaUsuario Varchar(20) NOT NULL,
emailUsuario Varchar(30) NOT NULL,
PRIMARY KEY (idUsuario)
);

CREATE TABLE Curso (
idCurso Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idGrade Integer(11) NOT NULL UNIQUE,
nmCurso Varchar(60) NOT NULL,
infoCurso_Simples Varchar(20) NOT NULL,
infoCurso_Extensa LongText DEFAULT NULL,
dataCurso Date NOT NULL,
imagCurso Varchar(255) NOT NULL,
PRIMARY kEY (idCurso),
FOREIGN KEY(idGrade) REFERENCES Grade_Curso (idGrade)
);

CREATE TABLE Professor (
idProfessor Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
nmProfessor Varchar(60) NOT NULL,
canalProfessor Varchar(255),
PRIMARY KEY (idProfessor)
);

CREATE TABLE Ministra_Curso (
idMiniCurso Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idProfessor Integer(11) NOT NULL,
idCurso Integer(11) NOT NULL,
cargaHorariaCurso Time NOT NULL,
PRIMARY KEY (idMiniCurso),
FOREIGN KEY(idProfessor) REFERENCES Professor (idProfessor),
FOREIGN KEY(idCurso) REFERENCES Curso (idCurso)
);

CREATE TABLE Faz_Curso (
idFazCurso Integer(11) NOT NULL AUTO_INCREMENT UNIQUE,
idCurso Integer(11) NOT NULL,
idUsuario Integer(11) NOT NULL,
dataInscrição Date NOT NULL,
PRIMARY KEY (idFazCurso),
FOREIGN KEY(idCurso) REFERENCES Curso (idCurso),
FOREIGN KEY(idUsuario) REFERENCES Usuario (idUsuario)
);

ALTER TABLE Vídeo ADD FOREIGN KEY(idCurso) REFERENCES Curso (idCurso)
