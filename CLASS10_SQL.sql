mysql> use dbms
Database changed
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

mysql> select count(department) from student;
+-------------------+
| count(department) |
+-------------------+
|                 5 |
+-------------------+
1 row in set (0.00 sec)

mysql> select count(distint name) from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'name) from student' at line 1
mysql> select count(distin department) from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'department) from student' at line 1
mysql> select count(distinct department) from student;
+----------------------------+
| count(distinct department) |
+----------------------------+
|                          2 |
+----------------------------+
1 row in set (0.00 sec)

mysql> select max(name) from student;
+-----------+
| max(name) |
+-----------+
| Shanju    |
+-----------+
1 row in set (0.00 sec)

mysql> select max(date_of_birth) from student;
+--------------------+
| max(date_of_birth) |
+--------------------+
| 2006-05-17         |
+--------------------+
1 row in set (0.00 sec)

mysql> select max(rollno) from student;
+-------------+
| max(rollno) |
+-------------+
|           5 |
+-------------+
1 row in set (0.00 sec)

mysql> select max(department) from student;
+-----------------+
| max(department) |
+-----------------+
| IT              |
+-----------------+
1 row in set (0.00 sec)

mysql> create table product(
    -> prodid int,
    -> prodname varchar(225),
    -> prodprice int);
Query OK, 0 rows affected (0.01 sec)

mysql> insert into products values(01,'soap',50),(02,'shampoo',80),(03,'comb',15),(04,'powder',30),(05,'bindi',10);
ERROR 1146 (42S02): Table 'ttask.products' doesn't exist
mysql> insert into product values(01,'soap',50),(02,'shampoo',80),(03,'comb',15),(04,'powder',30),(05,'bindi',10);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from product;
+--------+----------+-----------+
| prodid | prodname | prodprice |
+--------+----------+-----------+
|      1 | soap     |        50 |
|      2 | shampoo  |        80 |
|      3 | comb     |        15 |
|      4 | powder   |        30 |
|      5 | bindi    |        10 |
+--------+----------+-----------+
5 rows in set (0.00 sec)

mysql> select max(prodprice) from product;
+----------------+
| max(prodprice) |
+----------------+
|             80 |
+----------------+
1 row in set (0.00 sec)

mysql> select min(prodprice) from product;
+----------------+
| min(prodprice) |
+----------------+
|             10 |
+----------------+
1 row in set (0.00 sec)

mysql> select prodprice from product where group by proname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'group by proname' at line 1
mysql> select prodprice from product group by proname;
ERROR 1054 (42S22): Unknown column 'proname' in 'group statement'
mysql> select prodprice from product group by prodname;
+-----------+
| prodprice |
+-----------+
|        10 |
|        15 |
|        30 |
|        80 |
|        50 |
+-----------+
5 rows in set (0.00 sec)

mysql> select prodname,avg()



       ;
ERROR:
No query specified

mysql> select prodname,avg(prodprice) from student group by prodname;
ERROR 1146 (42S02): Table 'ttask.student' doesn't exist
mysql> select prodname,avg(prodprice) from product group by prodname;
+----------+----------------+
| prodname | avg(prodprice) |
+----------+----------------+
| bindi    |        10.0000 |
| comb     |        15.0000 |
| powder   |        30.0000 |
| shampoo  |        80.0000 |
| soap     |        50.0000 |
+----------+----------------+
5 rows in set (0.00 sec)

mysql> select prodname,avg(prodprice) from product group by prodname having prodname is not null;;
+----------+----------------+
| prodname | avg(prodprice) |
+----------+----------------+
| bindi    |        10.0000 |
| comb     |        15.0000 |
| powder   |        30.0000 |
| shampoo  |        80.0000 |
| soap     |        50.0000 |
+----------+----------------+
5 rows in set (0.00 sec)

ERROR:
No query specified

mysql> select prodname,avg(prodprice) from product group by prodname having avg(prodprice) between 21 and 23;
Empty set (0.00 sec)

