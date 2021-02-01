insert into tb_aluno (id, nome) values (1, 'Port Wordington');
insert into tb_aluno (id, nome) values (2, 'Dory Crissil');
insert into tb_aluno (id, nome) values (3, 'Lennie Barajaz');
insert into tb_aluno (id, nome) values (4, 'Georgie Grassick');
insert into tb_aluno (id, nome) values (5, 'Tillie Murley');
insert into tb_aluno (id, nome) values (6, 'Ruthann Horlick');
insert into tb_aluno (id, nome) values (7, 'Iorgos MacGiolla');
insert into tb_aluno (id, nome) values (8, 'Carmela MacTague');
insert into tb_aluno (id, nome) values (9, 'Stefanie Prati');
insert into tb_aluno (id, nome) values (10, 'Bentlee Pourvoieur');

insert into tb_gabarito (id, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (1, 'Bugeranus caruncalatus', 'E', 'C', 'E', 'C', 'A', 'E', 'E', 'E', 'D', 'E', '4', '2', '6', '3', '1', '6', '5', '7', '2', '9');
insert into tb_gabarito (id, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (2, 'Colobus guerza', 'D', 'D', 'E', 'E', 'D', 'B', 'C', 'D', 'D', 'D', '7', '5', '5', '6', '6', '9', '5', '7', '4', '1');
insert into tb_gabarito (id, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (3, 'Aonyx cinerea', 'D', 'D', 'E', 'A', 'E', 'B', 'E', 'E', 'D', 'E', '2', '8', '5', '8', '4', '8', '1', '5', '3', '7');
insert into tb_gabarito (id, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (4, 'Pytilia melba', 'E', 'C', 'E', 'B', 'E', 'E', 'C', 'E', 'B', 'E', '5', '5', '5', '4', '3', '9', '9', '7', '2', '8');
insert into tb_gabarito (id, nome, resposta01, resposta02, resposta03, resposta04, resposta05, resposta06, resposta07, resposta08, resposta09, resposta10, peso01, peso02, peso03, peso04, peso05, peso06, peso07, peso08, peso09, peso10) values (5, 'Anas punctata', 'E', 'E', 'D', 'E', 'D', 'E', 'E', 'E', 'E', 'D', '2', '1', '1', '4', '2', '3', '2', '7', '2', '2');

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


