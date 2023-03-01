create database eventManagement;
use eventManagement;
create table Event(eventId int not null primary key, eventName varchar(30) not null, startDate date not null, endDate date not null, location varchar(30));
desc Event;
create table Attendee(Id int not null primary key, name varchar(20), email varchar(30), phNo varchar(11));
desc Attendee;
create table Ticket(tcktId int not null unique primary key, price int, quantity int, eventId int, foreign key(eventId) references Event(eventId));
desc Ticket;
create table attendeeOrder(orderId int not null unique primary key, ordQuantity int, attendeeId int, ticketId int, foreign key(attendeeId) references Event(eventId), foreign key(ticketId) references Ticket(tcktId));
desc attendeeOrder;
show tables from eventManagement;