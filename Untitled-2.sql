

CREATE TABLE Teste (
    Id_Teste INT PRIMARY KEY,
    descricao VARCHAR(50)
);


INSERT INTO Teste (Id_Teste, descricao)
VALUES (1, 'Primeiro registro');

Select * from Teste;


ALTER TABLE Id_Teste
ADD Observacao varchar (100) NULL;


INSERT INTO Teste (Id_Teste, descricao, Observacao)
VALUES ('Registro criado depois')

SELECT * FROM Teste;

INSERT INTO Teste (Id_Teste, descricao, Observacao)
VALUES ('3', 'Registro criado depois do depois', 'Terceira observacao');

SELECT * FROM Teste

UPDATE Teste 
SET Observacao = 'Registro revisado pelo professor'
WHERE Id_Teste = 1;


