/***

Resolução SQLite por Tarcísio Nunes 
https://github.com/tarcnux/escola_Alf

O Desafio
	
	A escola Alf aplica provas de múltipla escolha para os alunos. A nota do aluno na prova é determinada pela média ponderada das questões com os pesos de cada questão. Cada questão correta soma 1 ponto multiplicada pelo peso e cada questão errada 0. A nota final é a média aritmética das notas de todas as provas.

  Restrições
	- A nota total da prova é sempre maior que 0 e menor que 10.
	- A quantidade máxima de alunos é 100.
	- O peso de cada questão é sempre um inteiro maior que 0.
	- Os alunos aprovados tem média de notas maior do que 7.
	- A entrada e saída de dados deverá ser em JSON.
*/

/***
  DDL - Data Definition Language
*/

create table tb_aluno (
  id_aluno INT PRIMARY KEY NOT NULL,
  nome TEXT NOT NULL UNIQUE
);

create table tb_gabarito (
  id_gabarito INT PRIMARY KEY NOT NULL,
  nome TEXT NOT NULL UNIQUE,
  resposta01 char(1) NOT NULL,
  resposta02 char(1) NOT NULL,
  resposta03 char(1) NOT NULL,
  resposta04 char(1) NOT NULL,
  resposta05 char(1) NOT NULL,
  resposta06 char(1) NOT NULL,
  resposta07 char(1) NOT NULL,
  resposta08 char(1) NOT NULL,
  resposta09 char(1) NOT NULL,
  resposta10 char(1) NOT NULL,
  peso01 TINYINT NOT NULL,
  peso02 TINYINT NOT NULL,
  peso03 TINYINT NOT NULL,
  peso04 TINYINT NOT NULL,
  peso05 TINYINT NOT NULL,
  peso06 TINYINT NOT NULL,
  peso07 TINYINT NOT NULL,
  peso08 TINYINT NOT NULL,
  peso09 TINYINT NOT NULL,
  peso10 TINYINT NOT NULL
);

create table tb_prova (
  id_gabarito INT NOT NULL,
  id_aluno INT NOT NULL,  
  resposta01 char(1) NOT NULL,
  resposta02 char(1) NOT NULL,
  resposta03 char(1) NOT NULL,
  resposta04 char(1) NOT NULL,
  resposta05 char(1) NOT NULL,
  resposta06 char(1) NOT NULL,
  resposta07 char(1) NOT NULL,
  resposta08 char(1) NOT NULL,
  resposta09 char(1) NOT NULL,
  resposta10 char(1) NOT NULL,
  PRIMARY KEY(id_gabarito, id_aluno)
);

/***
  DML - Data Manipulation Language
  Inserção dos dados
*/

/*Mock data 10 Alunos*/
insert into tb_aluno (id_aluno, nome) values (1, 'Port Wordington');
insert into tb_aluno (id_aluno, nome) values (2, 'Dory Crissil');
insert into tb_aluno (id_aluno, nome) values (3, 'Lennie Barajaz');
insert into tb_aluno (id_aluno, nome) values (4, 'Georgie Grassick');
insert into tb_aluno (id_aluno, nome) values (5, 'Tillie Murley');
insert into tb_aluno (id_aluno, nome) values (6, 'Ruthann Horlick');
insert into tb_aluno (id_aluno, nome) values (7, 'Iorgos MacGiolla');
insert into tb_aluno (id_aluno, nome) values (8, 'Carmela MacTague');
insert into tb_aluno (id_aluno, nome) values (9, 'Stefanie Prati');
insert into tb_aluno (id_aluno, nome) values (10, 'Bentlee Pourvoieur');

SELECT " ";
SELECT "# Populando com 10 ALUNOS #";
SELECT " ";

SELECT * FROM tb_aluno;

