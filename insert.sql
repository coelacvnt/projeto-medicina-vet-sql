-- Script de Inserção (DML)
USE clinicavet_db;

-- 1. Inserir Clientes
INSERT INTO CLIENTE (ID_Cliente, Nome, Telefone, Email) 
VALUES 
(1, 'Marcos', '(11) 11111-1111', 'marcos@gmail.com'),
(2, 'Pedro Henrique', '(55) 55555-5555', 'ph@gmail.com'),
(3, 'Fabricia Dias', '(99) 99999-9999', 'fabdias@gmail.com');

-- 2. Inserir Pets
INSERT INTO PET (ID_PET, Nome, Especie, Idade, FK_ID_Cliente) 
VALUES 
(1, 'Thor', 'Cachorro', 7, 1),
(2, 'Apolo', 'Cachorro', 1, 1),
(3, 'Jake', 'Cachorro', 14, 2),
(4, 'Freiya', 'Gato', 3,3),
(5, 'Gaya', 'Gato', 4,3);

-- 3. Inserir CONSULTA
INSERT INTO CONSULTA (ID_CONSULTA, DATA_CONSULTA, Tipo_servico, FK_ID_PET, FK_ID_VET) 
VALUES 
(1, '2025-01-12', 'castracao', 2, 2),
(2, '2026-20-01', 'retorno', 2, 2),
(3, '2025-26-01', 'aplicacao de vermifugo', 4, 1);

-- 4. Inserir VET
INSERT INTO VET (FK_ID_VET, Nome, CRMV) 
VALUES 
(1, 'Dra. Marisa', 'SP1234'),
(2, 'Dr Amaral', 'RJ5555');

-- 5. Inserir MED
INSERT INTO MED (ID_MED, Nome, VALIDADE, QUANTIDADE, FK_ID_CONSULTA) 
VALUES 
(1, 'Netufurme Vermifugo', '2030-11-11', 2, 3);

-- 6. Inserir MED_CONSULTA
INSERT INTO MED_CONSULTA (ID_MED_CONSULTA, Dose_aplicada, FK_ID_MED, FK_ID_CONSULTA) 
VALUES
(1, '2 doses', 1,2);
