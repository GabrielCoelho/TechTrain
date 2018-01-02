-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

/* Por: Luís Fernando Ribeiro e
Richard Glauber Dias */
/* Observação: Modelo Alterado.*/


CREATE TABLE Usuario (
idUsuario integer(11) not null auto_increment,
emailloginUsuario varchar(80) unique,
nmUsuario varchar(80) not null,
loginUsuario varchar(80) default null,
senhaUsuario varchar(255) default null,
dataUsuario date not null,
primary key(idUsuario,emailloginUsuario)
);

CREATE TABLE Aluno (
idAluno integer(11) not null auto_increment,
nmAluno varchar(60) not null,
idUsuario integer(11) not null,
emailloginUsuario varchar(80) not null,
dataCadAluno date not null,
primary key(idAluno,nmAluno),
foreign key(idUsuario,emailloginUsuario) references Usuario (idUsuario,emailloginUsuario)
);

CREATE TABLE Professor (
idProfessor integer(11) not null primary key auto_increment,
idUsuario integer(11) not null,
emailloginUsuario varchar(80) not null,
nmProfessor varchar(60) not null,
dataCadProfessor date not null,
foreign key(idUsuario,emailloginUsuario) references Usuario (idUsuario,emailloginUsuario)
);

CREATE TABLE Historico (
idHistorico integer(11) not null primary key auto_increment,
assuntoHistorico varchar(255) not null,
conteudoHistorico LongText default null,
dataHistorico date not null,
horaHistorico time not null
);

CREATE TABLE Videos (
idVideo integer(11) not null primary key auto_increment,
idCurso integer(11) not null,
urlVideo varchar(255) not null,
ordNume_Video integer(11) not null
);

CREATE TABLE Certificado (
idCertificado integer(11) not null auto_increment,
nmCurso varchar(30) not null,
cargaHorariaCurso time not null,
dataInicio date not null,
dataTermino date not null,
primary key(idCertificado,nmCurso,cargaHorariaCurso)
);

CREATE TABLE Cursos (
idCurso integer(11) not null primary key auto_increment,
idCategoria integer(11) not null,
nmCurso varchar(80) not null,
infoCurso_Simples varchar(255) not null,
infoCurso_Extensa longtext default null,
imagCurso varchar(255) not null,
valorCurso Float(10,2) not null,
duracaoCurso time not null,
dataCadastro date not null
);

CREATE TABLE Blog (
idBlog integer(11) not null primary key auto_increment,
dataBlog date not null,
assuntoBlog varchar(255) not null
);

CREATE TABLE Dev (
idDev integer(11) not null auto_increment,
CPFDev integer(11) not null,
nmDev varchar(30) not null,
emailDev varchar(60) not null,
acessoDev longtext not null,
primary key(idDev,CPFDev)
);

CREATE TABLE PrepararDev_Certificado (
idPreparar integer(11) not null primary key auto_increment,
idDev integer(11) not null,
idCertificado integer(11) not null,
CPFDev integer(11) not null,
nmCurso varchar(30) not null,
cargaHorariaCurso time not null,
dataPreparar date not null,
foreign key(idDev,CPFDev) references Dev (idDev,CPFDev),
foreign key(idCertificado,nmCurso,cargaHorariaCurso) references Certificado (idCertificado,nmCurso,cargaHorariaCurso)
);

CREATE TABLE Categorias (
idCategoria integer(11) not null primary key auto_increment,
nmCategoria varchar(80) not null
);

CREATE TABLE Cadastrar (
idCategoria integer(11) not null primary key auto_increment,
idDev integer(11) not null,
CPFDev integer(11) not null,
foreign key(idCategoria) references Categorias (idCategoria),
foreign key(idDev,CPFDev) references Dev (idDev,CPFDev)
);

CREATE TABLE Inserir (
idVideo integer(11) not null primary key auto_increment,
idDev integer(11) not null,
CPFDev integer(11) not null,
foreign key(idVideo) references Videos (idVideo),
foreign key(idDev,CPFDev) references Dev (idDev,CPFDev)
);

CREATE TABLE FazAluno_Curso (
idFazCurso integer(11) not null primary key auto_increment,
idAluno integer(11) not null,
idCurso integer(11) not null,
idCertificado integer(11) not null,
nmAluno varchar(60) not null,
nmCurso varchar(30) not null,
cargaHorariaCurso time not null,
dataFazCurso date not null,
foreign key(idAluno,nmAluno) references Aluno (idAluno,nmAluno),
foreign key(idCurso) references Cursos (idCurso),
foreign key(idCertificado,nmCurso,cargaHorariaCurso) references Certificado (idCertificado,nmCurso,cargaHorariaCurso)
);

CREATE TABLE MinistrarProfessor_Curso (
idMinistraCurso integer(11) not null primary key auto_increment,
idProfessor integer(11) not null,
idCurso integer(11) not null,
dataMinistraCurso date not null,
foreign key(idProfessor) references Professor (idProfessor),
foreign key(idCurso) references Cursos (idCurso)
);

CREATE TABLE AcessarDev_Backup (
idAcesso integer(11) not null primary key auto_increment,
idDev integer(11) not null,
idHistorico integer(11) not null,
CPFDev integer(11) not null,
dataAcesso date not null,
foreign key(idDev,CPFDev) references Dev (idDev,CPFDev),
foreign key(idHistorico) references Historico (idHistorico)
);

CREATE TABLE TerUsuario (
idTer integer(11) not null auto_increment,
idAluno integer(11) not null,
idHistorico integer(11) not null,
idProfessor integer(11) not null,
nmAluno varchar(60) not null,
dataTer date not null,
primary key(idTer,idAluno,idHistorico,idProfessor,nmAluno)
);

CREATE TABLE PossuirDev (
idPossuir integer(11) not null primary key auto_increment,
idDev integer(11) not null,
idBlog integer(11) not null,
CPFDev integer(11) not null,
dataPossuir date not null,
foreign key(idDev,CPFDev) references Dev (idDev,CPFDev),
foreign key(idBlog) references Blog (idBlog)
);

CREATE TABLE ControlarDev_Curso (
idControla integer(11) not null primary key auto_increment,
idCurso integer(11) not null,
idDev integer(11) not null,
CPFDev integer(11) not null,
dataControla date not null,
foreign key(idCurso) references Cursos (idCurso),
foreign key(idDev,CPFDev) references Dev (idDev,CPFDev)
);

CREATE TABLE musicaBlog (
musicaBlog varchar(255)
);

CREATE TABLE videoBlog (
videoBlog varchar(255)
);

CREATE TABLE imagemBlog (
imagemBlog varchar(255)
);

CREATE TABLE aulaCurso (
aulaCurso varchar(255)
);

CREATE TABLE gradeCurso (
gradeCurso varchar(20)
);

CREATE TABLE canalProfessor (
canalProfessor varchar(255)
);

CREATE TABLE nivelUsuario (
nivelUsuario boolean
);

CREATE TABLE emailUsuario (
emailUsuario varchar(60)
);

alter table Videos ADD foreign key(idCurso) references Cursos (idCurso);
alter table Cursos ADD foreign key(idCategoria) references Categorias (idCategoria);
