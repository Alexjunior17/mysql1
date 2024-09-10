create database sistemabancario3;
use sistemabancario3;


create table cliente
(
id INT NOT NULL auto_increment primary key,
nome VARCHAR(80),
rg VARCHAR(20),
estado_civil VARCHAR(20),
logradouro VARCHAR(20),
numero SMALLINT,
complemento VARCHAR(20),
bairro VARCHAR(20),
cidade VARCHAR(20),
uf VARCHAR(20),
cep VARCHAR(20)
);
insert into cliente values(null, 'alexandre', '12333456', 'casado', 'rua julita', 629, 'bloco 13', 'santa terezinha', 'belo horizonte', 'mg', '31360040');
insert into cliente values(null, 'julia', '12333458', 'casado', 'rua marcia', 625, 'bloco 11', 'santa barreirio', 'belo horizonte', 'mg', '31362040');
insert into cliente values(null, 'mateus', '12363456', 'casado', 'rua maria', 689, 'bloco 17', 'santa efigenia', 'belo horizonte', 'mg', '31360560');
insert into cliente values(null, 'nicole', '12385456', 'solteira', 'rua jupter', 859, 'bloco 15', 'marrocos', 'belo horizonte', 'mg', '31526040');
insert into cliente values(null, 'andre', '12384456', 'casado', 'rua marte', 663, 'bloco 80', 'contagem', 'belo horizonte', 'mg', '31365240');
insert into cliente values(null, 'marcia', '85633456', 'solteira', 'rua anatel', 569, 'bloco 20', 'alegria', 'belo horizonte', 'mg', '319632040');
insert into cliente values(null, 'vinicius', '16521456', 'casado', 'rua mario', 158, 'casa', 'ressaca', 'belo horizonte', 'mg', '38529040');
insert into cliente values(null, 'kaka', '12335256', 'casado', 'rua antonio', 255, 'casa', 'santa terezinha', 'belo horizonte', 'mg', '52890040');
insert into cliente values(null, 'nabila', '15263456', 'casado', 'rua julieta', 455, 'casa', 'santa maria', 'belo horizonte', 'mg', '31456240');
insert into cliente values(null, 'caique', '12352565', 'casado', 'rua adreas', 129, 'casa', 'barroca', 'belo horizonte', 'mg', '313256540');
select * from cliente;
select id, nome, rg, estado_civil from cliente;
select  nome ,logradouro, numero, complemento, bairro, cidade, uf, cep from cliente;
create table conta
( id INT NOT NULL auto_increment primary key,
agencia_codigo int,
numero int,
cliente_cpf BIGINT,
data_abertura DATE,
saldo_atual DOUBLE,
data_saldo TIMESTAMP,
cliente_id int,
foreign key (cliente_id) references cliente (id)
);
insert into conta values(null, '1', '1', '1', '2024/01/1', '1000', '01/01', null);
insert into conta values(null, '2', '2', '2', '2024/02/01', '2000', '02/01', null);
insert into conta values(null, '3', '3', '3', '2024/03/01', '3000', '03/01', null);
insert into conta values(null, '4', '4', '4', '2024/04/01', '4000', '04/01', null);
insert into conta values(null, '5', '5', '5', '2024/05/01', '5000', '05/01', null);
insert into conta values(null, '6', '6', '6', '2024/06/01', '6000', '06/01', null);
insert into conta values(null, '7', '7', '7', '2024/07/01', '7000', '07/01', null);
insert into conta values(null, '8', '8', '8', '2024/08/01', '8000', '08/01', null);
insert into conta values(null, '9', '9', '9', '2024/09/01', '9000', '09/01', null);
insert into conta values(null, '10', '10', '10', '2024/10/01', '10000', '10/01', null);
select *from conta;
select numero, saldo_atual from conta;


create table movimento
( id INT NOT NULL auto_increment primary key,
dia DATE,
hora TIME,
tipo CHAR(1),
quantia DOUBLE,
conta_numero INT,
conta_id int,
funcionario_matricula BIGINT,
foreign key (conta_id) references conta (id));
insert into movimento values(null, '2024/01/01', '13:01', 'c', '1000', '11', '10','01');
insert into movimento values(null, '2024/01/02', '13:02', 'c', '1000', '12', '11','02');
insert into movimento values(null, '2024/01/03', '13:03', 'c', '1000', '13', '12','03');
insert into movimento values(null, '2024/01/04', '13:04', 'c', '1000', '14', '13','04');
insert into movimento values(null, '2024/01/05', '13:05', 'c', '1000', '15', '14','05');
insert into movimento values(null, '2024/01/06', '13:06', 'c', '1000', '16', '15','06');
insert into movimento values(null, '2024/01/07', '13:07', 'c', '1000', '17', '16','07');
insert into movimento values(null, '2024/01/08', '13:08', 'c', '1000', '18', '17','08');
insert into movimento values(null, '2024/01/09', '13:09', 'c', '1000', '19', '18','09');
insert into movimento values(null, '2024/01/10', '13:10', 'c', '1000', '20', '19','10');
select * from movimento;
select dia, tipo from movimento;

