--create shop

create table shop(
	article int(4) unsigned zerofill default '0000' not null,
	dealer char(20) default '' NOT NULL,
	price DOUBLE(16,2) default '0.0.0' NOT NULL,
	primary key(article,dealer)
);

insert into shop values(1,'A',3.45),(1,'B',3.99),(2,'A',10.99),(3,'B',1.45),(3,'C',1.69),(3,'D',1.25),(4,'D',19.95);


