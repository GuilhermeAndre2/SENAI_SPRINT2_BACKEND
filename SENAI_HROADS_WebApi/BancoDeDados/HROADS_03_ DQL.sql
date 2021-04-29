--------DQL-------------------



USE SENAI_HROADS_TARDE;

SELECT * FROM CLASSE;
SELECT * FROM PERSONAGEM;
SELECT * FROM HABILIDADE;
SELECT * FROM TIPOHABILIDADE;
SELECT * FROM TIPOUSUARIO;
SELECT * FROM USUARIO;

----------------------------------------------------------------
--SELECIONAR SOMENTE OS PERSONAGENS
-----------------------------------
SELECT PERSONAGEM.NOME FROM PERSONAGEM;


---SELECIONAR SOMENTE O NOME DAS CLASSES;
----------------------------------------
SELECT CLASSE.NOME FROM CLASSE;

--SELECIONAR TODAS AS HABILIDADES;
-----------------------------------------
SELECT * FROM HABILIDADE;




--SELECIONAR SOMENTE OD ID�S DAS HABILIDADES CLASSIFICANDO-OS POR ORDEM CRESCCENTE;
-----------------------------------------------------------------------------------
SELECT HABILIDADE.IdHABILIDADE FROM HABILIDADE ;



--SELECIONAR TODOS OS TIPOS DE HABILIDADE
------------------------------------------
SELECT * FROM TIPOHABILIDADE;



--SELECIONAR TODAS AS HABILIDADES E A QUAIS TIPOS DE HABILIDADES ELAS PERTENCEM
-----------------------------------------------------------------------------------
SELECT *FROM HABILIDADE
INNER JOIN TIPOHABILIDADE
ON HABILIDADE.IdTIPO = TIPOHABILIDADE.IdTIPO;


--SELECIONAR TODOS OS PERSONAGENS E SUAS RESPECTIVAS CLASSES
------------------------------------------------------------
SELECT PERSONAGEM.IdPERSONAGEM, PERSONAGEM.NOME, CLASSE.IdCLASSE, CLASSE.NOME FROM PERSONAGEM
INNER JOIN CLASSE
ON PERSONAGEM.IdCLASSE = CLASSE.IdCLASSE;


--Selecionar todas as classes e suas respectivas habilidades;
--------------------------------------------------------------

SELECT CLASSE.NOME, HABILIDADE.NOME FROM CLASSE
INNER JOIN HABILIDADE
ON CLASSE.IdHABILIDADE = HABILIDADE.IdHABILIDADE;

--Selecionar todas as HABILIDADES e suas respectivas CLASSES;
--------------------------------------------------------------
SELECT HABILIDADE.NOME, CLASSE.NOME FROM HABILIDADE
INNER JOIN CLASSE
ON HABILIDADE.IdHABILIDADE = CLASSE.IdHABILIDADE;

--REALIZAR A CONTAGEM DE QUANTAS HABILIDADES EST�O CADASTRADAS
--------------------------------------------------------------
SELECT COUNT(HABILIDADE.NOME)  
FROM HABILIDADE;  
GO