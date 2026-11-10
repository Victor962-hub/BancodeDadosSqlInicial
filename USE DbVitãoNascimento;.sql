USE DbVitãoNascimento;
GO

CREATE TABLE CATEGORIAS(
    ID_CATEGORIA INT PRIMARY KEY,
    NOME VARCHAR (100) NOT NULL
);

SELECT * FROM CATEGORIAS;


Select name From sys.tables;
GO



CREATE TABLE Filme(
    ID_FILME INT PRIMARY KEY,
    TITULO VARCHAR (100) NOT NULL,
    ANO_LANCAMENTO INT NOT NULL,
    DURACAO INT,
    CLASSIFICACAO_INDICATIVA VARCHAR (10),
    SINOPSE VARCHAR (500),
    Id_CATEGORIA INT NOT NULL,
    FOREIGN KEY (Id_CATEGORIA) REFERENCES CATEGORIAS (Id_CATEGORIA)

);

select * from Filme;

INSERT INTO CATEGORIAS (Id_CATEGORIA, NOME) VALUES
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Drama'),
(4, 'Animação'),
(5, 'Fiicção Científica'),
(6, 'Romance')

INSERT INTO Filme
    (ID_FILME, TITULO, ANO_LANCAMENTO, DURACAO, CLASSIFICACAO_INDICATIVA, SINOPSE, Id_CATEGORIA)
VALUES
    (1, 'Matrix',               1999, 136, '14', 'Um programador descobre que a realidade é uma simulação.', 5),
    (2, 'Toy Story',            1995,  81, 'L',  'Brinquedos ganham vida quando ninguém está olhando.', 4),
    (3, 'Missão Impossível',    1996, 110, '14', 'Um agente tenta provar sua inocência após uma missão fracassada.', 1),
    (4, 'Meu Malvado Favorito', 2010,  95, 'L',  'Um vilão adota três meninas como parte de um plano.', 4),
    (5, 'Tropa de Elite',       2007, 115, '16', 'Um capitão procura alguém para assumir seu lugar na corporação.', 3),
    (6, 'Se Beber, Não Case!',  2009, 100, '16', 'Três amigos tentam lembrar o que aconteceu na despedida de solteiro.', 2),
    (7, 'Interestelar',         2014, 169, '10', 'Exploradores atravessam um buraco de minhoca para salvar a humanidade.', 5),
    (8, 'Central do Brasil',    1998, 110, '14', 'Uma ex-professora ajuda um menino a procurar o pai.', 3),
    (9, 'Os Incríveis',         2004, 115, 'L',  'Uma família de super-heróis tenta viver uma vida comum.', 4),
    (10, 'Titanic', 1997, 195, '12', 'Um jovem artista e uma jovem da alta sociedade vivem um romance durante a viagem do Titanic.', 6),

    (11, 'Diário de uma Paixão', 2004, 123, '12', 'Um casal enfrenta diferenças sociais e desafios ao longo de uma história de amor.', 6),

    (12, 'Como Eu Era Antes de Você', 2016, 110, '12','Uma jovem cria uma ligação especial com um homem que passa a depender de seus cuidados.', 6);

    SELECT * FROM CATEGORIAS;
    SELECT * FROM Filme;
