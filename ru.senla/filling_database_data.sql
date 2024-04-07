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
    (303,'HP Color LaserJet 150nw','y','Laser',300);
insert into devices.printer (code, model, color, type, price) values
    (304,'Canon i-Sensys LBP633','y','Laser',420);
insert into devices.printer (code, model, color, type, price) values
    (305,'HP Color LaserJet Enterprise M554dn','y','Laser',740);
insert into devices.printer (code, model, color, type, price) values
    (306,'Pantum P3900','y','Laser',75);