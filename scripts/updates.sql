-- Tuvimos el problema de que habíamos metido el rol como atributo de docente.
-- El docente puede tener un rol dependiendo de la promoción en la que de clase

-- Desde interfaz de PG Admin hemos hecho la inserción de la nueva columna en decentepromocion


UPDATE docentepromocion dp
SET "rolDocente" = d.rol
FROM docente d
WHERE dp.iddocente = d.docente_id;


-- Desde interfaz hemos eliminado la columna de rol en docente.