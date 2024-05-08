CREATE DATABASE Brasileirao2003_2023;

USE Brasileirao2003_2023;

CREATE TABLE temporadas (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ano_temporada INT
);

CREATE TABLE clubes (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(30),
codigo VARCHAR(3)
);

CREATE TABLE estatisticas (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_temporada INT,
    id_clube INT,
    partidas_jogadas INT,
    total_pontos INT,
    colocacao INT,
    vitorias INT,
    empates INT,
    derrotas INT,
    gols_marcados INT,
    gols_sofridos INT,
    gols_diferenca REAL,
    FOREIGN KEY (ID_temporada)
        REFERENCES temporadas (ID),
        FOREIGN KEY (ID_clube)
        REFERENCES clubes (ID)
);
select*from estatisticas,clubes