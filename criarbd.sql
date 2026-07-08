CREATE TABLE desenvolvedoras (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    pais_origem VARCHAR(50),
    ano_fundacao DATE,
    faturamento_anual NUMERIC(15,2)
);

CREATE TABLE jogos (
    id SERIAL PRIMARY KEY,
    id_desenvolvedora INT REFERENCES desenvolvedoras(id) ON DELETE RESTRICT,
    titulo VARCHAR(100) NOT NULL,
    data_lancamento DATE,
    preco NUMERIC(10,2),
    genero VARCHAR(50)
);

CREATE TABLE avaliacoes (
    id SERIAL PRIMARY KEY,
    id_jogo INT REFERENCES jogos(id) ON DELETE RESTRICT,
    nota NUMERIC(3,1),
    comentario TEXT,
    data_avaliacao DATE
);

ALTER TABLE desenvolvedoras DISABLE ROW LEVEL SECURITY;
ALTER TABLE jogos DISABLE ROW LEVEL SECURITY;
ALTER TABLE avaliacoes DISABLE ROW LEVEL SECURITY;
