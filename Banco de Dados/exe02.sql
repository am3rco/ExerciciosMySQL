CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produto (
id int AUTO_INCREMENT,
nome varchar(255) not null,
caracteristica text ,
preco decimal(10,2) not null,
estoque int not null,
categoria varchar(250),
PRIMARY KEY(id)
);

INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Smartphone Samsung Galaxy S21', 'Tela de 6.2", 128GB de armazenamento, 8GB de RAM', 4199.90, 10, 'Eletrônicos');
INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Notebook Dell Inspiron 15', 'Processador i5, 8GB de RAM, 512GB de armazenamento', 4299.00, 5, 'Informática');
INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Livro "O Hobbit"', 'Livro escrito por J. R. R. Tolkien', 49.90, 20, 'Livros');
INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Regata branca', 'Regata branca em algodão', 29.90, 50, 'Moda');
INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Tênis Nike Air Max', 'Tênis com tecnologia de amortecimento Air Max', 499.90, 8, 'Calçados');
INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Televisão LG 55 polegadas', 'Smart TV com resolução 4K', 3999.99, 7, 'Eletrônicos');
INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Livro "O Pequeno Príncipe"', 'Livro escrito por Antoine de Saint-Exupéry', 24.90, 30, 'Livros');
INSERT INTO tb_produto (nome, caracteristica, preco, estoque, categoria) 
VALUES('Tênis Adidas Ultraboost', 'Tênis com tecnologia de amortecimento Boost', 599.90, 12, 'Calçados');

SELECT*FROM tb_produto WHERE preco > 500;

SELECT*FROM tb_produto WHERE preco < 500;

UPDATE tb_produto SET preco = 520.00 WHERE id = 5;