CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
ra int auto_increment,
nome varchar(255) not null,
idade int not null,
genero varchar(255) not null,
turma varchar(255) not null,
nota decimal(10, 2),
PRIMARY KEY(ra)
);

INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('João Cleber', 15, 'Masculino', '1-A', 5);
INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('Ana Clara', 16, 'Feminino', '1-A', 7.5);
INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('Marilia Azevedo', 15, 'Feminino', '1-A', 6.0);
INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('Michael Presley', 16, 'Masculino', '1-A', 10);
INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('Joana Curry', 16, 'Femenino', '1-B', 9.2);
INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('Ricardo Eletro', 16, 'Masculino', '1-B', 2);
INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('Maiara Mendonça', 15, 'Feminino', '1-B', 8.5);
INSERT INTO tb_estudantes (nome, idade, genero, turma, nota)
VALUES('Elvis Jackson', 15, 'Masculino', '1-B', 4);

SELECT*FROM tb_estudantes WHERE nota > 7.0;

SELECT*FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 4 WHERE ra = 6;