### 1. Реляционные базы данных. iteration_11 ###

create schema if not exists devices;

create table if not exists devices.product (
maker varchar(10) not null,
model varchar(50) not null,
type varchar(50) not null,
primary key(model)
);

create table if not exists devices.laptop (
code int not null,
model varchar(50) not null,
speed smallint not null,
ram smallint not null,
hd real not null,
price money not null,
screen smallint not null,
primary key (code),
foreign key (model) references devices.product (model)
);

create table if not exists devices.pc (
code int not null,
model varchar(50) not null,
speed smallint not null,
ram smallint not null,
hd real not null,
cd varchar(10) not null,
price money not null,
primary key (code),
foreign key (model) references devices.product (model)
);

create table if not exists devices.printer (
code int not null,
model varchar(50) not null,
color char not null,
type varchar(10) not null,
price money not null,
primary key (code),
foreign key (model) references devices.product (model)
);

--********************************product***************************************

insert into devices.product (maker, model, type) values
('HP','HP Omen 17', 'laptop'),
('Acer','Acer Aspire TC-1660', 'pc'),
('DEXP','DEXP MINI ENTRY', 'pc'),
('Pantum','Pantum P2518', 'printer');

insert into devices.product (maker, model, type) values ('HP','HP Omen 17', 'laptop');
insert into devices.product (maker, model, type) values ('DEXP','DEXP MINI ENTRY', 'pc');
insert into devices.product (maker, model, type) values ('SAMSUNG ','SAMSUNG COLOR LASER SL-C4010ND', 'printer');

-- --------------------------------laptop-------------------------------------------

insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(101,'HP Omen 17',2300,250,1000,17,700);

-- ---------------------------------pc---------------------------------------------

insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(201,'Acer Aspire TC-1660',7000,5000,2000,'64x',4200);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(202,'DEXP MINI ENTRY',2300,250,250,'32x',400);

-- ---------------------------------printer------------------------------------------

insert into devices.printer (code, model, color, type, price) values
(301,'Pantum P2518','w','Laser',50);
insert into devices.printer (code, model, color, type, price) values
(302,'SAMSUNG COLOR LASER SL-C4010ND','w','Laser',90);

--***********************************************************************

--task1
select model, speed, hd from devices.pc where price::numeric < 500;

--task2
select distinct maker from devices.product where type = 'printer';

