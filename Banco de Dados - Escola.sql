create database db_Escola;
use db_Escola;


create table tb_aluno(
	pk_id_aluno int auto_increment primary key,
    nome_aluno varchar (100) not null,
	data_nasc_aluno date not null,
    cpf_aluno char (11) not null,
    genero_aluno enum ('f', 'm', 'o'),
    endereco_aluno varchar (100),
    email_aluno varchar (50) not null,
    telefone_aluno char (13) not null
);

alter table tb_aluno
add column ra_aluno char (11);

insert into tb_aluno (nome_aluno, data_nasc_aluno, cpf_aluno, genero_aluno, endereco_aluno, email_aluno, telefone_aluno, ra_aluno)
values('Alice Martins da Silva', '2005-03-15', '11111111111', 'f', 'Rua Rio Capiberibe, 07', 'alicemsilva@gmail.com', '5511911111111', '11111111111'),
('Felipe Ferreira dos Santos', '2004-07-22', '22222222222', 'm', 'Rua Rio Água Bela, 32', 'felipefsantos@gmail.com', '5511922222222', '22222222222'),
('Gabriel Santos Lima', '2003-11-10', '33333333333', 'm', 'Rua Rio Paraitinga, 54', 'gabrielslima@gmail.com', '5511933333333', '33333333333'),
('Helena Costa Dias', '2006-02-05', '44444444444', 'f', 'Rua Rio Fidalgo, 22', 'helenadiasc@gmail.com', '5511944444444', '44444444444'),
('João Pedro Nascimento', '2005-08-30', '55555555555', 'm', 'Rua Rio Juruá, 13', 'joaopedron@gmail.com', '5511955555555', '55555555555'),
('Júlia Almeida Costa', '2003-12-18', '66666666666', 'f', 'Rua Rio Pimenta, 36', 'jujualmeida@gmail.com', '5511966666666', '66666666666'),
('Larissa Gomes de Souza', '2006-04-25', '77777777777', 'f', 'Rua Rio São Carlos, 12', 'larigomes25@gmail.com', '551177777777', '77777777777'),
('Mariana Oliveira Mendes', '2004-09-11', '88888888888', 'f', 'Rua Rio Colônia, 45', 'marimari_mendes@gmail.com', '5511988888888', '88888888888'),
('Miguel Andrade Ribeiro', '2003-01-27', '99999999999', 'm', 'Rua Rio Caçador, 37', 'miguel.arbeiro@gmail.com', '5511999999999', '99999999999'),
('Thiago Pereira Santos', '2005-06-09', '00000000000', 'm', 'Rua Rio Icatu, 88', 'tihagop2005@gmail.com', '5511900000000', '00000000000');

create table tb_professor(
	pk_id_professor int auto_increment primary key,
    nome_professor varchar (100) not null,
	data_nasc_professor date not null,
    cpf_professor char (11) not null,
    re_professor char (7)not null,
    disciplina_professor varchar (50),
    endereco_professor varchar (100),
    email_professor varchar (50) not null,
    telefone_professor char (13) not null,
    cidade_professor varchar (50)
);

insert into tb_professor (nome_professor, data_nasc_professor, cpf_professor, re_professor, disciplina_professor, endereco_professor, email_professor, telefone_professor)
values('Ana Maria Silva', '1980-04-12', '11111111111', '1111111', 'Português', 'Rua Solar dos Pássaros, 32', 'anasilva@gmail.com', '5511911111111'),
('Debora Paixão', '1980-12-13', '22222222222', '2222222', 'Tecnologia', 'Rua Camilo Cortellini, 78', 'deborapaixao@gmail.com', '5511922222222'),
('Edson Virgulino', '1975-07-25', '33333333333', '3333333', 'Matemática', 'Rua Angelo Antonelli, 16', 'virgulinoedson@gmail.com', '5511933333333'),
('Dimas Lopes de Souza', '1970-06-16', '44444444444', '4444444', 'Inglês', 'Rua Rio Fidalgo, 22', 'dimaseducasp@gmail.com', '5511944444444'),
('Ramon Silva', '1975-08-30', '55555555555', '5555555', 'Geografia', 'Rua Rio Juruá, 13', 'joaopedron@gmail.com', '5511955555555'),
('Luciana Pereira', '1986-12-18', '66666666666', '6666666', 'História', 'Rua Rio Pimenta, 36', 'jujualmeida@gmail.com', '5511966666666'),
('Naerte Nascimento', '1980-04-25', '77777777777', '7777777', 'Química', 'Rua Rio São Carlos, 12', 'larigomes25@gmail.com', '551177777777'),
('Antônio Sousa', '1966-09-11', '88888888888', '8888888', 'História', 'Rua Rio Colônia, 45', 'marimari_mendes@gmail.com', '5511988888888'),
('Daniela Andrade Ribeiro', '2003-01-27', '99999999999', '9999999', 'Biologia', 'Rua Rio Caçador, 37', 'miguel.arbeiro@gmail.com', '5511999999999'),
('Glaucia Andrade', '1980-06-09', '00000000000', '0000000', 'Matemática', 'Rua Rio Icatu, 88', 'tihagop2005@gmail.com', '5511900000000');

