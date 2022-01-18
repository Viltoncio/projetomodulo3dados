CREATE TABLE IF NOT EXISTS "tb_monitor" (
    "ID_monitor" INT not null PRIMARY KEY,
    "nome" TEXT,
    "email" TEXT,
    "contato" TEXT,
    "senha" TEXT,
    "status" TEXT,
    "conhecimentos" TEXT,
    "CPF" TEXT,
    "CEP" TEXT,
    "endereco" TEXT
);
INSERT INTO "tb_monitor" VALUES
    (1,'Teresa Lurdes Pitão','eusouateresa@emaildateresa.org','(01) 0010-0001','oidf6sdkk','ativo','soft skills','79766.640-09','30100-010','Brasil, SP, Resilialand, Vila Marisa, rua Scrum 10'),
    (2,'Marisa Taís Petacular','multiversopostgree@pgadmin.odio','(02) 1010-0002','29fj8fjs*','ativo','hard skills Dados','283.992.960-07','30100-010','Brasil, SP, Resilialand, Vila Marisa rua CNV 26'),
    (3,'Pedro Rupert Cincigato','universo2@resilia.org','(07) 0080-0099','987*&%_d','ativo','soft skills','861.726.740-21','02301-001','Brasil, MA, Kahootland, Centro, rua Kanban 846'),
    (4,'Derico Einstein','realidadeparalela@resilia.org','(06) 0000-0099','err...marisa','ativo','hard skills Webdev','317.926.580-95','02301-001','Brasil, MA, Kahootland, Centro, rua Kanban 849');
