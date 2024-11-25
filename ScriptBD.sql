CREATE DATABASE projetoIndividual;
USE projetoIndividual;

CREATE TABLE usuarios (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    cpf CHAR(11) UNIQUE NOT NULL,  
    nome VARCHAR(100), 
    email VARCHAR(100) UNIQUE NOT NULL, 
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE perguntas (
    idPergunta INT PRIMARY KEY AUTO_INCREMENT,
    perguntaQuestionario VARCHAR(255)
);

CREATE TABLE respostas (
    fkUsuario INT, 
    fkPergunta INT,
    resposta VARCHAR(50),
    PRIMARY KEY (fkUsuario, fkPergunta),
    FOREIGN KEY (fkUsuario) REFERENCES usuarios(idUsuario), 
    FOREIGN KEY (fkPergunta) REFERENCES perguntas(idPergunta)
);

INSERT INTO perguntas (perguntaQuestionario) VALUES
('Qual gênero de música você mais ouve?'),
('A música ajuda a melhorar o seu humor?'),
('A música te ajuda a lembrar de momentos especiais?'),
('Você gosta de música mais para relaxar ou para se animar?'),
('Você escuta música para refletir sobre sentimentos ou para lazer?'),
('Numa escala de 1 a 5, qual a intensidade da conexão emocional que a música gera em você?'),
('A música ajuda a melhorar o seu humor ou a lidar com situações difíceis?'),
('Você já se emocionou ao ouvir uma música?'),
('Você sente que a música influencia sua energia?');

select * from usuarios;

select * from perguntas;

select * from respostas;

select resposta as genero, count(resposta) as qtdEscolhido from respostas
	where fkPergunta = 1
			group by resposta order by count(resposta) desc limit 1;
            
select resposta as genero, count(resposta) as qtdEscolhido from respostas
	where fkPergunta = 1
			group by resposta order by count(resposta) desc;
            
-- Respostas para pergunta 1
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 1, 'Pop'),
(2, 1, 'Rock'),
(3, 1, 'Sertanejo'),
(4, 1, 'Funk'),
(5, 1, 'MPB'),
(6, 1, 'Rap'),
(7, 1, 'Samba'),
(8, 1, 'Eletronica');

-- Respostas para pergunta 2
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 2, 'sim'),
(2, 2, 'nao'),
(3, 2, 'asVezes');

-- Respostas para pergunta 3
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 3, 'sim'),
(2, 3, 'nao'),
(3, 3, 'asVezes');

-- Respostas para pergunta 4
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 4, 'relaxar'),
(2, 4, 'animar'),
(3, 4, 'ambos');

-- Respostas para pergunta 5
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 5, 'refletir'),
(2, 5, 'lazer'),
(3, 5, 'ambos');

-- Respostas para pergunta 6
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 6, '1'),
(2, 6, '2'),
(3, 6, '3'),
(4, 6, '4'),
(5, 6, '5');

-- Respostas para pergunta 7
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 7, 'sim'),
(2, 7, 'nao');

-- Respostas para pergunta 8
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 8, 'sim'),
(2, 8, 'nao');

-- Respostas para pergunta 9
INSERT INTO respostas (fkUsuario, fkPergunta, resposta) VALUES
(1, 9, 'sim'),
(2, 9, 'nao');
