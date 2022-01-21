CREATE TABLE IF NOT EXISTS "tb_turma" (
    "ID_turma" integer NOT NULL,
    "ID_curso" integer,
    turno text COLLATE pg_catalog."default",
    status text COLLATE pg_catalog."default",
    CONSTRAINT tb_turma_pkey PRIMARY KEY ("ID_turma"),
    CONSTRAINT "ID_curso" FOREIGN KEY ("ID_curso")
        REFERENCES public.tb_curso ("ID_curso") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
INSERT INTO "tb_turma" VALUES
    (1,1,'manha','em andamento'),
    (2,1,'tarde','em andamento'),
    (3,2,'manha','em andamento'),
    (4,2,'tarde','em andamento');
