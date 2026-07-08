-- =========================================================================
-- CONSULTA COM AGREGAÇÃO, FILTRO E MAIS DE UMA TABELA (JOIN + GROUP BY / HAVING)
-- Objetivo: Mostrar a média de preços e qtd de jogos por DESENVOLVEDORA, 
-- apenas para as que têm jogos com média de preço maior que 100
-- =========================================================================
/*
SELECT d.nome AS desenvolvedora, COUNT(j.id) AS qtd_jogos, AVG(j.preco) AS preco_medio 
FROM desenvolvedoras d
INNER JOIN jogos j ON d.id = j.id_desenvolvedora
GROUP BY d.nome 
HAVING AVG(j.preco) > 100;
*/

-- =========================================================================
-- SUBCONSULTA COM ANY/ALL
-- Objetivo: Encontrar jogos que são mais caros que TODOS os jogos de 'Ação'
-- =========================================================================
/*
SELECT titulo, preco FROM jogos 
WHERE preco > ALL (SELECT preco FROM jogos WHERE genero = 'Ação');
*/

-- =========================================================================
-- SUBCONSULTA COM EXISTS
-- Objetivo: Listar desenvolvedoras que TÊM jogos cadastrados do gênero 'RPG'
-- =========================================================================
/*
SELECT nome FROM desenvolvedoras d 
WHERE EXISTS (
    SELECT 1 FROM jogos j WHERE j.id_desenvolvedora = d.id AND j.genero = 'RPG'
);
*/

-- =========================================================================
-- SUBCONSULTA COM NOT IN (Usado no Front-end)
-- Objetivo: Listar desenvolvedoras que NÃO possuem nenhum jogo cadastrado
-- =========================================================================
/*
SELECT nome FROM desenvolvedoras 
WHERE id NOT IN (
    SELECT id_desenvolvedora FROM jogos WHERE id_desenvolvedora IS NOT NULL
);
*/
