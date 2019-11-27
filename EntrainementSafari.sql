story 1

SELECT nom, espece, historique.id ,date
FROM animaux
LEFT JOIN historique ON animaux.id = historique.id
WHERE date < "2003-01-01"

story 2

SELECT animaux.nom,espece,animaux.id,enclos.nom AS "nom enclos"
FROM animaux
LEFT JOIN enclos ON animaux.id = enclos.id
WHERE espece = "girafe"

story 3

SELECT animaux.nom,espece,animaux.id,enclos.niveau
FROM animaux
LEFT JOIN enclos ON animaux.id = enclos.id
GROUP BY id
HAVING espece IN ("Lion","Orang-Outan")

story 4

SELECT animaux.nom,animaux.espece, animaux.taille, historique.date, historique.id
FROM animaux
LEFT JOIN historique ON animaux.id = historique.id
WHERE espece = "elephant"
AND taille > "130"

story 5

SELECT enclos.id AS "id enclos", enclos.nom, enclos.niveau,COUNT(id_animal) AS "nombre d'animaux"
FROM enclos
LEFT JOIN enclos_animaux
ON enclos.id = enclos_animaux.id_enclot
WHERE niveau = "moyen"

story 6 

SELECT animaux.nom , animaux.espece , animaux.sexe,enclos_animaux.date_entree
FROM animaux
LEFT JOIN enclos_animaux
ON animaux.id = enclos_animaux.id_animal
WHERE espece = "faucon"
AND sexe = "M" 
ORDER BY `enclos_animaux`.`date_entree`  ASC LIMIT 2