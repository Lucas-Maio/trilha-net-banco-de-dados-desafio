SELECT Nome,Ano FROM Filmes
SELECT Nome,Ano FROM Filmes ORDER BY Ano DESC
SELECT * FROM Filmes WHERE Id = 28
SELECT * FROM Filmes WHERE Ano > 2000
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao
SELECT Ano, COUNT(*) Quantidade FROM Filmes  GROUP BY Ano ORDER BY Quantidade DESC
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT Filmes.nome, Generos.genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.Idfilme 
INNER JOIN Generos ON FilmesGenero.Idgenero = Generos.Id


SELECT Filmes.nome, Generos.genero FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.id = FilmesGenero.Idfilme 
INNER JOIN Generos ON FilmesGenero.Idgenero = Generos.Id
WHERE Generos.Genero = 'Mistério'

SELECT Filmes.nome AS Nome, 
       Atores.PrimeiroNome AS PrimeiroNome, 
       Atores.UltimoNome AS UltimoNome, 
       ElencoFilme.Papel AS Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
	

