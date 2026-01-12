--schema library
create schema library;

drop table library.Books;
create table library.Books(
	book_id int primary key,
	title varchar(200) not null,
	author varchar(200) not null,
	published_year int not null,
	available boolean default 'TRUE'
);

create table library.Members(
	member_id int primary key,
	name varchar(45) not null,
	email varchar(255) unique not null,
	join_date date default now()
);
--schema sales
create schema sales;

create table sales.Prodec










