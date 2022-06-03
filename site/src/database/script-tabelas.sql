CREATE DATABASE acquatec;

USE acquatec;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	idade INT
);

insert into usuario (nome, email, idade) values
('Rafaela Carvalho Barros', 'RafaelaCarvalhoBarros@dayrep.com', 3),
('Beatrice Correia Santos', 'BeatriceCorreiaSantos@jourrapide.com', 4),
('Sophia Pereira Correia', 'SophiaPereiraCorreia@rhyta.com', 1),
('Caio Correia Cunha', 'CaioCorreiaCunha@armyspy.com', 1),
('Lavinia Carvalho Almeida', 'LaviniaCarvalhoAlmeida@teleworm.us', 3);

select * from usuario;

select case
        when idade = 1 then '1- De 1 a 12'
        when idade = 2 then '2- De 13 a 20'
        when idade = 3 then '3- De 21 a 30'
        when idade = 4 then '4- 31+'
        end as faixas, count(idade) as 'quantidade' from usuario group by faixas order by 1 desc;