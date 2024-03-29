CREATE TYPE cost_type AS 
	ENUM ('отечественные товары/услуги', 'импортные товары/услуги',
	'транспортные наценки', 'торговые наценки', 'налоги',
	'оплата труда работников', 'другие налоги на производство',
	'другие субсидии на производство', 'потребление основного капитала',
	'чистая прибыль и смешанный доход');

CREATE TABLE industries (
	id_industries int GENERATED ALWAYS AS IDENTITY,
	name_industries varchar(120),
	
	CONSTRAINT pk_industries PRIMARY KEY (id_industries)
);

CREATE TABLE costs_release (
	id_industries int NOT NULL,
	type_costs cost_type, 
	U1 numeric, U2 numeric, U3 numeric, U4 numeric, U5 numeric,
	U6 numeric, U7 numeric, U8 numeric, U9 numeric, U10 numeric,
	U11 numeric, U12 numeric, U13 numeric, U14 numeric, U15 numeric,
	U16 numeric, U17 numeric, U18 numeric, U19 numeric,

	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

INSERT INTO industries (name_industries) VALUES
('Сельское лесное и рыбное хозяйство'),
('Горнодобывающая промышленность'),
('Обрабатывающая промышленность'),
('Снабжение электроэнергией, газом, паром, гор. водой и кондиционированным воздухом'),
('Водоснабжение; сбор, обработка и удаление отходов, деятельность по ликвидации загрязнений'),
('Строительство'),
('Оптовая и розничная торговля; ремонт автомобилей и мотоциклов'),
('Транспортная деятельность, складирование, почтовая и курьерская деятельность'),
('Услуги по временному проживанию и питанию'),
('Информация и связь'),
('Финансовая и страховая деятельность'),
('Операции с недвижимым имуществом'),
('Профессиональная, научная и техническая деятельность'),
('Деятельность в сфере административных и вспомогательных услуг'),
('Государственное управление'),
('Образование'),
('Здравоохранение и социальные услуги'),
('Творчество, спорт, развлечение и отдых'),
('Предоставление прочих видов услуг'),
('Валовая добавленная стоимость в основных ценах');

INSERT INTO costs_release VALUES
(1, 'отечественные товары/услуги', 7028668, 119, 10163815, 277529, 498, 48530, 35846, 2499, 1952, 245, 5306, 8789, 1849, 11661, 53961, 3143, 31789, 7833, 79745),
(2, 'отечественные товары/услуги', 436, 4951, 433271, 1133, 659, 119286, 138, 18761, 13, 18, 0, 2218, 188, 737, 437, 0, 61, 1536, 83),
(3, 'отечественные товары/услуги', 3994744, 131753, 18585144, 454949, 241355, 4232324, 2404501, 1339999, 632034, 353106, 1044691, 771495, 801274, 341360, 983230, 863772, 1081872, 161676, 363751),
(4, 'отечественные товары/услуги', 170976, 99122, 3241433, 556887, 227129, 210620, 523261, 505937, 70786, 173106, 381722, 571153, 118601, 221059, 120648, 73176, 152175, 79955, 67838),
(5, 'отечественные товары/услуги', 3499, 6165, 490602, 57431, 243635, 21802, 26501, 15659, 11672, 6886, 4120, 23001, 6663, 8967, 116534, 12498, 47002, 7064, 16028),
(6, 'отечественные товары/услуги', 23617, 91842, 145840, 67309, 2777, 9823, 41893, 67079, 3523, 13456, 1723, 362504, 7210, 3409, 14639, 1558, 19515, 5436, 1157),
(7, 'отечественные товары/услуги', 75179, 5057, 323093, 12413, 9479, 53925, 42523, 99874, 1487, 9639, 1206, 4442, 7002, 4949, 385, 644, 2216, 1215, 1116),
(8, 'отечественные товары/услуги', 154047, 37905, 553788, 11375, 7892, 488528, 961240, 733943, 4697, 54755, 1395, 10070, 34518, 13802, 51085, 11636, 40621, 11777, 1293),
(9, 'отечественные товары/услуги', 7209, 233, 88337, 7357, 1179, 95471, 17335, 119753, 1421, 31029, 436, 3040, 15653, 2895, 1589, 1401, 3184, 7152, 265),
(10, 'отечественные товары/услуги', 36173, 7770, 457393, 21187, 7162, 102974, 842029, 177281, 28825, 618067, 30274, 30433, 69243, 20558, 31601, 10580, 17110, 39778, 3883),
(11, 'отечественные товары/услуги', 275828, 13302, 1005074, 178404, 31571, 182008, 1402952, 341732, 27117, 453030, 18201, 144228, 99685, 15472, 74289, 57728, 84629, 53820, 12284),
(12, 'отечественные товары/услуги', 5721, 364, 212750, 3171, 1222, 44178, 1518385, 775538, 34019, 363623, 17488, 17729, 37950, 12464, 3416, 12719, 11037, 51929, 6881),
(13, 'отечественные товары/услуги', 40530, 21498, 858072, 42647, 9862, 118957, 651430, 44779, 23466, 119971, 7303, 10798, 125215, 7969, 7637, 4938, 8952, 21641, 5096),
(14, 'отечественные товары/услуги', 23856, 5439, 464963, 91711, 24650, 157642, 377651, 155799, 14651, 89732, 3846, 172422, 29351, 16794, 15377, 4810, 9323, 13403, 4429),
(15, 'отечественные товары/услуги', 21, 2, 132, 3, 0, 0, 103, 29, 0, 66, 0, 4, 27, 8, 0, 1, 0, 2, 0),
(16, 'отечественные товары/услуги', 444, 148, 5743, 1423, 191, 2500, 1519, 4222, 71, 1984, 39, 341, 1113, 109, 254, 106, 1378, 47, 26),
(17, 'отечественные товары/услуги', 3581, 176, 23867, 6336, 1008, 6604, 7381, 20447, 970, 1060, 28, 411, 657, 533, 414, 266, 1709, 616, 202),
(18, 'отечественные товары/услуги', 331, 91, 517, 62, 3, 45, 1857, 99, 219, 537, 208, 453, 288, 707, 2540, 2439, 101, 7504, 507),
(19, 'отечественные товары/услуги', 4495, 1439, 44220, 5049, 1147, 10929, 44076, 12394, 2728, 26340, 1805, 2635, 6605, 1218, 1974, 1326, 5357, 5255, 3047),
(1, 'импортные товары/услуги', 672321, 0, 1543490, 0, 0, 3993, 74, 0, 4521, 0, 0, 0, 0, 19939, 21778, 1878, 18422, 2931, 300),
(2, 'импортные товары/услуги', 127741, 51811, 11651038, 3720202, 1015, 144072, 9610, 216607, 693, 386, 173, 4482, 1815, 5870, 9407, 544, 31525, 2703, 3994),
(3, 'импортные товары/услуги', 1767148, 30957, 16572333, 152417, 45784, 3217891, 1377749, 574140, 291769, 78799, 207783, 493584, 198992, 74054, 159051, 105143, 866838, 35407, 73341),
(4, 'импортные товары/услуги', 1036, 783, 20955, 2021, 1844, 1287, 3645, 3781, 461, 1107, 2665, 3208, 681, 1113, 574, 415, 934, 516, 308),
(5, 'импортные товары/услуги', 0, 0, 804787, 0, 131012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'импортные товары/услуги', 7512, 1688, 93653, 1045, 1204, 4663, 3559, 8394, 126, 807, 110, 379, 605, 447, 38, 61, 208, 112, 100),
(8, 'импортные товары/услуги', 717, 245, 5231, 149, 32, 2355, 7403, 273225, 33, 891, 24, 53, 502, 129, 1502, 498, 881, 378, 6),
(9, 'импортные товары/услуги', 563, 44, 17707, 1589, 236, 14912, 3041, 8335, 77, 5423, 92, 183, 3198, 222, 389, 120, 312, 1184, 50),
(10, 'импортные товары/услуги', 12300, 2721, 149276, 7625, 2358, 39280, 286396, 64655, 10479, 232711, 12037, 11738, 26846, 7102, 12722, 4700, 6916, 14477, 1323),
(11, 'импортные товары/услуги', 34496, 1632, 131097, 25040, 4311, 25139, 190517, 44219, 3903, 57958, 2407, 17413, 13354, 2175, 9047, 7138, 10738, 7359, 1593),
(12, 'импортные товары/услуги', 359, 20, 13529, 219, 80, 2889, 96223, 49071, 2211, 22971, 1195, 1136, 2511, 797, 239, 897, 778, 3646, 459),
(13, 'импортные товары/услуги', 9711, 9927, 428514, 16599, 3230, 44515, 363320, 17234, 15162, 57553, 4654, 4761, 31571, 2858, 3475, 2604, 5441, 16469, 1383),
(14, 'импортные товары/услуги', 2568, 114, 48468, 1185, 724, 49264, 38944, 39796, 1603, 17865, 137, 1281, 1806, 996, 163, 731, 1117, 1777, 711),
(15, 'импортные товары/услуги', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'импортные товары/услуги', 540, 180, 6895, 1717, 232, 2978, 1825, 5069, 86, 2372, 50, 410, 1358, 139, 319, 133, 1724, 58, 32),
(18, 'импортные товары/услуги', 0, 0, 0, 0, 0, 0, 62, 0, 0, 415, 0, 0, 104, 0, 442, 664, 0, 22716, 0),
(19, 'импортные товары/услуги', 213, 64, 1257, 178, 48, 499, 1752, 489, 119, 1088, 111, 121, 287, 57, 34, 25, 90, 229, 164),
(1, 'транспортные наценки', 26183, 1, 41988, 3158, 6, 569, 127, 23, 21, 0, 16, 33, 5, 117, 287, 24, 205, 50, 256),
(2, 'транспортные наценки', 278, 320, 36792, 2227, 43, 16595, 14, 1757, 9, 2, 0, 155, 14, 80, 34, 0, 21, 109, 9),
(3, 'транспортные наценки', 49723, 1457, 382098, 5056, 2583, 378697, 29539, 19425, 5943, 7186, 14758, 28785, 9083, 5159, 9813, 5739, 22957, 2417, 4285),
(5, 'транспортные наценки', 28, 11, 14341, 43, 4728, 209, 173, 72, 51, 27, 36, 84, 30, 33, 366, 58, 129, 30, 58),
(1, 'торговые наценки', 100693, 0, 152574, 976, 2, 223, 463, 16, 90, 1, 70, 110, 23, 394, 948, 57, 668, 140, 1060),
(2, 'торговые наценки', 4937, 844, 426939, 145080, 49, 4549, 376, 8599, 27, 16, 6, 207, 73, 237, 374, 21, 1231, 129, 157),
(3, 'торговые наценки', 702662, 17822, 3064190, 59946, 28311, 865266, 576772, 293076, 32274, 79351, 190783, 133637, 98540, 45623, 94730, 41323, 177871, 17658, 50701),
(5, 'торговые наценки', 10, 4, 5170, 16, 1704, 75, 63, 26, 18, 10, 13, 30, 10, 12, 132, 21, 47, 11, 21),
(1, 'налоги', -21127, 3, 140110, 4908, 23, 2279, -413, 74, 283, 5, 355, 212, 176, 1905, 7352, 506, 4848, 912, 8114),
(2, 'налоги', -957, 1137, 352263, 142546, 80, 12662, 306, 7435, 46, 11, 26, 277, 203, 552, 1725, 94, 5130, 463, 209),
(3, 'налоги', -133161, 8900, 995057, 21949, 7208, 449316, 119159, 97486, 40289, 9619, 181162, 51843, 72041, 34579, 169576, 129635, 200697, 23632, 53129),
(4, 'налоги', -19165, 2883, 42314, 7727, 11490, 8619, 4575, 4973, 2843, 2112, 35988, 14729, 6713, 10878, 15820, 9418, 18571, 7782, 1887),
(5, 'налоги', -1566, 81, 30595, 671, -958, 937, 251, 206, 389, 137, 425, 400, 214, 237, 12313, 1395, 4764, 589, 382),
(6, 'налоги', 148, 506, 1866, 1201, 54, 286, 553, 1028, 122, 113, 146, -100893, 450, 237, 1772, 185, 2179, 464, 46),
(7, 'налоги', -4317, 406, 26890, 494, 349, 3608, 1407, 3772, 92, 275, 154, 226, 514, 557, 64, 105, 341, 169, 111),
(8, 'налоги', -2446, 592, 13850, 277, 139, 26805, 16702, 18285, 219, 1080, 137, 372, 2807, 1301, 9852, 2060, 6836, 1529, 49),
(9, 'налоги', 179, 8, 1875, 191, 18, 4050, 317, 1091, -975, 491, 40, 79, 1135, 97, 229, 177, 410, 654, 13),
(10, 'налоги', 1008, 133, 12260, 803, 215, 8020, 17535, 10173, 1834, 10033, 4577, 1502, 4392, 2951, 6347, 2233, 3304, 7154, 259),
(11, 'налоги', -22802, 59, 5960, 1343, 369, 3444, 6822, 2314, 490, 809, 797, 1735, 3152, 472, 4314, 3290, 4515, 2816, 201),
(12, 'налоги', 171, 14, 4124, 71, 39, 2055, 25783, 11469, 1464, 4458, 1724, 395, 2430, 514, 508, 1678, 1417, 6397, 271),
(13, 'налоги', -4301, 884, 48967, 1903, 336, 9680, 37324, 3072, 3945, 6542, 1360, 1018, 662, 891, 820, 923, 2357, 5954, 461),
(14, 'налоги', 317, 103, 9321, 507, 400, 10191, 7178, 4387, 587, 2178, 252, 3098, 1349, 420, 1227, 533, 948, 1168, 193),
(16, 'налоги', 5, 1, 25, 9, 1, 41, 7, 30, 1, 6, 1, 3, 22, 3, 12, 5, 66, 2, 0),
(17, 'налоги', 20, 1, 58, 26, 3, 64, 18, 79, 8, 0, 0, 2, 11, 8, 12, 7, 46, 11, 2),
(18, 'налоги', 4, 1, 3, 0, 0, 0, 22, 1, 4, 15, 8, 8, 6, 17, 202, 212, 6, -4380, 7),
(19, 'налоги', 200, 39, 1336, 181, 40, 671, 1275, 606, 158, 666, 222, 123, 510, 99, 280, 186, 721, 694, -42),
(20, 'оплата труда работников', 4798003, 331165, 15134074, 1953155, 588577, 4786483, 8483864, 4423824, 912510, 7407711, 1849891, 826808, 2844007, 1164180, 4969215, 5462872, 5313642, 995153, 772497),
(20, 'другие налоги на производство', 43851, 100366, 1122449, 246274, 52599, 119249, 186446, 263284, 19297, 103345, 3448, 56877, 49907, 15391, 2864, 3464, 3456, 7493, 7628),
(20, 'другие субсидии на производство', -242273, -738, -449575, -92461, 0, -81148, -455, -41491, 0, -4239, 0, -95, -273, -140, 0, 0, -183, -173, -23),
(20, 'потребление основного капитала', 1408327, 362795, 3980398, 1343797, 231128, 488081, 897689, 2335327, 150653, 763884, 216416, 3150264, 319447, 193316, 609807, 360432, 598519, 208964, 48574),
(20, 'чистая прибыль и смешанный доход', 4588241, 528, 12382822, 803716, 103488, 3432577, 4730838, 934853, -50881, 2341066, 1932316, 5130119, 993426, 601341, 359, 338885, 53097, 27302, 392961);

CREATE OR REPLACE FUNCTION change_Uj(varchar, varchar, numeric) RETURNS varchar AS
$BODY$BEGIN
	EXECUTE '
	UPDATE '||$1||'                
	SET '||$2||' = '||$2||'/'||$3||';';
	RETURN 'ok';
END;$BODY$
LANGUAGE 'plpgsql' VOLATILE;

CREATE TYPE U_sum_name AS (Uj numeric, Uj_name varchar);

CREATE OR REPLACE FUNCTION table_indexing() RETURNS varchar AS $$
DECLARE
	sum_U1 numeric = (SELECT sum(U1) FROM costs_release);
	sum_U2 numeric = (SELECT sum(U2) FROM costs_release);
	sum_U3 numeric = (SELECT sum(U3) FROM costs_release);
	sum_U4 numeric = (SELECT sum(U4) FROM costs_release);
	sum_U5 numeric = (SELECT sum(U5) FROM costs_release);
	sum_U6 numeric = (SELECT sum(U6) FROM costs_release);
	sum_U7 numeric = (SELECT sum(U7) FROM costs_release);
	sum_U8 numeric = (SELECT sum(U8) FROM costs_release);
	sum_U9 numeric = (SELECT sum(U9) FROM costs_release);
	sum_U10 numeric = (SELECT sum(U10) FROM costs_release);
	sum_U11 numeric = (SELECT sum(U11) FROM costs_release);
	sum_U12 numeric = (SELECT sum(U12) FROM costs_release);
	sum_U13 numeric = (SELECT sum(U13) FROM costs_release);
	sum_U14 numeric = (SELECT sum(U14) FROM costs_release);
	sum_U15 numeric = (SELECT sum(U15) FROM costs_release);
	sum_U16 numeric = (SELECT sum(U16) FROM costs_release);
	sum_U17 numeric = (SELECT sum(U17) FROM costs_release);
	sum_U18 numeric = (SELECT sum(U18) FROM costs_release);
	sum_U19 numeric = (SELECT sum(U19) FROM costs_release);
	arrayUj U_sum_name[] = ARRAY[(sum_U1, 'U1'), (sum_U2, 'U2'), (sum_U3, 'U3'), (sum_U4, 'U4'),
		(sum_U5, 'U5'), (sum_U6, 'U6'), (sum_U7, 'U7'), (sum_U8, 'U8'), (sum_U9, 'U9'), 
		(sum_U10, 'U10'), (sum_U11, 'U11'), (sum_U12, 'U12'), (sum_U13, 'U13'), 
		(sum_U14, 'U14'), (sum_U15, 'U15'), (sum_U16, 'U16'), (sum_U17, 'U17'), 
		(sum_U18, 'U18'), (sum_U19, 'U19')];
	sum_Uj numeric;
	Uj_name text;
BEGIN
	CREATE TABLE costs_release_index AS TABLE costs_release;
	FOREACH sum_Uj, Uj_name IN ARRAY arrayUj
	LOOP
		PERFORM change_Uj('costs_release_index', Uj_name, sum_Uj);
	END LOOP; 
	RETURN 'Table name: costs_release_index';
END; 
$$ LANGUAGE PLPGSQL;

SELECT table_indexing();

CREATE OR REPLACE FUNCTION shok_price_industry
(IN type_costs_v varchar, IN id_industries_v integer, IN index_price numeric)
RETURNS TABLE(iu1 numeric, iu2 numeric, iu3 numeric, iu4 numeric, iu5 numeric, iu6 numeric, iu7 numeric, iu8 numeric, iu9 numeric, iu10 numeric,
				   iu11 numeric, iu12 numeric, iu13 numeric, iu14 numeric, iu15 numeric, iu16 numeric, iu17 numeric, iu18 numeric, iu19 numeric) AS $$
BEGIN
	DROP TABLE IF EXISTS temporarily;
	CREATE TABLE temporarily AS TABLE costs_release_index;
IF id_industries_v = 0 THEN -- 0 it's all industries
	UPDATE temporarily
	SET u1 = u1*index_price, u2 = u2*index_price, u3 = u3*index_price,
		u4 = u4*index_price, u5 = u5*index_price, u6 = u6*index_price,
		u7 = u7*index_price, u8 = u8*index_price, u9 = u9*index_price,
		u10 = u10*index_price, u11 = u11*index_price, u12 = u12*index_price,
		u13 = u13*index_price, u14 = u14*index_price, u15 = u15*index_price,
		u16 = u16*index_price, u17 = u17*index_price, u18 = u18*index_price,
		u19 = u19*index_price
	WHERE type_costs = type_costs_v::cost_type;
ELSE
	UPDATE temporarily
	SET u1 = u1*index_price, u2 = u2*index_price, u3 = u3*index_price,
		u4 = u4*index_price, u5 = u5*index_price, u6 = u6*index_price,
		u7 = u7*index_price, u8 = u8*index_price, u9 = u9*index_price,
		u10 = u10*index_price, u11 = u11*index_price, u12 = u12*index_price,
		u13 = u13*index_price, u14 = u14*index_price, u15 = u15*index_price,
		u16 = u16*index_price, u17 = u17*index_price, u18 = u18*index_price,
		u19 = u19*index_price
	WHERE type_costs = type_costs_v::cost_type AND "id_industries" = id_industries_v;
END IF;
	RETURN QUERY
	SELECT sum(u1) AS iu1, sum(u2) AS iu2, sum(u3) AS iu3,
		sum(u4) AS iu4, sum(u5) AS iu5, sum(u6) AS iu6,
		sum(u7) AS iu7, sum(u8) AS u8, sum(u9) AS u9,
		sum(u10) AS iu10, sum(u11) AS iu11, sum(u12) AS iu12,
		sum(u13) AS iu13, sum(u14) AS iu14, sum(u15) AS iu15,
		sum(u16) AS iu16, sum(u17) AS iu17, sum(u18) AS iu18,
		sum(u19) AS iu19
	FROM temporarily;
	DROP TABLE IF EXISTS temporarily;
END;
$$ LANGUAGE PLPGSQL;

CREATE TYPE ipk AS ENUM ('ipp', 'ipc', 'ipi');

CREATE TABLE weight_deflator (
	id_industries int NOT NULL,
	weight_ipk ipk, x numeric, y numeric, r numeric, s numeric, t numeric,
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

INSERT INTO weight_deflator VALUES
(1, 'ipc', 4119971, 1311398, 19983, 455709, 132803),
(2, 'ipc', 298, 262552, 413, 10271, 42128),
(3, 'ipc', 14040864, 11383346, 195160, 9403415, 7669518),
(4, 'ipc', 2388205, 2762, 0, 0, -118340),
(5, 'ipc', 669834, 0, 2232, 805, 3509),
(6, 'ipc', 138649, 0, 0, 0, -47359),
(7, 'ipc', 511048, 1500, 0, 0, 60409),
(8, 'ipc', 1980268, 137842, 0, 0, -173090),
(9, 'ipc', 775990, 655840, 0, 0, 269430),
(10, 'ipc', 3219019, 92233, 0, 4308, 754335),
(11, 'ipc', 1543044, 0, 0, 0, 893),
(12, 'ipc', 8706189, 32482, 0, 0, -16242),
(13, 'ipc', 275124, 1833, 0, 0, 38152),
(14, 'ipc', 738755, 38726, 0, 0, 39814),
(15, 'ipc', 902595, 0, 0, 0, 0),
(16, 'ipc', 996171, 131123, 0, 0, 10969),
(17, 'ipc', 1285098, 10178, 0, 0, 20665),
(18, 'ipc', 1021392, 14771, 0, 1212, -42571),
(19, 'ipc', 932302, 1699, 0, 0, 39518),
(1, 'ipi', 2978854, 531821, 12515, 229898, 51468),
(2, 'ipi', 773664, 207668, 143236, 194251, 118726),
(3, 'ipi', 53373344, 17742028, 1510077, 7352675, 3594290),
(4, 'ipi', 274382, 0, 0, 0, 40085),
(5, 'ipi', 228115, 17472, 3482, 25355, 1495),
(6, 'ipi', 17794293, 2321852, 0, 0, 1795087),
(7, 'ipi', 119568, 0, 0, 0, 16418),
(8, 'ipi', 8092722, 0, 0, 0, 259821),
(9, 'ipi', 341337, 0, 0, 0, 61434),
(10, 'ipi', 7615740, 366787, 0, 0, 112629),
(11, 'ipi', 171958, 0, 0, 0, 1749),
(12, 'ipi', 136958, 0, 0, 0, 11736),
(13, 'ipi', 3342480, 40, 0, 0, 71566),
(14, 'ipi', 262229, 0, 0, 0, 40514),
(15, 'ipi', 24973, 0, 0, 0, 0),
(16, 'ipi', 202751, 0, 0, 0, 208),
(17, 'ipi', 155195, 0, 0, 0, 2699),
(18, 'ipi', 73120, 242, 0, 0, 3400),
(19, 'ipi', 27053, 25, 0, 0, 3093);

CREATE OR REPLACE FUNCTION take_ipc_weight(integer, varchar) RETURNS numeric AS $$
	SELECT u1 + u2 + u3 + u4 + u5 + u6 + u7 + u8 + u9 + 
	u10 + u11 + u12 + u13 + u14 + u15 + u16 + u17 + u18 + u19
	FROM costs_release
	WHERE "id_industries" = $1 AND type_costs = $2::cost_type;
$$ LANGUAGE SQL;
	
CREATE OR REPLACE FUNCTION insert_ipc_weight_industrie
(id_industrie integer) RETURNS varchar AS $$
DECLARE 
	value_x numeric = (SELECT take_ipc_weight(id_industrie, 'отечественные товары/услуги'));
	value_y numeric = (SELECT take_ipc_weight(id_industrie, 'импортные товары/услуги'));
	value_r numeric = (SELECT take_ipc_weight(id_industrie, 'транспортные наценки'));
	value_s numeric = (SELECT take_ipc_weight(id_industrie, 'торговые наценки'));
	value_t numeric = (SELECT take_ipc_weight(id_industrie, 'налоги'));
BEGIN
	INSERT INTO weight_deflator VALUES
	(id_industrie, 'ipp', value_x, value_y, value_r, value_s, value_t);
RETURN 'ok';
END;
$$ LANGUAGE PLPGSQL;

CREATE OR REPLACE FUNCTION insert_ipc() RETURNS varchar AS $$
BEGIN
	FOR i IN 1..19
	LOOP
		PERFORM insert_ipc_weight_industrie(i);
	END LOOP;
	UPDATE weight_deflator SET x=0 WHERE x IS NULL;
	UPDATE weight_deflator SET y=0 WHERE y IS NULL;
	UPDATE weight_deflator SET r=0 WHERE r IS NULL;
	UPDATE weight_deflator SET s=0 WHERE s IS NULL;
	UPDATE weight_deflator SET t=0 WHERE t IS NULL;
	RETURN 'ok';
END;
$$ LANGUAGE PLPGSQL;

SELECT insert_ipc();

CREATE OR REPLACE FUNCTION take_k(ip_k varchar) RETURNS numeric AS $$
	SELECT sum(x + y + r + s + t)
	FROM weight_deflator
	WHERE "weight_ipk" = ip_k::ipk;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION change_weight(varchar, varchar, numeric, varchar) RETURNS varchar AS
$BODY$BEGIN
	EXECUTE '
	UPDATE '||$1||'                
	SET '||$2||' = '||$2||'/'||$3||'
	WHERE weight_ipk = '''||$4||''';';
RETURN 'ok';
END;$BODY$
LANGUAGE 'plpgsql' VOLATILE;

CREATE OR REPLACE FUNCTION weight_indexing() RETURNS varchar AS $$
DECLARE 
	total_p numeric = (SELECT take_k('ipp'));
	total_c numeric = (SELECT take_k('ipc'));
	total_i numeric = (SELECT take_k('ipi'));
	array_m varchar[] = ARRAY['x', 'y', 'r', 's', 't'];
	m_name varchar;
BEGIN
	CREATE TABLE weight_deflator_index AS TABLE weight_deflator;
	FOREACH m_name IN ARRAY array_m
	LOOP
		PERFORM change_weight('weight_deflator_index', m_name, total_p, 'ipp');
		PERFORM change_weight('weight_deflator_index', m_name, total_c, 'ipc');
		PERFORM change_weight('weight_deflator_index', m_name, total_i, 'ipi');
	END LOOP;
	RETURN 'Table name: weight_deflator_index';
END;
$$ LANGUAGE PLPGSQL;

SELECT weight_indexing();

CREATE OR REPLACE FUNCTION shok_price_deflator
(varchar, integer, numeric, varchar)
RETURNS TABLE(ipk numeric) AS
$BODY$BEGIN
	DROP TABLE IF EXISTS temporarily;
	CREATE TABLE temporarily AS TABLE weight_deflator_index;
IF $2 = 0 THEN -- 0 it's all industries
	EXECUTE '
	UPDATE temporarily
	SET '||$4||' = '||$4||'*'||$3||'
	WHERE weight_ipk = '''||$1||''';';
	RETURN QUERY
	SELECT sum(x+y+r+s+t)
	FROM temporarily
	WHERE weight_ipk = $1::ipk;
ELSE
	EXECUTE '
	UPDATE temporarily
	SET '||$4||' = '||$4||'*'||$3||'
	WHERE weight_ipk = '''||$1||''' AND "id_industries" = '''||$2||''';';
	RETURN QUERY
	SELECT sum(x+y+r+s+t)
	FROM temporarily
	WHERE weight_ipk = $1::ipk;
END IF;
	DROP TABLE IF EXISTS temporarily;
END;$BODY$
LANGUAGE 'plpgsql' VOLATILE;

CREATE OR REPLACE FUNCTION shok_price_deflator_vektor
(varchar, numeric, varchar)
RETURNS SETOF numeric AS $$
DECLARE
	v numeric;
BEGIN
	FOR i IN 1..19
	LOOP
		v = (SELECT shok_price_deflator($1, i, $2, $3));
		RETURN NEXT v;
	END LOOP;
END;
$$ LANGUAGE PLPGSQL;
