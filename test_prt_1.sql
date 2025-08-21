create table brands(
id serial primary key,
name_brand text not null unique
);

create table resolutions(
id serial primary key,
resolution text not null unique
);

create table panels_tv(
id serial primary key,
panel_tv text not null unique
);

create table televisios (
tv_id serial primary key,
catalog_number bigint not null,
brand_id int not null,
model text not null,
screen_size text not null,
resolution_id int not null,
price integer not null,
stock_quantity integer not null,
release_year int not null,
smart_tv text not null check (smart_tv in ('yes','no')),
os text default null,
panel_tv_id int not null,
foreign key(brand_id) references brands(id),
foreign key(resolution_id) references resolutions(id),
foreign key(panel_tv_id) references panels_tv(id)
);


insert into brands(name_brand)
values
	('Samsung'),
	('LG'),
	('Sony');

insert into resolutions(resolution)
values
	('4K'),
	('8K'),
	('Full HD');

insert into panels_tv(panel_tv)
values
	('OLED'),
	('QLED'),
	('LED');

insert into televisios(catalog_number, brand_id, model, screen_size, resolution_id, price, stock_quantity, release_year, smart_tv, os, panel_tv_id)
values
	(2233445, 1, 'mechanical', '98 inches', 2, 2500, 10, 1999,  'yes', 'windows', 1),
	(78527845, 2, 'electronic', '100 inches', 1, 3000, 45, 2000, 'yes', 'mec', 3);

insert into televisios(catalog_number, brand_id, model, screen_size, resolution_id, price, stock_quantity, release_year, smart_tv, os, panel_tv_id)
values
	(676576, 1, 'mechanical', '98 inches', 2, 2500, 10, 2020, 'no',null, 1);






























