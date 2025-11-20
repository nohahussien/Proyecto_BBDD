CREATE TABLE IF NOT EXISTS public.estudiante (
    idestudiante integer NOT NULL DEFAULT nextval('estudiante_idestudiante_seq' :: regclass),
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    email character varying(150) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT estudiante_pkey PRIMARY KEY (idestudiante),
    CONSTRAINT estudiante_email_key UNIQUE (email)
)

CREATE TABLE IF NOT EXISTS public.campus (
    idcampus integer NOT NULL DEFAULT nextval('campus_idcampus_seq' :: regclass),
    ciudad character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT campus_pkey PRIMARY KEY (idcampus)
)

CREATE TABLE IF NOT EXISTS public.vertical (
    idvertical integer NOT NULL DEFAULT nextval('vertical_idvertical_seq' :: regclass),
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT vertical_pkey PRIMARY KEY (idvertical)
)

CREATE TABLE IF NOT EXISTS public.docente (
    docente_id integer NOT NULL DEFAULT nextval('docente_docente_id_seq' :: regclass),
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    rol character varying(50) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT docente_pkey PRIMARY KEY (docente_id)
)

CREATE TABLE IF NOT EXISTS public.modalidad (
    idmodalidad integer NOT NULL DEFAULT nextval('modalidad_idmodalidad_seq' :: regclass),
    nombremodalidad character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT modalidad_pkey PRIMARY KEY (idmodalidad)
)

CREATE TABLE IF NOT EXISTS public.promocion (
    idpromocion integer NOT NULL DEFAULT nextval('promocion_idpromocion_seq' :: regclass),
    idcampus integer NOT NULL,
    idvertical integer NOT NULL,
    "fechaComienzo" date NOT NULL,
    CONSTRAINT promocion_pkey PRIMARY KEY (idpromocion),
    CONSTRAINT fk_promocion_campus FOREIGN KEY (idcampus) REFERENCES public.campus (idcampus) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT fk_promocion_vertical FOREIGN KEY (idvertical) REFERENCES public.vertical (idvertical) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE IF NOT EXISTS public.estudiantepromocion (
    idestudiante integer NOT NULL,
    idpromocion integer NOT NULL,
    CONSTRAINT estudiantepromocion_pkey PRIMARY KEY (idestudiante, idpromocion),
    CONSTRAINT fk_estudiantepromocion_estudiante FOREIGN KEY (idestudiante) REFERENCES public.estudiante (idestudiante) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT fk_estudiantepromocion_promocion FOREIGN KEY (idpromocion) REFERENCES public.promocion (idpromocion) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE IF NOT EXISTS public.proyecto (
    idproyecto integer NOT NULL DEFAULT nextval('proyecto_idproyecto_seq' :: regclass),
    idvertical integer NOT NULL,
    nombre character varying(150) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT proyecto_pkey PRIMARY KEY (idproyecto),
    CONSTRAINT fk_proyecto_vertical FOREIGN KEY (idvertical) REFERENCES public.vertical (idvertical) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE IF NOT EXISTS public.calificacionproyectoalumno (
    idestudiante integer NOT NULL,
    idproyecto integer NOT NULL,
    calificacion character varying(2) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT calificacionproyectoalumno_pkey PRIMARY KEY (idestudiante, idproyecto),
    CONSTRAINT fk_calificacion_estudiante FOREIGN KEY (idestudiante) REFERENCES public.estudiante (idestudiante) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT fk_calificacion_proyecto FOREIGN KEY (idproyecto) REFERENCES public.proyecto (idproyecto) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE IF NOT EXISTS public.docentepromocion (
    iddocente integer NOT NULL,
    idpromocion integer NOT NULL,
    idmodalidad integer NOT NULL,
    CONSTRAINT docentepromocion_pkey PRIMARY KEY (iddocente, idpromocion, idmodalidad),
    CONSTRAINT fk_docentepromocion_docente FOREIGN KEY (iddocente) REFERENCES public.docente (docente_id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT fk_docentepromocion_modalidad FOREIGN KEY (idmodalidad) REFERENCES public.modalidad (idmodalidad) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT fk_docentepromocion_promocion FOREIGN KEY (idpromocion) REFERENCES public.promocion (idpromocion) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)

CREATE TABLE IF NOT EXISTS public.proyectosporpromocion (
    idpromocion integer NOT NULL,
    idproyecto integer NOT NULL,
    CONSTRAINT proyectosporpromocion_pkey PRIMARY KEY (idpromocion, idproyecto),
    CONSTRAINT fk_proyectospromocion_promocion FOREIGN KEY (idpromocion) REFERENCES public.promocion (idpromocion) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT fk_proyectospromocion_proyecto FOREIGN KEY (idproyecto) REFERENCES public.proyecto (idproyecto) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION
)