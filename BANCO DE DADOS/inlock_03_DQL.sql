USE inlock_games_tarde;

--Listar todos os usuários;
SELECT * FROM USUARIOS;

----------------------------

--Listar todos os estúdios;
SELECT * FROM ESTUDIO;

----------------------------

--Listar todos os jogos;
SELECT * FROM JOGOS;

----------------------------

--Listar todos os jogos e seus respectivos estúdios;
SELECT JOGOS.nomeJogo, ESTUDIO.nomeEstudio FROM JOGOS
INNER JOIN ESTUDIO
ON JOGOS.IdEstudio = ESTUDIO.IdEstudio;

----------------------------

--Buscar e trazer na lista todos os estúdios com os respectivos jogos. Obs.: Listar
--todos os estúdios mesmo que eles não contenham nenhum jogo de referência;
SELECT ESTUDIO.nomeEstudio, JOGOS.nomeJogo FROM ESTUDIO
INNER JOIN JOGOS
ON JOGOS.IdEstudio = ESTUDIO.IdEstudio;

----------------------------

--Buscar um usuário por e-mail e senha (login);
SELECT USUARIOS.Email, USUARIOS.Senha FROM USUARIOS
WHERE EMAIL = 'admin@admin.com' AND SENHA = 'admin;'; 

----------------------------

SELECT USUARIOS.Email, USUARIOS.Senha FROM USUARIOS
WHERE EMAIL = 'cliente@cliente.com' AND SENHA = 'cliente'; 

----------------------------

SELECT USUARIOS.idUsuario, USUARIOS.Email, USUARIOS.Senha, USUARIOS.Permissao FROM USUARIOS
WHERE EMAIL = 'admin@admin.com' AND SENHA = 'admin;';

--Buscar um jogo por idJogo;
SELECT * FROM JOGOS
WHERE JOGOS.IdJogo = 3;

SELECT * FROM JOGOS
WHERE JOGOS.IdJogo = 4;

----------------------------

-- Buscar um estúdio por idEstudio;
SELECT * FROM ESTUDIO
WHERE ESTUDIO.IdEstudio = 1;

SELECT * FROM ESTUDIO
WHERE ESTUDIO.IdEstudio = 2;

SELECT * FROM ESTUDIO
WHERE ESTUDIO.IdEstudio = 3;

----------------------------