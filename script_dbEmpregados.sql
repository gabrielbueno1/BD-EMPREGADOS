Microsoft Windows [versão 10.0.19043.1165]
(c) Microsoft Corporation. Todos os direitos reservados.

C:\Users\gabriel>mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 9
Server version: 10.4.20-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database bdempregados;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| bdempregados       |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.001 sec)

MariaDB [(none)]> use bdempregados;
Database changed
MariaDB [bdempregados]> create table tbpessoas(
    -> id int,
    -> nome varchar(45),
    -> nascimento date,
    -> idcidades int);
Query OK, 0 rows affected (0.188 sec)

MariaDB [bdempregados]> create table tbcidades(
    -> id int,
    -> nome varchar(45),
    -> idestados int);
Query OK, 0 rows affected (0.106 sec)

MariaDB [bdempregados]> create table tbestados(
    -> id int,
    -> uf varchar(2),
    -> nome varchar(45));
Query OK, 0 rows affected (0.024 sec)

MariaDB [bdempregados]> show tables;
+------------------------+
| Tables_in_bdempregados |
+------------------------+
| tbcidades              |
| tbestados              |
| tbpessoas              |
+------------------------+
3 rows in set (0.001 sec)

MariaDB [bdempregados]> insert into tbpessoas values(1,'joel','2008/08/16',1);
Query OK, 1 row affected (0.009 sec)

MariaDB [bdempregados]> insert into tbpessoas values(2,'guilherme','2009/08/16',2);
Query OK, 1 row affected (0.005 sec)

MariaDB [bdempregados]> insert into tbpessoas values(3,'gabriel','2010/08/16',3);
Query OK, 1 row affected (0.004 sec)

MariaDB [bdempregados]> insert into tbpessoas values(4,'rafael','2011/08/16',4);
Query OK, 1 row affected (0.004 sec)

MariaDB [bdempregados]> insert into tbpessoas values(5,'junior','2012/08/16',5);
Query OK, 1 row affected (0.004 sec)

MariaDB [bdempregados]> insert into tbcidades values(1,'São Paulo',1);
Query OK, 1 row affected (0.082 sec)

MariaDB [bdempregados]> insert into tbcidades values(2,'RJ',2);
Query OK, 1 row affected (0.003 sec)

MariaDB [bdempregados]> insert into tbcidades values(2,'salvador',3);
Query OK, 1 row affected (0.007 sec)

MariaDB [bdempregados]> insert into tbcidades values(4,'MG',4);
Query OK, 1 row affected (0.008 sec)

MariaDB [bdempregados]> insert into tbcidades values(5,'BH',5);
Query OK, 1 row affected (0.013 sec)

MariaDB [bdempregados]> insert into tbestados values(1,'sp',1)
    -> ;
Query OK, 1 row affected (0.086 sec)

MariaDB [bdempregados]> insert into tbestados values(2,'es',2)
    -> ;
Query OK, 1 row affected (0.004 sec)

MariaDB [bdempregados]> insert into tbestados values(3,'pa',3);
Query OK, 1 row affected (0.023 sec)

MariaDB [bdempregados]> insert into tbestados values(4,'ma',4);
Query OK, 1 row affected (0.003 sec)

MariaDB [bdempregados]> insert into tbestados values(5,'pb',5);
Query OK, 1 row affected (0.003 sec)

MariaDB [bdempregados]> show tabes;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'tabes' at line 1
MariaDB [bdempregados]> show tables;
+------------------------+
| Tables_in_bdempregados |
+------------------------+
| tbcidades              |
| tbestados              |
| tbpessoas              |
+------------------------+
3 rows in set (0.001 sec)

MariaDB [bdempregados]> desc tbcidades;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| id        | int(11)     | YES  |     | NULL    |       |
| nome      | varchar(45) | YES  |     | NULL    |       |
| idestados | int(11)     | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.005 sec)

MariaDB [bdempregados]> select * from tbcidades;
+------+-----------+-----------+
| id   | nome      | idestados |
+------+-----------+-----------+
|    1 | São Paulo |         1 |
|    2 | RJ        |         2 |
|    2 | salvador  |         3 |
|    4 | MG        |         4 |
|    5 | BH        |         5 |
+------+-----------+-----------+
5 rows in set (0.001 sec)

MariaDB [bdempregados]> select * from tbestados;
+------+------+------+
| id   | uf   | nome |
+------+------+------+
|    1 | sp   | 1    |
|    2 | es   | 2    |
|    3 | pa   | 3    |
|    4 | ma   | 4    |
|    5 | pb   | 5    |
+------+------+------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> select * from tbpessoas;
+------+-----------+------------+-----------+
| id   | nome      | nascimento | idcidades |
+------+-----------+------------+-----------+
|    1 | joel      | 2008-08-16 |         1 |
|    2 | guilherme | 2009-08-16 |         2 |
|    3 | gabriel   | 2010-08-16 |         3 |
|    4 | rafael    | 2011-08-16 |         4 |
|    5 | junior    | 2012-08-16 |         5 |
+------+-----------+------------+-----------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> update tbcidades set id = 2 where id = 3;
Query OK, 0 rows affected (0.007 sec)
Rows matched: 0  Changed: 0  Warnings: 0

