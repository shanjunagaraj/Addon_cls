mysql> tee d:/ 2322kb49_day2.txt;
mysql> select * from student;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |   NULL |
| Nagaraj |     50 | IT      |   NULL |
| Harshit |     51 | English |   NULL |
| Menaka  |     52 | Tamil   |   NULL |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from deptdetails;
+--------+----------+--------+
| deptid | deptname | mentor |
+--------+----------+--------+
|      1 | CS       | sudee  |
|      2 | IT       | shanju |
|      3 | BCA      | mathu  |
+--------+----------+--------+
3 rows in set (0.00 sec)

mysql> select * from subjects;
+--------+---------+
| rollno | subject |
+--------+---------+
|     49 | Tamil   |
|     50 | Tamil   |
|     51 | Tamil   |
|     52 | English |
+--------+---------+
4 rows in set (0.00 sec)

mysql> update students set deptid='01' where dept=cs;
ERROR 1146 (42S02): Table 'myuse.students' doesn't exist
mysql> update student set deptid='01' where dept=cs;
ERROR 1054 (42S22): Unknown column 'cs' in 'where clause'
mysql> update student set deptid='01' where dept='cs';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |      1 |
| Nagaraj |     50 | IT      |   NULL |
| Harshit |     51 | English |   NULL |
| Menaka  |     52 | Tamil   |   NULL |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> update student set deptid='02' where dept='IT';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |      1 |
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |   NULL |
| Menaka  |     52 | Tamil   |   NULL |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> update student set deptid='03' where dept='English';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update student set deptid='04' where dept='Tamil';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |      1 |
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |      3 |
| Menaka  |     52 | Tamil   |      4 |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from deptdetails;
+--------+----------+--------+
| deptid | deptname | mentor |
+--------+----------+--------+
|      1 | CS       | sudee  |
|      2 | IT       | shanju |
|      3 | BCA      | mathu  |
+--------+----------+--------+
3 rows in set (0.00 sec)

mysql> select * from subjects;
+--------+---------+
| rollno | subject |
+--------+---------+
|     49 | Tamil   |
|     50 | Tamil   |
|     51 | Tamil   |
|     52 | English |
+--------+---------+
4 rows in set (0.00 sec)

mysql> update student set subject='English' where rollno=50;
ERROR 1054 (42S22): Unknown column 'subject' in 'field list'
mysql> update subjects set subject='English' where rollno=50;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update subjects set subject='Maths' where rollno=51;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from subjects;
+--------+---------+
| rollno | subject |
+--------+---------+
|     49 | Tamil   |
|     50 | English |
|     51 | Maths   |
|     52 | English |
+--------+---------+
4 rows in set (0.00 sec)

mysql> select * from subjects;
+--------+---------+
| rollno | subject |
+--------+---------+
|     49 | Tamil   |
|     50 | English |
|     51 | Maths   |
|     52 | English |
+--------+---------+
4 rows in set (0.00 sec)

mysql> select * from student;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |      1 |
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |      3 |
| Menaka  |     52 | Tamil   |      4 |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> select name from student where rollno =49;
+--------+
| name   |
+--------+
| shanju |
+--------+
1 row in set (0.00 sec)

mysql> select name * student where rollno =49;
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
mysql> select * from student where rollno =49;
+--------+--------+------+--------+
| name   | rollno | dept | deptid |
+--------+--------+------+--------+
| shanju |     49 | cs   |      1 |
+--------+--------+------+--------+
1 row in set (0.00 sec)

mysql> select * from student order by name;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| Harshit |     51 | English |      3 |
| Menaka  |     52 | Tamil   |      4 |
| Nagaraj |     50 | IT      |      2 |
| shanju  |     49 | cs      |      1 |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from student order by name desc;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |      1 |
| Nagaraj |     50 | IT      |      2 |
| Menaka  |     52 | Tamil   |      4 |
| Harshit |     51 | English |      3 |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> select top 3 * from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '3 * from student' at line 1
mysql> select * from student limit 2;
+---------+--------+------+--------+
| name    | rollno | dept | deptid |
+---------+--------+------+--------+
| shanju  |     49 | cs   |      1 |
| Nagaraj |     50 | IT   |      2 |
+---------+--------+------+--------+
2 rows in set (0.00 sec)

