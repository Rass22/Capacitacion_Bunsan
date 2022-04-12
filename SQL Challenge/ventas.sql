create table ventas(
	id int not null primary key,
	id_cliente int not null references users (id),
	id_producto int not null references products(id),
	cantidad int not null 
);