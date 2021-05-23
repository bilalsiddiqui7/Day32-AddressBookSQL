SHOW databases;
CREATE database address_book_service;
SHOW databases;
use address_book_service;
create table addressbook
(
firstName varchar(15) not null,
lastName varchar(15) not null,
address varchar(35) not null,
city varchar(15) not null,
state varchar(15) not null,
zip varchar(15) not null,
phoneNumber varchar(15) not null,
email varchar(25) not null
);
insert into addressbook values("Bilal","Siddiqui","Teachers colony","Khandwa","Madhya Pradesh","450001","7000672164","bilalsid0075@gmail.com");
insert into addressbook values("Harsh","Tiwari","Agarwal nagar","Indore","Madhya Pradesh","450002","7000672165","harsh@gmail.com");
insert into addressbook values("Ashutosh","Shukla","Ranibagh","Indore","Madhya Pradesh","450003","7000672166","ashu@gmail.com");
insert into addressbook values("Hitesh","Tiwari","Manikbagh","Jabalpur","Madhya Pradesh","450004","7000672167","hitesh@gmail.com");
update addressbook set address="dont know",city="Indore",state="Madhya Pradesh",zip="450005",phoneNumber="7000672168",email="hiteshtiwari@gmail.com" where firstName="Hitesh";
delete from addressbook where firstName="Ashutosh";
select firstName from addressbook where state="Madhya Pradesh";
select city,count(*) from addressbook where city="Indore";
select * from addressbook where city = 'Indore' order by firstName ASC;
Alter table addressbook add AddressBookName varchar(45) Not Null after email;
Alter table addressbook add AddressBookType varchar(45) Not Null after AddressBookName; 
Update addressbook set AddressBookName= 'AddressBook1' where FirstName  = 'Harsh' or FirstName  = 'Ashutosh';
Update addressbook set AddressBookName ='AddressBook2' where FirstName  = 'Bilal' or FirstName  = 'Hitesh';
Update addressbook set AddressBookType = 'Family' where FirstName  = 'Bilal'  or FirstName  = 'Harsh';
Update addressbook set AddressBookType = 'Friends' where FirstName  = 'Ashutosh';
Update addressbook set AddressBookType = 'Profession' where FirstName  = 'Hitesh';
Select Count(firstName) From addressbook where AddressBookType = 'Family' order by firstName;
Select Count(firstName) From addressbook where AddressBookType = 'Friends' order by firstName;
Select Count(firstName) From addressbook where AddressBookType = 'Profession' order by firstName;
update  addressbook set AddressBookName = "AddressBook1" where firstName = "Harsh" ;
update  addressbook set AddressBookName = "AddressBook1" where firstName = "Ashutosh" ;
desc addressbook;
