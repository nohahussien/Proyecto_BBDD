SELECT v.nombre AS vertical,
       COUNT(p.idproyecto) AS numero_proyectos
FROM vertical v
LEFT JOIN proyecto p ON v.idvertical = p.idvertical
GROUP BY v.nombre;