-- Create Database

create database LibraryDB
use LibraryDB

-- Create Members Table

create table Members(
member_id int primary key,
name varchar(50),
email varchar(100),
join_date date
)


-- Create table Books

create table Books(
book_id int primary key,
title varchar(255),
author varchar(255),
genre varchar(50),
available_copies int 
)


-- create table Issues

create table Issues(
issue_id INT PRIMARY KEY,
member_id INT,       
book_id INT,        
issue_date DATE,
return_date DATE
foreign key(member_id) references Members(member_id),
foreign key(book_id) references Books(book_id)
)