mysql> select prodname,avg(prodprice) from product group by prodname having avg(prodprice) between 15 and 80;
+----------+----------------+
| prodname | avg(prodprice) |
+----------+----------------+
| comb     |        15.0000 |
| powder   |        30.0000 |
| shampoo  |        80.0000 |
| soap     |        50.0000 |
+----------+----------------+
4 rows in set (0.00 sec)

mysql> select prodname,avg(prodprice) as averagefrom product group by prodname having avg(prodprice) between 15 and 80;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'product group by prodname having avg(prodprice) between 15 and 80' at line 1
mysql> select prodname,avg(prodprice) as average from product group by prodname having avg(prodprice) between 15 and 80;
+----------+---------+
| prodname | average |
+----------+---------+
| comb     | 15.0000 |
| powder   | 30.0000 |
| shampoo  | 80.0000 |
| soap     | 50.0000 |
+----------+---------+
4 rows in set (0.00 sec)

mysql>
mysql> CREATE TABLE IF NOT EXISTS EMPL(  EMPNO INT PRIMARY KEY,  EMPLOYEE VARCHAR(40) NOT NULL,  JOB VARCHAR(20),  MGR INT,  HIRE DATE,  SAL DECIMAL(10,2),  COMM FLOAT(10,2),  DEPTNO INT NOT NULL);INSERT INTO EMPL VALUES (8369,'SMITH    ','CLERK    ',8902,'1990-12-18',800.00 ,NULL,20),(499 ,'ANYA     ','SALESMAN ',8698,'1991-02-20',1600.00,300.00 ,30),(521 ,'SETH     ','SALESMAN ',8698,'1991-02-22',1250.00,500.00 ,30),(566 ,'MAHADEVAN','MANAGER  ',8839,'1991-04-02',2985.00,NULL   ,20),(654 ,'MOMIN    ','SALESMAN ',8698,'1991-09-28',1250.00,1400.00,30),(8698,'BINA     ','MANAGER  ',8839,'1991-05-01',2850.00,NULL   ,30),(8839,'AMIR     ','PRESIDENT',NULL,'1991-11-18',5000.00,NULL   ,10),(8844,'KULDEEP  ','SALESMAN ',8698,'1991-09-08',1500.00,0.00   ,30),(8882,'SHIAVNSH ','MANAGER  ',8839,'1991-06-09',2450.00,NULL   ,10),(8886,'ANOOP    ','CLERK    ',8888,'1993-01-12',1100.00,NULL   ,20),(8888,'SCOTT    ','ANALYST  ',8566,'1992-12-09',3000.00,NULL   ,20),(8900,'JATIN    ','CLERK    ',8698,'1991-12-03',950.00 ,NULL   ,30),(8902,'FAKIR    ','ANALYST  ',8566,'1991-12-03',3000.00,NULL   ,20),(8934,'MITA     ','CLERK    ',8839,'1992-01-23',1300.00,NULL   ,10);
ERROR 1046 (3D000): No database selected
ERROR 1046 (3D000): No database selected
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> 
mysql> use dbms
Database changed
mysql> CREATE TABLE IF NOT EXISTS EMPL(  EMPNO INT PRIMARY KEY,  EMPLOYEE VARCHAR(40) NOT NULL,  JOB VARCHAR(20),  MGR INT,  HIRE DATE,  SAL DECIMAL(10,2),  COMM FLOAT(10,2),  DEPTNO INT NOT NULL);INSERT INTO EMPL VALUES (8369,'SMITH    ','CLERK    ',8902,'1990-12-18',800.00 ,NULL,20),(499 ,'ANYA     ','SALESMAN ',8698,'1991-02-20',1600.00,300.00 ,30),(521 ,'SETH     ','SALESMAN ',8698,'1991-02-22',1250.00,500.00 ,30),(566 ,'MAHADEVAN','MANAGER  ',8839,'1991-04-02',2985.00,NULL   ,20),(654 ,'MOMIN    ','SALESMAN ',8698,'1991-09-28',1250.00,1400.00,30),(8698,'BINA     ','MANAGER  ',8839,'1991-05-01',2850.00,NULL   ,30),(8839,'AMIR     ','PRESIDENT',NULL,'1991-11-18',5000.00,NULL   ,10),(8844,'KULDEEP  ','SALESMAN ',8698,'1991-09-08',1500.00,0.00   ,30),(8882,'SHIAVNSH ','MANAGER  ',8839,'1991-06-09',2450.00,NULL   ,10),(8886,'ANOOP    ','CLERK    ',8888,'1993-01-12',1100.00,NULL   ,20),(8888,'SCOTT    ','ANALYST  ',8566,'1992-12-09',3000.00,NULL   ,20),(8900,'JATIN    ','CLERK    ',8698,'1991-12-03',950.00 ,NULL   ,30),(8902,'FAKIR    ','ANALYST  ',8566,'1991-12-03',3000.00,NULL   ,20),(8934,'MITA     ','CLERK    ',8839,'1992-01-23',1300.00,NULL   ,10);
Query OK, 0 rows affected (0.01 sec)

