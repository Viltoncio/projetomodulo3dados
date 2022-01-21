CREATE TABLE IF NOT EXISTS "tb_modulo" (
    "ID_modulo" integer NOT NULL,
    nome text COLLATE pg_catalog."default",
    curso integer,
    assuntos text COLLATE pg_catalog."default",
    CONSTRAINT tb_modulo_pkey PRIMARY KEY ("ID_modulo")
);
INSERT INTO "tb_modulo" VALUES
    (101,'modulo 1',1,'lógica de programação, introdução a Python, versionamento de código, mindset, aprender a aprender, hábitos, gestão de tempo, rotina'),
    (102,'modulo 2',1,'estrutura de dados (listas, dicionários), funções, bibliotecas de dados e ambientes virtuais'),
    (103,'modulo 3',1,'bancos de dados relacionais, bancos de dados não-relacionais, consultas recorrentes a bancos de dados e CRUD com SQL, capacidade investigativa e metodologias ágeis'),
    (104,'modulo 4 ',1,'Pandas, Google Colaboratory, estatística descritiva, visualização de dados, Python (Ploty e Seaborn)'),
    (105,'modulo 5 ',1,'mineração de dados, análise exploratória, storytelling, capacidade investigativa, pensamento crítico, ética e privacidade, vieses cognitivos e comunicação'),
    (106,'modulo 6 ',1,'Tableau, funcionalidades úteis, operações em tabelas, dashboards, histórias, publicação de fontes de dados'),
    (201,'modulo 1 ',2,'páginas estáticas (HTML5, CSS3), lógica de programação (Javascript), Git e Github'),
    (202,'modulo 2 ',2,'páginas dinâmicas, orientação a objetos em Javascript e requisições à APIs, arquitetar projetos Front-end em Git e Github, equilíbrio emocional, trabalho em equipe, gestão de conflito'),
    (203,'modulo 3 ',2,'modelagem, escrita, leitura, atualização e consultas avançadas em bancos de dados, com foco em Business Intelligence'),
    (204,'modulo 4 ',2,'criar APIs para banco de dados, permitindo a interação de vários sistemas e dados; postura profissional, criatividade e inovação'),
    (205,'modulo 5 ',2,'React, carreira, processos seletivos');
