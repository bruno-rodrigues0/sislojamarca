drop database if exists sislojamarca;
create database sislojamarca;
use sislojamarca;

create table usuario(
    IDSuap VARCHAR(15) primary key,
    nome VARCHAR(100) not null,
    email VARCHAR(100) unique,
    senha VARCHAR(100),
    telefone VARCHAR(11),
    cpf VARCHAR(15) unique
);

create table fornecedor(
    IDFornecedor VARCHAR(15) primary key,
    nomeFornecedor VARCHAR(100) not null,
    email VARCHAR(100) unique,
    cpf VARCHAR(11) unique,
    cnpj VARCHAR(14) unique
);

create table marca(
    IDMarca INT AUTO_INCREMENT primary key,
    nomeMarca VARCHAR(255) not null unique,
    sigla varchar(10) not null unique,
    descriacao TEXT,
    dataCriacao DATE,
    contato VARCHAR(100),
    endereco VARCHAR(255),
    IDFornecedor VARCHAR(15),
    FOREIGN KEY (IDFornecedor)
    references fornecedor (IDFornecedor) 
);

create table produto(
    CBarra VARCHAR(13) primary key,
    titulo VARCHAR(255) not null,
    preco DECIMAL(10, 2),
    marca INT,
    tipo VARCHAR(11),
    detalhesProduto TEXT,
    tamanhos VARCHAR(11),
    IDSuap_produto VARCHAR(16),
    FOREIGN KEY (IDSuap_produto)
    references usuario (IDSuap),
    FOREIGN KEY (marca)
    references marca (IDMarca)
);

insert into usuario values
("20221GBI23I0010", "admin", "admin@gmail", "2ac9a6746aca543af8dff39894cfe8173afba21eb01c6fae33d52947222855ef", "77999999999", "00000000001");

insert into fornecedor values
("1", "Bruno", "bruno@gmail", "10079345654", "918230192380"),
("2", "NA", "na@gmail", "10079345655", "918230192381");

insert into marca values
(DEFAULT, "ESE", "ESE", "bla bla bla", "2020-09-09", "1923810", "Rua Oscar Alho, 600", "1"),
(DEFAULT, "Laboratoria", "LAB", "bla bla bla", "2020-09-09", "1923810", "Rua Oscar Alho, 601", "1"),
(DEFAULT, "Nova Era", "NE", "bla bla bla", "2020-09-09", "1923810", "Rua Oscar Alho, 602", "1");

insert into produto values 
("03192831290", "Moleton Nike", "120.00", 1, "Moleton", "bla bla bla", "P", "20221GBI23I0010");

select * from fornecedor;
select * from usuario;
select * from marca;
select * from produto;




