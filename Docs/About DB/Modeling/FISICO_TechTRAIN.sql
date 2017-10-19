-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Certificado (
idCertificado Integer(11) PRIMARY KEY,
nmCurso Varchar(30),
cargaHorariaCurso Time,
dataInicio Date,
dataTermino Date
)

CREATE TABLE Backup (
idBackup Integer(11) PRIMARY KEY,
horaBackup Time,
dataBackup Date,
conteudoBackup LongText,
assuntoBackup LongText
)

CREATE TABLE Dev (
idDev Integer(11),
CPFDev Integer(11),
emailDev Varchar(60),
nmDev Varchar(30),
acessoDev LongText,
PRIMARY KEY(idDev,CPFDev,emailDev)
)

CREATE TABLE Blog (
idBlog Integer(11) PRIMARY KEY,
assuntoBlog Varchar(255),
dataBlog Date
)

CREATE TABLE Curso (
idCurso Integer(11) PRIMARY KEY,
idCertificado Integer(11),
dataCadastro Date,
duracaoCurso Time,
nmCurso Varchar(80),
infoCurso LongText,
valorCurso FLOAT(10,2),
FOREIGN KEY(idCertificado) REFERENCES Certificado (idCertificado)
)

CREATE TABLE Usuario (
idUsuario Integer(11),
emailloginUsuario Varchar(80),
senhaUsuario VARCHAR(255),
loginUsuario Varchar(80),
nmUsuario Varchar(80),
dataUsuario Date,
PRIMARY KEY(idUsuario,emailloginUsuario)
)

CREATE TABLE Musica_Blog (
musicaBlog Varchar(255)
)

CREATE TABLE Video_Blog (
videoBlog Varchar(255)
)

CREATE TABLE Imagem_Blog (
imagemBlog Varchar(255)
)

CREATE TABLE Grade_Curso (
gradeCurso Varchar(20)
)

CREATE TABLE Aula_Curso (
aulaCurso Varchar(255)
)

CREATE TABLE Video_Curso (
videoCurso Varchar(255)
)

CREATE TABLE Email_Usuario (
emailUsuario Varchar(60)
)

CREATE TABLE Nivel_Usuario (
nivelUsuario Boolean
)

CREATE TABLE Faz_Usuario (
idFaz Integer(11) PRIMARY KEY,
idBackup Integer(11),
idUsuario Integer(11),
emailloginUsuario Varchar(80),
dataFaz Date,
FOREIGN KEY(idBackup) REFERENCES Backup (idBackup),
FOREIGN KEY(idUsuario,emailloginUsuario) REFERENCES Usuario (idUsuario,emailloginUsuario)
)

CREATE TABLE Participa_UsuarioCurso (
idPasrticipa Integer(11) PRIMARY KEY,
idUsuario Integer(11),
emailloginUsuario Varchar(80),
idCurso Integer(11),
dataParticipa Date,
FOREIGN KEY(idUsuario,emailloginUsuario) REFERENCES Usuario (idUsuario,emailloginUsuario),
FOREIGN KEY(idCurso) REFERENCES Curso (idCurso)
)

CREATE TABLE Possui_Dev (
idPossui Integer(11) PRIMARY KEY,
idDev Integer(11),
emailDev Varchar(60),
CPFDev Integer(11),
idBlog Integer(11),
dataPossui Date,
FOREIGN KEY(idDev,CPFDev,emailDev) REFERENCES Dev (idDev,CPFDev,emailDev),
FOREIGN KEY(idBlog) REFERENCES Blog (idBlog)
)

