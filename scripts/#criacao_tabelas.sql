BEGIN;


CREATE TABLE IF NOT EXISTS public.tb_alunos
(
    "ID_aluno" integer NOT NULL,
    nome text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    senha text COLLATE pg_catalog."default",
    data_de_nascimento timestamp without time zone,
    contato text COLLATE pg_catalog."default",
    "ID_matricula" integer,
    endereco text COLLATE pg_catalog."default",
    "CEP" text COLLATE pg_catalog."default",
    CONSTRAINT tb_alunos_pkey PRIMARY KEY ("ID_aluno")
);

CREATE TABLE IF NOT EXISTS public.tb_aula
(
    "ID_aula" integer NOT NULL,
    "ID_reuniao" integer,
    "ID_modulo_turma" integer,
    data_hora timestamp without time zone,
    CONSTRAINT tb_aula_pkey PRIMARY KEY ("ID_aula")
);

CREATE TABLE IF NOT EXISTS public.tb_avaliacao
(
    "ID_avaliacao" integer NOT NULL,
    "ID_modulo" integer,
    tipo_de_avaliacao text COLLATE pg_catalog."default",
    prazo timestamp without time zone,
    descricao text COLLATE pg_catalog."default",
    CONSTRAINT tb_avaliacao_pkey PRIMARY KEY ("ID_avaliacao")
);

CREATE TABLE IF NOT EXISTS public.tb_avaliacao_matricula
(
    "ID_avaliacao" integer,
    "ID_matricula" integer,
    mencao text COLLATE pg_catalog."default"
);

CREATE TABLE IF NOT EXISTS public.tb_certificado
(
    "ID_certificado" integer NOT NULL,
    "ID_matricula" integer,
    "ID_modulo" integer,
    CONSTRAINT tb_certificado_pkey PRIMARY KEY ("ID_certificado")
);

CREATE TABLE IF NOT EXISTS public.tb_curso
(
    "ID_curso" integer NOT NULL,
    nome text COLLATE pg_catalog."default",
    assuntos text COLLATE pg_catalog."default",
    carga_horaria integer,
    CONSTRAINT tb_curso_pkey PRIMARY KEY ("ID_curso")
);

CREATE TABLE IF NOT EXISTS public.tb_facilitador
(
    "ID_facilitador" integer NOT NULL,
    nome text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    contato text COLLATE pg_catalog."default",
    senha text COLLATE pg_catalog."default",
    status text COLLATE pg_catalog."default",
    conhecimentos text COLLATE pg_catalog."default",
    "CPF" text COLLATE pg_catalog."default",
    "CEP" text COLLATE pg_catalog."default",
    endereco text COLLATE pg_catalog."default",
    CONSTRAINT tb_facilitador_pkey PRIMARY KEY ("ID_facilitador")
);

CREATE TABLE IF NOT EXISTS public.tb_facilitador_modulo_turma
(
    "ID_facilitador_modulo_turma" integer NOT NULL,
    "ID_facilitador" integer,
    "ID_modulo_turma" integer,
    CONSTRAINT tb_facilitador_modulo_turma_pkey PRIMARY KEY ("ID_facilitador_modulo_turma")
);

CREATE TABLE IF NOT EXISTS public.tb_matricula
(
    "ID_matricula" integer NOT NULL,
    "ID_turma" integer,
    status text COLLATE pg_catalog."default",
    data_da_matricula timestamp without time zone,
    "CPF" text COLLATE pg_catalog."default",
    CONSTRAINT tb_matricula_pkey PRIMARY KEY ("ID_matricula")
);

CREATE TABLE IF NOT EXISTS public.tb_modulo
(
    "ID_modulo" integer NOT NULL,
    nome text COLLATE pg_catalog."default",
    "ID_curso" integer,
    assuntos text COLLATE pg_catalog."default",
    CONSTRAINT tb_modulo_pkey PRIMARY KEY ("ID_modulo")
);

CREATE TABLE IF NOT EXISTS public.tb_modulo_turma
(
    "ID_modulo_turma" integer NOT NULL,
    "ID_modulo" integer,
    "ID_turma" integer,
    CONSTRAINT tb_modulo_turma_pkey PRIMARY KEY ("ID_modulo_turma")
);

CREATE TABLE IF NOT EXISTS public.tb_monitor
(
    "ID_monitor" integer NOT NULL,
    nome text COLLATE pg_catalog."default",
    email text COLLATE pg_catalog."default",
    contato text COLLATE pg_catalog."default",
    senha text COLLATE pg_catalog."default",
    status text COLLATE pg_catalog."default",
    conhecimentos text COLLATE pg_catalog."default",
    "CPF" text COLLATE pg_catalog."default",
    "CEP" text COLLATE pg_catalog."default",
    endereco text COLLATE pg_catalog."default",
    CONSTRAINT tb_monitor_pkey PRIMARY KEY ("ID_monitor")
);

CREATE TABLE IF NOT EXISTS public.tb_monitor_modulo_turma
(
    "ID_modulo_turma" integer,
    "ID_monitor" integer
);

CREATE TABLE IF NOT EXISTS public.tb_monitoria_reuniao
(
    "ID_monitoria" integer NOT NULL,
    "ID_reuniao" integer,
    assunto text COLLATE pg_catalog."default",
    CONSTRAINT tb_monitoria_reuniao_pkey PRIMARY KEY ("ID_monitoria")
);

