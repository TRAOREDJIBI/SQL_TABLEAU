SELECT *
FROM EMPLOYES;

select Prenom, Nom, pays
from employes;

select *
from employes
where pays = 'RDC';

select * 
from employes
where salaire > 90000;

select *
from employes
where DateEmbauche > 2020-01-01;

select *
from employes
where prenom like 'A%';

select *
from employes
where Departement = 'informatique' or Departement = 'finance';

SELECT * 
FROM Employés
WHERE Salaire
BETWEEN 50000 AND 100000 ; 

select * 
from employes
where poste like '%Manager%';

select *
from employes
where EvaluationPerformance != 5 ;

select * 
from employes
where year(DateEmbauche) = 2021 ;

select * 
from employes
where Pays in ('france', 'belgique', 'Etats-unis');

select * 
from employes
order by salaire desc limit 5 ;

SELECT *
FROM Employés
ORDER BY DateEmbauche ASC ; 

SELECT * 
FROM Employés 
ORDER BY ÉvaluationPerformance DESC LIMIT 3 ;

SELECT 
SUM(Salaire) 
AS SalaireTotal 
FROM Employés ; 

SELECT 
AVG(Salaire) 
AS SalaireMoyen 
FROM Employés WHERE Département = 'Informatique' ; 

SELECT COUNT(*) 
AS NombreEmployés 
FROM Employés; 

SELECT MIN(Salaire) 
AS SalaireMin, 
MAX(Salaire) 
AS SalaireMax 
FROM Employés ; 

SELECT Département, COUNT(*) 
AS NombreEmployés 
FROM Employés 
GROUP BY Département;

SELECT Pays, 
AVG(Salaire) 
AS SalaireMoyen 
FROM Employés 
GROUP BY Pays ; 

SELECT Département, COUNT(*) 
AS NombreEmployés 
FROM Employés 
GROUP BY Département 
HAVING COUNT(*) > 3; 

SELECT Pays, 
AVG(Salaire) AS SalaireMoyen 
FROM Employés 
GROUP BY Pays 
HAVING AVG(Salaire) > 70000 ;

INSERT INTO Employés (ID, Prénom, Nom, Email, Téléphone, Poste, Département, Salaire, DateEmbauche, ÉvaluationPerformance, Pays) 
VALUES (31, 'Michel', 'Tamba', 'michel.tamba@exemple.com', '+243-818-456-789', 'Analyste', 'Finance', 60000, '2025-01-20', 4, 'Congo') ; 

UPDATE Employés 
SET Salaire = 80000 WHERE ID = 5 ; 

UPDATE Employés 
SET Département = 'Développement' 
WHERE Poste = 'Développeur' ;

SELECT * 
FROM Employés 
WHERE DateEmbauche >= DATE_SUB(CURDATE(), INTERVAL 5 YEAR); 

SELECT * 
FROM Employés 
WHERE ÉvaluationPerformance != 5 AND Salaire > 100000; 

SELECT Département 
FROM Employés 
GROUP BY Département HAVING SUM(Salaire) > 200000; 

SELECT * 
FROM Employés 
WHERE Email LIKE '%gmail%' ;
