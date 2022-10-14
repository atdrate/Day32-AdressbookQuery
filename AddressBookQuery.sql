-------------------uc1----------------------
create Database AddressBookServiceDB

use AddressBookServiceDB
--------------------uc2-------------------------
CREATE TABLE AddressBook
(
firstName varchar(20) not null,
lastName varChar(20) not null,
address varchar(100) not null,
city varchar(20) not null,
state varchar(20) not null,
zip int not null,
phoneNumber bigint,
email varchar(40) not null
)
drop table AddressBook
delete AddressBook
select*from AddressBook
----------uc3--------
insert into AddressBook (firstName,lastName,address,city,state,zip,phoneNumber,email) values('Subodh','Nagalwade','Lakahni','bhandara','Maharastra',441804,9422136430,'subodhnagalwde@gmail.com')
insert into AddressBook values('Vaibhav','Lute','Shree nagar','MUmbai','Maharastra','441804','9503913851','vaibhav5@gmail.com')
insert into AddressBook values('Shreya','Dhande','Ujjwal nagar','Lkahni','Maharastra','441804','1234567890','shreyadhande@gmail.com')

-----------------uc4-----------------
update AddressBook set city='NAgpur' where firstName = 'Shreya'
update AddressBook set address='Sitabuldi' where firstName = 'Subodh'

-------------uc5-------

delete AddressBook where firstName ='Vaibhav'
----------uc6---------

select city,state from AddressBook;

------------uc7--------------

select COUNT(city) as City from AddressBook;
select COUNT(state) as State from AddressBook;

------------------uc8-------------

select * from AddressBook
where city = 'Nagpur'
order by (firstName);

--------------uc9-----------

alter table AddressBook add Name varchar(255),Type varchar(255)

update AddressBook set Name='Shrikant' where firstName ='Subodh'
update AddressBook set Name='Shreya' where firstName ='Shreya'

update AddressBook set Type ='Freind' where firstName='Subodh'
update AddressBook set Type ='Family' where firstName='Shreya'
----------------uc10------------
select count(type) 
from AddressBook


select Type, count(*) as TypeCount 
from AddressBook
group by Type;

----------------uc11------------------

insert into AddressBook(firstName,lastName,address,city,state,zip,phoneNumber,email,Name,Type) values('Puja','Lamkane','Gov hospital','Gondia','maharastra','440096','1234567890','puja@gmail.com','Puja','Friend');
insert into AddressBook(firstName,lastName,address,city,state,zip,phoneNumber,email,Name,Type) values('Puja','Lamkane','Gov hospital','Gondia','maharastra','440096','1234567890','puja@gmail.com','Puja','Family');

