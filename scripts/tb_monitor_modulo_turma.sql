CREATE TABLE IF NOT EXISTS "tb_monitor_modulo_turma" (
    "ID_modulo_turma" integer,
    "ID_monitor" integer,
    CONSTRAINT "ID_modulo_turma" FOREIGN KEY ("ID_modulo_turma")
        REFERENCES public.tb_modulo_turma ("ID_modulo_turma") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "ID_monitor" FOREIGN KEY ("ID_monitor")
        REFERENCES public.tb_monitor ("ID_monitor") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);
INSERT INTO "tb_monitor_modulo_turma" VALUES
    (1011,1),
    (1011,2),
    (1012,1),
    (1012,2),
    (2011,3),
    (2011,4),
    (2012,3),
    (2012,4);
