# Proyecto Base de Datos Bootcamp

## Descripción

Este proyecto gestiona la información de un bootcamp de formación tecnológica.  
Permite registrar alumnos, docentes, promociones, proyectos y sus calificaciones, así como las relaciones entre ellos.

El sistema está diseñado para PostgreSQL y sigue una estructura relacional completa.

---

## Tablas principales

### 1. `estudiante`
Tabla de alumnos matriculados.

- `idestudiante` (PK, serial)  
- `nombre`  
- `email` (único)

### 2. `campus`
Tabla de los campus o ciudades donde se imparten los cursos.

- `idcampus` (PK, serial)  
- `ciudad`

### 3. `vertical`
Tabla de las verticales o áreas de especialización.

- `idvertical` (PK, serial)  
- `nombre` (DataScience, FullStack)

### 4. `docente`
Tabla de los docentes del bootcamp.

- `docente_id` (PK, serial)  
- `nombre`  

### 5. `modalidad`
Tipos de modalidad de los cursos.

- `idmodalidad` (PK, serial)  
- `nombremodalidad` (Presencial, Online)

### 6. `promocion`
Tabla de promociones (ediciones de cada curso).

- `idpromocion` (PK, serial)  
- `idcampus` (FK → `campus`)  
- `idvertical` (FK → `vertical`)  
- `fechaComienzo` (date)

### 7. `estudiantepromocion`
Relaciona cada alumno con su promoción.

- `idestudiante` (FK → `estudiante`)  
- `idpromocion` (FK → `promocion`)  
- PK compuesta: `(idestudiante, idpromocion)`

### 8. `proyecto`
Tabla de proyectos asociados a cada vertical.

- `idproyecto` (PK, serial)  
- `idvertical` (FK → `vertical`)  
- `nombre`

### 9. `calificacionproyectoalumno`
Tabla que almacena la calificación de cada alumno en cada proyecto.

- `idestudiante` (FK → `estudiante`)  
- `idproyecto` (FK → `proyecto`)  
- `calificacion` (A/N)  
- PK compuesta: `(idestudiante, idproyecto)`

### 10. `docentepromocion`
Relaciona docentes con las promociones que imparten, incluyendo modalidad.

- `iddocente` (FK → `docente`)  
- `idpromocion` (FK → `promocion`)  
- `idmodalidad` (FK → `modalidad`)
- `rolDocente`  (TA, LI, etc.)
- PK compuesta: `(iddocente, idpromocion, idmodalidad)`

### 11. `proyectospromocion`
Relaciona los proyectos que se trabajan en cada promoción.

- `idpromocion` (FK → `promocion`)  
- `idproyecto` (FK → `proyecto`)  
- PK compuesta: `(idpromocion, idproyecto)`

---

## Datos de ejemplo

- **Alumnos:** 52 registros, repartidos entre DS y FS, Septiembre y Febrero.  
- **Docentes:** 10 registros con rol TA o LI, modalidad presencial u online.  
- **Promociones:** 4 promociones basadas en combinaciones de vertical, campus y fecha.  
- **Proyectos:** 10 proyectos, 5 por vertical.  
- **Calificaciones:** Apto (`A`) / No Apto (`N`) por alumno y proyecto.  

---

## Relaciones

- Cada alumno pertenece a una única promoción (`estudiantepromocion`).  
- Cada promoción tiene varios proyectos (`proyectospromocion`).  
- Cada alumno tiene calificaciones por proyecto (`calificacionproyectoalumno`).  
- Cada docente puede impartir varias promociones con modalidad específica (`docentepromocion`).  

---

## Cómo cargar los datos

1. Crear la base de datos y las secuencias de los `serial`.  
2. Crear las tablas en el orden lógico:  
3. Insertar los datos en el mismo orden para respetar las FK.  
4. Verificar integridad referencial.  

---

## Observaciones

- Las promociones se generan a partir de los alumnos registrados; si un docente pertenece a una promoción sin alumnos, se puede crear la promoción manualmente.  
- Las calificaciones solo admiten `'A'` (Apto) y `'N'` (No Apto).  
- Todas las relaciones respetan las claves primarias y foráneas, garantizando consistencia.  

---

## Autor

- Creado por el "Equipo Misne": Miguel Mateo, Irina Cebotari, Sergio García, Noha Hussien, Steven Herrera.
- Fecha: 2025-11-21