MariaDB [bdempregados]> select * from tbcidades;
+------+-----------+-----------+
| id   | nome      | idestados |
+------+-----------+-----------+
|    1 | São Paulo |         1 |
|    2 | RJ        |         2 |
|    2 | salvador  |         3 |
|    4 | MG        |         4 |
|    5 | BH        |         5 |
+------+-----------+-----------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> update tbcidades set id = 3 where idcidades = 3;
ERROR 1054 (42S22): Unknown column 'idcidades' in 'where clause'
MariaDB [bdempregados]> update tbcidades set id = 3 where idestados = 3;
Query OK, 1 row affected (0.166 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bdempregados]> select * from tbcidades;
+------+-----------+-----------+
| id   | nome      | idestados |
+------+-----------+-----------+
|    1 | São Paulo |         1 |
|    2 | RJ        |         2 |
|    3 | salvador  |         3 |
|    4 | MG        |         4 |
|    5 | BH        |         5 |
+------+-----------+-----------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> update tbcidades set nome = atalanta where id = 1;
ERROR 1054 (42S22): Unknown column 'atalanta' in 'field list'
MariaDB [bdempregados]> update tbcidades set nome = 'atalanta' where id = 1;
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bdempregados]> select * from tbcidades;
+------+----------+-----------+
| id   | nome     | idestados |
+------+----------+-----------+
|    1 | atalanta |         1 |
|    2 | RJ       |         2 |
|    3 | salvador |         3 |
|    4 | MG       |         4 |
|    5 | BH       |         5 |
+------+----------+-----------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]>
MariaDB [bdempregados]>
MariaDB [bdempregados]>
MariaDB [bdempregados]>
MariaDB [bdempregados]>
MariaDB [bdempregados]> select * from tbcidades;
+------+----------+-----------+
| id   | nome     | idestados |
+------+----------+-----------+
|    1 | atalanta |         1 |
|    2 | RJ       |         2 |
|    3 | salvador |         3 |
|    4 | MG       |         4 |
|    5 | BH       |         5 |
+------+----------+-----------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> select * from tbpessoas;
+------+-----------+------------+-----------+
| id   | nome      | nascimento | idcidades |
+------+-----------+------------+-----------+
|    1 | joel      | 2008-08-16 |         1 |
|    2 | guilherme | 2009-08-16 |         2 |
|    3 | gabriel   | 2010-08-16 |         3 |
|    4 | rafael    | 2011-08-16 |         4 |
|    5 | junior    | 2012-08-16 |         5 |
+------+-----------+------------+-----------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> update tbpessoas set nome = 'ronaldo' where id = 1;
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bdempregados]> update tbpessoas set nome = 'armando' where id = 2;
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bdempregados]> select * from tbpessoas;
+------+---------+------------+-----------+
| id   | nome    | nascimento | idcidades |
+------+---------+------------+-----------+
|    1 | ronaldo | 2008-08-16 |         1 |
|    2 | armando | 2009-08-16 |         2 |
|    3 | gabriel | 2010-08-16 |         3 |
|    4 | rafael  | 2011-08-16 |         4 |
|    5 | junior  | 2012-08-16 |         5 |
+------+---------+------------+-----------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> select * from tbestados;
+------+------+------+
| id   | uf   | nome |
+------+------+------+
|    1 | sp   | 1    |
|    2 | es   | 2    |
|    3 | pa   | 3    |
|    4 | ma   | 4    |
|    5 | pb   | 5    |
+------+------+------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> update tbpessoas set uf = 'bh' where id = 1;
ERROR 1054 (42S22): Unknown column 'uf' in 'field list'
MariaDB [bdempregados]> update tbestados set uf = 'bh' where id = 1;
Query OK, 1 row affected (0.020 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bdempregados]> update tbestados set uf = 'mg' where id = 2;
Query OK, 1 row affected (0.003 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bdempregados]> select * from tbestados;
+------+------+------+
| id   | uf   | nome |
+------+------+------+
|    1 | bh   | 1    |
|    2 | mg   | 2    |
|    3 | pa   | 3    |
|    4 | ma   | 4    |
|    5 | pb   | 5    |
+------+------+------+
5 rows in set (0.000 sec)

MariaDB [bdempregados]> show tables;
+------------------------+
| Tables_in_bdempregados |
+------------------------+
| tbcidades              |
| tbestados              |
| tbpessoas              |
+------------------------+
3 rows in set (0.001 sec)

MariaDB [bdempregados]> delete from tbpessoas where id = 1
    -> ;
Query OK, 1 row affected (0.004 sec)

MariaDB [bdempregados]> delete from tbcidades where id = 1;
Query OK, 1 row affected (0.003 sec)

MariaDB [bdempregados]> delete from tbestados where id = 1;
Query OK, 1 row affected (0.033 sec)

MariaDB [bdempregados]> select * from tbpessoas;
+------+---------+------------+-----------+
| id   | nome    | nascimento | idcidades |
+------+---------+------------+-----------+
|    2 | armando | 2009-08-16 |         2 |
|    3 | gabriel | 2010-08-16 |         3 |
|    4 | rafael  | 2011-08-16 |         4 |
|    5 | junior  | 2012-08-16 |         5 |
+------+---------+------------+-----------+
4 rows in set (0.000 sec)

MariaDB [bdempregados]> select * from tbcidades;
+------+----------+-----------+
| id   | nome     | idestados |
+------+----------+-----------+
|    2 | RJ       |         2 |
|    3 | salvador |         3 |
|    4 | MG       |         4 |
|    5 | BH       |         5 |
+------+----------+-----------+
4 rows in set (0.000 sec)

MariaDB [bdempregados]> select * from tbestados;
+------+------+------+
| id   | uf   | nome |
+------+------+------+
|    2 | mg   | 2    |
|    3 | pa   | 3    |
|    4 | ma   | 4    |
|    5 | pb   | 5    |
+------+------+------+
4 rows in set (0.000 sec)

MariaDB [bdempregados]>