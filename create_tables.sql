CREATE DATABASE fitlife;
USE fitlife;

CREATE TABLE Plano (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    duracao_meses INT NOT NULL,
    beneficios TEXT
);

CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    cref VARCHAR(20),
    telefone VARCHAR(20)
);

CREATE TABLE Aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE,
    objetivo VARCHAR(100),
    telefone VARCHAR(20),
    id_plano INT NOT NULL,
    FOREIGN KEY (id_plano) REFERENCES Plano(id_plano)
);

CREATE TABLE Aula (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_professor INT NOT NULL,
    horario TIME NOT NULL,
    capacidade INT NOT NULL,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

CREATE TABLE Treino (
    id_treino INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
    data_criacao DATE NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

CREATE TABLE Exercicio (
    id_exercicio INT AUTO_INCREMENT PRIMARY KEY,
    id_treino INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    grupo_muscular VARCHAR(50),
    descricao TEXT,
    FOREIGN KEY (id_treino) REFERENCES Treino(id_treino)
);

CREATE TABLE Presenca (
    id_presenca INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_aula INT NOT NULL,
    data_hora DATETIME NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_aula) REFERENCES Aula(id_aula)
);