show databases;
use lcl;
show tables;
create table test (name varchar(10) not null default '',income int(11)   not null default '0')
engine = innodb
default charset = utf8;
insert into lcl.income(name,income) value ('张',100);
insert into lcl.income(name,income) value ('王',110);
insert into lcl.income(name,income) value ('洪',90);
insert into lcl.income(name,income) value ('舒',160);
insert into lcl.income(name,income) value ('祝',180);
