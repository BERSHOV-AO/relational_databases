-- -------------------------------tasks------------------------------------------------

-- Task1. Найдите номер модели, скорость и размер жесткого диска для всех ПК
-- стоимостью менее 500 дол. Вывести: model, speed и hd.
select model, speed, hd from devices.pc where price::numeric < 500;

-- Task2. Найдите производителей принтеров. Вывести: maker.
select distinct maker from devices.product where type = 'printer';

-- Task3. Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
select model, ram, screen from devices.laptop where price::numeric > 1000

-- Task4. Найдите все записи таблицы Printer для цветных принтеров.
select * from devices.printer where color = 'y';

-- Task5. Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
select model, speed, hd from devices.pc where cd in ('12x', '24x') and price::numeric < 600;

-- Task6. Укажите производителя и скорость для тех ПК-блокнотов, которые имеют
-- жесткий диск объемом не менее 100 Гбайт.
select maker, speed from devices.product p, devices.laptop l where p.model = l.model and l.hd >= 100;

-- Task7. Найдите номера моделей и цены всех продуктов (любого типа), выпущенных производителем B (латинская буква).
select p.model, price from devices.product p, devices.laptop l where p.model = l.model and p.maker = 'HP'
union
select p.model, price from devices.product p, devices.pc c where p.model = c.model and p.maker = 'HP'
union
select p.model, price from devices.product p, devices.printer pr where p.model = pr.model and p.maker = 'HP';

-- Task8. Найдите производителя, выпускающего ПК, но не ПК-блокноты.
select distinct maker from devices.product where devices.product.type in ('pc');

-- Task9. Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker.
select distinct maker from devices.product p, devices.pc c where p.model = c.model and c.speed >= 450;

-- Task10. Найдите принтеры, имеющие самую высокую цену. Вывести: model, price.
select model, price from devices.printer where price = (select max(price) from devices.printer);

-- Task11. Найдите среднюю скорость ПК.
select round(avg(speed)) as speed_avg_pc from devices.pc;

-- Task12. Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
select round(avg(speed)) as speed_avg_lap from devices.laptop where price::numeric > 1000;

-- Task13. Найдите среднюю скорость ПК, выпущенных производителем A.
select round(avg(speed)) as speed_avg_pc_maker from devices.product,
devices.pc where devices.product.model = devices.pc.model and maker = 'DEXP';

-- Task14. Для каждого значения скорости найдите среднюю стоимость ПК с такой
-- же скоростью процессора. Вывести: скорость, средняя цена.
select speed, round(avg(price::numeric)) as price_avg from devices.pc group by speed;

-- Task15. Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD.
select hd from devices.pc group by hd having count(*) >= 2;

-- Task16. Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В
-- результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i),
-- Порядок вывода: модель с большим номером, модель с меньшим номером,
-- скорость и RAM.
select max(code), min(code), speed, ram from devices.pc group by speed, ram having count(*) >= 2;

-- Task17. Найдите модели ПК-блокнотов, скорость которых меньше скорости любого из ПК. Вывести: type, model, speed.
select distinct type, devices.laptop.model, speed from devices.product, devices.laptop where type = 'laptop' AND
        speed < (select min(speed) FROM devices.pc);

-- Task18. Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price.
select maker, min(price) as price_min from devices.product p,
devices.printer r  where p.model = r.model and r.color = 'y' group by maker;

-- Task19. Для каждого производителя найдите средний размер экрана выпускаемых
-- им ПК-блокнотов. Вывести: maker, средний размер экрана.
select maker, round(avg(screen)) as screen_avg from devices.product p,
devices.laptop l where p.model = l.model group by maker;

-- Task20. Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей.
select maker, count(model) count from devices.product where product.type = 'pc' group by maker having count(*) >= 3;

-- Task21. Найдите максимальную цену ПК, выпускаемых каждым производителем. Вывести: maker, максимальная цена.
select maker, max(price) as pr_max from devices.product p, devices.pc c where p.model = c.model group by maker;

-- Task22. Для каждого значения скорости ПК, превышающего 600 МГц, определите
-- среднюю цену ПК с такой же скоростью. Вывести: speed, средняя цена.
select speed, round(avg(price::numeric)) as price_avq from devices.pc group by speed having speed > 600;

-- Task23. Найдите производителей, которые производили бы как ПК со скоростью
-- не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
-- Вывести: Maker.
select distinct maker FROM devices.product where type = 'laptop' and maker in
(select maker from devices.product where type = 'pc' and maker in
(select maker from devices.pc c, devices.laptop l WHERE c.speed >=750 and l.speed >=750));

-- Task24. Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.
select distinct code from devices.laptop l where l.price = (select max(price) from devices.laptop)
union
select code FROM devices.pc c where c.price = (select max(price) from devices.pc)
union
select code from devices.printer p where p.price = (select max(price) from devices.printer);

-- Task25. Найдите производителей принтеров, которые производят ПК с
-- наименьшим объемом RAM и с самым быстрым процессором среди всех
-- ПК, имеющих наименьший объем RAM. Вывести: Maker.
select distinct maker from devices.product where type = 'printer' and maker in
(select maker from devices.product JOIN devices.pc on devices.product.model = devices.pc.model where type = 'pc' and
ram = (select min(ram) from devices.pc) and devices.pc.speed = (select max(speed) from devices.pc));