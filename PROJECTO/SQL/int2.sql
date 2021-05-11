.mode columns
.headers on
.nullvalue NULL

--Listar as obras 5 com mais vigilantes associados a elas

--ta mal isto 
SELECT DISTINCT Nome,IDObra
FROM (Vigilante NATURAL JOIN Obra)

ORDER BY Nome ASC 
LIMIT 5;
