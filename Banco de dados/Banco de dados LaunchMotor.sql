create database LaunchMotor;

use LaunchMotor;

create table Cliente(
	idCliente int primary key auto_increment,
    nome varchar(60) not null,
    email varchar(60) not null,
    montadora varchar(15) not null,
    senha varchar(20) not null
);

insert into Cliente values
	(null, 'Gustavo Marchi', 'ghmoliveira312003@gmail.com', 'Honda', '31122003');

create table Motores(
	idMotor int auto_increment,
    nome varchar(45),
    pistoes int,
    valvulas int,
    turbinas int,
    bicos int,
    cilindros int,
    potencia int,
    torque int,
    fk_cliente int,
    constraint fk_cliente foreign key (fk_cliente) references Cliente(idCliente),
    constraint pkComp primary key (Idmotor, fk_cliente)
);

insert into motores values
	(null, '2jz-gte', 6, 24, 2, 12, 6, 210, 63,1),
    (null, 'ej25', 4, 16, 1, 8, 4, 220, 45,1),
    (null, 'DOHC2000', 4, 8, 1, 8, 4, 180, 42,1),
    (null, 'vr38', 6, 18, 2, 12, 6, 250, 70,1),
    (null, 'hp-x', 8, 12, 0, 16, 8, 230, 70,1),
    (null, 'wankel', 1, 4, 1, 2, 1, 200, 46,1);

create table Carro(
	idCarro int primary key auto_increment,
    nome varchar(45),
    ano char(4),
    fk_motor int,
    constraint fk_motor foreign key (fk_motor) references Motores(idMotor)
);

insert into Carro values
	(null, 'Supra', '1994', 1),
    (null, 'WRX STI', '2022',2),
    (null, 'Lancer Evolution','2014',3),
    (null, 'GTR','2015',4),
    (null, 'NSX','1995',5),
    (null, 'RX7','1997',6);