INSERT INTO Plano (nome, valor, duracao_meses, beneficios)
VALUES
('Básico', 99.90, 1, 'Acesso à academia'),
('Intermediário', 149.90, 3, 'Aulas coletivas incluídas'),
('Premium', 199.90, 6, 'Personal trainer e aulas VIP');

INSERT INTO Professor (nome, especialidade, cref, telefone)
VALUES
('Carlos Silva', 'Musculação', '123456-G/SP', '11999990000'),
('Ana Souza', 'Dança', '654321-G/SP', '11988880000'),
('Ricardo Lima', 'Funcional', '987654-G/SP', '11977770000');

INSERT INTO Aluno (nome, cpf, data_nascimento, objetivo, telefone, id_plano)
VALUES
('João Pereira', '123.456.789-00', '1990-05-12', 'Hipertrofia', '11911112222', 1),
('Maria Oliveira', '987.654.321-00', '1988-10-20', 'Emagrecimento', '11922223333', 3),
('Lucas Santos', '147.258.369-00', '2000-03-15', 'Condicionamento', '11933334444', 2);

INSERT INTO Aula (nome, id_professor, horario, capacidade)
VALUES
('Spinning', 2, '08:00:00', 20),
('Dança Funcional', 2, '19:00:00', 25),
('Treino Funcional', 3, '18:00:00', 30);

INSERT INTO Treino (id_aluno, id_professor, data_criacao, observacoes)
VALUES
(1, 1, '2025-01-10', 'Treino para hipertrofia'),
(2, 1, '2025-01-12', 'Treino focado em emagrecimento');

INSERT INTO Exercicio (id_treino, nome, grupo_muscular, descricao)
VALUES
(1, 'Supino', 'Peito', '3x10 com carga progressiva'),
(1, 'Rosca direta', 'Bíceps', '4x12 carga moderada'),
(2, 'Esteira', 'Cardio', '30 minutos de corrida leve');

INSERT INTO Presenca (id_aluno, id_aula, data_hora)
VALUES
(1, 1, '2025-01-15 08:01:00'),
(2, 1, '2025-01-15 08:03:00'),
(3, 3, '2025-01-15 18:00:00');