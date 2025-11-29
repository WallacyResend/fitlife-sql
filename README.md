🏋️‍♂️ FitLife – Sistema de Gestão e Treinos
📘 Projeto – Experiência Prática IV
Modelagem de Banco de Dados • Universidade Cruzeiro do Sul
📌 Sobre o Projeto

O FitLife é um sistema de gestão voltado para academias, permitindo o controle de:

Cadastro de alunos e planos

Professores e aulas coletivas

Treinos personalizados

Exercícios

Registro de presença em aulas

Organização da estrutura operacional

Este repositório contém a implementação da Experiência Prática IV, com foco em manipulação de dados SQL (DML) em um banco de dados projetado nas EPs anteriores.

🧠 Competências Desenvolvidas

Aplicação prática de SQL (DDL e DML)

Criação de banco de dados no MySQL

Manipulação de dados reais com INSERT, SELECT, UPDATE e DELETE

Integração do modelo lógico com implementação física

Uso de ferramentas de versionamento (Git & GitHub)

Organização profissional de repositórios

🗂 Estrutura do Repositório
fitlife-sql/
│
├── create_tables.sql      # Criação do schema e tabelas (DDL)
├── insert_data.sql        # Inserção de dados nas entidades principais
├── queries.sql            # Consultas SELECT com JOIN, ORDER BY, LIMIT...
├── updates.sql            # Comandos UPDATE com condições
├── deletes.sql            # Comandos DELETE com restrições
└── README.md              # Documentação do projeto

🛠️ Tecnologias Utilizadas

MySQL 8.x

MySQL Workbench

Git

GitHub

🧱 1. Criação do Banco de Dados (DDL)

O arquivo create_tables.sql contém:

Criação do banco fitlife

Tabelas normalizadas conforme EP3:

Plano

Professor

Aluno

Aula

Treino

Exercicio

Presenca

Todos os relacionamentos, chaves primárias e estrangeiras foram implementados.

📥 2. Povoamento do Banco (INSERT)

O arquivo insert_data.sql insere dados REALISTAS para simular o ambiente da academia, incluindo:

3 planos

3 professores

3 alunos

3 aulas

2 treinos

3 exercícios

3 presenças

Isso garante que todas as consultas funcionarão corretamente.

🔍 3. Consultas SQL (SELECT)

O arquivo queries.sql possui consultas com:

JOIN (relacionamentos aluno–plano, aula–professor etc.)

ORDER BY

LIMIT

Filtros e ordenações

Seleção de treinos e exercícios

Exemplos:

SELECT a.nome AS aluno, p.nome AS plano
FROM Aluno a
JOIN Plano p ON a.id_plano = p.id_plano;

✏️ 4. Atualização de Dados (UPDATE)

O arquivo updates.sql possui três atualizações reais, como:

Alterar objetivo do aluno

Modificar professor responsável pela aula

Atualizar benefícios de um plano

Exemplo:

UPDATE Aluno 
SET objetivo = 'Ganho de força'
WHERE id_aluno = 1;

🗑️ 5. Exclusão de Dados (DELETE)

O arquivo deletes.sql remove registros respeitando as regras de integridade:

Exclusão de presenças

Exclusão de exercícios

Remoção de treino (sem dependentes)

Exemplo:

DELETE FROM Treino
WHERE id_treino = 2;

🚀 Como Executar o Projeto
1. Abra o MySQL Workbench
2. Execute na ordem:
✔ Criação das tabelas:
SOURCE create_tables.sql;

✔ Inserção de dados:
SOURCE insert_data.sql;

✔ Consultas:

Execute manualmente ou use:

SOURCE queries.sql;

✔ Atualizações:
SOURCE updates.sql;

✔ Exclusões:
SOURCE deletes.sql;

📚 Requisitos Atendidos (EP4)
Requisito	Atendido
Script de criação das tabelas (DDL)	✅
Script de INSERT	✅
2–5 consultas SELECT	✅
3 comandos UPDATE	✅
3 comandos DELETE	✅
Repositório público no GitHub	✅
README.md completo	✅
👨‍🎓 Autor

Wallacy Resende
Curso: Análise e Desenvolvimento de Sistemas
Universidade Cruzeiro do Sul

🎯 Conclusão

Este repositório apresenta a implementação completa e funcional do banco de dados FitLife, integrando modelagem, normalização e manipulação de dados conforme os objetivos da Experiência Prática IV.
