-- =========================================================================
-- 1. PESQUISA UNIVERSAL (FILTRO DINÂMICO)
-- Como a interface escolhe as colunas dinamicamente, abaixo estão os 
-- equivalentes SQL gerados pelo Supabase para buscas exatas e parciais.
-- =========================================================================
-- Exemplo A: Busca exata (usado no JS para IDs, Notas e Preços usando .eq)
SELECT * FROM jogos WHERE id = 1;

-- Exemplo B: Busca parcial/texto (usado no JS para Nomes e Gêneros usando .ilike)
SELECT * FROM desenvolvedoras WHERE nome ILIKE '%Nintendo%';


-- =========================================================================
-- 2. CONSULTA DE +1 TABELA (INNER JOIN)
-- Objetivo: Listar Título e Preço do Jogo + Nome e País da Desenvolvedora.
-- =========================================================================
SELECT j.titulo AS jogo, j.preco, d.nome AS desenvolvedora, d.pais_origem AS pais
FROM jogos j
INNER JOIN desenvolvedoras d ON j.id_desenvolvedora = d.id;


-- =========================================================================
-- 3. SUBCONSULTA COM NOT IN
-- Objetivo: Listar Desenvolvedoras que NÃO possuem jogos cadastrados.
-- =========================================================================
SELECT id, nome, pais_origem 
FROM desenvolvedoras 
WHERE id NOT IN (
    SELECT id_desenvolvedora 
    FROM jogos 
    WHERE id_desenvolvedora IS NOT NULL
);


-- =========================================================================
-- 4. 2ª CONSULTA DE +1 TABELA (INNER JOIN C/ FILTRO)
-- Objetivo: Listar Jogos feitos por Desenvolvedoras de um País específico.
-- =========================================================================
SELECT j.titulo AS jogo, j.genero, d.nome AS desenvolvedora, d.pais_origem AS pais
FROM jogos j
INNER JOIN desenvolvedoras d ON j.id_desenvolvedora = d.id
WHERE d.pais_origem ILIKE '%Japão%';
