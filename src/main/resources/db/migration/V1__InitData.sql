create table USER
(
    id   bigint primary key auto_increment,
    name varchar(100)
);

create table MATCH
(
    id      bigint primary key auto_increment,
    user_id bigint,
    score   int
);

insert into USER (id, name)
values (1, 'zhangsan');
insert into USER (id, name)
values (2, 'lisi');
insert into USER (id, name)
values (3, 'wangwu');

insert into MATCH (id, user_id, score)
VALUES (1, 1, 1000);
insert into MATCH (id, user_id, score)
VALUES (2, 1, 300);
insert into MATCH (id, user_id, score)
VALUES (3, 2, 500);
insert into MATCH (id, user_id, score)
VALUES (4, 3, 500);