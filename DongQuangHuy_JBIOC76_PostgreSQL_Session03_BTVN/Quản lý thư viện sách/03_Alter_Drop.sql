--Alter table

--Them cot genre vao bang Books
alter table library.Books add column genre varchar(100);
--Doi ten available thanh is_available 
alter table library.Books rename column available to is_available;
--Xem lai bang Books
select * from library.Books;

--Xoa cot email khoi Members
alter table library.Members drop column email;
--Xem lai bang Members
select * from library.Members;

--Xoa bang OrderDetails khoi schema sales
drop table sales.OrderDetails;