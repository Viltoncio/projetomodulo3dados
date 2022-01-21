CREATE TABLE IF NOT EXISTS "tb_monitoria_reuniao" (
    "ID_monitoria" integer NOT NULL,
    "ID_reuniao" integer,
    assunto text COLLATE pg_catalog."default",
    CONSTRAINT tb_monitoria_reuniao_pkey PRIMARY KEY ("ID_monitoria"),
    CONSTRAINT "ID_reuniao" FOREIGN KEY ("ID_reuniao")
        REFERENCES public.tb_reuniao ("ID_reuniao") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);
INSERT INTO "tb_monitoria_reuniao" VALUES
    (881,85715367,'soft skills'),
    (882,85715367,'hard skills'),
    (883,98421702,'soft skills'),
    (884,98421702,'hard skills'),
    (885,55284847,'soft skills'),
    (886,55284847,'hard skills'),
    (887,68452040,'soft skills'),
    (888,68452040,'hard skills'),
    (889,87925775,'soft skills'),
    (890,87925775,'hard skills'),
    (891,80643950,'soft skills'),
    (892,80643950,'hard skills'),
    (893,69334707,'soft skills'),
    (894,69334707,'hard skills'),
    (895,73834869,'soft skills'),
    (896,73834869,'hard skills'),
    (897,70781934,'soft skills'),
    (898,70781934,'hard skills'),
    (899,45688415,'soft skills'),
    (900,45688415,'hard skills'),
    (901,90232490,'soft skills'),
    (902,90232490,'hard skills'),
    (903,79182633,'soft skills'),
    (904,79182633,'hard skills'),
    (905,50617681,'soft skills'),
    (906,50617681,'hard skills'),
    (907,31733103,'soft skills'),
    (908,31733103,'hard skills'),
    (909,21093860,'soft skills'),
    (910,21093860,'hard skills'),
    (911,52556009,'soft skills'),
    (912,52556009,'hard skills');
