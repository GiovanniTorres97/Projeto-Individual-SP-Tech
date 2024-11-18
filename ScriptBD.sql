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