/*Mock Data 5 Gabaritos*/
insert into tb_gabarito (id_gabarito, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (1, 'Bugeranus caruncalatus', 'E', 'C', 'E', 'C', 'A', 'E', 'E', 'E', 'D', 'E', '4', '2', '6', '3', '1', '6', '5', '7', '2', '9');
insert into tb_gabarito (id_gabarito, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (2, 'Colobus guerza', 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'D', '7', '5', '5', '6', '6', '9', '5', '7', '4', '1');
insert into tb_gabarito (id_gabarito, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (3, 'Aonyx cinerea', 'D', 'D', 'E', 'A', 'E', 'B', 'E', 'E', 'D', 'E', '2', '8', '5', '8', '4', '8', '1', '5', '3', '7');
insert into tb_gabarito (id_gabarito, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (4, 'Pytilia melba', 'E', 'C', 'E', 'B', 'E', 'E', 'C', 'E', 'B', 'E', '5', '5', '5', '4', '3', '9', '9', '7', '2', '8');
insert into tb_gabarito (id_gabarito, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (5, 'Anas punctata', 'E', 'E', 'D', 'E', 'D', 'E', 'E', 'E', 'E', 'D', '2', '1', '1', '4', '2', '3', '2', '7', '2', '2');

SELECT " ";
SELECT "# Populando com 5 GABARITOS de respostas e pesos #";
SELECT "id_gabarito | nome | Respostas Letras | Pesos Números";
SELECT " ";

SELECT * FROM tb_gabarito;

/*Mock Data 5 Provas de 10 alunos = 50 provas*/
/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 1, 'E', 'C', 'E', 'C', 'A', 'E', 'E', 'E', 'D', 'E');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 2, 'E', 'C', 'E', 'C', 'A', 'E', 'E', 'E', 'D', 'E');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 3,'E', 'C', 'E', 'C', 'A', 'E', 'E', 'E', 'D', 'E');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 4,'E', 'C', 'E', 'C', 'A', 'E', 'E', 'E', 'D', 'E');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 5, 'E', 'C', 'E', 'C', 'A', 'E', 'E', 'E', 'D', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 6, 'E', 'A', 'D', 'B', 'C', 'E', 'E', 'E', 'C', 'D');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 7, 'D', 'E', 'A', 'C', 'A', 'D', 'E', 'A', 'E', 'A');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 8, 'C', 'E', 'D', 'B', 'D', 'D', 'E', 'E', 'E', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 9, 'D', 'B', 'D', 'A', 'D', 'E', 'C', 'C', 'B', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (1, 10, 'D', 'C', 'E', 'E', 'E', 'E', 'E', 'E', 'E', 'C');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 1, 'E', 'E', 'E', 'B', 'E', 'C', 'E', 'E', 'C', 'C');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 2, 'D', 'E', 'D', 'B', 'E', 'C', 'E', 'E', 'E', 'E');

