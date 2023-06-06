ALTER VIEW nOMES as 
SELECT FIRSTNAME nome, Middlename nomeDoMeio, LastName ultimoNome from person.Person 

select * into Nome from nOMES

SELECT * from Nome



alter View Nome_e_email as 


SELECT FirstName, EmailAddress into tblTESTE from nome_e_email

ALTER TABLE tblTESTE 
ADD idDeTeste int PRIMARY KEY identity

select * from tblteste

UPDATE TBLteste
SET FirstName = 'MARIA'

DELETE FROM tblteste
WHERE Iddeteste = 1

DROP TABLE TblTeste

CREATE TABLE LAELE (
	ID int primary key identity,
	nome varchar(100) not null,
	dataIN datetime default GETDATE()
)

SELECT * FROM LAELE


INSERT INTO LAELE(nome) values('sena')
INSERT INTO LAELE(nome) values('Giovanna')
INSERT INTO LAELE(nome) Values('julio')



