SELECT a.nome AS aluno, p.nome AS plano, p.valor
FROM Aluno a
JOIN Plano p ON a.id_plano = p.id_plano;

SELECT a.nome AS aluno, t.data_criacao, t.observacoes
FROM Treino t
JOIN Aluno a ON t.id_aluno = a.id_aluno
ORDER BY t.data_criacao DESC;

SELECT al.nome AS aluno, au.nome AS aula, pr.data_hora
FROM Presenca pr
JOIN Aluno al ON pr.id_aluno = al.id_aluno
JOIN Aula au ON pr.id_aula = au.id_aula
ORDER BY pr.data_hora DESC;

SELECT e.nome, e.grupo_muscular
FROM Exercicio e
WHERE e.id_treino = 1;

SELECT nome, objetivo FROM Aluno
LIMIT 2;