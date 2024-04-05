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

--insert into devices.product (maker, model, type) values
--('HP','HP Omen 17', 'laptop'),
--('Acer','Acer Aspire TC-1660', 'pc'),
--('DEXP','DEXP MINI ENTRY', 'pc'),
--('Pantum','Pantum P2518', 'printer');

insert into devices.product (maker, model, type) values ('HP','HP Omen 17', 'laptop');
insert into devices.product (maker, model, type) values ('HP','HP ProBook 450', 'laptop');
insert into devices.product (maker, model, type) values ('Acer','Acer Aspire S3', 'laptop');


insert into devices.product (maker, model, type) values ('Acer','Acer Aspire TC-1660', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP MINI ENTRY', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP Atlas H420', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP Atlas H350', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP Atlas 1', 'pc');
insert into devices.product (maker, model, type) values ('HP','HP Desktop Pro 300', 'pc');


insert into devices.product (maker, model, type) values ('Pantum','Pantum P2518', 'printer');
insert into devices.product (maker, model, type) values ('SAMSUNG ','SAMSUNG COLOR LASER SL-C4010ND', 'printer');
insert into devices.product (maker, model, type) values ('HP','HP Color LaserJet 150nw', 'printer');

-- --------------------------------laptop-------------------------------------------

insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(101,'HP Omen 17',2300,250,1000,17,700);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(102,'HP ProBook 450',2300,1200,250,15,1300);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(103,'Acer Aspire S3',900,250,80,15,150);

-- ---------------------------------pc---------------------------------------------

insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(201,'Acer Aspire TC-1660',2700,900,2000,'4x',4200);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(202,'DEXP MINI ENTRY',2300,250,250,'32x',400);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(203,'DEXP Atlas H420',2300,250,250,'24x',350);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(204,'DEXP Atlas H350',2300,1000,300,'12x',700);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(205,'DEXP Atlas 1',1800,900,250,'12x',550);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(206,'HP Desktop Pro 300',3500,900,800,'24x',1700);

-- ---------------------------------printer------------------------------------------

insert into devices.printer (code, model, color, type, price) values
(301,'Pantum P2518','w','Laser',50);
insert into devices.printer (code, model, color, type, price) values
(302,'SAMSUNG COLOR LASER SL-C4010ND','w','Laser',90);
insert into devices.printer (code, model, color, type, price) values
(303,'HP Color LaserJet 150nw','c','Laser',300);


--print tables ----------------------------------------------------------------------

select * from devices.product;

select * from devices.laptop;

select * from devices.pc;

select * from devices.printer;

-- deleted

delete from  devices.printer where code = 303;

-- -------------------------------tasks------------------------------------------------

--task1
select model, speed, hd from devices.pc where price::numeric < 500;

--task2
select distinct maker from devices.product where type = 'printer';

--task3
select model, ram, screen from devices.laptop where price::numeric > 1000

--task4
select * from devices.printer where color = 'c';

--task5
select model, speed, hd from devices.pc where cd in ('12x', '24x') and price::numeric < 600;

--task6
select maker, speed from devices.product p, devices.laptop l where p.model = l.model and l.hd >= 100;

--task7
select p.model, price from devices.product p, devices.laptop l where p.model = l.model and p.maker = 'HP'
union
select p.model, price from devices.product p, devices.pc c where p.model = c.model and p.maker = 'HP'
union
select p.model, price from devices.product p, devices.printer pr where p.model = pr.model and p.maker = 'HP';



