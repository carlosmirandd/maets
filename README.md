# 🎮 MAETS - Gerenciador de Jogos

**Disciplina:** Banco de Dados I
**Curso:** Engenharia de Computação
**Instituição:** IFRJ - Campus Niterói
**Data:** Julho de 2026

---

## 📖 Sobre o Projeto

O **MAETS** (uma referência e anagrama à *Steam*) é uma aplicação web desenvolvida como avaliação prática para a disciplina de Banco de Dados I. O objetivo principal é demonstrar a modelagem, implementação e manipulação de um banco de dados relacional, totalmente integrado a uma interface gráfica. 

<img width="3840" height="1080" alt="image" src="https://github.com/user-attachments/assets/f850c7d7-1553-4dc5-887d-984c517bb2d9" />

A solução funciona como uma biblioteca de gerenciamento de jogos, permitindo o controle completo de um catálogo de jogos, as desenvolvedoras responsáveis por eles e as avaliações da comunidade.

## 🚀 Tecnologias Utilizadas

* **Front-end:** HTML, CSS e JavaScript.
* **Banco de Dados (BaaS):** Supabase (PostgreSQL).
* **Integração:** Client JS do Supabase para conexão web e operações assíncronas.

---

## ✅ Critérios de Avaliação Atendidos

O projeto e este repositório foram estruturados para atender rigorosamente a todos os requisitos estipulados:

### 1. Modelagem e Estrutura do Banco
* **Tabelas Relacionadas:** O sistema possui no mínimo 3 tabelas principais integradas.
* **Tipos de Dados:** Cada tabela possui mais de 5 campos, englobando os tipos obrigatórios exigidos (textuais, numéricos e datas).
* **Restrições de Integridade:** Utilização correta de chaves primárias (`PRIMARY KEY`) e estrangeiras (`FOREIGN KEY`), além das regras de exclusão. A aplicação possui regras de negócio (ex: `RESTRICT`) que impedem a exclusão de uma desenvolvedora caso ela já tenha jogos atrelados, preservando a integridade referencial.

### 2. Operações CRUD
* A interface web implementa operações completas de Cadastro (`INSERT`), Leitura (`SELECT`), Atualização (`UPDATE`) e Exclusão (`DELETE`) para as tabelas principais, enviando os comandos diretamente para o banco em nuvem.

### 3. Consultas e Filtros Complexos
* **Consulta em tabela específica:** A interface possui barras de pesquisa dinâmicas, permitindo buscar registros específicos através de cláusulas `WHERE`.
* **Consultas em mais de uma tabela:** Utilização de `INNER JOIN` para cruzar informações, permitindo, por exemplo, listar um jogo junto aos dados de sua desenvolvedora correspondente.
* **Subconsultas e Filtros Avançados:** Implementação de lógicas avançadas utilizando `NOT IN` / `EXISTS` para buscas específicas (ex: filtrar desenvolvedoras que ainda não possuem jogos lançados na plataforma).

### 4. Scripts SQL Entregues
Todo o esquema do banco de dados encontra-se versionado na raiz deste repositório nos seguintes arquivos:
* `criarbd.sql`: Script DDL para criação do banco de dados, tabelas e restrições estruturais.
* `insertbd.sql`: Script DML que popula as tabelas com os registros iniciais (mais de 5 inserções por tabela).
* `deletartabelas.sql`: Script para exclusão/limpeza dos dados.
* `consultas.sql`: Arquivo contendo todas as queries utilizadas na aplicação (consultas agregadas, com filtros, subconsultas e JOINs).

---

## ⚙️ Como Executar o Projeto

1. Clone este repositório em sua máquina local:
   ```bash
   git clone [https://github.com/carlosmirandd/maets.git](https://github.com/carlosmirandd/maets.git)

2. Abra o arquivo `index.html` em qualquer navegador web de sua preferência.
3. Para que a aplicação se conecte com o seu banco de dados hospedado no Supabase crie um projeto e busque pela URL e a Anon Key em `Project Settings > API Keys` para autenticar via interface.
4. Pronto! O dashboard será carregado e você poderá navegar pelas abas para gerenciar o catálogo.
