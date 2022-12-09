CREATE DATABASE techtubbies;

USE techtubbies;

CREATE TABLE faixaEtaria (
idIdade INT PRIMARY KEY,
de INT,
ate INT
);

INSERT INTO faixaEtaria VALUES
(1, 1, 12),
(2, 13, 20),
(3, 21, 30),
(4, 31, NULL);

SELECT * FROM faixaEtaria;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	fkIdade INT,
    FOREIGN KEY (fkIdade) REFERENCES faixaEtaria (idIdade)
);

INSERT INTO usuario (nome, email, fkIdade) VALUES
('Rafaela Carvalho Barros', 'RafaelaCarvalhoBarros@dayrep.com', 3),
('Beatrice Correia Santos', 'BeatriceCorreiaSantos@jourrapide.com', 4),
('Sophia Pereira Correia', 'SophiaPereiraCorreia@rhyta.com', 1),
('Caio Correia Cunha', 'CaioCorreiaCunha@armyspy.com', 1),
('Lavinia Carvalho Almeida', 'LaviniaCarvalhoAlmeida@teleworm.us', 3),
('Fábio Araujo Melo', 'FabioAraujoMelo@dayrep.com', 3),
('Júlia Rocha Ribeiro', 'JuliaRochaRibeiro@jourrapide.com', 3),
('Diogo Sousa Costa', 'DiogoSousaCosta@jourrapide.com', 4),
('Livia Lima Costa', 'LiviaLimaCosta@armyspy.com', 4),
('Gabriel Cunha Pinto', 'GabrielCunhaPinto@rhyta.com', 2),
('Estevan Oliveira Alves', 'EstevanOliveiraAlves@teleworm.us', 3),
('Emilly Rocha Oliveira', 'EmillyRochaOliveira@jourrapide.com', 3),
('Kaua Cunha Rocha', 'KauaCunhaRocha@jourrapide.com', 3),
('Evelyn Castro Carvalho', 'EvelynCastroCarvalho@dayrep.com', 3),
('Anna Santos Rocha', 'AnnaSantosRocha@jourrapide.com', 2),
('Victor Souza Goncalves', 'VictorSouzaGoncalves@teleworm.us', 1),
('Brenda Azevedo Gomes', 'BrendaAzevedoGomes@rhyta.com', 4);

SELECT * FROM usuario;

SELECT CASE
        WHEN fkIdade = 1 THEN 'De 1 a 12'
        WHEN fkIdade = 2 THEN 'De 13 a 20'
        WHEN fkIdade = 3 THEN 'De 21 a 30'
        WHEN fkIdade = 4 THEN '31+'
        END AS faixas, count(fkIdade) AS 'quantidade' FROM usuario GROUP BY faixas ORDER BY fkIdade DESC;

SELECT nome, email, de, ate FROM usuario JOIN faixaEtaria ON fkIdade = idIdade;