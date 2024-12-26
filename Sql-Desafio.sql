--  1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome like '%De Volta %';

-- 4 - Buscar os filmes lançados em 1997
select * from filmes where ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from filmes where ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from filmes where Duracao > 100 and duracao < 150 order by duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS 'Quantidade'
FROM Filmes
GROUP BY Ano
order by Quantidade desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select * from Atores;
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero
select * from Filmes;
select * from Generos;
select * from FilmesGenero;

SELECT f.Nome AS 'NomeFilme', g.Genero AS 'Genero'
FROM Filmes f
inner JOIN FilmesGenero fg ON f.ID = fg.IdFilme
inner JOIN Generos g ON fg.IdGenero = g.ID;


-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS 'NomeFilme', g.Genero AS 'Genero'
FROM Filmes f
inner JOIN FilmesGenero fg ON f.ID = fg.IdFilme
inner JOIN Generos g ON fg.IdGenero = g.ID
where g.genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select * from atores;
select * from ElencoFilme;
select * from filmes;

SELECT f.nome, a.primeironome, a.ultimonome, ef.papel
FROM filmes f
JOIN ElencoFilme ef ON f.id = ef.IdFilme
JOIN atores a ON ef.IdAtor = a.id;
