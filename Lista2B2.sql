/* AULA PRÁTICA 06: INDEXAÇÃO */

/* 1: */
CREATE SCHEMA pratica06;
USE pratica06;

/* 2: */
CREATE TABLE exemplo1(
C1 INT(11),
C2 DECIMAL(10,2),
C3 DECIMAL(10,2),
C4 DECIMAL(10,2)
);

/* 3: */

SOURCE /home/leonardo/Downloads/exemplo1.sql;

SELECT * FROM exemplo1;

/* 4: */

11 rows in set (0,04 sec)


/* 5: */

CREATE INDEX idX_c2 ON exemplo1 (c2);
CREATE INDEX idX_c3 ON exemplo1 (c3);
CREATE INDEX idX_c4 ON exemplo1 (c4);

ANALYZE TABLE exemplo1;

/* 6: */

/* TEMPO - 11 rows in set (0,00 sec) */


/* 7: */

/* Campo c1 não indexado: 12 rows in set (0,03 sec) */

/* campo c2 indexado: 11 rows in set (0,00 sec) */



