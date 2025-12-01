-- Script de Consultas (SELECT)
USE clinicavet_db;

-- Consulta 1: Simples com WHERE
-- Objetivo: Ver todos os animais com mais de 5 anos de idade.
SELECT * FROM PET
WHERE IDADE > 5;

-- Consulta 2: Média com GROUP BY
-- Objetivo: Ver a media de idade dos pets registrados.
SELECT 
    FK_ID_PET, 
    AVG(Idade) AS Media_Idade
FROM PET
GROUP BY FK_ID_PET;
