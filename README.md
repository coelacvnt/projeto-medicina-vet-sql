Este repositório contém o projeto SQL completo desenvolvido para a disciplina de Modelagem de Banco de Dados (Ciências da Computação - Cruzeiro do Sul Virtual). O objetivo foi modelar, implementar e manipular um banco de dados relacional funcional (em 3FN) para gerenciar o sistema de consultas e adesão de clientes para uma clínica veterinária fictícia.

O projeto foi dividido em quatro etapas principais:
* **Modelo Conceitual:** Definição do minimundo e dos conceitos de dados.
* **Modelo Entidade-Relacionamento (DER):** Criação do diagrama DER, identificando entidades, atributos e cardinalidades.
* **Modelo Lógico:** Conversão do DER em um esquema de tabelas normalizado (3FN).
* **Implementação (SQL):** Criação dos scripts SQL (DDL e DML) para construir e testar o banco de dados.

* Todo o processo de concepção do projeto, desde a análise de requisitos (Minimundo) até o Modelo Conceitual (DER) e o Modelo Lógico (3FN), está documentado nos PDFs desta pasta, conforme a metodologia da disciplina.

* 📄 **[Atividade 1: Projeto Conceitual (Minimundo)](./documentacao/Atividade_1_Minimundo.pdf)**
* 📄 **[Atividade 2: Modelo Conceitual (DER)](./documentacao/Atividade_2_Modelo_Conceitual_DER.pdf)**
* 📄 **[Atividade 3: Projeto Lógico (Formas Normais)](./documentacao/Atividade_3_Modelo_Logico_3FN.pdf)**

* O modelo lógico final consiste em 6 tabelas principais, todas normalizadas até a 3FN:

* **`CLIENTE`**: Armazena os dados cadastrais dos clientes (Nome, Telefone, Email).
* **`PET`**: Armazena os dados do pet (Nome, Espécie, Idade.)
* **`VET`**: Registra informações do veterinário responsável pelo atendimento (Nome, crmv.)
* **`CONSULTA`**: Registra as consultas realizadas para determinado pet e relaciona-o com o veterinário correspondente.
* **`MEDICAMENTO`**: Registra os medicamentos usados em determinadas consultas, assim como sua quantidade e validade.
* **`MEDICAMENTO-CONSULTA`**: Faz a ligação entre as tabelas de consulta e a base de medicamentos, além das dosagens aplicadas.

Este repositório contém os scripts SQL e a documentação completa do projeto:

* **`/documentacao`**: Pasta contendo os PDFs das Atividades 1, 2 e 3 (o processo de concepção).
* **`README.md`**: Este arquivo, com a documentação do projeto.
* **`schema.sql`**: (DDL - Data Definition Language) Script que **cria** a estrutura do banco (`CREATE DATABASE`, `CREATE TABLE`) e define todas as chaves primárias (PK) e estrangeiras (FK).
* **`insert.sql`**: (DML - Data Manipulation Language) Script que **popula** o banco de dados, inserindo os dados de exemplo (clientes, produtos e pedidos).
* **`consultas.sql`**: (DQL - Data Query Language) Contém 5 consultas `SELECT` complexas para análise de dados, utilizando `JOIN`, `GROUP BY`, `ORDER BY` e `AVG()`.

  O projeto foi desenvolvido e testado utilizando **MySQL Workbench**.

É crucial que os scripts sejam executados na ordem correta para que as Chaves Estrangeiras (FKs) funcionem.

1.  Execute o **`schema.sql`** primeiro. Isso irá criar o banco `clinicavet_db` e todas as tabelas vazias.
2.  Execute o **`insert.sql`** em seguida. Isso irá popular as tabelas com os dados de exemplo.
3.  Execute o **`consultas.sql`** para testar as consultas de leitura e ver os resultados.



