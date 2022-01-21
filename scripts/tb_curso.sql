CREATE TABLE IF NOT EXISTS "tb_curso" (
    "ID_curso" INT not null PRIMARY KEY,
    "nome" TEXT,
    "assuntos" TEXT,
    "carga_horaria" INT
);
INSERT INTO "tb_curso" VALUES
    (1,'Análise de Dados','Lógica de programação, Python, Banco de dados, Google Colab, Pandas',560),
    (2,'WebDev Full Stack','JavaScript, Node, SQL, HTML/CSS, Rest API, React ',560);
