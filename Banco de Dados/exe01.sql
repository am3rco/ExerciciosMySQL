CREATE DATABASE db_bancodedados;

USE db_bancodedados;

CREATE TABLE tb_fornecedores (
	id bigint auto_increment,
    nome varchar(250) not null,
    idade int,
    genero varchar(250) not null,
    cargo varchar(250) not null,
    salario decimal(10,2),
    experiencia int,
    PRIMARY KEY (id)
);

INSERT INTO tb_fornecedores (nome, idade, genero, cargo, salario, experiencia) 
VALUES("João da Silva", 27, "Masculino", "Administração", 2500.00, 5);
INSERT INTO tb_fornecedores (nome, idade, genero, cargo, salario, experiencia) 
VALUES("Ana Julia", 24, "Feminino", "Gerente", 10000.00, 4); 
INSERT INTO tb_fornecedores (nome, idade, genero, cargo, salario, experiencia)  
VALUES("Lucas Amorim", 35, "Masculintb_fornecedoreso", "Desenvolvedor Pleno", 12000, 8); 
INSERT INTO tb_fornecedores (nome, idade, genero, cargo, salario, experiencia)  
VALUES("Luana de Haha", 27, "Feminino", "Analista de Recursos Humanos", 3500, 1);
INSERT INTO tb_fornecedores (nome, idade, genero, cargo, salario, experiencia)  
VALUES("Bruno Maximus", 18, "Masculino", "Estagiario", 800, 0); 

SELECT * FROM tb_fornecedores WHERE salario < 2000;

Select * FROM tb_fornecedores WHERE salario > 2000;

UPDATE tb_fornecedores SET salario = 960 WHERE id = 5;