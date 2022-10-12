------UC1 create database for Address book----
create database Address_Book

use Address_Book

------UC2 create table-----
create table ADDRESS_BOOK
(
Id int identity(1,1) primary key,
FirstName varchar(20),
LastName varchar (20),
Address varchar(50),
City varchar(20),
State varchar (20),
Zip int,
PhoneNumber bigint,
Email varchar (50)
)

-----UC3 insert values into the table----
select * from ADDRESS_BOOK

insert into ADDRESS_BOOK(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
values('Payal', 'Sharma', '12street', 'Indore', 'Madhya Pradesh', 458441, 1234567890, 'abc@gmail.com'),
      ('Sonu' , 'Sharma', '13 streets',' Bhopal', 'MP', 450987, 9087654321, 'red@gmail.com'),
	  ('Aman', 'Mittal' , '14 streets', 'pune' , 'Maharashtra', 543677, 9865456789, 'aman123@gmail.com'),
	  ('Jesna', 'Mathew', 'streets', 'bombay', 'Maharashtra', 546789, 8907623444, 'jesna12@gmail.com')

-------UC4 Edit contact----
UPDATE ADDRESS_BOOK set City='Nasik' where FirstName= 'Jesna'

------UC5 delete contact by using Person FirstName--------
delete from Address_Book where FirstName= 'Aman'

-----UC6 Retrieve data into table--------
select FirstName, LastName, Address, City,State, Zip, PhoneNumber, Email from ADDRESS_BOOK where City= 'Indore'

------UC7 understand size of state and city-----
select COUNT(*) as StateCount, State from Address_Book group by State
Select COUNT(*) as CityCount, City from Address_Book group by City

-------UC8 Retrieve entries sorted alphabetically by person name-----
select * from Address_Book order by FirstName
 