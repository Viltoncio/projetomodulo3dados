CREATE TABLE IF NOT EXISTS "tb_modulo_turma" (
    "ID_modulo_turma" integer NOT NULL,
    "ID_modulo" integer,
    "ID_turma" integer,
    CONSTRAINT tb_modulo_turma_pkey PRIMARY KEY ("ID_modulo_turma"),
    CONSTRAINT "ID_modulo" FOREIGN KEY ("ID_modulo")
        REFERENCES public.tb_modulo ("ID_modulo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "ID_turma" FOREIGN KEY ("ID_turma")
        REFERENCES public.tb_turma ("ID_turma") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
INSERT INTO "tb_modulo_turma" VALUES
    (1011,101,1),
    (1012,101,2),
    (1021,102,1),
    (1022,102,2),
    (1031,103,1),
    (1032,103,2),
    (1041,104,1),
    (1042,104,2),
    (1051,105,1),
    (1052,105,2),
    (1061,106,1),
    (1062,106,2),
    (2011,201,3),
    (2012,201,4),
    (2021,202,3),
    (2022,202,4),
    (2031,203,3),
    (2032,203,4),
    (2041,204,3),
    (2042,204,4),
    (2051,205,3),
    (2052,205,4);
