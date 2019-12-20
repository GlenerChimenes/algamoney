create table pessoa(
	codigo BIGINT(20) primary key auto_increment,
	nome VARCHAR(50) not null,
	ativo boolean,
	logradouro varchar(50) not null,
	numero varchar(10) not null,
	complemento varchar(50) not null,
	bairro varchar(50) not null,
	cep varchar(50) not null,
	cidade varchar(50) not null,
	estado varchar(20) not null	
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

insert into pessoa(
	nome,ativo,logradouro, numero, complemento, bairro, cep, cidade, estado
)values(
	'Glener',true,  'Rua 03', '35', 'Cei norte', 'Setor O', '72260636', 'Brasilia', 'DF' 

);

insert into pessoa(
	nome,ativo, logradouro, numero, complemento, bairro, cep, cidade, estado
)values(
	'Chimenes',true,  'Rua 03', '35', 'Cei norte', 'Setor O', '72260636', 'Brasilia', 'DF' 

);

insert into pessoa(
	nome,ativo, logradouro, numero, complemento, bairro, cep, cidade, estado
)values(
	'Izabela',true, 'Rua 03', '35', 'Cei norte', 'Setor O', '72260636', 'Brasilia', 'DF' 

);


