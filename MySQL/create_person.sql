--create table person
create table person(
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	name CHAR(60) NOT NULL,
	PRIMARY KEY(id)
);

--create table shirt
create table shirt(
	id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
	style ENUM('t-shirt','polo','dress') NOT NULL,
	color ENUM('red','blue','orange','white','black') NOT NULL,
	owner SMALLINT UNSIGNED NOT NULL REFERENCES person(id),
	PRIMARY KEY (id)
);

--insert person data
insert into person values(NULL,'Antonio Paz');

--insert shirt data
select @last := LAST_INSERT_ID();

insert into shirt VALUES(NULL,'polo','blue',@last),(NULL,'dress','white',@last),values(NULL,'t-shirt','blue',@last);

insert into  person VALUES(NULL,'LiLLiana Angelovska');

select @last := LAST_INSERT_ID();

insert into shirt values(NULL,'dress','orange',@last),(NULL,'polo','red',@last),(NULL,'dress','blue',@last),(NULL,'t-shirt','white',@last);



