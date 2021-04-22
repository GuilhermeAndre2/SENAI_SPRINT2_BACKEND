USE inlock_games_tarde;

--• Inserir três estúdios: um com o nome de Blizzard, outro com o nome de Rockstar Studios e o último com o nome de Square Enix;
INSERT INTO ESTUDIO(nomeEstudio)
VALUES			   ('Blizzard'),
				   ('Rockstar Studios'),
				   ('Square Enix');

------------------------------------------------------------------------------------------

--Inserir um jogo com o nome de: Diablo 3, com data de lançamento de: 15 de
--maio de 2012, que contenha a descrição de: é um jogo que contém bastante
--ação e é viciante, seja você um novato ou um fã. Seu estúdio é a Blizzard. E o
--jogo custa R$ 99,00;

--Inserir um jogo com o nome de: Red Dead Redemption II, com a descrição de: jogo
--eletrônico de ação-aventura western. Seu estúdio será a Rockstar Studios. Lançado
--mundialmente em 26 de outubro de 2018. E o jogo custa R$ 120,00;

INSERT INTO JOGOS (nomeJogo, Descricao, dataLancamento, Preco, IdEstudio)
VALUES				('Diablo 3', 'È um jogo que contém bastante ação e é viciante, seja você um novato ou um fã', '20120515 10:34:09 AM', 99.00, 1 ),
					('Red Dead Redemption II', 'Jogo eletrônico de ação-aventura western', '20181026 10:34:09 AM', 120.00, 2 );
					SELECT * FROM JOGOS;

------------------------------------------------------------------------------------------

INSERT INTO TIPOS_DE_USUARIOS (Titulo)
VALUES						  ('ADMINISTRADOR'),
							  ('CLIENTE');
							  SELECT * FROM TIPOS_DE_USUARIOS;

------------------------------------------------------------------------------------------

--Inserir um usuário do tipo ADMINISTRADOR que tenha o e-mail igual a
--admin@admin.com e a senha igual a admin;

--Inserir um usuário do tipo CLIENTE que tenha o e-mail igual a
--cliente@cliente.com e a senha igual a cliente;

INSERT INTO USUARIOS (Email, Senha, Permissao, idTipoUsuario)
VALUES				 ('admin@admin.com', 'admin;', 'ADMINISTRADOR', 1),
					 ('cliente@cliente.com', 'cliente', 'CLIENTE', 2);