/*Alunx 03 Só a última questão errada*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 3, 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'X');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 4, 'E', 'E', 'E', 'E', 'E', 'E', 'C', 'E', 'A', 'D');

/*Alunx 05 Só a última questão errada*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 5, 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'X');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 6,'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'D');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 7, 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'D');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 8, 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'D');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 9, 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'D');

/*Nota 10*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (2, 10, 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'D');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 1, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 2, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 3, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 4, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 5, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 6, 'A', 'A', 'D', 'C', 'E', 'D', 'D', 'D', 'E', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 7, 'E', 'E', 'E', 'E', 'E', 'E', 'E', 'E', 'D', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 8, 'E', 'E', 'B', 'A', 'B', 'D', 'E', 'D', 'E', 'D');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 9, 'A', 'D', 'E', 'A', 'E', 'E', 'C', 'D', 'D', 'D');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (3, 10, 'D', 'A', 'E', 'D', 'E', 'B', 'D', 'C', 'D', 'D');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 1, 'E', 'E', 'D', 'E', 'D', 'E', 'D', 'E', 'E', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 2, 'D', 'E', 'D', 'E', 'E', 'E', 'E', 'C', 'D', 'C');

/*Alunx 03 primeira, terceira e querta questão errada*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 3, 'X', 'C', 'X', 'X', 'E', 'E', 'C', 'E', 'B', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 4, 'C', 'A', 'E', 'D', 'D', 'D', 'D', 'E', 'D', 'E');

/*Alunx 05 primeira e última questão errada*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 5, 'X', 'C', 'E', 'B', 'E', 'E', 'C', 'E', 'B', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 6, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 7, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 8, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 9, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (4, 10, 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X');

/*Nota 0*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 1, 'D', 'D', 'E', 'E', 'A', 'C', 'E', 'E', 'A', 'D');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 2, 'E', 'E', 'E', 'E', 'A', 'A', 'D', 'D', 'E', 'E');

/*Alunx 03 primeira e última questão errada*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 3, 'X', 'E', 'D', 'E', 'D', 'E', 'E', 'E', 'E', 'X');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 4, 'E', 'E', 'D', 'D', 'E', 'D', 'E', 'C', 'E', 'E');

/*Alunx 05 última e Penúltimas questão errada*/
insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 5, 'E', 'E', 'D', 'E', 'D', 'E', 'E', 'E', 'X', 'X');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 6, 'E', 'A', 'D', 'D', 'E', 'D', 'B', 'E', 'E', 'E');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 7, 'D', 'E', 'C', 'E', 'E', 'E', 'D', 'B', 'D', 'A');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 8, 'E', 'D', 'D', 'E', 'B', 'D', 'D', 'E', 'E', 'D');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 9, 'D', 'D', 'E', 'E', 'D', 'D', 'E', 'E', 'E', 'D');

insert into tb_prova (id_gabarito, id_aluno, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10) values (5, 10, 'E', 'B', 'E', 'D', 'E', 'E', 'E', 'D', 'E', 'E');

SELECT " ";
SELECT "# Populando com 50 PROVAS #";
SELECT "id_gabarito | id_aluno | Respostas"
SELECT " ";

SELECT * FROM tb_prova;

SELECT " ";
SELECT "# Correção de 50 Provas";
SELECT "# Nota de cada item/questão";
SELECT "id_aluno | id_gabarito | Valores de cada Questão / item"
SELECT " ";

/*Se a resposta01 da prova for igual a resposta01 do gabarito multiplica-se 1 vezes o peso, resultando no valor do item01
e assim por diante para as dez questões*/

SELECT id_aluno AS aluno,
id_gabarito AS gabarito,
  (p.resposta01 = g.resposta01) * g.peso01 AS item01, 
  (p.resposta02 = g.resposta02) * g.peso02 AS item02, 
  (p.resposta03 = g.resposta03) * g.peso03 AS item03, 
  (p.resposta04 = g.resposta04) * g.peso04 AS item04, 
  (p.resposta05 = g.resposta05) * g.peso05 AS item05, 
  (p.resposta06 = g.resposta06) * g.peso06 AS item06, 
  (p.resposta07 = g.resposta07) * g.peso07 AS item07, 
  (p.resposta08 = g.resposta08) * g.peso08 AS item08, 
  (p.resposta09 = g.resposta09) * g.peso09 AS item09, 
  (p.resposta10 = g.resposta10) * g.peso10 AS item10
FROM tb_prova p
INNER JOIN tb_aluno a USING(id_aluno)
INNER JOIN tb_gabarito g USING(id_gabarito);

SELECT " ";
SELECT "# Provas corrigidas: 50 Notas de 0 a 10";
SELECT "# id_aluno | id_gabarito | Nota";
SELECT " ";

SELECT id_aluno AS aluno,
id_gabarito AS gabarito,
ROUND(
  CAST( 
    (
      (p.resposta01 = g.resposta01) * g.peso01  +
      (p.resposta02 = g.resposta02) * g.peso02  +
      (p.resposta03 = g.resposta03) * g.peso03  +
      (p.resposta04 = g.resposta04) * g.peso04  +
      (p.resposta05 = g.resposta05) * g.peso05  +
      (p.resposta06 = g.resposta06) * g.peso06  +
      (p.resposta07 = g.resposta07) * g.peso07  +
      (p.resposta08 = g.resposta08) * g.peso08  +
      (p.resposta09 = g.resposta09) * g.peso09  +
      (p.resposta10 = g.resposta10) * g.peso10
    ) AS REAL
  ) / (g.peso01 + g.peso02 + g.peso03 + g.peso04 + 
      g.peso05 + g.peso06 + g.peso07 + g.peso08 + 
      g.peso09 + g.peso10 ) * 10.0 
,1) AS NOTA
FROM tb_prova p
INNER JOIN tb_aluno a USING(id_aluno)
INNER JOIN tb_gabarito g USING(id_gabarito);


