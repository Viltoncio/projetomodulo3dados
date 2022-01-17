CREATE TABLE IF NOT EXISTS "tb_turma" (
    "ID_turma" INT not null PRIMARY KEY,
    "ID_curso" INT,
    "turno" TEXT,
    "status" TEXT
);
INSERT INTO "tb_turma" VALUES
    (1,1,'manha','em andamento'),
    (2,1,'tarde','em andamento'),
    (3,2,'manha','em andamento'),
    (4,2,'tarde','em andamento');
