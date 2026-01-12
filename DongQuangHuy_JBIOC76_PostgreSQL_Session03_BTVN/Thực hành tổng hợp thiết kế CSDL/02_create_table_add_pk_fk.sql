create table Departments(
	department_id int generated always as identity primary key,
	department_name varchar(100) not null
);

create table Employees(
	emp_id int generated always as identity primary key,
	name varchar(45) not null,
	dob varchar(100) not null,
	department_id int references Departments(department_id)
);

create table Projects(
	project_id int generated always as identity primary key,
	project_name varchar(45) not null,
	start_date date not null,
	end_date date not null
);

create table EmployeeProjects(
	emp_id int references Employees(emp_id),
	project_id int references Projects(project_id),
	primary key(emp_id, project_id)
);


