Évolution mondiale des émissions
SELECT "Année",
       SUM("Emissions CO2") AS total_emissions
FROM edf_co2
WHERE "Périmètre spatial" = 'Monde'
GROUP BY "Année"
ORDER BY "Année";

Top pays émetteurs en 2024
SELECT "Périmètre spatial",
       "Emissions CO2"
FROM edf_co2
WHERE "Année" = 2024
AND "Périmètre spatial" != 'Monde'
ORDER BY "Emissions CO2" DESC;

Comparaison France vs Monde
SELECT "Année",
       "Périmètre spatial",
       "Emissions CO2"
FROM edf_co2
WHERE "Périmètre spatial" IN ('France', 'Monde')
ORDER BY "Année";
