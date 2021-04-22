--Criar um banco de dados chamado inlock_games_manha/tarde;
CREATE DATABASE inlock_games_tarde;

USE inlock_games_tarde;

--Criar uma tabela de estúdios com os campos de idEstudio e nomeEstudio;
CREATE TABLE ESTUDIO
(
	IdEstudio				INT PRIMARY KEY IDENTITY,
	nomeEstudio				VARCHAR(200) NOT NULL
);

--Criar uma tabela de jogos com os campos idJogo, nomeJogo, descrição, dataLancamento, valor e idEstudio;
CREATE TABLE JOGOS
(
	IdJogo					INT PRIMARY KEY IDENTITY,
	nomeJogo				VARCHAR(200),
	Descricao				VARCHAR(200),
	dataLancamento			DATETIME,
	Preco					SMALLMONEY,
	IdEstudio				INT	FOREIGN KEY REFERENCES ESTUDIO(IdEstudio)
);

--Criar uma tabela de tipos de usuários contendo os campos idTipoUsuario e titulo;
CREATE TABLE TIPOS_DE_USUARIOS
(
	idTipoUsuario			INT PRIMARY KEY IDENTITY,
	Titulo					VARCHAR(200)
);

--Criar uma tabela de usuários contendo os campos de idUsuario, email, senha e idTipoUsuario;
CREATE TABLE USUARIOS
(
	idUsuario				INT PRIMARY KEY IDENTITY,
	Email					VARCHAR(200) NOT NULL,
	Senha					VARCHAR(200) NOT NULL,
	Permissao				VARCHAR(200),
	idTipoUsuario			INT	FOREIGN KEY REFERENCES TIPOS_DE_USUARIOS(idTipoUsuario)
);