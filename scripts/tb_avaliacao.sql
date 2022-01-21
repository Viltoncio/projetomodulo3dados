CREATE TABLE IF NOT EXISTS "tb_avaliacao" (
    "ID_avaliacao" integer NOT NULL,
    "ID_modulo" integer,
    tipo_de_avaliacao text COLLATE pg_catalog."default",
    prazo timestamp without time zone,
    descricao text COLLATE pg_catalog."default",
    CONSTRAINT tb_avaliacao_pkey PRIMARY KEY ("ID_avaliacao"),
    CONSTRAINT "ID_modulo" FOREIGN KEY ("ID_modulo")
        REFERENCES public.tb_modulo ("ID_modulo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
INSERT INTO "tb_avaliacao" VALUES
    (10001,101,'qualified','2021-05-01 00:00:00','questionário semana 1'),
    (10002,101,'qualified','2021-05-01 00:00:00','questionário semana 2 '),
    (10003,101,'qualified','2021-05-01 00:00:00','questionário semana 3'),
    (10004,101,'qualified','2021-05-01 00:00:00','questionário semana 4'),
    (10005,101,'projeto','2021-05-01 00:00:00','projeto encerramento módulo 1'),
    (10006,101,'feedback projeto','2021-05-01 00:00:00','feedback sobre os colegas de equipe no projeto de encerramento do módulo 1'),
    (20001,201,'qualified','2021-05-01 00:00:00','questionário semana 1'),
    (20002,201,'qualified','2021-05-01 00:00:00','questionário semana 2 '),
    (20003,201,'qualified','2021-05-01 00:00:00','questionário semana 3'),
    (20004,201,'qualified','2021-05-01 00:00:00','questionário semana 4'),
    (20005,201,'projeto','2021-05-01 00:00:00','projeto encerramento módulo 1'),
    (20006,201,'feedback projeto','2021-05-01 00:00:00','feedback sobre os colegas de equipe no projeto de encerramento do módulo 1');
