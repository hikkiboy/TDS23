create database CURSO 

create table imagens (
	id int identity (1,1) not null,
	nm_arquivo varchar (1000) not null,
	vb_imagem varbinary(max) not null
)

INSERT INTO imagens(nm_arquivo, vb_imagem)
SELECT 'INSERIDO VIA SQL', * FROM OPENROWSET(BULK 'C:\tempdb\dante.jpg', single_blob) imagens
	