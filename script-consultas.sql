-- 1
SELECT Nome, Ano
FROM Filmes

--2
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano

--3
SELECT * 
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

--4
SELECT *
FROM Filmes
WHERE Ano = 1997

--5
SELECT * 
FROM Filmes 
WHERE Ano > 2000

--6
SELECT *
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT Ano,
	COUNT(Nome) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT *
FROM Atores
WHERE Genero = 'M'

--9
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT Nome, Genero
FROM Filmes AS f
JOIN FilmesGenero AS fg ON
	f.Id = fg.IdFilme
JOIN Generos AS g ON
	fg.IdGenero = g.Id

--11
SELECT Nome, Genero
FROM Filmes AS f
JOIN FilmesGenero AS fg ON
	f.Id = fg.IdFilme
JOIN Generos AS g ON
	fg.IdGenero = g.Id
WHERE Genero = 'Mistério'

--12
SELECT Nome, 
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes AS f
JOIN ElencoFilme AS ef ON
	f.Id = ef.IdFilme
JOIN Atores AS a ON
	ef.IdAtor = a.Id
