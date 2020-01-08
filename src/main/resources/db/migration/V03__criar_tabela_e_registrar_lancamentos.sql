create table lancamento(
	codigo bigint(20) primary key auto_increment,
	descricao varchar(50) not null,
	data_vencimento date not null,
	data_pagamento date,
	valor decimal(10,2) not null,
	observacao varchar(100),
	tipo varchar(20) not null,
	codigo_categoria bigint(20) not null,
	codigo_pessoa bigint(20) not null,
 	foreign key (codigo_categoria) references categoria(codigo),
	foreign key (codigo_pessoa) references pessoa(codigo)	

)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

insert into lancamento(descricao, data_vencimento, data_pagamento, valor,observacao, tipo, codigo_categoria, codigo_pessoa) values('Salario mensal', '2019-12-10', null, 1000, 'Distribuicaoo de lucros', 'RECEITA', 1,1 );
insert into lancamento(descricao, data_vencimento, data_pagamento, valor,observacao, tipo, codigo_categoria, codigo_pessoa) values('Bahamas', '2019-02-10', '2019-02-10', 100.32, null, 'DESPESA', 2,2 );
insert into lancamento(descricao, data_vencimento, data_pagamento, valor,observacao, tipo, codigo_categoria, codigo_pessoa) values('Top Club', '2019-12-10', null, 120, null, 'RECEITA', 3,3 );
insert into lancamento(descricao, data_vencimento, data_pagamento, valor,observacao, tipo, codigo_categoria, codigo_pessoa) values('CEMIG', '2019-02-10', '2019-12-10', 110.44, 'Geracao', 'RECEITA', 1,3);