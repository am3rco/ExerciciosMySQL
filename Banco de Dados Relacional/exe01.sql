CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
	id bigint auto_increment,
    classe varchar(255) not null,
    descrição varchar(255) not null,
	PRIMARY KEY(id)
);

INSERT INTO tb_classes (classe, descrição)
VALUES('Bárbaro', 'O Bárbaro é um guerreiro enorme e armado até os dentes, um andarilho da tribo que já protegeu o sagrado Monte Arreat.');
INSERT INTO tb_classes (classe, descrição)
VALUES('Paladino', 'O Paladino é um campeão da justiça adornado com armadura de metal e poder radiante. Quando o mal se ergue de seu covil para corromper e destruir a humanidade, o Paladino ataca.');
INSERT INTO tb_classes (classe, descrição)
VALUES('Caçadora de Demônios', 'O Caçador de Demônios é um sobrevivente de ataque demoníaco. Ele se dedicou de corpo e alma à missão eterna de livrar o mundo da influência dos demônios que ameaçam Santuário.');
INSERT INTO tb_classes (classe, descrição)
VALUES('Monge', 'O Monge é um guerreiro santo, um servo dos poderes divinos cujo corpo foi aperfeiçoado em uma arma mortal.');
INSERT INTO tb_classes (classe, descrição)
VALUES('Necromante', 'O Necromante controla o poder aterrador do sangue e dos ossos para restaurar o equilíbrio de Santuário, amaldiçoando os inimigos com pavorosos suplícios e comandando poderosos exércitos de esqueletos e golens imponentes.');

CREATE TABLE tb_personagem (
	id int auto_increment,
    nome varchar(255) not null,
    nivel int not null,
    ataque int not null,
    defesa int not null,
    class_id bigint not null,
    FOREIGN KEY (class_id) REFERENCES tb_classes(id),
    PRIMARY KEY(id)
);


INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Grommash Hellscream', 20, 2500, 1500, 1);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Tirion Fordring', 18, 1600, 2000, 2);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Valla', 21, 2600, 1500, 3);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Li-Ming', 20, 2000, 2000, 3);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Xul', 16, 1800, 1400, 5);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Kharazim', 14, 1400, 1400, 4);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Nazeebo', 17, 2000, 1400, 5);
INSERT INTO tb_personagem (nome, nivel, ataque, defesa, class_id)
VALUES ('Zul''jin', 19, 1800, 2000, 1);

UPDATE tb_personagem SET nome = 'Caz´Lun' WHERE id = 3;

SELECT*FROM tb_personagem WHERE ataque > 2000;
SELECT*FROM tb_personagem WHERE defesa BETWEEN 1000 and 2000;
SELECT*FROM tb_personagem WHERE nome LIKE "c%";

SELECT*FROM tb_personagem
INNER JOIN tb_classes ON tb_classes.id = tb_personagem.class_id;
SELECT*FROM tb_personagem
INNER JOIN tb_classes ON tb_classes.id = tb_personagem.class_id WHERE tb_classes.classe = 'Necromante';