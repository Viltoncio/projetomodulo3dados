CREATE TABLE IF NOT EXISTS "tb_facilitador" (
    "ID_facilitador" INT not null PRIMARY KEY,
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
INSERT INTO "tb_facilitador" VALUES
    (1,'Doriana Gentil Pessoa','dogentilpessoa@supermail.br','(01) 0000-0001','7*por&hfX0','ativo','soft skills','510.694.788-06','00000-001','Brasil, SP, Cidadinha, Vila Velha, rua Nova 01'),
    (2,'Leonardo Lemes Galindo','lelelindo@emaildobom.net','(01) 0000-0002',':(12345678oi','ativo','hard skills Dados','476.519.128-10','00000-002','Brasil, SP, Cidadona, Vila Nova, rua Pequena 11'),
    (3,'Rafael Lemes Aguiar','rafalemes22@supermail.br','(05) 0000-0099','jujuba123_','ativo','soft skills','423.549.957-25','02001-001','Brasil, RJ, Cidade dos Anjos, Vila Vilosa, rua Carlos Saldanha 78'),
    (4,'Ana Lúcia Cruz','anacruz19b@emailconcorrente.org','(07) 0000-0103','9asm81jf)','ativo','hard skills Webdev','194.520.643-82','07007-001','Brasil, CE, Aventureiros Parceiros, Centro, rua Fantástica 03'),
    (5,'Heloísa Caldas','caldashelo2019@emailshow.info','(04) 0000-0283','zimw78@@','ativo','hard skills Webdev','95895.217-54','02001-001','Brasil, RJ, Cidade dos Anjos, Centro, rua Avenida 117'),
    (6,'Amir Liberato Cortês','4mirhero@supermail.br','(06) 0000-1208','0chadepilha','ativo','hard skills Webdev','061.385.163-38','08002-128','Brasil, MA, Vista Bela, Hermanos, rua Felizberto Fidedigno 7825, apartamento 15'),
    (7,'Martim Cardoso da Graça','gracamartir@emaildobom.net','(05) 0000-1079','philadelph1a','ativo','hard skills Webdev','382.468.607-47','03001-845','Brasil, RJ, Viagem Divina, Viageiros, rua Dr. Alfíndeco Camargo 605  '),
    (8,'Fernando Costa Martins','costadeaco@emailshow.info','(01) 0000-5012','sieniaairTo','ativo','hard skills Webdev','514.723.318-00','18700-000','Brasil, SP, Paranapiacaba, Centro, rua Dr. Digníssimo Pentescopeu 55 '),
    (9,'Sílvio dos Santos','rode@jequiti.com','(01) 0000-6112','MaoePatricia','ativo','soft skills','835.164.707-12','18723-000','Brasil, RJ, Eternos, Vila Vale de Nheiro, rua Holhau Vião Zinho 78'),
    (10,'Felipez Tei Chion','modofwar@gamedevs.com','(01) 4002-8922','yudinheir0','ativo','hard skills Dados','285.73417-61','08220-002','Brasil, RJ, Penhasco, Vila Caio Nanos Tao Jia, rua Infantos 39'),
    (11,'Ramiro Gomes Cortez','cordialramiro@emailconcorrente.org','(02) 0020-7777','riSp1do','ativo','soft skills','32094.939-23','01000-079','Brasil, PR, Jabuticaba, Centro, rua Paia 2556'),
    (12,'Arnaldo Barreira','barraagraca@gamedevs.com','(01) 0879-9815','s3n1as#','ativo','hard skills Webdev','547.822.668-80','00001-023','Brasil, SP, Cidadona, Vila Nova, rua Pequena 15');
