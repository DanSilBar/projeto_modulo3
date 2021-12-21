create database projeto_individual

use projeto_individual

CREATE SCHEMA Viagens

create table Viagens.CLIENTES
(
	id_clientes int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nome_cliente varchar(50)
);

create table Viagens.DESTINOS
(
	id_destinos int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	id_clientes int FOREIGN KEY REFERENCES Viagens.CLIENTES(id_clientes),
	nome_destinos varchar(50),
	valor_destinos decimal,
	promocao_destinos decimal,
);