create database LaunchMotor;

use LaunchMotor;

create table Cliente(
	idCliente int primary key auto_increment,
    nome varchar(60) not null,
    email varchar(60) not null,
    montadora varchar(15) not null,
    senha varchar(20) not null
);

create table motores(
	idMotor int auto_increment,
    nome varchar(45) not null,
    pistões int not null,
    valvulas int not null,
    turbinas int not null,
    bicos int not null,
    cilindros int not null,
    potencia int not null,
    torque int not null,
    fkCliente int,
    constraint fkCliente foreign key (fkCliente) references Cliente(idCLiente),
    constraint pkcomp primary key (idMotor, fkCliente)
);