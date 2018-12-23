INSERT INTO Cidade (Nome, ID_Estado, Area)
VALUES ('Campinas', 25, 795);

INSERT INTO Cidade (Nome, ID_Estado, Area)
VALUES ('Niterói', 20, 140.0);

INSERT INTO Cidade 
    (Nome, ID_Estado, Area)
VALUES (
    'Caruaru',
    (SELECT ID FROM Estado WHERE Sigla = 'PE'),
    920.6
);

INSERT INTO Cidade
    (Nome, ID_Estado, Area)
VALUES (
    'Juazeiro do Norte',
    (SELECT ID FROM Estado WHERE Sigla = 'CE'),
    242.9
);


SELECT * FROM Cidade;