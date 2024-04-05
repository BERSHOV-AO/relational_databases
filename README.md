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

-- ----------------------------------product-------------------------------------

insert into devices.product (maker, model, type) values ('HP','HP Omen 17', 'laptop');
insert into devices.product (maker, model, type) values ('HP','HP ProBook 450', 'laptop');
insert into devices.product (maker, model, type) values ('Acer','Acer Aspire S3', 'laptop');
insert into devices.product (maker, model, type) values ('ASUS','ASUS ExpertBook B1502CGA', 'laptop');
insert into devices.product (maker, model, type) values ('Dell','Dell Inspiron G', 'laptop');
insert into devices.product (maker, model, type) values ('ASUS','ASUS K53E', 'laptop');
insert into devices.product (maker, model, type) values ('ASUS','ASUS VivoBook X540', 'laptop');


insert into devices.product (maker, model, type) values ('Acer','Acer Aspire TC-1660', 'pc');
insert into devices.product (maker, model, type) values ('Acer','Acer Predator Orion 3000', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP MINI ENTRY', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP Atlas H420', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP Atlas H350', 'pc');
insert into devices.product (maker, model, type) values ('DEXP','DEXP Atlas 1', 'pc');
insert into devices.product (maker, model, type) values ('HP','HP Desktop Pro 300', 'pc');
insert into devices.product (maker, model, type) values ('HP','HP Desktop Pro 290', 'pc');
insert into devices.product (maker, model, type) values ('HP','HP Vectra', 'pc');
insert into devices.product (maker, model, type) values ('Dell','Dell OptiPlex Intel Pentium 2', 'pc');


insert into devices.product (maker, model, type) values ('Pantum','Pantum P2518', 'printer');
insert into devices.product (maker, model, type) values ('Pantum','Pantum P3900', 'printer');
insert into devices.product (maker, model, type) values ('SAMSUNG ','SAMSUNG COLOR LASER SL-C4010ND', 'printer');
insert into devices.product (maker, model, type) values ('HP','HP Color LaserJet 150nw', 'printer');
insert into devices.product (maker, model, type) values ('HP','HP Color LaserJet Enterprise M554dn', 'printer');
insert into devices.product (maker, model, type) values ('Canon','Canon i-Sensys LBP633', 'printer');

-- --------------------------------laptop-------------------------------------------

insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(101,'HP Omen 17',2300,250,1000,17,700);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(102,'HP ProBook 450',2300,1200,250,15,1300);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(103,'Acer Aspire S3',900,250,80,15,150);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(104,'ASUS ExpertBook B1502CGA',3100,1200,480,15,2100);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(105,'Dell Inspiron G',150,80,60,15,30);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(106,'ASUS K53E',120,80,80,15,42);
insert into devices.laptop (code, model, speed, ram, hd, screen, price) values
(107,'ASUS VivoBook X540',500,120,180,19,110);

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
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(207,'Dell OptiPlex Intel Pentium 2',300,150,120,'12x',50);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(208,'HP Desktop Pro 290',2800,500,250,'24x',1200);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(209,'Acer Predator Orion 3000',4900,1500,2000,'32x',5100);
insert into devices.pc (code, model, speed, ram, hd, cd, price) values
(210,'HP Vectra',7777,10,15,'1x',5555);

-- ---------------------------------printer------------------------------------------

insert into devices.printer (code, model, color, type, price) values
(301,'Pantum P2518','w','Laser',50);
insert into devices.printer (code, model, color, type, price) values
(302,'SAMSUNG COLOR LASER SL-C4010ND','w','Laser',90);
insert into devices.printer (code, model, color, type, price) values
(303,'HP Color LaserJet 150nw','c','Laser',300);
insert into devices.printer (code, model, color, type, price) values
(304,'Canon i-Sensys LBP633','c','Laser',420);
insert into devices.printer (code, model, color, type, price) values
(305,'HP Color LaserJet Enterprise M554dn','c','Laser',740);
insert into devices.printer (code, model, color, type, price) values
(306,'Pantum P3900','c','Laser',75);




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

--task8
select distinct maker from devices.product where devices.product.type in ('pc');

--task9
select distinct maker from devices.product p, devices.pc c where p.model = c.model and c.speed >= 450;

--task10
select model, price from devices.printer where price = (select max(price) from devices.printer);

--task11
select round(avg(speed)) as speed_avg_pc from devices.pc;

--task12
select round(avg(speed)) as speed_avg_lap from devices.laptop where price::numeric > 1000;

--task13
select round(avg(speed)) as speed_avg_pc_maker from devices.product, devices.pc where devices.product.model = devices.pc.model and maker = 'DEXP';

--task14
select speed, round(avg(price::numeric)) as price_avg from devices.pc group by speed;

--task15
select hd from devices.pc group by hd having count(*) >= 2;

--task16
select max(code), min(code), speed, ram from devices.pc group by speed, ram having count(*) >= 2;

--task17
select distinct type, devices.laptop.model, speed from devices.product, devices.laptop where type = 'laptop' AND
speed < (select min(speed) FROM devices.pc);

--task18
select maker, min(price) as price_min from devices.product p, devices.printer r  where p.model = r.model and r.color = 'c' group by maker;

--task19
select maker, round(avg(screen)) as screen_avg from devices.product p, devices.laptop l where p.model = l.model group by maker;

--task20
select maker, count(model) count from devices.product where product.type = 'pc' group by maker having count(*) >= 3;

--task21
select maker, max(price) as pr_max from devices.product p, devices.pc c where p.model = c.model group by maker;

--task22
select speed, round(avg(price::numeric)) as price_avq from devices.pc group by speed having speed > 600;

--task23
select distinct maker FROM devices.product where type = 'laptop' and maker in
(select maker from devices.product where type = 'pc' and maker in
(select maker from devices.pc c, devices.laptop l WHERE c.speed >=750 and l.speed >=750));

--task24
select distinct code from devices.laptop l where l.price = (select max(price) from devices.laptop)
union
select code FROM devices.pc c where c.price = (select max(price) from devices.pc)
union
select code from devices.printer p where p.price = (select max(price) from devices.printer);

--task25
select distinct maker from devices.product where type = 'printer' and maker in
(select maker from devices.product JOIN devices.pc on devices.product.model = devices.pc.model where type = 'pc' and
ram = (select min(ram) from devices.pc) and devices.pc.speed = (select max(speed) from devices.pc));



