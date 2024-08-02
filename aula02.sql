CREATE DATABASE senai;

USE senai;

CREATE TABLE professores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    -- INT = INTEIRO
    -- PRIMARY KEY = INDICA CHAVE PRIMARIA
    -- NOT NULL = NUNCA VAI SER VAZIO
    -- AUTO_INCREMENT = AUTO ADICIONAR NOVO NUMERO
    nome VARCHAR(60),
    materia VARCHAR(30)
);

INSERT INTO professores (nome, materia) VALUES
('Arthur Rosa', 'Banco de Dados'),
('Samuel Bruce', 'Flutter'),
('Giovanni Vickng', 'React native');

SELECT * FROM professores;
-- ATUALIZAR DADOS
-- ATUALIZE A TEBELA PROFESSORES, AJUSTE MATERIA = BACK-END
-- ONDE ID SEJA IGUAL A 1
-- IF (ID == 1) {ATUALIZA MATERIA}
UPDATE professores SET materia = 'Back-end' WHERE id = 1;
-- WHERE = IF
DELETE FROM professores WHERE id = 1;


CREATE TABLE alunos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(60),
    idade int
);
INSERT INTO alunos (nome, idade) VALUES
('Lucas Santos', 21),
('Ricardin vrau', 20),
('João Chicken', 19);

SELECT * FROM alunos;
-- DELETAR TODOS OS DADOS
TRUNCATE TABLE alunos;
-- DELETAR TABELA
DROP TABLE alunos;
-- DELETAR MAIS DE UM ID
DELETE FROM alunos WHERE id IN (1,2,3);
-- ATUALIZAR MAIS DE UM ID
UPDATE alunos SET nome = 'Arthur', idade = 22 WHERE id IN (1,2,3);

-- COLUNAS - MODIFICAR TIPO DE COLUNA
ALTER TABLE alunos
MODIFY COLUMN nome VARCHAR(40);
-- ADICIONAR NOVA COLUNA
ALTER TABLE alunos
ADD COLUMN matricula VARCHAR(10);
-- DELETAR COLUNA
ALTER TABLE alunos
DROP COLUMN matricula;
-- TROCAR O NOME DA COLUNA
ALTER TABLE alunos
CHANGE COLUMN novoNome nome VARCHAR(30);
-- ALTERAR NOME DA TABELA
ALTER TABLE alunos
RENAME TO estudantes;