Query OK, 14 rows affected (0.00 sec)
Records: 14  Duplicates: 0  Warnings: 0

mysql> select * from EMPL;
+-------+-----------+-----------+------+------------+---------+---------+--------+
| EMPNO | EMPLOYEE  | JOB       | MGR  | HIRE       | SAL     | COMM    | DEPTNO |
+-------+-----------+-----------+------+------------+---------+---------+--------+
|   499 | ANYA      | SALESMAN  | 8698 | 1991-02-20 | 1600.00 |  300.00 |     30 |
|   521 | SETH      | SALESMAN  | 8698 | 1991-02-22 | 1250.00 |  500.00 |     30 |
|   566 | MAHADEVAN | MANAGER   | 8839 | 1991-04-02 | 2985.00 |    NULL |     20 |
|   654 | MOMIN     | SALESMAN  | 8698 | 1991-09-28 | 1250.00 | 1400.00 |     30 |
|  8369 | SMITH     | CLERK     | 8902 | 1990-12-18 |  800.00 |    NULL |     20 |
|  8698 | BINA      | MANAGER   | 8839 | 1991-05-01 | 2850.00 |    NULL |     30 |
|  8839 | AMIR      | PRESIDENT | NULL | 1991-11-18 | 5000.00 |    NULL |     10 |
|  8844 | KULDEEP   | SALESMAN  | 8698 | 1991-09-08 | 1500.00 |    0.00 |     30 |
|  8882 | SHIAVNSH  | MANAGER   | 8839 | 1991-06-09 | 2450.00 |    NULL |     10 |
|  8886 | ANOOP     | CLERK     | 8888 | 1993-01-12 | 1100.00 |    NULL |     20 |
|  8888 | SCOTT     | ANALYST   | 8566 | 1992-12-09 | 3000.00 |    NULL |     20 |
|  8900 | JATIN     | CLERK     | 8698 | 1991-12-03 |  950.00 |    NULL |     30 |
|  8902 | FAKIR     | ANALYST   | 8566 | 1991-12-03 | 3000.00 |    NULL |     20 |
|  8934 | MITA      | CLERK     | 8839 | 1992-01-23 | 1300.00 |    NULL |     10 |
+-------+-----------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> create table dept(
    -> deptno int,
    -> deptname varchar(225),
    -> loc varchar(225));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into dept values(10,'Accounting','New york'),(20,'CS','dallas'),(30,'IT','chicago'),(40,'BCA','boston');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from dept;
+--------+------------+----------+
| deptno | deptname   | loc      |
+--------+------------+----------+
|     10 | Accounting | New york |
|     20 | CS         | dallas   |
|     30 | IT         | chicago  |
|     40 | BCA        | boston   |
+--------+------------+----------+
4 rows in set (0.00 sec)

mysql> Terminal close -- exit!
