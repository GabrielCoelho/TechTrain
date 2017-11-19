-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE usuario (
idUsuario Integer(11) NOT NULL AUTO_INCREMENT,
nmUsuario Varchar(60) NOT NULL,
emailUsuario Varchar(30) NOT NULL,
senhaUsuario Varchar(20) NOT NULL,
PRIMARY KEY (idUsuario)
);

CREATE TABLE faz_curso (
idFazCurso Integer(11) NOT NULL AUTO_INCREMENT,
idUsuario Integer(11) NOT NULL,
idCurso Integer(11) NOT NULL,
dataInscrição Date NOT NULL,
PRIMARY KEY (idFazCurso),
CONSTRAINT FOREIGN KEY(idUsuario) REFERENCES usuario (idUsuario)
);

CREATE TABLE grade_curso (
idGrade Integer(11) NOT NULL AUTO_INCREMENT,
nmGrade Varchar(60) NOT NULL,
PRIMARY KEY (idGrade)
);

CREATE TABLE curso (
idCurso Integer(11) NOT NULL AUTO_INCREMENT,
idGrade Integer(11) NOT NULL,
nmCurso Varchar(60) NOT NULL,
infoCurso_Simples Varchar(20) NOT NULL,
infoCurso_Extensa LongText DEFAULT NULL,
imagCurso Varchar(255)DEFAULT NULL,
dataCurso Date NOT NULL,
PRIMARY KEY (idCurso),
CONSTRAINT FOREIGN KEY(idGrade) REFERENCES grade_curso (idGrade)
);

CREATE TABLE video (
idVideo Integer(11) NOT NULL AUTO_INCREMENT,
idCurso Integer(11) NOT NULL,
urlVideo Varchar(50) NOT NULL,
ordNume_Video Integer(11) NOT NULL,
PRIMARY KEY (idVideo),
CONSTRAINT FOREIGN KEY(idCurso) REFERENCES curso (idCurso)
);

ALTER TABLE faz_curso ADD FOREIGN KEY(idCurso) REFERENCES curso (idCurso)
