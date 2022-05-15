create table user_profile (
    id SERIAL, 
    name varchar(50),
	email varchar(50),
    sexo varchar(1),
	cep varchar(8),
    logradouro varchar(50),
    numero varchar(10),
	complemento varchar(50),
	bairro varchar(50),
	localidade varchar(50),
	uf varchar(2),
	ibge integer,
	ddd integer,
    dt_insert timestamp default current_timestamp
);
insert into user_profile(name, email, cep) values('Carlos Lira','CarlosLira@email.com','59060710');
insert into user_profile(name, email, cep) values('José Freitas','JoséFreitas@email.com','72316020');
insert into user_profile(name, email, cep) values('Gerusa Jose','GerusaJose@email.com','72650060');
insert into user_profile(name, email, cep) values('Daniela Monet','DanielaMonet@email.com','89069010');
insert into user_profile(name, email, cep) values('Julio Santos','JulioSantos@email.com','77826570');
insert into user_profile(name, email, cep) values('Odete Santos','OdeteSantos@email.com','69317235');
insert into user_profile(name, email, cep) values('Silvio Santos','SilvioSantos@email.com','59149260');
insert into user_profile(name, email, cep) values('Maurício Pereira','MauricioPereira@email.com','68903366');
insert into user_profile(name, email, cep) values('Tim Bernardes','TimBernardes@email.com','69903530');
insert into user_profile(name, email, cep) values('Sophia Chablau','SophiaChablau@email.com','76913007');


update user_profile 
set
    logradouro = nullif('${logradouro}', ''),
    numero = nullif('${numero}', ''),
    complemento = nullif('${complemento}', ''),
	bairro = nullif('${bairro}', ''),
	localidade = nullif('${localidade}', ''),
	uf = nullif('${uf}', ''),
	ibge = nullif(CAST('${ibge}' as int), ''),
	ddd = nullif(CAST('${ddd}' as int), '')
where cep = REPLACE('${cep}','-','') and (cep is not null or cep <> '')