/***
 Criação da View Notas, com id_aluno, nome do aluno 
 e sua nota na prova 
 */

CREATE VIEW notas AS
SELECT id_aluno AS aluno,
a.nome as nome,
ROUND(
  CAST( 
    (
      (p.resposta01 = g.resposta01) * g.peso01  +
      (p.resposta02 = g.resposta02) * g.peso02  +
      (p.resposta03 = g.resposta03) * g.peso03  +
      (p.resposta04 = g.resposta04) * g.peso04  +
      (p.resposta05 = g.resposta05) * g.peso05  +
      (p.resposta06 = g.resposta06) * g.peso06  +
      (p.resposta07 = g.resposta07) * g.peso07  +
      (p.resposta08 = g.resposta08) * g.peso08  +
      (p.resposta09 = g.resposta09) * g.peso09  +
      (p.resposta10 = g.resposta10) * g.peso10
    ) AS REAL
  ) / (g.peso01 + g.peso02 + g.peso03 + g.peso04 + 
      g.peso05 + g.peso06 + g.peso07 + g.peso08 + 
      g.peso09 + g.peso10 ) * 10.0 
,1) AS NOTA
FROM tb_prova p
INNER JOIN tb_aluno a USING(id_aluno)
INNER JOIN tb_gabarito g USING(id_gabarito);

SELECT " ";
SELECT "# Consultando a View Notas#";
SELECT " ";
SELECT "# Provas corrigidas: 50 Notas de 0 a 10";
SELECT "# id_aluno | Nome do Alunos | Nota";
SELECT " ";


SELECT * FROM notas;

SELECT " ";
SELECT "# Consultando a View #";
SELECT "# Notas apenas do aluno 3 nas 5 provas#";
SELECT " ";

/***
 Observar que este aluno possui uma nota 10 e uma 0,
 que serão retiradas da média, seguindo instruções,
 enviadas por e-mail.
*/

SELECT * FROM notas WHERE aluno = 3;

SELECT " ";
SELECT "# Consultando a View #";
SELECT "# Média do aluno 3 #";
SELECT " ";

/*Média igual a 7,16 arredondando 7,2*/
SELECT aluno,nome, ROUND(AVG(nota),1) AS notaFinal
FROM notas WHERE aluno = 3;

SELECT " ";
SELECT "# Média do aluno 3 #";
SELECT "# Excluindo notas 0 e 10 #";
SELECT " ";

/*Média igual a 8,6 */
SELECT aluno, nome, ROUND(AVG(nota),1) AS notaFinal
FROM notas WHERE aluno = 3 AND nota NOT IN (0,10);

SELECT " ";
SELECT "# Média de Todxs Alunxs #";
SELECT "# Excluindo notas 0 e 10 #";
SELECT "# id_aluno | Nome do Alunos | Nota";
SELECT " ";

SELECT aluno, nome, ROUND(AVG(nota),1) AS notaFinal
FROM notas WHERE nota NOT IN (0,10) 
GROUP BY aluno;

SELECT " ";
SELECT "# Exibindo Todxs Alunxs Aprovadxs #";
SELECT "# Excluindo notas 0 e 10 #";
SELECT "# Média deve ser maior que 7";
SELECT " ";

/*Alunxs aprovadxs: 3 e 5 
com médias 8,6 e 8,7 respectivamente*/
SELECT aluno, nome, ROUND(AVG(nota),1) AS notaFinal
FROM notas WHERE nota NOT IN (0,10) 
GROUP BY aluno HAVING notaFinal > 7;
