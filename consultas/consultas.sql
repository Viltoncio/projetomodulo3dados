-- Selecionar a quantidade total de estudantes cadastrados no banco
select count(nome) from tb_alunos

-- Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados
select tb_curso.nome, tb_alunos.nome
from tb_curso
join tb_turma on tb_curso."ID_curso" = tb_turma."ID_curso"
join tb_matricula on tb_matricula."ID_turma" = tb_turma."ID_turma"
join tb_alunos on tb_alunos."ID_matricula" = tb_matricula."ID_matricula"

-- Selecionar quais pessoas facilitadoras atuam/atuaram em mais de uma turma
select distinct tb_facilitador."nome", count(distinct tb_turma."ID_turma") 
from tb_facilitador_modulo_turma 
inner join tb_modulo_turma on tb_modulo_turma."ID_modulo_turma" = tb_facilitador_modulo_turma."ID_modulo_turma"
inner join tb_turma on tb_modulo_turma."ID_turma" = tb_turma."ID_turma"
inner join tb_facilitador on tb_facilitador_modulo_turma."ID_facilitador" = tb_facilitador."ID_facilitador"
group by tb_facilitador."nome"
having count(distinct tb_turma."ID_turma") > 1

-- Selecionar todos os alunos que não são de RJ nem de SP
select tb_alunos.nome, tb_alunos.endereco
from tb_alunos 
where (endereco not like '%RJ,%') and (endereco not like '%SP,%')

-- Selecionar o curso com mais módulos
select tb_curso.nome, count(tb_curso."ID_curso")/2 --divide-se por 2 porque há 2 turmas de cada
from tb_curso
inner join tb_turma on tb_turma."ID_curso" = tb_curso."ID_curso"
inner join tb_modulo_turma on tb_modulo_turma."ID_turma" = tb_turma."ID_turma"
group by tb_curso.nome 
limit 1

-- Selecionar a quantidade de atividades de cada tipo para o módulo 1 de Análise de Dados 
select count(tb_avaliacao."ID_avaliacao"), tb_avaliacao.tipo_de_avaliacao
from tb_avaliacao
where "ID_modulo" = 101
group by tb_avaliacao.tipo_de_avaliacao












