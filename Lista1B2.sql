
/* AULA PRÁTICA 05: SQL AVANÇADA (OUTROS OBJETOS) */

/* 9: */ 
CREATE SCHEMA pratica05;

USE pratica05;

/* 10: */ 
CREATE TABLE dados_multimidia (
Codigo INTEGER, 
Nome VARCHAR(30),
Tipo VARCHAR(20),
Dados LONGBLOB,
PRIMARY KEY(Codigo)
);


/* 11: */  

INSERT INTO dados_multimidia (Codigo, Nome, Tipo, Dados) VALUES ('0012', 'Loop - Diag. Use Case', 'png', LOAD_FILE('/var/lib/mysql-files/Casos_de_Uso.png'));

INSERT INTO dados_multimidia (Codigo, Nome, Tipo, Dados) VALUES ('0013', 'Loop - Diag. Class', 'png', LOAD_FILE('/var/lib/mysql-files/diagrama_class.png'));

INSERT INTO dados_multimidia (Codigo, Nome, Tipo, Dados) VALUES ('0014', 'Loop - Diag. Sequência', 'png', LOAD_FILE('/var/lib/mysql-files/diagrama_sequencia.png'));

INSERT INTO dados_multimidia (Codigo, Nome, Tipo, Dados) VALUES ('0015', 'Loop - Diag. Estado', 'png', LOAD_FILE('/var/lib/mysql-files/diagrama_estado.png'));



/* 12: */  

SELECT * FROM dados_multimidia;

/* 13: */
SELECT Dados INTO dumpfile "/var/lib/mysql-files/imagem_export12.png" FROM dados_multimidia WHERE Codigo = 12;
SELECT Dados INTO dumpfile "/var/lib/mysql-files/imagem_export13.png" FROM dados_multimidia WHERE Codigo = 13;
SELECT Dados INTO dumpfile "/var/lib/mysql-files/imagem_export14.png" FROM dados_multimidia WHERE Codigo = 14;
SELECT Dados INTO dumpfile "/var/lib/mysql-files/imagem_export15.png" FROM dados_multimidia WHERE Codigo = 15;

