INSERT INTO desenvolvedoras (nome, pais_origem, ano_fundacao, faturamento_anual) VALUES
('Nintendo', 'Japão', '1889-09-23', 10000000.00),
('Rockstar Games', 'EUA', '1998-12-01', 5000000.00),
('CD Projekt Red', 'Polônia', '2002-05-01', 1000000.00),
('FromSoftware', 'Japão', '1986-11-01', 800000.00),
('MirandaGames', 'Brasil', '2026-01-01', 9.50);

INSERT INTO jogos (id_desenvolvedora, titulo, data_lancamento, preco, genero) VALUES
(1, 'Mario Kart World', '2025-06-05', 425.90, 'Corrida'),
(2, 'GTA V', '2013-09-17', 150.00, 'Ação'),
(3, 'The Witcher 3', '2015-05-19', 120.00, 'RPG'),
(4, 'Elden Ring', '2022-02-25', 250.00, 'RPG'),
(1, 'Super Mario Odyssey', '2017-10-27', 299.90, 'Plataforma');

INSERT INTO avaliacoes (id_jogo, nota, comentario, data_avaliacao) VALUES
(1, 5.0, 'A forma menos inteligente de dizer que tem dinheiro pra torrar.', '2023-01-10'),
(2, 10.0, 'Gosto de jogar RP com meus amigos no FiveM.', '2023-02-15'),
(3, 10.0, 'História incrível e sidequests épicas.', '2023-03-20'),
(4, 9.8, 'Meu primo nerd gostou do jogo, então eu também gostei.', '2023-04-25'),
(5, 9.0, 'Ótimo para todas as idades, muito criativo.', '2023-05-30');
