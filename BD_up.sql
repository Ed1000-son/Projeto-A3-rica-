-- Script para criar o banco e a tabela do projeto A3
-- Rode este arquivo no MySQL Workbench ou pelo terminal do MySQL.

CREATE DATABASE IF NOT EXISTS a3_transporte
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

USE a3_transporte;

CREATE TABLE IF NOT EXISTS avaliacoes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    tipo_transporte VARCHAR(50) NOT NULL,
    linha VARCHAR(100) NOT NULL,
    estacao VARCHAR(100) NOT NULL,
    data_viagem DATE NOT NULL,
    hora_viagem TIME NOT NULL,
    intervalo_medio_minutos INT NULL,
    nota_espera INT NOT NULL,
    nota_lotacao INT NOT NULL,
    nota_qualidade INT NOT NULL,
    comentario TEXT NULL,
    criado_em TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

-- Caso você tenha criado a tabela antes com o nome errado da coluna:
-- intervalo_mdio_minutos, use este comando manualmente se precisar:
-- ALTER TABLE avaliacoes CHANGE COLUMN intervalo_mdio_minutos intervalo_medio_minutos INT NULL;

-- Dados fake opcionais para teste da consulta rápida e dashboard
INSERT INTO avaliacoes (
    nome, cpf, tipo_transporte, linha, estacao, data_viagem, hora_viagem,
    intervalo_medio_minutos, nota_espera, nota_lotacao, nota_qualidade, comentario, criado_em
) VALUES
('João Silva', '11111111111', 'Trem', 'Linha 7 - Rubi', 'Luz', CURDATE(), CURTIME(), 8, 4, 3, 4, 'Trem passou dentro do esperado.', NOW()),
('Maria Santos', '22222222222', 'Trem', 'Linha 7 - Rubi', 'Luz', CURDATE(), CURTIME(), 11, 3, 4, 3, 'Demorou um pouco mais que o normal.', NOW()),
('Carlos Oliveira', '33333333333', 'Trem', 'Linha 7 - Rubi', 'Barra Funda', CURDATE(), CURTIME(), 9, 4, 4, 4, 'Movimento moderado na estação.', NOW()),
('Ana Lima', '44444444444', 'Trem', 'Linha 7 - Rubi', 'Caieiras', CURDATE(), CURTIME(), 14, 2, 5, 3, 'Trem cheio e intervalo alto.', NOW()),
('Pedro Souza', '55555555555', 'Trem', 'Linha 7 - Rubi', 'Francisco Morato', CURDATE(), CURTIME(), 13, 3, 5, 3, 'Espera acima do ideal.', NOW()),
('Lucas Pereira', '66666666666', 'Trem', 'Linha 8 - Diamante', 'Júlio Prestes', CURDATE(), CURTIME(), 6, 5, 3, 4, 'Trem chegou rápido.', NOW()),
('Fernanda Costa', '77777777777', 'Trem', 'Linha 8 - Diamante', 'Osasco', CURDATE(), CURTIME(), 8, 4, 4, 4, 'Fluxo normal.', NOW()),
('Rafael Almeida', '88888888888', 'Trem', 'Linha 8 - Diamante', 'Carapicuíba', CURDATE(), CURTIME(), 10, 3, 4, 3, 'Intervalo razoável.', NOW()),
('Beatriz Rocha', '99999999999', 'Trem', 'Linha 8 - Diamante', 'Itapevi', CURDATE(), CURTIME(), 16, 2, 5, 2, 'Demora alta e trem lotado.', NOW()),
('Gustavo Martins', '10101010101', 'Trem', 'Linha 8 - Diamante', 'Barueri', CURDATE(), CURTIME(), 7, 4, 3, 4, 'Viagem tranquila.', NOW()),
('Juliana Ribeiro', '12121212121', 'Trem', 'Linha 9 - Esmeralda', 'Osasco', CURDATE(), CURTIME(), 8, 4, 4, 4, 'Tempo aceitável.', NOW()),
('Bruno Ferreira', '13131313131', 'Trem', 'Linha 9 - Esmeralda', 'Pinheiros', CURDATE(), CURTIME(), 5, 5, 3, 5, 'Trem passou rápido.', NOW()),
('Camila Barbosa', '14141414141', 'Trem', 'Linha 9 - Esmeralda', 'Morumbi', CURDATE(), CURTIME(), 9, 4, 4, 3, 'Estação movimentada.', NOW()),
('Thiago Nunes', '15151515151', 'Trem', 'Linha 9 - Esmeralda', 'Santo Amaro', CURDATE(), CURTIME(), 12, 3, 5, 3, 'Trem cheio no horário.', NOW()),
('Larissa Mendes', '16161616161', 'Trem', 'Linha 9 - Esmeralda', 'Grajaú', CURDATE(), CURTIME(), 15, 2, 5, 2, 'Intervalo ruim.', NOW()),
('Rodrigo Carvalho', '17171717171', 'Trem', 'Linha 10 - Turquesa', 'Brás', CURDATE(), CURTIME(), 8, 4, 4, 4, 'Funcionamento normal.', NOW()),
('Patrícia Gomes', '18181818181', 'Trem', 'Linha 10 - Turquesa', 'Tamanduateí', CURDATE(), CURTIME(), 6, 5, 3, 4, 'Pouca espera.', NOW()),
('Felipe Dias', '19191919191', 'Trem', 'Linha 10 - Turquesa', 'São Caetano', CURDATE(), CURTIME(), 10, 3, 4, 3, 'Intervalo médio.', NOW()),
('Amanda Castro', '20202020202', 'Trem', 'Linha 10 - Turquesa', 'Santo André', CURDATE(), CURTIME(), 14, 2, 5, 3, 'Trem demorou bastante.', NOW()),
('Diego Moreira', '21212121212', 'Trem', 'Linha 10 - Turquesa', 'Rio Grande da Serra', CURDATE(), CURTIME(), 12, 3, 4, 3, 'Demora aceitável para o trecho.', NOW()),
('Renata Martins', '23232323232', 'Trem', 'Linha 11 - Coral', 'Luz', CURDATE(), CURTIME(), 7, 4, 5, 4, 'Chegou rápido, mas estava cheio.', NOW()),
('Eduardo Lopes', '24242424242', 'Trem', 'Linha 11 - Coral', 'Brás', CURDATE(), CURTIME(), 11, 3, 5, 3, 'Muita lotação.', NOW()),
('Vanessa Ramos', '25252525252', 'Trem', 'Linha 11 - Coral', 'Tatuapé', CURDATE(), CURTIME(), 8, 4, 4, 4, 'Tempo normal.', NOW()),
('Henrique Araújo', '26262626262', 'Trem', 'Linha 11 - Coral', 'Guaianases', CURDATE(), CURTIME(), 15, 2, 5, 2, 'Intervalo alto e plataforma cheia.', NOW()),
('Mariana Teixeira', '27272727272', 'Trem', 'Linha 11 - Coral', 'Estudantes', CURDATE(), CURTIME(), 13, 3, 4, 3, 'Espera um pouco alta.', NOW()),
('André Cardoso', '28282828282', 'Trem', 'Linha 12 - Safira', 'Brás', CURDATE(), CURTIME(), 8, 4, 4, 4, 'Tempo dentro do esperado.', NOW()),
('Letícia Fernandes', '29292929292', 'Trem', 'Linha 12 - Safira', 'Engenheiro Goulart', CURDATE(), CURTIME(), 10, 3, 4, 3, 'Intervalo médio.', NOW()),
('Vinícius Monteiro', '30303030303', 'Trem', 'Linha 12 - Safira', 'Itaim Paulista', CURDATE(), CURTIME(), 14, 2, 5, 2, 'Trem muito cheio.', NOW()),
('Sabrina Correia', '31313131313', 'Trem', 'Linha 13 - Jade', 'Engenheiro Goulart', CURDATE(), CURTIME(), 7, 4, 3, 4, 'Pouca espera.', NOW()),
('Marcelo Batista', '32323232323', 'Trem', 'Linha 13 - Jade', 'Aeroporto-Guarulhos', CURDATE(), CURTIME(), 11, 3, 4, 4, 'Intervalo aceitável.', NOW());
