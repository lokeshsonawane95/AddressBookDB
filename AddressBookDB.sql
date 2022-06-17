-- Welcome to Address Book Problem

-- UC1 Create AddressBookDB Database
create database AddressBookDB;

use AddressBookDB;

-- UC2 Create AddressBook table

create table AddressBook
(FirstName varchar(50) not null,
LastName varchar(50) not null,
Address varchar(50) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
Phone bigint not null,
Email varchar(50) not null);

select * from AddressBook

-- UC3 Insert Contacts into AddressBook table

insert into AddressBook values
('Lokesh', 'Sonawane', 'Warje', 'Pune', 'Maharashtra', 411058, 9876543210, 'lokesh.sonawane@gmail.com'),
('John', 'Connor', 'Andheri', 'Mumbai', 'Maharashtra', 400047, 9876951741, 'john.connor@gmail.com'),
('Mohak', 'Mangal', 'Hennur', 'Bengaluru', 'Karnataka', 560043, 9802587361, 'mohak.mangal@gmail.com');

-- UC4 Edit contacts in AddressBook table

update AddressBook set Phone = 9512364703 where FirstName = 'Mohak';

-- UC5 Detele contact using first name

delete from AddressBook where FirstName = 'John';

-- UC6 Retrieve person belonging to City or State from the AddressBook

select * from AddressBook where City = 'Pune';

select * from AddressBook where State = 'Karnataka';

-- UC7 size of AddressBook table by City and State

insert into AddressBook values
('John', 'Connor', 'Andheri', 'Mumbai', 'Maharashtra', 400047, 9876951741, 'john.connor@gmail.com');

-- size by City
select City, count(City) as 'Total Contacts' from AddressBook group by City;

-- size by State
select State, count(State) as 'Total Contacts' from AddressBook group by State;

