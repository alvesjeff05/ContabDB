create database contabfin
go

use contabfin
go

create table Clientes(
id_cliente int primary key identity(1,1),
nome_cliente varchar (255),
tipo_cliente varchar (255),
telefone_cliente int,
endereco_cliente varchar (255)
);

create table Servicos(
id_servico int primary key identity(1,1),
descricao_servico varchar (255),
taxa_servico decimal(10,2)
);

create table TransacoesFinanceiras(
id_transacao int primary key identity(1,1),
id_cliente int,
tipo_transacao varchar(255),
data_preparacao int,
valor_transicao decimal(10,2),
foreign key (id_cliente) references Clientes (id_cliente),
);

create table DeclaracoesFinanceiras(
id_declaracao int primary key identity(1,1),
id_cliente int,
tipo_declaracao varchar(255),
data_preparacao int,
conteudo_declaracao varchar (255),
foreign key (id_cliente) references Clientes (id_cliente)
);

create table Funcionarios(
id_funcionario int primary key identity(1,1),
nome_funcionario varchar(255),
cargo_funcionario varchar(255),
telefone_funcionario int,
departamento varchar(255)
);

insert into Clientes (nome_cliente, tipo_cliente, telefone_cliente, endereco_cliente)
values 
('Empresa A', 'Empresa', 123456789, 'Rua A, 123'),
('Empresa B', 'Empresa', 987654321, 'Rua B, 456'),
('Cliente C', 'Individual', 999888777, 'Rua C, 789');


insert into Servicos (descricao_servico, taxa_servico)
values 
('Preparação de Declarações Financeiras', 1000.00),
('Consultoria Tributária', 1500.00),
('Serviços de Folha de Pagamento', 1200.00);


insert into TransacoesFinanceiras (id_cliente, tipo_transacao, data_preparacao, valor_transicao)
values 
(1, 'Fatura', 20240210, 5000.00),
(2, 'Pagamento', 20240211, 3000.00),
(3, 'Fatura', 20240212, 2000.00);


insert into DeclaracoesFinanceiras (id_cliente, tipo_declaracao, data_preparacao, conteudo_declaracao)
values 
(1, 'Balanço', 20240201, 'Conteúdo da declaração para Empresa A'),
(2, 'Demonstração de Resultados', 20240202, 'Conteúdo da declaração para Empresa B'),
(3, 'Fluxo de Caixa', 20240203, 'Conteúdo da declaração para Cliente C');


insert into Funcionarios (nome_funcionario, cargo_funcionario, telefone_funcionario, departamento)
values 
('João', 'Contador', 111222333, 'Contabilidade'),
('Maria', 'Consultora Tributária', 444555666, 'Consultoria'),
('Pedro', 'Auditor', 777888999, 'Auditoria');