CREATE TABLE IF NOT EXISTS public.tb_reuniao
(
    "ID_reuniao" integer NOT NULL,
    "ID_modulo_turma" integer,
    semana integer,
    CONSTRAINT tb_reuniao_pkey PRIMARY KEY ("ID_reuniao")
);

CREATE TABLE IF NOT EXISTS public.tb_turma
(
    "ID_turma" integer NOT NULL,
    "ID_curso" integer,
    turno text COLLATE pg_catalog."default",
    status text COLLATE pg_catalog."default",
    CONSTRAINT tb_turma_pkey PRIMARY KEY ("ID_turma")
);

ALTER TABLE IF EXISTS public.tb_alunos
    ADD CONSTRAINT fk_tb_matricula FOREIGN KEY ("ID_matricula")
    REFERENCES public.tb_matricula ("ID_matricula") MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE;


ALTER TABLE IF EXISTS public.tb_aula
    ADD CONSTRAINT "ID_modulo_turma" FOREIGN KEY ("ID_modulo_turma")
    REFERENCES public.tb_modulo_turma ("ID_modulo_turma") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.tb_aula
    ADD CONSTRAINT "ID_reuniao" FOREIGN KEY ("ID_reuniao")
    REFERENCES public.tb_reuniao ("ID_reuniao") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.tb_avaliacao
    ADD CONSTRAINT "ID_modulo" FOREIGN KEY ("ID_modulo")
    REFERENCES public.tb_modulo ("ID_modulo") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.tb_avaliacao_matricula
    ADD CONSTRAINT "ID_avaliacao" FOREIGN KEY ("ID_avaliacao")
    REFERENCES public.tb_avaliacao ("ID_avaliacao") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.tb_avaliacao_matricula
    ADD CONSTRAINT "ID_matricula" FOREIGN KEY ("ID_matricula")
    REFERENCES public.tb_matricula ("ID_matricula") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.tb_certificado
    ADD CONSTRAINT "ID_matricula" FOREIGN KEY ("ID_matricula")
    REFERENCES public.tb_matricula ("ID_matricula") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS "fki_ID_matricula"
    ON public.tb_certificado("ID_matricula");


ALTER TABLE IF EXISTS public.tb_certificado
    ADD CONSTRAINT "ID_modulo" FOREIGN KEY ("ID_modulo")
    REFERENCES public.tb_modulo ("ID_modulo") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.tb_facilitador_modulo_turma
    ADD CONSTRAINT "ID_facilitador" FOREIGN KEY ("ID_facilitador")
    REFERENCES public.tb_facilitador ("ID_facilitador") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS "fki_ID_facilitador"
    ON public.tb_facilitador_modulo_turma("ID_facilitador");


ALTER TABLE IF EXISTS public.tb_facilitador_modulo_turma
    ADD CONSTRAINT "ID_modulo_turma" FOREIGN KEY ("ID_modulo_turma")
    REFERENCES public.tb_modulo_turma ("ID_modulo_turma") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS "fki_ID_modulo_turma"
    ON public.tb_facilitador_modulo_turma("ID_modulo_turma");


ALTER TABLE IF EXISTS public.tb_matricula
    ADD CONSTRAINT tb_turma FOREIGN KEY ("ID_turma")
    REFERENCES public.tb_turma ("ID_turma") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.tb_modulo
    ADD CONSTRAINT "ID_curso" FOREIGN KEY ("ID_curso")
    REFERENCES public.tb_curso ("ID_curso") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.tb_modulo_turma
    ADD CONSTRAINT "ID_modulo" FOREIGN KEY ("ID_modulo")
    REFERENCES public.tb_modulo ("ID_modulo") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS "fki_ID_modulo"
    ON public.tb_modulo_turma("ID_modulo");


ALTER TABLE IF EXISTS public.tb_modulo_turma
    ADD CONSTRAINT "ID_turma" FOREIGN KEY ("ID_turma")
    REFERENCES public.tb_turma ("ID_turma") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS "fki_ID_turma"
    ON public.tb_modulo_turma("ID_turma");


ALTER TABLE IF EXISTS public.tb_monitor_modulo_turma
    ADD CONSTRAINT "ID_modulo_turma" FOREIGN KEY ("ID_modulo_turma")
    REFERENCES public.tb_modulo_turma ("ID_modulo_turma") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.tb_monitor_modulo_turma
    ADD CONSTRAINT "ID_monitor" FOREIGN KEY ("ID_monitor")
    REFERENCES public.tb_monitor ("ID_monitor") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.tb_monitoria_reuniao
    ADD CONSTRAINT "ID_reuniao" FOREIGN KEY ("ID_reuniao")
    REFERENCES public.tb_reuniao ("ID_reuniao") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.tb_reuniao
    ADD CONSTRAINT "ID_modulo_turma" FOREIGN KEY ("ID_modulo_turma")
    REFERENCES public.tb_modulo_turma ("ID_modulo_turma") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;


ALTER TABLE IF EXISTS public.tb_turma
    ADD CONSTRAINT "ID_curso" FOREIGN KEY ("ID_curso")
    REFERENCES public.tb_curso ("ID_curso") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION;
CREATE INDEX IF NOT EXISTS "fki_ID_curso"
    ON public.tb_turma("ID_curso");

END;