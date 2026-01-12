create table Students(
	student_id int primary key,
	name varchar(45) not null,
	dob varchar(200) not null
);

create table Courses(
	course_id int primary key,
	course_name varchar(255) not null,
	credits int not null
);

create table Enrollments(
	enrollment_id int primary key,
	student_id int references Students(student_id),
	course_id int references Courses(course_id),
	grade varchar(1) check(grade in('A','B','C','D','F'))
);