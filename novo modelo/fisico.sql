create database projeto_individual

use projeto_individual

create schema Viagens

CREATE TABLE Viagens.Clientes (
    Id_Cliente int PRIMARY KEY,
    Nome_Cliente varchar(50)
);

CREATE TABLE Viagens.Destinos (
    Id_Destino int PRIMARY KEY,
    Nome_Destino varchar(50),
    Valor_Destino decimal,
    Promocao_Destino decimal
);

CREATE TABLE Viagens.Compra (
    fk_Destinos_Id_Destino int,
    fk_Clientes_Id_Cliente int
);
 
ALTER TABLE Viagens.Compra ADD CONSTRAINT FK_Compra_1
    FOREIGN KEY (fk_Destinos_Id_Destino)
    REFERENCES Viagens.Destinos (Id_Destino)
    ON DELETE SET NULL;
 
ALTER TABLE Viagens.Compra ADD CONSTRAINT FK_Compra_2
    FOREIGN KEY (fk_Clientes_Id_Cliente)
    REFERENCES Viagens.Clientes (Id_Cliente)
    ON DELETE SET NULL;