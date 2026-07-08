# 🎮 MAETS - Gerenciador de Jogos

[cite_start]**Disciplina:** Banco de Dados I [cite: 3]
[cite_start]**Curso:** Bacharelado em Engenharia de Computação [cite: 3]
[cite_start]**Instituição:** IFRJ - Campus Niterói [cite: 1, 2]
[cite_start]**Data de Apresentação:** Julho de 2026 [cite: 114]

---

## 📖 Sobre o Projeto

[cite_start]O **MAETS** (um anagrama e referência sutil à *Steam*) é uma aplicação web desenvolvida como trabalho prático para a disciplina de Banco de Dados I[cite: 4]. [cite_start]O objetivo principal do projeto é demonstrar, na prática, a modelagem, implementação e manipulação de um banco de dados relacional integrado a uma interface gráfica[cite: 12]. 

A solução construída serve como uma biblioteca de gerenciamento, permitindo o controle de um catálogo de jogos, as desenvolvedoras responsáveis por eles e as avaliações dos usuários.

## 🚀 Tecnologias Utilizadas

* [cite_start]**Front-end:** HTML5, TailwindCSS, Vanilla JavaScript[cite: 84].
* [cite_start]**Banco de Dados (BaaS):** Supabase (PostgreSQL)[cite: 48].
* [cite_start]**Integração:** Supabase JS Client conectando o front-end ao banco em nuvem[cite: 105].

---

## ✅ Critérios de Avaliação Atendidos

O projeto e este repositório foram estruturados para atender rigorosamente a todos os requisitos propostos na especificação do trabalho:

### 1. Estrutura do Banco de Dados
* [cite_start]**Tabelas Relacionadas:** Foram implementadas 3 tabelas principais (`desenvolvedoras`, `jogos` e `avaliacoes`), cumprindo o requisito estrutural[cite: 35].
* [cite_start]**Tipos de Dados:** Cada tabela possui 5 campos ou mais, abrangendo os tipos obrigatórios exigidos: textuais, numéricos e datas[cite: 37].
* [cite_start]**Restrições de Integridade:** Implementação adequada de `PRIMARY KEY` e `FOREIGN KEY` no modelo relacional[cite: 38].
* [cite_start]**Regras de Exclusão:** Foi configurada a regra **`RESTRICT`** nas chaves estrangeiras (`ON DELETE RESTRICT`)[cite: 39]. [cite_start]A interface gráfica trata essa regra contendo lógicas de negócio: ela impede e avisa o usuário caso tente deletar uma desenvolvedora que possui jogos vinculados [cite: 82][cite_start], preservando a integridade referencial[cite: 42].

### 2. Operações CRUD
* [cite_start]Operações completas de **Cadastro, Alteração, Exclusão e Listagem (CRUD)** foram implementadas através da interface web para todas as tabelas (superando o requisito mínimo de 2 tabelas)[cite: 36, 68, 69]. [cite_start]As ações no front-end refletem diretamente comandos `INSERT`, `UPDATE`, `DELETE` e `SELECT` no banco[cite: 70].

### 3. Consultas e Filtros Complexos
A aba "Consultas Especiais" na aplicação (e os scripts do banco) oferece suporte às pesquisas avançadas estipuladas:
* [cite_start]**Consulta em tabela específica:** Pesquisa universal com filtros dinâmicos na interface, utilizando o equivalente a `SELECT` e cláusulas `WHERE` com busca exata e parcial[cite: 72, 75].
* [cite_start]**Consultas em mais de uma tabela:** Utilização de `INNER JOIN` para cruzar dados de entidades relacionadas (ex: listar o Título do Jogo cruzado com o Nome e País da Desenvolvedora)[cite: 76, 79].
* [cite_start]**Subconsultas com Negação:** Uso do operador `NOT IN` para listar dinamicamente, por exemplo, desenvolvedoras que não possuem jogos cadastrados na plataforma[cite: 80, 81].

### 4. Scripts SQL Entregues
[cite_start]Todo o embasamento do banco de dados encontra-se versionado na raiz deste repositório[cite: 95, 97], contendo:
* [cite_start]`criarbd.sql`: Script responsável pela criação do banco, tabelas e restrições[cite: 50].
* [cite_start]`insertbd.sql`: Popula o banco com mais de 5 registros por tabela[cite: 51].
* [cite_start]`deletartabelas.sql`: Script de deleção (limpeza) dos dados[cite: 55].
* [cite_start]`consultas.sql`: Demonstração em SQL puro das consultas realizadas e geradas pela integração[cite: 56, 58, 60].

---

## ⚙️ Como Executar o Projeto

1. Clone este repositório em sua máquina:
   ```bash
   git clone [https://github.com/carlosmirandd/maets.git](https://github.com/carlosmirandd/maets.git)

