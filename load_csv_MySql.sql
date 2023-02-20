create database if not exists employee;
use employee;
create TABLE if not exists car(
    price int,
    mileage int,
    engType varchar(255),
    model varchar(255)
);
#
load data local  infile "/home/mohaddesse/Documents/C#/class/car.csv"
INTO TABLE car
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(@price,@mileage,@engType,@year,@model) SET price=@price,mileage=@mileage,engType=@engType,model=@model;