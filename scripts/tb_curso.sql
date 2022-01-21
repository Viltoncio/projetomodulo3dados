CREATE TABLE IF NOT EXISTS public.tb_curso
(
    "ID_curso" integer NOT NULL,
    nome text COLLATE pg_catalog."default",
    assuntos text COLLATE pg_catalog."default",
    carga_horaria integer,
    CONSTRAINT tb_curso_pkey PRIMARY KEY ("ID_curso")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tb_curso
    OWNER to postgres;
	
INSERT INTO "tb_curso" VALUES
    (1.0,'Análise de Dados','Lógica de programação, Python, Banco de dados, Google Colab, Pandas',560.0),
    (2.0,'WebDev Full Stack','JavaScript, Node, SQL, HTML/CSS, Rest API, React ',560.0);