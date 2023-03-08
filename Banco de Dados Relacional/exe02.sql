CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id int auto_increment,
    tipo varchar(255) not null,
    descrição varchar(255) not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(tipo, descrição) 
VALUES('Salgada', 'Deliciosas Pizzas Salgadas da Pizzaria Sorriso');
INSERT INTO tb_categorias(tipo, descrição) 
VALUES('Doce', 'Deliciosas Pizzas Doces da Pizzaria Sorriso');

CREATE TABLE tb_pizzas(
	id int auto_increment,
    sabor varchar(255) not null,
    ingredientes varchar(255) not null,
	tamanho varchar(255) not null,
	preço decimal(10, 2) not null,
    categoria_id int,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id), 
	PRIMARY KEY(id)
);

INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Mussarela', 'Molho de tomate, mussarela e orégano', 'Grande', 49.90, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Calabresa', 'Molho de tomate, mussarela, calabresa fatiada, cebola e orégano', 'Média', 28.90, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Frango Catupiry', 'Molho de tomate, mussarela, frango desfiado, catupiry e orégano', 'Grande', 50, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Portuguesa', 'Molho de tomate, mussarela, presunto, ovos, cebola, pimentão, azeitona e orégano', 'Grande', 51.90, 1);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Chocolate com Morango', 'Chocolate ao leite, morango e leite condensado', 'Grande', 55.00, 2);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Banana com Canela', 'Banana, canela, açúcar e leite condensado', 'Média', 40.90, 2);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Romeu e Julieta', 'Queijo branco, goiabada e leite condensado', 'Grande', 60.90, 2);
INSERT INTO tb_pizzas (sabor, ingredientes, tamanho, preço, categoria_id) 
VALUES ('Quatro Queijos', 'Mussarela, provolone, cheddar e catupiry', 'Grande', 60.90, 1);

SELECT*FROM tb_pizzas WHERE preço > 45.00;
SELECT*FROM tb_pizzas WHERE preço BETWEEN 50.00 and 100.00;
SELECT*FROM tb_pizzas WHERE sabor LIKE "M%";

SELECT*FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;
SELECT*FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id WHERE tb_categorias.tipo = 'Doce'