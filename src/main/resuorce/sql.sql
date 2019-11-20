create table user{
id varchar(255) primary key ,
username varchar(255) not null,
password varchar(255) not null,
start int(10) default 0,
department varchar(255)
}

create table department{
id varchar(255) primary key,
department_name varchar(255)
}