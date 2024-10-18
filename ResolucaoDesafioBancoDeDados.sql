-- 1
select Nome, Ano from Filmes


--2 
select Nome, Ano, Duracao from Filmes order by Ano


--3
select Nome, Ano, Duracao from Filmes where Nome LIKE 'De Volta para %'


--4
select Nome, Ano, Duracao from Filmes where Ano = 1997


--5
select Nome, Ano, Duracao from Filmes where Ano > 2000


--6
select Nome, Ano, Duracao from Filmes where Duracao > 100 and Duracao < 150 order by Duracao


--7
select Ano, count(*)Quantidade from Filmes group by Ano order by Quantidade DESC


--8
select ID, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'


--9
select ID, PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome


--10
select f.Nome, g.Genero 
from Filmes f 
join FilmesGenero fg ON f.Id = fg.IdFilme
join Generos g on fg.IdGenero = g.Id


--11
select f.Nome, g.Genero 
from Filmes f 
join FilmesGenero fg ON f.Id = fg.IdFilme
join Generos g on fg.IdGenero = g.Id
where g.Genero like 'Mist%'


--12
select f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from Filmes f 
join ElencoFilme ef ON f.Id = ef.IdFilme
join Atores a on ef.IdAtor = a.Id