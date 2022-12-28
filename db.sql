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
	supply_volume int,
	
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

DROP TABLE IF EXISTS imported_goods;

CREATE TABLE imported_goods (
	id_industries int NOT NULL,
	supply_volume int,
	
	CONSTRAINT fk_industries FOREIGN KEY (id_industries) REFERENCES industries(id_industries)
);

INSERT INTO domestic_goods VALUES
(1, 7028668),
(2, 436),
(3, 3994744),
(4, 170976),
(5, 3499),
(6, 23617),
(7, 75179),
(8, 154047),
(9, 7209),
(10, 36173),
(11, 275828),
(12, 5721),
(13, 40530),
(14, 23856),
(15, 21),
(16, 444),
(17, 3581),
(18, 331),
(19, 4495);

SELECT * FROM domestic_goods;
