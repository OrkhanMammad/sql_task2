create database Company
use Company
create table Department
(
ID int identity primary key,
Name nvarchar(30) not null check(len(Name)>2)
)

create table Employees
(
ID int primary key,
Fullname nvarchar(30) not null check(len(Fullname)>3),
Salary money not null default(0) check(len(Salary)>=0),
DepartmentID int not null Foreign Key References Department(ID),
Email nvarchar(50) not null unique

)








create database Irshad
use Irshad
create table Brands
(
ID int identity primary key,
Name nvarchar(30) not null
)

create table Notebooks
(
ID int identity primary key,
Name nvarchar(30) not null,
Price money not null check(Price>0),
BrandID int not null foreign key references Brands(ID)
)



create table Phones
(
ID int identity primary key,
Name nvarchar(30) not null,
Price money not null check(Price>0),
BrandID int not null foreign key references Brands(ID)
)



select (Brands.Name+'   '+Notebooks.Name) as 'BrandName', Notebooks.Price from Notebooks join Brands on Notebooks.BrandID=Brands.ID
select (Brands.Name+'   '+Phones.Name) as 'BrandName',Phones.Price from Phones join Brands on Phones.BrandID=Brands.ID
select * from Notebooks where Price >2000 and Price<5000 or Price>5000
select * from Phones where Price>1000 and Price<1500 or Price>1500
