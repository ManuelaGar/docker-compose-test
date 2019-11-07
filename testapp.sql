USE testapp;
CREATE TABLE test(
	id int not null,
    nameUsers text,
    primary key (id)
);
SHOW TABLES;

insert into test(id,nameUsers) values (1, 'Manuela');
insert into test(id,nameUsers) values (2, 'Nicolas');
insert into test(id,nameUsers) values (3, 'JP');
insert into test(id,nameUsers) values (4, 'Jose');
