insert into customer(
	customer_id,
	first_name,
	last_name,
	invoice_id,
	employee_id,
	serial_number
) values (
	1234,
	'Ryan',
	'McMorris',
	'123456',
	1,
	'A123456789BC1234Q'
);

insert into customer(
	customer_id,
	first_name,
	last_name,
	invoice_id,
	employee_id,
	serial_number
) values (
	1235,
	'Whitney',
	'McMorris',
	'123457',
	2,
	'B333456789AC1234R'
);
select * from customer;

insert into car(
	serial_number,
	make, 
	model,
	year_
)values (
	'B333456789AC1234R',
	'Raptor',
	'Ford',
	'2024'
);

insert into car(
	serial_number,
	make, 
	model,
	year_
)values (
	'A123456789BC1234Q',
	'Limited Longhorn',
	'Ram',
	'2024'
);
 select * from car;
insert into invoice(
	invoice_id,
	sub_total,
	total,
	employee_id
) values (
	'123456',
	90000.00,
	97500.00,
	1
);

insert into mechanics (
	employee_id,
	first_name,
	last_name
)values (
	12345,
	'Eric',
	'Baze'
);

insert into service(
	service_id,
	serial_number,
	service,
	parts,
	invoice_id,
	mechanic_id 
)values(
	5555,
	'B323456789BC1234R',
	'Head Lights',
	'Head light assembly',
	'1238',
	1
);

insert into service(
	service_id,
	serial_number,
	service,
	parts,
	invoice_id,
	mechanic_id 
)values(
	5556,
	'123586POK412HY125',
	'Shocks',
	'Shocks',
	'1239',
	2
);
insert into invoice(
	invoice_id,
	sub_total,
	total,
	employee_id
) values (
	'1238',
	100.00,
	108.00,
	1
	
);

insert into invoice(
	invoice_id,
	sub_total,
	total,
	employee_id
) values (
	'1239',
	200.00,
	216.00,
	2
);

insert into sales_person(
	employee_id,
	first_name,
	last_name
)values (
	1,
	'Sarah',
	'Nonya'
);

insert into sales_person(
	employee_id,
	first_name,
	last_name
)values (
	2,
	'Alexis',
	'Delreo'
);

insert into invoice(
	invoice_id,
	sub_total,
	total,
	employee_id
) values (
	'123457',
	50000.00,
	55000.00,
	2
);

select * from mechanics

insert into mechanics (
	employee_id,
	first_name,
	last_name
)values (
	12346,
	'Hayden',
	'Brat'
);

create or replace function add_customer(_customer_id INTEGER,_first_name VARCHAR(100),
_last_name VARCHAR(100),_invoice_id INTEGER,_employee_id INTEGER,_serial_number VARCHAR(100))
returns void
as $MAIN$ 
begin 
	insert into customer(customer_id,first_name,last_name,invoice_id,
	employee_id,serial_number)
	values(_customer_id,_first_name,_last_name,_invoice_id,
	_employee_id,_serial_number);
end;
$MAIN$
language plpgsql;

create or replace function add_invoice(_invoice_id INTEGER,_order_date TIMESTAMP without TIME zone,_sub_total numeric(20,2),
total NUMERIC(20,2), _employee_id integer)
returns void
as $MAIN$
begin 
	insert into invoice(invoice_id,order_date,sub_total,total,employee_id)
	values(_invoice_id,_order_date,_sub_total,_total,_employee_id);
end;
$MAIN$
language plpgsql;
end

create or replace function add_sales_person(_employee_id INTEGER,
_first_name VARCHAR(100),_last_name VARCHAR(100))
returns void
as $MAIN$
begin 
	insert into sales_person(employee_id,first_name,last_name)
	values(_employee_id,_first_name,_last_name);
end;
$MAIN$
language plpgsql;

select add_sales_person(3,'cheyenne','McMorris')
select * from sales_person
select * from service

