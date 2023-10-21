create database concessionaria

create table Cliente (

	ClienteID INT PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR (250) NOT NULL,
	Telefone VARCHAR (15) NOT NULL,

);

CREATE TABLE Marca (
	MarcaID INT PRIMARY KEY IDENTITY (1,1),
	Nome VARCHAR (255) not null,
);



create table VeiculoCondicao
(
	CondicaoID INT PRIMARY KEY IDENTITY (1,1),
	dESCRICAO varchar (255) NOT NULL,

);

--Alter table FormaPagamento

CREATE TABLE FormaPagamento (

	FormPagID INT PRIMARY KEY IDENTITY (1, 1),
	Descricao VARCHAR (255) NOT NULL,
	CONSTRAINT UN_Descricao unique (Descricao)
);

CREATE TABLE Veiculo (
 
	VeiculoID INT PRIMARY KEY IDENTITY (1, 1),
	Nome VARCHAR (250) NOT NULL,
	MarcaID INT NOT NULL,
	Condicao INT,
	Preco money,
	Portas INT,
	AnoFabricacao INT,
	AnoModelo INT,
	Constraint FK_MarcaId foreign key (MarcaID) references Marca (MarcaID),
	Constraint FK_Condicao foreign key (Condicao) references Veiculo (VeiculoID),
	);


Create table Venda 
(

	VendaID INT IDENTITY (1, 1),
	ClienteID INT NOT NULL,
	VeiculoID INT NOT NULL,
	DataVenda DateTime NOT NULL,
	FormaPagamento int Not null,
	CONSTRAINT PK_VendaID Primary Key (VendaID),
	CONSTRAINT FK_VeiculoID foreign key (VeiculoID) REFERENCES Veiculo,
	CONSTRAINT FK_FormaPagamento Foreign key (FormaPagamento) REFERENCES FormaPagamento,

);




--select * from Venda

_-- CRIANDO VIEWS

--create view VW_concessionaria as
--select * from dbo.Cliente;


--create view VW_dadoscliente as
--select Nome, Telefone from dbo.Cliente;


--create view VW_Veiculos as
--select * from dbo.Veiculo where Preco > 20.000;


--create view VW_Veiculo_Marca as
--select c.Nome, v.MarcaID, AnoFabricacao
--from Marca c
--JOIN Veiculo v ON VeiculoID = v.MarcaID;


--select * from VW_concessionaria 

--select * from  VW_Veiculo_Marca

-----------------------------

-----------DADOS-----------

--INSERT INTO Marca (Nome) values ('BMW');
--INSERT INTO Marca (Nome) values ('FIAT');
--INSERT INTO Marca (Nome) values ('CHEVROLET');
--INSERT INTO Marca (Nome) values ('MERCEDES-BENZ');
--INSERT INTO Marca (Nome) values ('TOYTA');
--INSERT INTO Marca (Nome) values ('FORD');
--INSERT INTO Marca (Nome) values ('AUDI');
--INSERT INTO Marca (Nome) values ('VOLKSWAGEM');

--select * from Marca

--insert into VeiculoCondicao (Descricao) Values ('Novo');
--insert into VeiculoCondicao (Descricao) Values ('Seminovo');
--insert into VeiculoCondicao (Descricao) Values ('Recuperado de financiamento');

--select * from VeiculoCondicao


		
--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Gol', 8, 2, 10.123, 4, 2020, 2021);

--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Parati', 8, 2, 10.123, 4, 2020, 2021);

--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Gol 1.0', 8, 2, 10.123, 4, 2021, 2022);



--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Gol',8, 1, 8.345,4,2020,2021)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Onix',3, 2, 42.765,4,2021,2022)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('CRUZE',3, 2, 98,329,4,2020,2021)



--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Palio 1.0',2, 2, 22.654,4,2018,2019)



----insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
----values ('Siena',2, 3, 19.765,4,2017,2018)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Toro',2, 2, 98.329,4,2020,2021)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Corola',5, 2, 47.876,4,2019,2020)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('EcoSport',6, 2, 57.876,5,2022,2023)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('BMW F40',1, 2,  293.950,4,2019,2020)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Hilux',5, 2, 159.900,4,2020,2020)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('BMW F48',1, 2, 289.950, 5, 2018, 2019)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Corola',5, 2, 47.876,4,2019,2020)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Punto',2, 2, 31.239,5,2020,2020)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('cruze LTZ Turbo',3, 2, 125.490,5,2021,2022)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Gol 1.0',8, 2, 19.098,5,2019,2020)


--insert into Veiculo (Nome, MarcaID, Condicao, Preco, Portas, AnoFabricacao, AnoModelo)
--values ('Hilux',5, 2, 128.490,5,2018,2019)


--select * from Veiculo





--insert into Cliente (Nome, telefone) values ('Mateus','15 9915 5651');
--insert into Cliente (Nome, telefone) values ('Raquel','11 9937 4521');
--insert into Cliente (Nome, telefone) values ('Maria','18 9929 7623');
--insert into Cliente (Nome, telefone) values ('Victor','11 9915 0987');
--insert into Cliente (Nome, telefone) values ('Miguel','11 9917 1356');
--insert into Cliente (Nome, telefone) values ('Marcia','11 9981 5432');

--insert into cliente (Nome, telefone) values ('Larissa', '15 9912 5423');
--insert into cliente (Nome, telefone) values ('Tassio', '71 98832 6512');
--insert into cliente (Nome, telefone) values ('Diego', '11 98822 7612');
--insert into cliente (Nome, telefone) values ('Larissa', '18 9991 5487');
--insert into cliente (Nome, telefone) values ('Larissa', '11 91254 2676');

--insert into cliente (Nome, Telefone) values ('Pedro', '71 91126754');

--insert into cliente (Nome, Telefone) values ('Amanda', '18 91136758');

--insert into cliente (Nome, Telefone) values ('Vanessa', '11 99234561');

--insert into cliente (Nome, Telefone) values ('Thiago', '15 988236548');

--insert into cliente (Nome, Telefone) values ('Lauro', '11 91145678');

--insert into cliente (Nome, Telefone) values ('Michelle', '71 99916543');



--insert into FormaPagamento (descricao) values ('PIX');
--insert into FormaPagamento (descricao) values ('Boleto');
--insert into FormaPagamento (descricao) values ('Cartão');

select * from Marca
select * from Veiculo
select * from Cliente
select * from FormaPagamento
select * from Venda
select * from VeiculoCondicao

--INSERT INTO Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento)
--VALUES (1, 2, '2022-09-01 10:00:00', 1); 


--INSERT into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(2, 2, '2022-09-12 02:30:00', 2);

--Insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(3, 2, '2022-15-08 14:15:00', 3);


--Insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(4,2, '2022-07-12 12:00:00', 2);


--Insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(5,2,'2022-21-07 01:20:00', 3);

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(6,2, '2022-03-09 05:08:56', 2)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(7,2, '2022-05-10 05:08:56', 1)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(8,2, '2022-23-06 13:23:00', 3)


--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(9,2, '2022-16-04 15:08:00', 2)


--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(10,2, '2022-25-10 08:34:30', 2)


--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(11,2, '2022-18-04 14:30:00', 3)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(12,2, '2022-07-12 10:15:00', 1)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(13,2, '2022-06-10 11:07:00', 3)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(14,2, '2022-05-08 09:48:00', 1)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(15,2, '2022-11-12 10:34:30', 2)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(16,2, '2022-03-06 15:23:00', 1)

--insert into Venda (ClienteID, VeiculoID, DataVenda, FormaPagamento) 
--values(17,2, '2022-06-10 11:07:00', 2)


--select * from Venda

_
