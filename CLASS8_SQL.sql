mysql> create database kgcas
    -> ;
ERROR 1007 (HY000): Can't create database 'kgcas'; database exists
mysql> create database mydb;
ERROR 1007 (HY000): Can't create database 'mydb'; database exists
mysql> create database dbms;\
Query OK, 1 row affected (0.00 sec)

mysql> use dbms
Database changed
mysql> create table student(
    -> rollno int,
    -> name varchar(20),
    -> date_of_birth date,
    -> department varchar(10));
Query OK, 0 rows affected (0.01 sec)

mysql> select * from student
    -> ;
Empty set (0.00 sec)

mysql> insert into student values(01,'Shanju',2005-06-16,'computer science');
Query OK, 1 row affected, 2 warnings (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 0000-00-00    | computer s |
+--------+--------+---------------+------------+
1 row in set (0.00 sec)

mysql> insert into student values(01,'Shanju','2005-06-16','computer science');
Query OK, 1 row affected, 1 warning (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 0000-00-00    | computer s |
|      1 | Shanju | 2005-06-16    | computer s |
+--------+--------+---------------+------------+
2 rows in set (0.00 sec)

mysql> delete from student where date_of_birth =0000-00-00;
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | computer s |
+--------+--------+---------------+------------+
1 row in set (0.00 sec)

mysql> delete from student where date_of_birth =2005-06-16;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | computer s |
+--------+--------+---------------+------------+
1 row in set (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | computer s |
+--------+--------+---------------+------------+
1 row in set (0.00 sec)

mysql> delete from student where date_of_birth =2005-06-16;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | computer s |
+--------+--------+---------------+------------+
1 row in set (0.00 sec)

mysql> insert into student values(01,'Shanju','2005-06-16','CS');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | computer s |
|      1 | Shanju | 2005-06-16    | CS         |
+--------+--------+---------------+------------+
2 rows in set (0.00 sec)

mysql> delete from student where department =computer s;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 's' at line 1
mysql> delete from student where department ='computer s';
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | CS         |
+--------+--------+---------------+------------+
1 row in set (0.00 sec)

mysql> insert into student values(02,'Kalai','2005-02-11','CS');
Query OK, 1 row affected (0.00 sec)

mysql> insert into student values(02,'Kalai','2005-02-11','CS');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
+--------+--------+---------------+------------+
3 rows in set (0.00 sec)

mysql> delete from student where date_of_birth =2005-02-11;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
+--------+--------+---------------+------------+
3 rows in set (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
+--------+--------+---------------+------------+
3 rows in set (0.00 sec)

mysql> delete from student where rollno=1;
Query OK, 1 row affected (0.00 sec)

mysql> delete from student where rollno=1;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student;
+--------+-------+---------------+------------+
| rollno | name  | date_of_birth | department |
+--------+-------+---------------+------------+
|      2 | Kalai | 2005-02-11    | CS         |
|      2 | Kalai | 2005-02-11    | CS         |
+--------+-------+---------------+------------+
2 rows in set (0.00 sec)

mysql> delete from student where rollno=2;
Query OK, 2 rows affected (0.00 sec)

mysql> delete from student where rollno=2;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student;
Empty set (0.00 sec)

mysql> insert into student values(01,'Shanju','2005-06-16','CS');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | CS         |
+--------+--------+---------------+------------+
1 row in set (0.00 sec)

mysql> insert into student values(02,'Kalai','2005-02-11','CS');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
+--------+--------+---------------+------------+
2 rows in set (0.00 sec)

mysql> insert into student values(02,'Harshit','2005-03-07','CS');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+---------+---------------+------------+
| rollno | name    | date_of_birth | department |
+--------+---------+---------------+------------+
|      1 | Shanju  | 2005-06-16    | CS         |
|      2 | Kalai   | 2005-02-11    | CS         |
|      2 | Harshit | 2005-03-07    | CS         |
+--------+---------+---------------+------------+
3 rows in set (0.00 sec)

mysql> delete from student where name='Harshit';
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+--------+---------------+------------+
| rollno | name   | date_of_birth | department |
+--------+--------+---------------+------------+
|      1 | Shanju | 2005-06-16    | CS         |
|      2 | Kalai  | 2005-02-11    | CS         |
+--------+--------+---------------+------------+
2 rows in set (0.00 sec)

mysql> insert into student values(03,'Harshit','2005-03-07','CS');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+---------+---------------+------------+
| rollno | name    | date_of_birth | department |
+--------+---------+---------------+------------+
|      1 | Shanju  | 2005-06-16    | CS         |
|      2 | Kalai   | 2005-02-11    | CS         |
|      3 | Harshit | 2005-03-07    | CS         |
+--------+---------+---------------+------------+
3 rows in set (0.00 sec)

mysql> insert into student values(04,'Menaka','2006-05-17','IT');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+---------+---------------+------------+
| rollno | name    | date_of_birth | department |
+--------+---------+---------------+------------+
|      1 | Shanju  | 2005-06-16    | CS         |
|      2 | Kalai   | 2005-02-11    | CS         |
|      3 | Harshit | 2005-03-07    | CS         |
|      4 | Menaka  | 2006-05-17    | IT         |
+--------+---------+---------------+------------+
4 rows in set (0.00 sec)

mysql> insert into student values(05,'Nagaraj','2005-08-10','IT');
Query OK, 1 row affected (0.00 sec)

mysql> select * from student;
+--------+---------+---------------+------------+
| rollno | name    | date_of_birth | department |
+--------+---------+---------------+------------+
|      1 | Shanju  | 2005-06-16    | CS         |
|      2 | Kalai   | 2005-02-11    | CS         |
|      3 | Harshit | 2005-03-07    | CS         |
|      4 | Menaka  | 2006-05-17    | IT         |
|      5 | Nagaraj | 2005-08-10    | IT         |
+--------+---------+---------------+------------+
5 rows in set (0.00 sec)

mysql> create table marks(
    -> rollno int,
    -> mark1 int,
    -> mark2 int,
    -> mark3 int);
Query OK, 0 rows affected (0.01 sec)

mysql> insert into marks values(99,98,100);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into marks values(01,'99','98','100');
Query OK, 1 row affected (0.00 sec)

mysql> select * from marks;
+--------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 |
+--------+-------+-------+-------+
|      1 |    99 |    98 |   100 |
+--------+-------+-------+-------+
1 row in set (0.00 sec)

mysql> insert into marks values(02,'89','85','79');
Query OK, 1 row affected (0.00 sec)

mysql> insert into marks values(03,'98','75','99');
Query OK, 1 row affected (0.00 sec)

mysql> insert into marks values(04,'89','95','93');
Query OK, 1 row affected (0.00 sec)

mysql> select * from marks;
+--------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 |
+--------+-------+-------+-------+
|      1 |    99 |    98 |   100 |
|      2 |    89 |    85 |    79 |
|      3 |    98 |    75 |    99 |
|      4 |    89 |    95 |    93 |
+--------+-------+-------+-------+
4 rows in set (0.00 sec)

mysql> insert into marks values(01,'99','99','100');
Query OK, 1 row affected (0.00 sec)

mysql> select * from marks;
+--------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 |
+--------+-------+-------+-------+
|      1 |    99 |    98 |   100 |
|      2 |    89 |    85 |    79 |
|      3 |    98 |    75 |    99 |
|      4 |    89 |    95 |    93 |
|      1 |    99 |    99 |   100 |
+--------+-------+-------+-------+
5 rows in set (0.00 sec)

mysql> delete from marks where mark2='99';
Query OK, 1 row affected (0.00 sec)

mysql> select * from marks;
+--------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 |
+--------+-------+-------+-------+
|      1 |    99 |    98 |   100 |
|      2 |    89 |    85 |    79 |
|      3 |    98 |    75 |    99 |
|      4 |    89 |    95 |    93 |
+--------+-------+-------+-------+
4 rows in set (0.00 sec)

mysql> insert into marks values(05,'99','99','100');
Query OK, 1 row affected (0.00 sec)

mysql> select * from marks;
+--------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 |
+--------+-------+-------+-------+
|      1 |    99 |    98 |   100 |
|      2 |    89 |    85 |    79 |
|      3 |    98 |    75 |    99 |
|      4 |    89 |    95 |    93 |
|      5 |    99 |    99 |   100 |
+--------+-------+-------+-------+
5 rows in set (0.00 sec)

mysql> desc student
    -> ;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| rollno        | int(11)     | YES  |     | NULL    |       |
| name          | varchar(20) | YES  |     | NULL    |       |
| date_of_birth | date        | YES  |     | NULL    |       |
| department    | varchar(10) | YES  |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> desc marks;
+--------+---------+------+-----+---------+-------+
| Field  | Type    | Null | Key | Default | Extra |
+--------+---------+------+-----+---------+-------+
| rollno | int(11) | YES  |     | NULL    |       |
| mark1  | int(11) | YES  |     | NULL    |       |
| mark2  | int(11) | YES  |     | NULL    |       |
| mark3  | int(11) | YES  |     | NULL    |       |
+--------+---------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from student;
+--------+---------+---------------+------------+
| rollno | name    | date_of_birth | department |
+--------+---------+---------------+------------+
|      1 | Shanju  | 2005-06-16    | CS         |
|      2 | Kalai   | 2005-02-11    | CS         |
|      3 | Harshit | 2005-03-07    | CS         |
|      4 | Menaka  | 2006-05-17    | IT         |
|      5 | Nagaraj | 2005-08-10    | IT         |
+--------+---------+---------------+------------+
5 rows in set (0.00 sec)

mysql> select * from marks;
+--------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 |
+--------+-------+-------+-------+
|      1 |    99 |    98 |   100 |
|      2 |    89 |    85 |    79 |
|      3 |    98 |    75 |    99 |
|      4 |    89 |    95 |    93 |
|      5 |    99 |    99 |   100 |
+--------+-------+-------+-------+
5 rows in set (0.00 sec)

mysql> alter table marks add column total int;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from marks;
+--------+-------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 | total |
+--------+-------+-------+-------+-------+
|      1 |    99 |    98 |   100 |  NULL |
|      2 |    89 |    85 |    79 |  NULL |
|      3 |    98 |    75 |    99 |  NULL |
|      4 |    89 |    95 |    93 |  NULL |
|      5 |    99 |    99 |   100 |  NULL |
+--------+-------+-------+-------+-------+
5 rows in set (0.00 sec)

mysql> update marks set total=mark1*mark2*mark3;
Query OK, 5 rows affected (0.00 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from marks;
+--------+-------+-------+-------+--------+
| rollno | mark1 | mark2 | mark3 | total  |
+--------+-------+-------+-------+--------+
|      1 |    99 |    98 |   100 | 970200 |
|      2 |    89 |    85 |    79 | 597635 |
|      3 |    98 |    75 |    99 | 727650 |
|      4 |    89 |    95 |    93 | 786315 |
|      5 |    99 |    99 |   100 | 980100 |
+--------+-------+-------+-------+--------+
5 rows in set (0.00 sec)

mysql> update marks set total= marks1+marks2+marks3;
ERROR 1054 (42S22): Unknown column 'marks1' in 'field list'
mysql> update marks set total= mark1+mark2+mark3;
Query OK, 5 rows affected (0.00 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> update marks set total= mark1+mark2+mark3;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 5  Changed: 0  Warnings: 0

mysql> select * from marks;
+--------+-------+-------+-------+-------+
| rollno | mark1 | mark2 | mark3 | total |
+--------+-------+-------+-------+-------+
|      1 |    99 |    98 |   100 |   297 |
|      2 |    89 |    85 |    79 |   253 |
|      3 |    98 |    75 |    99 |   272 |
|      4 |    89 |    95 |    93 |   277 |
|      5 |    99 |    99 |   100 |   298 |
+--------+-------+-------+-------+-------+
5 rows in set (0.00 sec)

mysql> alter table marks add column average int;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from marks;
+--------+-------+-------+-------+-------+---------+
| rollno | mark1 | mark2 | mark3 | total | average |
+--------+-------+-------+-------+-------+---------+
|      1 |    99 |    98 |   100 |   297 |    NULL |
|      2 |    89 |    85 |    79 |   253 |    NULL |
|      3 |    98 |    75 |    99 |   272 |    NULL |
|      4 |    89 |    95 |    93 |   277 |    NULL |
|      5 |    99 |    99 |   100 |   298 |    NULL |
+--------+-------+-------+-------+-------+---------+
5 rows in set (0.00 sec)

mysql> update marks set average=total/3;
Query OK, 5 rows affected (0.00 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from marks;
+--------+-------+-------+-------+-------+---------+
| rollno | mark1 | mark2 | mark3 | total | average |
+--------+-------+-------+-------+-------+---------+
|      1 |    99 |    98 |   100 |   297 |      99 |
|      2 |    89 |    85 |    79 |   253 |      84 |
|      3 |    98 |    75 |    99 |   272 |      91 |
|      4 |    89 |    95 |    93 |   277 |      92 |
|      5 |    99 |    99 |   100 |   298 |      99 |
+--------+-------+-------+-------+-------+---------+
5 rows in set (0.00 sec)

mysql> notee
mysql> select * from student;
+--------+---------+---------------+------------+
| rollno | name    | date_of_birth | department |
+--------+---------+---------------+------------+
|      1 | Shanju  | 2005-06-16    | CS         |
|      2 | Kalai   | 2005-02-11    | CS         |
|      3 | Harshit | 2005-03-07    | CS         |
|      4 | Menaka  | 2006-05-17    | IT         |
|      5 | Nagaraj | 2005-08-10    | IT         |
+--------+---------+---------------+------------+
5 rows in set (0.00 sec)