mysql> select * from student limit 2 offset 3;
+--------+--------+-------+--------+
| name   | rollno | dept  | deptid |
+--------+--------+-------+--------+
| Menaka |     52 | Tamil |      4 |
+--------+--------+-------+--------+
1 row in set (0.00 sec)

mysql> select * from student limit 2 offset 2;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| Harshit |     51 | English |      3 |
| Menaka  |     52 | Tamil   |      4 |
+---------+--------+---------+--------+
2 rows in set (0.00 sec)

mysql> select distinct name from student;
+---------+
| name    |
+---------+
| shanju  |
| Nagaraj |
| Harshit |
| Menaka  |
+---------+
4 rows in set (0.00 sec)

mysql> select distinct name * from student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'from student' at line 1
mysql> select distinct * from student;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |      1 |
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |      3 |
| Menaka  |     52 | Tamil   |      4 |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from student where deptid = 2 or deptid =3;
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |      3 |
+---------+--------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from student where deptid = 2 and deptid =3;
Empty set (0.00 sec)

mysql> select * from student where deptid in (2,3);
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |      3 |
+---------+--------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from student where deptid not in (2,3);
+--------+--------+-------+--------+
| name   | rollno | dept  | deptid |
+--------+--------+-------+--------+
| shanju |     49 | cs    |      1 |
| Menaka |     52 | Tamil |      4 |
+--------+--------+-------+--------+
2 rows in set (0.00 sec)

mysql> select rollno as studentid , name as studentname from student;
+-----------+-------------+
| studentid | studentname |
+-----------+-------------+
|        49 | shanju      |
|        50 | Nagaraj     |
|        51 | Harshit     |
|        52 | Menaka      |
+-----------+-------------+
4 rows in set (0.00 sec)

mysql> select * from student where name like 's%';
+--------+--------+------+--------+
| name   | rollno | dept | deptid |
+--------+--------+------+--------+
| shanju |     49 | cs   |      1 |
+--------+--------+------+--------+
1 row in set (0.00 sec)

mysql> select * from student where name like '%j';
+---------+--------+------+--------+
| name    | rollno | dept | deptid |
+---------+--------+------+--------+
| Nagaraj |     50 | IT   |      2 |
+---------+--------+------+--------+
1 row in set (0.00 sec)

mysql> select * from student where name like '%a%';
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| shanju  |     49 | cs      |      1 |
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |      3 |
| Menaka  |     52 | Tamil   |      4 |
+---------+--------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from student where name like '_a%';
+---------+--------+---------+--------+
| name    | rollno | dept    | deptid |
+---------+--------+---------+--------+
| Nagaraj |     50 | IT      |      2 |
| Harshit |     51 | English |      3 |
+---------+--------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from student where name like '__a%';
+--------+--------+------+--------+
| name   | rollno | dept | deptid |
+--------+--------+------+--------+
| shanju |     49 | cs   |      1 |
+--------+--------+------+--------+
1 row in set (0.00 sec)

mysql> select * from student where name like '___a%';
+---------+--------+-------+--------+
| name    | rollno | dept  | deptid |
+---------+--------+-------+--------+
| Nagaraj |     50 | IT    |      2 |
| Menaka  |     52 | Tamil |      4 |
+---------+--------+-------+--------+
2 rows in set (0.00 sec)

mysql> select * from student where name like 'a%___';
Empty set (0.00 sec)

mysql> select * from student where name like 'a%_';
Empty set (0.00 sec)

mysql> select * from student where name like 'a%';
Empty set (0.00 sec)

mysql> select * from student where name like 'N%';
+---------+--------+------+--------+
| name    | rollno | dept | deptid |
+---------+--------+------+--------+
| Nagaraj |     50 | IT   |      2 |
+---------+--------+------+--------+
1 row in set (0.00 sec)

mysql> select * from student where name like 'n%';
+---------+--------+------+--------+
| name    | rollno | dept | deptid |
+---------+--------+------+--------+
| Nagaraj |     50 | IT   |      2 |
+---------+--------+------+--------+
1 row in set (0.00 sec)

mysql> notee
