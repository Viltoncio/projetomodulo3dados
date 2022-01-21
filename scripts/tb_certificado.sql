CREATE TABLE IF NOT EXISTS "tb_certificado" (
    "ID_certificado" integer NOT NULL,
    "ID_matricula" integer,
    "ID_modulo" integer,
    CONSTRAINT tb_certificado_pkey PRIMARY KEY ("ID_certificado"),
    CONSTRAINT "ID_matricula" FOREIGN KEY ("ID_matricula")
        REFERENCES public.tb_matricula ("ID_matricula") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "ID_modulo" FOREIGN KEY ("ID_modulo")
        REFERENCES public.tb_modulo ("ID_modulo") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);
INSERT INTO "tb_certificado" VALUES
    (752011,75201,201),
    (752021,75202,101),
    (752031,75203,101),
    (752041,75204,101),
    (752061,75206,101),
    (752071,75207,201),
    (752081,75208,201),
    (752091,75209,101),
    (752101,75210,101),
    (752111,75211,101),
    (752121,75212,101),
    (752131,75213,201),
    (752141,75214,201),
    (752151,75215,201),
    (752161,75216,201),
    (752171,75217,101),
    (752181,75218,101),
    (752191,75219,101),
    (752201,75220,201),
    (752211,75221,201),
    (752221,75222,101),
    (752241,75224,201),
    (752251,75225,101),
    (752261,75226,101),
    (752271,75227,101),
    (752281,75228,201),
    (752291,75229,101),
    (752301,75230,201),
    (752311,75231,101),
    (752321,75232,101),
    (752331,75233,201),
    (752351,75235,201),
    (752381,75238,201),
    (752391,75239,201),
    (752401,75240,201),
    (752411,75241,101),
    (752421,75242,201),
    (752431,75243,101),
    (752441,75244,101),
    (752451,75245,201),
    (752461,75246,201),
    (752481,75248,101),
    (752491,75249,101),
    (752501,75250,101),
    (752511,75251,201),
    (752521,75252,201),
    (752541,75254,201),
    (752561,75256,201),
    (752581,75258,101),
    (752591,75259,101),
    (752601,75260,201),
    (752611,75261,201),
    (752631,75263,201),
    (752641,75264,201),
    (752651,75265,101),
    (752661,75266,201),
    (752671,75267,201),
    (752681,75268,201),
    (752701,75270,201),
    (752711,75271,201),
    (752721,75272,101),
    (752731,75273,201),
    (752751,75275,101),
    (752761,75276,101),
    (752771,75277,201),
    (752781,75278,201),
    (752791,75279,101),
    (752801,75280,101),
    (752811,75281,201),
    (752831,75283,201),
    (752851,75285,201),
    (752861,75286,201),
    (752871,75287,201),
    (752881,75288,101),
    (752891,75289,101),
    (752901,75290,101),
    (752911,75291,101),
    (752921,75292,101),
    (752931,75293,101),
    (752941,75294,101),
    (752951,75295,101),
    (752961,75296,101),
    (752971,75297,101),
    (752981,75298,201),
    (752991,75299,201);
