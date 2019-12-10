create table categoria(
	codigo BIGINT(20) primary key auto_increment,
	nome VARCHAR(50) not null 

)ENGINE=InnoDB DEFAULT CHARSET=UTF8;



insert into categoria (nome) values('lazer'); 
insert into categoria (nome) values('Alimentação'); 
insert into categoria (nome) values('Supermercado'); 
insert into categoria (nome) values('Farmacia'); 
insert into categoria (nome) values('Outros'); 