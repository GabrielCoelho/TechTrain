-- Geração de Modelo fÍsico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Usuario (
idUsuario Varchar(40) PRIMARY KEY,
nmUsuario Varchar(40),
emailUsuario Varchar(40),
senhaUsuario Varchar(40)
)

CREATE TABLE Curso (
idCurso Varchar(40) PRIMARY KEY,
idGrade Varchar(40),
infoCurso_Extensa Varchar(40),
nmCurso Varchar(40),
infoCurso_Simples Varchar(40),
imagCurso Varchar(255),
-- Erro: nome do campo duplicado nesta tabela!
idGrade Varchar(40),
dataCurso_Cadas Varchar(40)
)

CREATE TABLE Grade Curso (
idGrade Varchar(40) PRIMARY KEY,
nmGrade Varchar(40)
)

CREATE TABLE Video (
idVideo Varchar(40) PRIMARY KEY,
idCurso Varchar(40),
-- Erro: nome do campo duplicado nesta tabela!
idCurso Varchar(40),
urlVideo Varchar(40),
ordemNume_Video Varchar(40),
FOREIGN KEY(idCurso) REFERENCES Curso (idCurso)
)

CREATE TABLE Faz_Curso (
idFazCurso Varchar(40) PRIMARY KEY,
idCurso Varchar(40),
idUsuario Varchar(40),
dataInscricao Varchar(40),
-- Erro: nome do campo duplicado nesta tabela!
idCurso Varchar(40),
-- Erro: nome do campo duplicado nesta tabela!
idUsuario Varchar(40),
FOREIGN KEY(idCurso) REFERENCES Curso (idCurso),
FOREIGN KEY(idUsuario) REFERENCES Usuario (idUsuario)
)

ALTER TABLE Curso ADD FOREIGN KEY(idGrade) REFERENCES Grade Curso (idGrade)
