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
