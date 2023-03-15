-- производственное потребление - отрасли 1-19; 0 - по всем отраслям
-- 'отечественные товары/услуги'
-- 'импортные товары/услуги'
-- 'транспортные наценки'
-- 'торговые наценки'
-- 'налоги'
-- добавленная стоимость не по отраслям - 0, шок цен происходит всегда по всем столбцам
-- 'оплата труда работников'
-- 'другие налоги на производство'
-- 'другие субсидии на производство'
-- 'потребление основного капитала'
-- 'чистая прибыль и смешанный доход'

SELECT * FROM shok_price_industry('отечественные товары/услуги', 0, 2);

SELECT * FROM shok_price_industry('отечественные товары/услуги', 3, 2);

SELECT * FROM shok_price_industry('импортные товары/услуги', 0, 2);

SELECT * FROM shok_price_industry('транспортные наценки', 0, 2);

SELECT * FROM shok_price_industry('торговые наценки', 0, 2);

SELECT * FROM shok_price_industry('налоги', 0, 2);

SELECT * FROM shok_price_industry('оплата труда работников', 0, 2);

SELECT * FROM shok_price_industry('другие налоги на производство', 0, 2);

SELECT * FROM shok_price_industry('другие субсидии на производство', 0, 2);

SELECT * FROM shok_price_industry('потребление основного капитала', 0, 2);

SELECT * FROM shok_price_industry('чистая прибыль и смешанный доход', 0, 2);

-- отрасли 1-19; 0 это по всем отраслям
-- 'x' = отечественные товары/услуги
-- 'y' = импортные товары/услуги
-- 'r' = транспортные наценки
-- 's' = торговые наценки
-- 't' = налоги

SELECT * FROM shok_price_deflator('ipp', 0, 2, 'x');

SELECT * FROM shok_price_deflator('ipc', 0, 2, 'x');

SELECT * FROM shok_price_deflator('ipi', 0, 2, 'x');

SELECT * FROM shok_price_deflator('ipp', 0, 2, 'y');

SELECT * FROM shok_price_deflator('ipc', 0, 2, 'y');

SELECT * FROM shok_price_deflator('ipi', 0, 2, 'y');

SELECT * FROM shok_price_deflator('ipp', 0, 2, 'r');

SELECT * FROM shok_price_deflator('ipc', 0, 2, 'r');

SELECT * FROM shok_price_deflator('ipi', 0, 2, 'r');

SELECT * FROM shok_price_deflator('ipp', 0, 2, 's');

SELECT * FROM shok_price_deflator('ipc', 0, 2, 's');

SELECT * FROM shok_price_deflator('ipi', 0, 2, 's');

SELECT * FROM shok_price_deflator('ipp', 0, 2, 't');

SELECT * FROM shok_price_deflator('ipc', 0, 2, 't');

SELECT * FROM shok_price_deflator('ipi', 0, 2, 't');

SELECT * FROM shok_price_deflator('ipp', 3, 2, 'x');

SELECT * FROM shok_price_deflator('ipc', 3, 2, 'x');

SELECT * FROM shok_price_deflator('ipi', 3, 2, 'x');
