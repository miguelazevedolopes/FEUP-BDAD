.mode columns
.headers on
.nullvalue NULL

-- Número de clientes normais e numero clientes "Amigo", discriminados por "tipo de Amigo"

SELECT (SELECT COUNT(*) 
FROM (SELECT NIF FROM Pessoa
EXCEPT
SELECT NIF FROM Staff
EXCEPT
SELECT NIF FROM Amigo)) AS NumClientesNormais,

(SELECT COUNT(*)
FROM Amigo WHERE IDTipoAmigo=1) AS NumAmigosSenior,

(SELECT COUNT(*)
FROM Amigo WHERE IDTipoAmigo=2) AS NumAmigosEstudante,

(SELECT COUNT(*)
FROM Amigo WHERE IDTipoAmigo=3) AS NumAmigosFamilia,

(SELECT COUNT(*)
FROM Amigo WHERE IDTipoAmigo=4) AS NumAmigosNormal,

(SELECT COUNT(*)
FROM Amigo WHERE IDTipoAmigo=5) AS NumAmigosProfessor