create table tel_cliente
( id INT NOT NULL auto_increment primary key,
telefone CHAR(14),
tipo CHAR(1),
movimento_id int,
foreign key (movimento_id) references movimento (id));
insert into tel_cliente values(null, '123', 'c', '1');
insert into tel_cliente values(null, '1234', 'c', '2');
insert into tel_cliente values(null, '12345', 'c', '3');
insert into tel_cliente values(null, '123456', 'c', '4');
insert into tel_cliente values(null, '1234567', 'c', '5');
insert into tel_cliente values(null, '123321', 'c', '6');
insert into tel_cliente values(null, '1233211', 'c', '7');
insert into tel_cliente values(null, '12332112', 'c', '8');
insert into tel_cliente values(null, '123321123', 'c', '9');
insert into tel_cliente values(null, '1233211234', 'c', '10');
select *from tel_cliente;
select telefone, tipo from tel_cliente;


create table agencia (
codigo INT NOT NULL auto_increment,
nome VARCHAR(20) not null,
gerente VARCHAR(20) not null,
logradouro VARCHAR(20),
numero SMALLINT,
complemento VARCHAR(20),
bairro VARCHAR(20),
cidade VARCHAR(20),
uf VARCHAR(20),
cep VARCHAR(20),
PRIMARY KEY (codigo));
insert into agencia values(null, 'alexandre', 'marco',   'rua julita', 629, 'bloco 13', 'santa terezinha', 'belo horizonte', 'mg', '31360040');
insert into agencia values(null, 'julia', 'marco', 'rua marcia', 625, 'bloco 11', 'santa barreirio', 'belo horizonte', 'mg', '31362040');
insert into agencia values(null, 'mateus','marco',  'rua maria', 689, 'bloco 17', 'santa efigenia', 'belo horizonte', 'mg', '31360560');
insert into agencia values(null, 'nicole','marco',   'rua jupter', 859, 'bloco 15', 'marrocos', 'belo horizonte', 'mg', '31526040');
insert into agencia values(null, 'andre', 'marco', 'rua marte', 663, 'bloco 80', 'contagem', 'belo horizonte', 'mg', '31365240');
insert into agencia values(null, 'marcia','marco',  'rua anatel', 569, 'bloco 20', 'alegria', 'belo horizonte', 'mg', '319632040');
insert into agencia values(null, 'vinicius', 'marco', 'rua mario', 158, 'casa', 'ressaca', 'belo horizonte', 'mg', '38529040');
insert into agencia values(null, 'kaka', 'marco', 'rua antonio', 255, 'casa', 'santa terezinha', 'belo horizonte', 'mg', '52890040');
insert into agencia values(null, 'nabila','marco', 'rua julieta', 455, 'casa', 'santa maria', 'belo horizonte', 'mg', '31456240');
insert into agencia values(null, 'caique','marco',  'rua adreas', 129, 'casa', 'barroca', 'belo horizonte', 'mg', '313256540');
select * from agencia;
select codigo, nome, logradouro, numero, complemento, bairro, cidade, uf, cep from agencia;
select nome, gerente from agencia;

create table funcionario
( id INT not NULL auto_increment primary key,
nome VARCHAR(20),
cargo VARCHAR(20),
estado_civil VARCHAR(20),
logradouro VARCHAR(20),
numero SMALLINT,
complemento VARCHAR(20),
bairro VARCHAR(20),
cidade VARCHAR(20),
uf VARCHAR(20),
cep VARCHAR(20),
agencia_codigo INT,
foreign key (agencia_codigo) references agencia (codigo));
insert into funcionario values(null, 'alexandre', 'gerente', 'casado', 'rua julita', 629, 'bloco 13', 'santa terezinha', 'belo horizonte', 'mg', '31360040','1');
insert into funcionario values(null, 'julia', 'coordenador', 'casado', 'rua marcia', 625, 'bloco 11', 'santa barreirio', 'belo horizonte', 'mg', '31362040','2');
insert into funcionario values(null, 'mateus', 'supervisor', 'casado', 'rua maria', 689, 'bloco 17', 'santa efigenia', 'belo horizonte', 'mg', '31360560','3');
insert into funcionario values(null, 'nicole', 'gerente', 'solteira', 'rua jupter', 859, 'bloco 15', 'marrocos', 'belo horizonte', 'mg', '31526040','4');
insert into funcionario values(null, 'andre', 'segurança', 'casado', 'rua marte', 663, 'bloco 80', 'contagem', 'belo horizonte', 'mg', '31365240','5');
insert into funcionario values(null, 'marcia', 'caixa', 'solteira', 'rua anatel', 569, 'bloco 20', 'alegria', 'belo horizonte', 'mg', '319632040','6');
insert into funcionario values(null, 'vinicius', 'advogado', 'casado', 'rua mario', 158, 'casa', 'ressaca', 'belo horizonte', 'mg', '38529040','7');
insert into funcionario values(null, 'kaka', 'gerente', 'casado', 'rua antonio', 255, 'casa', 'santa terezinha', 'belo horizonte', 'mg', '52890040','8');
insert into funcionario values(null, 'nabila', 'consultora', 'casado', 'rua julieta', 455, 'casa', 'santa maria', 'belo horizonte', 'mg', '31456240','9');
insert into funcionario values(null, 'caique', 'bancário', 'casado', 'rua adreas', 129, 'casa', 'barroca', 'belo horizonte', 'mg', '313256540','10');
select * from funcionario;
select nome, estado_civil from funcionario;


