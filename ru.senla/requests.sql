-- -------------------------------tasks------------------------------------------------

--task1
select model, speed, hd from devices.pc where price::numeric < 500;

--task2
select distinct maker from devices.product where type = 'printer';

--task3
select model, ram, screen from devices.laptop where price::numeric > 1000

--task4
select * from devices.printer where color = 'y';

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
select round(avg(speed)) as speed_avg_pc_maker from devices.product,
devices.pc where devices.product.model = devices.pc.model and maker = 'DEXP';

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
select maker, min(price) as price_min from devices.product p,
devices.printer r  where p.model = r.model and r.color = 'y' group by maker;

--task19
select maker, round(avg(screen)) as screen_avg from devices.product p,
devices.laptop l where p.model = l.model group by maker;

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