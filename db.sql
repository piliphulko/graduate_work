DROP TABLE IF EXISTS industries CASCADE;

CREATE TABLE industries (
	id_industries int GENERATED ALWAYS AS IDENTITY NOT NULL,
	name_industries varchar(120),
	
	CONSTRAINT pk_industries PRIMARY KEY (id_industries)
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
('Предоставление прочих видов услуг');

DROP TABLE IF EXISTS domestic_goods;

CREATE TABLE domestic_goods (
	id_industries int NOT NULL,
	supply_volume_industries_1 int DEFAULT 0,
	supply_volume_industries_2 int DEFAULT 0,
	supply_volume_industries_3 int DEFAULT 0,
	supply_volume_industries_4 int DEFAULT 0,
	supply_volume_industries_5 int DEFAULT 0,
	supply_volume_industries_6 int DEFAULT 0,
	supply_volume_industries_7 int DEFAULT 0,
	supply_volume_industries_8 int DEFAULT 0,
	supply_volume_industries_9 int DEFAULT 0,
	supply_volume_industries_10 int DEFAULT 0,
	supply_volume_industries_11 int DEFAULT 0,
	supply_volume_industries_12 int DEFAULT 0,
	supply_volume_industries_13 int DEFAULT 0,
	supply_volume_industries_14 int DEFAULT 0,
	supply_volume_industries_15 int DEFAULT 0,
	supply_volume_industries_16 int DEFAULT 0,
	supply_volume_industries_17 int DEFAULT 0,
	supply_volume_industries_18 int DEFAULT 0,
	supply_volume_industries_19 int DEFAULT 0,
	
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

DROP TABLE IF EXISTS imported_goods;

CREATE TABLE imported_goods (
	id_industries int NOT NULL,
	supply_volume_industries_1 int DEFAULT 0,
	supply_volume_industries_2 int DEFAULT 0,
	supply_volume_industries_3 int DEFAULT 0,
	supply_volume_industries_4 int DEFAULT 0,
	supply_volume_industries_5 int DEFAULT 0,
	supply_volume_industries_6 int DEFAULT 0,
	supply_volume_industries_7 int DEFAULT 0,
	supply_volume_industries_8 int DEFAULT 0,
	supply_volume_industries_9 int DEFAULT 0,
	supply_volume_industries_10 int DEFAULT 0,
	supply_volume_industries_11 int DEFAULT 0,
	supply_volume_industries_12 int DEFAULT 0,
	supply_volume_industries_13 int DEFAULT 0,
	supply_volume_industries_14 int DEFAULT 0,
	supply_volume_industries_15 int DEFAULT 0,
	supply_volume_industries_16 int DEFAULT 0,
	supply_volume_industries_17 int DEFAULT 0,
	supply_volume_industries_18 int DEFAULT 0,
	supply_volume_industries_19 int DEFAULT 0,
	
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

DROP TABLE IF EXISTS transport_margins;

CREATE TABLE transport_margins (
	id_industries int NOT NULL,
	supply_volume_industries_1 int DEFAULT 0,
	supply_volume_industries_2 int DEFAULT 0,
	supply_volume_industries_3 int DEFAULT 0,
	supply_volume_industries_4 int DEFAULT 0,
	supply_volume_industries_5 int DEFAULT 0,
	supply_volume_industries_6 int DEFAULT 0,
	supply_volume_industries_7 int DEFAULT 0,
	supply_volume_industries_8 int DEFAULT 0,
	supply_volume_industries_9 int DEFAULT 0,
	supply_volume_industries_10 int DEFAULT 0,
	supply_volume_industries_11 int DEFAULT 0,
	supply_volume_industries_12 int DEFAULT 0,
	supply_volume_industries_13 int DEFAULT 0,
	supply_volume_industries_14 int DEFAULT 0,
	supply_volume_industries_15 int DEFAULT 0,
	supply_volume_industries_16 int DEFAULT 0,
	supply_volume_industries_17 int DEFAULT 0,
	supply_volume_industries_18 int DEFAULT 0,
	supply_volume_industries_19 int DEFAULT 0,
	
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

DROP TABLE IF EXISTS trading_margins;

CREATE TABLE trading_margins (
	id_industries int NOT NULL,
	supply_volume_industries_1 int DEFAULT 0,
	supply_volume_industries_2 int DEFAULT 0,
	supply_volume_industries_3 int DEFAULT 0,
	supply_volume_industries_4 int DEFAULT 0,
	supply_volume_industries_5 int DEFAULT 0,
	supply_volume_industries_6 int DEFAULT 0,
	supply_volume_industries_7 int DEFAULT 0,
	supply_volume_industries_8 int DEFAULT 0,
	supply_volume_industries_9 int DEFAULT 0,
	supply_volume_industries_10 int DEFAULT 0,
	supply_volume_industries_11 int DEFAULT 0,
	supply_volume_industries_12 int DEFAULT 0,
	supply_volume_industries_13 int DEFAULT 0,
	supply_volume_industries_14 int DEFAULT 0,
	supply_volume_industries_15 int DEFAULT 0,
	supply_volume_industries_16 int DEFAULT 0,
	supply_volume_industries_17 int DEFAULT 0,
	supply_volume_industries_18 int DEFAULT 0,
	supply_volume_industries_19 int DEFAULT 0,
	
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

DROP TABLE IF EXISTS taxes;

CREATE TABLE taxes (
	id_industries int NOT NULL,
	supply_volume_industries_1 int,
	supply_volume_industries_2 int,
	supply_volume_industries_3 int,
	supply_volume_industries_4 int,
	supply_volume_industries_5 int,
	supply_volume_industries_6 int,
	supply_volume_industries_7 int,
	supply_volume_industries_8 int,
	supply_volume_industries_9 int,
	supply_volume_industries_10 int,
	supply_volume_industries_11 int,
	supply_volume_industries_12 int,
	supply_volume_industries_13 int,
	supply_volume_industries_14 int,
	supply_volume_industries_15 int,
	supply_volume_industries_16 int,
	supply_volume_industries_17 int,
	supply_volume_industries_18 int,
	supply_volume_industries_19 int,
	
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

INSERT INTO domestic_goods VALUES
(1, 7028668, 119, 10163815, 277529, 498, 48530, 35846, 2499, 1952, 245, 5306, 8789, 1849, 11661, 53961, 3143, 31789, 7833, 79745),
(2, 436, 4951, 433271, 1133, 659, 119286, 138, 18761, 13, 18, 0, 2218, 188, 737, 437, 0, 61, 1536, 83),
(3, 3994744, 131753, 18585144, 454949, 241355, 4232324, 2404501, 1339999, 632034, 353106, 1044691, 771495, 801274, 341360, 983230, 863772, 1081872, 161676, 363751),
(4, 170976, 99122, 3241433, 556887, 227129, 210620, 523261, 505937, 70786, 173106, 381722, 571153, 118601, 221059, 120648, 73176, 152175, 79955, 67838),
(5, 3499, 6165, 490602, 57431, 243635, 21802, 26501, 15659, 11672, 6886, 4120, 23001, 6663, 8967, 116534, 12498, 47002, 7064, 16028),
(6, 23617, 91842, 145840, 67309, 2777, 9823, 41893, 67079, 3523, 13456, 1723, 362504, 7210, 3409, 14639, 1558, 19515, 5436, 1157),
(7, 75179, 5057, 323093, 12413, 9479, 53925, 42523, 99874, 1487, 9639, 1206, 4442, 7002, 4949, 385, 644, 2216, 1215, 1116),
(8, 154047, 37905, 553788, 11375, 7892, 488528, 961240, 733943, 4697, 54755, 1395, 10070, 34518, 13802, 51085, 11636, 40621, 11777, 1293),
(9, 7209, 233, 88337, 7357, 1179, 95471, 17335, 119753, 1421, 31029, 436, 3040, 15653, 2895, 1589, 1401, 3184, 7152, 265),
(10, 36173, 7770, 457393, 21187, 7162, 102974, 842029, 177281, 28825, 618067, 30274, 30433, 69243, 20558, 31601, 10580, 17110, 39778, 3883),
(11, 275828, 13302, 1005074, 178404, 31571, 182008, 1402952, 341732, 27117, 453030, 18201, 144228, 99685, 15472, 74289, 57728, 84629, 53820, 12284),
(12, 5721, 364, 212750, 3171, 1222, 44178, 1518385, 775538, 34019, 363623, 17488, 17729, 37950, 12464, 3416, 12719, 11037, 51929, 6881),
(13, 40530, 21498, 858072, 42647, 9862, 118957, 651430, 44779, 23466, 119971, 7303, 10798, 125215, 7969, 7637, 4938, 8952, 21641, 5096),
(14, 23856, 5439, 464963, 91711, 24650, 157642, 377651, 155799, 14651, 89732, 3846, 172422, 29351, 16794, 15377, 4810, 9323, 13403, 4429),
(15, 21, 2, 132, 3, 0, 0, 103, 29, 0, 66, 0, 4, 27, 8, 0, 1, 0, 2, 0),
(16, 444, 148, 5743, 1423, 191, 2500, 1519, 4222, 71, 1984, 39, 341, 1113, 109, 254, 106, 1378, 47, 26),
(17, 3581, 176, 23867, 6336, 1008, 6604, 7381, 20447, 970, 1060, 28, 411, 657, 533, 414, 266, 1709, 616, 202),
(18, 331, 91, 517, 62, 3, 45, 1857, 99, 219, 537, 208, 453, 288, 707, 2540, 2439, 101, 7504, 507),
(19, 4495, 1439, 44220, 5049, 1147, 10929, 44076, 12394, 2728, 26340, 1805, 2635, 6605, 1218, 1974, 1326, 5357, 5255, 3047);

INSERT INTO imported_goods VALUES
(1, 672321, 0, 1543490, 0, 0, 3993, 74, 0, 4521, 0, 0, 0, 0, 19939, 21778, 1878, 18422, 2931, 300),
(2, 127741, 51811, 11651038, 3720202, 1015, 144072, 9610, 216607, 693, 386, 173, 4482, 1815, 5870, 9407, 544, 31525, 2703, 3994),
(3, 1767148, 30957, 16572333, 152417, 45784, 3217891, 1377749, 574140, 291769, 78799, 207783, 493584, 198992, 74054, 159051, 105143, 866838, 35407, 73341),
(4, 1036, 783, 20955, 2021, 1844, 1287, 3645, 3781, 461, 1107, 2665, 3208, 681, 1113, 574, 415, 934, 516, 308),
(5, 0, 0, 804787, 0, 131012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 7512, 1688, 93653, 1045, 1204, 4663, 3559, 8394, 126, 807, 110, 379, 605, 447, 38, 61, 208, 112, 100),
(8, 717, 245, 5231, 149, 32, 2355, 7403, 273225, 33, 891, 24, 53, 502, 129, 1502, 498, 881, 378, 6),
(9, 563, 44, 17707, 1589, 236, 14912, 3041, 8335, 77, 5423, 92, 183, 3198, 222, 389, 120, 312, 1184, 50),
(10, 12300, 2721, 149276, 7625, 2358, 39280, 286396, 64655, 10479, 232711, 12037, 11738, 26846, 7102, 12722, 4700, 6916, 14477, 1323),
(11, 34496, 1632, 131097, 25040, 4311, 25139, 190517, 44219, 3903, 57958, 2407, 17413, 13354, 2175, 9047, 7138, 10738, 7359, 1593),
(12, 359, 20, 13529, 219, 80, 2889, 96223, 49071, 2211, 22971, 1195, 1136, 2511, 797, 239, 897, 778, 3646, 459),
(13, 9711, 9927, 428514, 16599, 3230, 44515, 363320, 17234, 15162, 57553, 4654, 4761, 31571, 2858, 3475, 2604, 5441, 16469, 1383),
(14, 2568, 114, 48468, 1185, 724, 49264, 38944, 39796, 1603, 17865, 137, 1281, 1806, 996, 163, 731, 1117, 1777, 711),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 540, 180, 6895, 1717, 232, 2978, 1825, 5069, 86, 2372, 50, 410, 1358, 139, 319, 133, 1724, 58, 32),
(18, 0, 0, 0, 0, 0, 0, 62, 0, 0, 415, 0, 0, 104, 0, 442, 664, 0, 22716, 0),
(19, 213, 64, 1257, 178, 48, 499, 1752, 489, 119, 1088, 111, 121, 287, 57, 34, 25, 90, 229, 164);

INSERT INTO transport_margins VALUES
(1, 26183, 1, 41988, 3158, 6, 569, 127, 23, 21, 0, 16, 33, 5, 117, 287, 24, 205, 50, 256),
(2, 278, 320, 36792, 2227, 43, 16595, 14, 1757, 9, 2, 0, 155, 14, 80, 34, 0, 21, 109, 9),
(3, 49723, 1457, 382098, 5056, 2583, 378697, 29539, 19425, 5943, 7186, 14758, 28785, 9083, 5159, 9813, 5739, 22957, 2417, 4285),
(5, 28, 11, 14341, 43, 4728, 209, 173, 72, 51, 27, 36, 84, 30, 33, 366, 58, 129, 30, 58);

INSERT INTO trading_margins VALUES
(1, 100693, 0, 152574, 976, 2, 223, 463, 16, 90, 1, 70, 110, 23, 394, 948, 57, 668, 140, 1060),
(2, 4937, 844, 426939, 145080, 49, 4549, 376, 8599, 27, 16, 6, 207, 73, 237, 374, 21, 1231, 129, 157),
(3, 702662, 17822, 3064190, 59946, 28311, 865266, 576772, 293076, 32274, 79351, 190783, 133637, 98540, 45623, 94730, 41323, 177871, 17658, 50701),
(5, 10, 4, 5170, 16, 1704, 75, 63, 26, 18, 10, 13, 30, 10, 12, 132, 21, 47, 11, 21);

INSERT INTO taxes VALUES
(1, -21127, 3, 140110, 4908, 23, 2279, -413, 74, 283, 5, 355, 212, 176, 1905, 7352, 506, 4848, 912, 8114),
(2, -957, 1137, 352263, 142546, 80, 12662, 306, 7435, 46, 11, 26, 277, 203, 552, 1725, 94, 5130, 463, 209),
(3, -133161, 8900, 995057, 21949, 7208, 449316, 119159, 97486, 40289, 9619, 181162, 51843, 72041, 34579, 169576, 129635, 200697, 23632, 53129),
(4, -19165, 2883, 42314, 7727, 11490, 8619, 4575, 4973, 2843, 2112, 35988, 14729, 6713, 10878, 15820, 9418, 18571, 7782, 1887),
(5, -1566, 81, 30595, 671, -958, 937, 251, 206, 389, 137, 425, 400, 214, 237, 12313, 1395, 4764, 589, 382),
(6, 148, 506, 1866, 1201, 54, 286, 553, 1028, 122, 113, 146, -100893, 450, 237, 1772, 185, 2179, 464, 46),
(7, -4317, 406, 26890, 494, 349, 3608, 1407, 3772, 92, 275, 154, 226, 514, 557, 64, 105, 341, 169, 111),
(8, -2446, 592, 13850, 277, 139, 26805, 16702, 18285, 219, 1080, 137, 372, 2807, 1301, 9852, 2060, 6836, 1529, 49),
(9, 179, 8, 1875, 191, 18, 4050, 317, 1091, -975, 491, 40, 79, 1135, 97, 229, 177, 410, 654, 13),
(10, 1008, 133, 12260, 803, 215, 8020, 17535, 10173, 1834, 10033, 4577, 1502, 4392, 2951, 6347, 2233, 3304, 7154, 259),
(11, -22802, 59, 5960, 1343, 369, 3444, 6822, 2314, 490, 809, 797, 1735, 3152, 472, 4314, 3290, 4515, 2816, 201),
(12, 171, 14, 4124, 71, 39, 2055, 25783, 11469, 1464, 4458, 1724, 395, 2430, 514, 508, 1678, 1417, 6397, 271),
(13, -4301, 884, 48967, 1903, 336, 9680, 37324, 3072, 3945, 6542, 1360, 1018, 662, 891, 820, 923, 2357, 5954, 461),
(14, 317, 103, 9321, 507, 400, 10191, 7178, 4387, 587, 2178, 252, 3098, 1349, 420, 1227, 533, 948, 1168, 193),
(16, 5, 1, 25, 9, 1, 41, 7, 30, 1, 6, 1, 3, 22, 3, 12, 5, 66, 2, 0),
(17, 20, 1, 58, 26, 3, 64, 18, 79, 8, 0, 0, 2, 11, 8, 12, 7, 46, 11, 2),
(18, 4, 1, 3, 0, 0, 0, 22, 1, 4, 15, 8, 8, 6, 17, 202, 212, 6, -4380, 7),
(19, 200, 39, 1336, 181, 40, 671, 1275, 606, 158, 666, 222, 123, 510, 99, 280, 186, 721, 694, -42);
