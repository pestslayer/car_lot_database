create table customer(
	customer_id SERIAL primary key,	
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	invoice_id VARCHAR(100),
	employee_id VARCHAR(100),
	serial_number VARCHAR(17),
	foreign key(invoice_id) references invoice(invoice_id),
	foreign KEY(employee_id) references sales_person(employee_id),
	foreign key(serial_number) references car(serial_number)
);

create table invoice(
	invoice_id VARCHAR(100) primary key,
	order_date DATE default current_date,
	sub_total NUMERIC(8,2),
	total numeric(10,8),
	employee_id VARCHAR(100),
foreign key(employee_id) references sales_person(employee_id)
);

create table sales_person(
	employee_id VARCHAR(100) primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

create table car(
	serial_number VARCHAR(17) primary key,
	make VARCHAR(100),
	model VARCHAR(100),
	year_ INTEGER,
	employee_id VARCHAR(100),
	foreign key(employee_id) references sales_person(employee_id)
	
);

create table mechanics(
mechanic_id VARCHAR(100) primary key,
first_name VARCHAR(100),
last_name VARCHAR(100)
);

create table service(
	service_id VARCHAR(100) primary key,
	serial_number VARCHAR(17),
	service VARCHAR(200),
	parts VARCHAR(200),
	invoice_id VARCHAR(100),
	mechanic_id VARCHAR(100),
	foreign key(invoice_id) references invoice(invoice_id)
);