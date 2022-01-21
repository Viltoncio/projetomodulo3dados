CREATE TABLE IF NOT EXISTS "tb_facilitador_modulo_turma" (
    "ID_facilitador_modulo_turma" integer NOT NULL,
    "ID_facilitador" integer,
    "ID_modulo_turma" integer,
    CONSTRAINT tb_facilitador_modulo_turma_pkey PRIMARY KEY ("ID_facilitador_modulo_turma"),
    CONSTRAINT "ID_facilitador" FOREIGN KEY ("ID_facilitador")
        REFERENCES public.tb_facilitador ("ID_facilitador") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "ID_modulo_turma" FOREIGN KEY ("ID_modulo_turma")
        REFERENCES public.tb_modulo_turma ("ID_modulo_turma") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
INSERT INTO "tb_facilitador_modulo_turma" VALUES
    (10111,1,1011),
    (10112,2,1011),
    (10121,9,1012),
    (10122,10,1012),
    (10211,1,1021),
    (10212,2,1021),
    (10221,9,1022),
    (10222,10,1022),
    (10311,1,1031),
    (10312,2,1031),
    (10321,9,1032),
    (10322,10,1032),
    (10411,1,1041),
    (10412,2,1041),
    (10421,9,1042),
    (10422,10,1042),
    (10511,1,1051),
    (10512,2,1051),
    (10521,9,1052),
    (10522,10,1052),
    (10611,1,1061),
    (10612,2,1061),
    (10621,9,1062),
    (10622,10,1062),
    (20111,3,2011),
    (20112,4,2011),
    (20121,4,2012),
    (20122,5,2012),
    (20211,3,2021),
    (20212,6,2021),
    (20221,11,2022),
    (20222,12,2022),
    (20311,3,2031),
    (20312,6,2031),
    (20321,6,2032),
    (20322,11,2032),
    (20411,3,2041),
    (20412,7,2041),
    (20421,7,2042),
    (20422,11,2042),
    (20511,3,2051),
    (20512,8,2051),
    (20521,11,2052),
    (20522,12,2052);