create table tb_aula(
	pk_id_aula int auto_increment primary key,
    sala_aula varchar (10) not null,
	professor_aula varchar (50) not null,
    horario_aula time not null,
    materia_aula varchar (50) not null,
    data_aula date not null,
	turma_aula varchar (10)
);

insert into tb_aula (sala_aula, professor_aula, horario_aula, materia_aula, data_aula, turma_aula) VALUES
('Sala 01', 'Ana Maria Silva', '08:00:00', 'Português', '2023-11-01', '1A'),
('Sala 02', 'Debora Paixão', '09:00:00', 'Tecnologia', '2023-11-01', '1B'),
('Sala 03', 'Edson Virgulino', '10:00:00', 'Matemática', '2023-11-01', '2A'),
('Sala 04', 'Dimas Lopes de Souza', '11:00:00', 'Inglês', '2023-11-01', '2B'),
('Sala 05', 'Ramon Silva', '13:00:00', 'Geografia', '2023-11-01', '3A'),
('Sala 06', 'Luciana Pereira', '14:00:00', 'História', '2023-11-01', '3B'),
('Sala 07', 'Naerte Nascimento', '15:00:00', 'Química', '2023-11-01', '4A'),
('Sala 08', 'Antônio Sousa', '16:00:00', 'Física', '2023-11-01', '4B'),
('Sala 09', 'Daniela Andrade Ribeiro', '17:00:00', 'Biologia', '2023-11-01', '5A'),
('Sala 10', 'Glaucia Andrade', '18:00:00', 'Matemática', '2023-11-01', '5B');

alter table tb_professor
add column ( 
	estado_civil varchar (50),
    nome_mãe varchar (50)
);

alter table tb_professor change column cpf_professor cpf_professor varchar(12);

select * from tb_professor;

insert into tb_professor (nome_professor, data_nasc_professor, cpf_professor, re_professor, disciplina_professor, endereco_professor, email_professor, telefone_professor)
values('Maria do Socorro', '1980-04-12', '11111111111', '1111111', 'Português', 'Rua Solar dos Pássaros, 32', 'anasilva@gmail.com', '5511911111111'),
('Francisco Domingos', '1980-12-13', '22222222222', '2222222', 'Tecnologia', 'Rua Camilo Cortellini, 78', 'deborapaixao@gmail.com', '5511922222222'),
('Adaylson Arcanjo', '1975-07-25', '33333333333', '3333333', 'Matemática', 'Rua Angelo Antonelli, 16', 'virgulinoedson@gmail.com', '5511933333333');

alter table tb_professor
drop column cidade_professor;

update tb_professor
set disciplina_professor = 'Matematica'
where pk_id_professor in (9,10,11,12,13);

delete from tb_professor
where pk_id_professor in (7,10,12);

alter table tb_professor
add column email_professor varchar(100);

update tb_professor
set email_professor = 'solicitação em andamento'
where pk_id_professor;

alter table tb_professor change column estado_civil estado_civil char(10);

alter table tb_professor
add column formacao_prof varchar(50);

start transaction;

delete from tb_professor;

select * from tb_professor;

rollback;
commit;




