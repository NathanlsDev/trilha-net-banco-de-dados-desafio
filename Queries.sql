-- 1
SELECT 
	Nome, 
  Ano
FROM Filmes

-- 2
SELECT 
	Nome, 
  Ano
FROM 
  Filmes
ORDER BY Ano ASC

-- 3
SELECT 
	* 
FROM 
  Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT 
	* 
FROM 
  Filmes
WHERE Ano = 1997

-- 5
SELECT 
	*
FROM 
  Filmes
WHERE Ano >= 2000

-- 6
SELECT 
	*
FROM 
  Filmes
WHERE 
  Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- 7
SELECT 
  Ano,
  COUNT(*) QuantidadeFilmesLancados
FROM 
  Filmes
GROUP BY 
  Ano
ORDER BY QuantidadeFilmesLancados DESC

--8
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM 
  Atores
WHERE Genero = 'M'

-- 9
SELECT 
	PrimeiroNome,
	UltimoNome,
	Genero
FROM 
	Atores
WHERE 
	Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT 
	Nome,
	Genero  
FROM 
	Filmes
JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme)
JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id)
WHERE Genero <> ''


-- 11
SELECT 
	Nome,
	Genero  
FROM 
	Filmes
JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme)
JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id)
WHERE Genero = 'Mistério'


-- 12
SELECT 
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM 
	Filmes
JOIN ElencoFilme ON (Filmes.Id = ElencoFilme.IdFilme)
JOIN Atores ON (ElencoFilme.IdAtor = Atores.Id)
WHERE Papel <> ''