use BikeStores
create table production.trainer(
id int identity (1,1) primary key,
first_name varchar (50) Not Null,
Last_name varchar (50) Not Null,
Phone varchar (25) not null,
email Varchar(255)not null unique,
poke_id int not null,
foreign key (poke_id)
		references production.pokemon (id)
		on delete cascade on update cascade
);