CREATE TABLE IF NOT EXISTS "tb_reuniao" (
    "ID_reuniao" INT not null PRIMARY KEY,
    "ID_modulo_turma" INT,
    "semana" INT
);
INSERT INTO "tb_reuniao" VALUES
    (85715367,1011,1),
    (98421702,1012,1),
    (55284847,1011,2),
    (68452040,1012,2),
    (87925775,1011,3),
    (80643950,1012,3),
    (69334707,1011,4),
    (73834869,1012,4),
    (70781934,2011,1),
    (45688415,2012,1),
    (90232490,2011,2),
    (79182633,2012,2),
    (50617681,2011,3),
    (31733103,2012,3),
    (21093860,2011,4),
    (52556009,2012,4);
