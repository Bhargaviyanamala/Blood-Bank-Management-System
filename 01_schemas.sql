create database BloodBankDB;
use BloodBankDB;
create table donor (
    donor_id int primary key auto_increment,
    name varchar(100) not null,
    gender enum('male', 'female', 'other'),
    dob date,
    phone varchar(15) unique,
    email varchar(100),
    blood_group varchar(5) not null,
    address text
);

create table patient (
    patient_id int primary key auto_increment,
    name varchar(100) not null,
    gender enum('male', 'female', 'other'),
    dob date,
    phone varchar(15),
    blood_group varchar(5) not null,
    address text
);

create table hospital (
    hospital_id int primary key auto_increment,
    name varchar(150) not null,
    location varchar(200),
    phone varchar(15),
    email varchar(100)
);

create table bloodbank (
    bank_id int primary key auto_increment,
    name varchar(150) not null,
    location varchar(200),
    phone varchar(15),
    email varchar(100)
);

create table bloodstock (
    stock_id int primary key auto_increment,
    bank_id int,
    blood_group varchar(5) not null,
    quantity int not null check(quantity >= 0),
    last_updated timestamp default current_timestamp on update current_timestamp,
    foreign key (bank_id) references bloodbank(bank_id)
);

create table donation (
    donation_id int primary key auto_increment,
    donor_id int,
    bank_id int,
    donation_date date not null,
    quantity int not null,
    foreign key (donor_id) references donor(donor_id),
    foreign key (bank_id) references bloodbank(bank_id)
);

create table transfusion (
    transfusion_id int primary key auto_increment,
    patient_id int,
    hospital_id int,
    bank_id int,
    blood_group varchar(5),
    quantity int not null,
    transfusion_date date not null,
    foreign key (patient_id) references patient(patient_id),
    foreign key (hospital_id) references hospital(hospital_id),
    foreign key (bank_id) references bloodbank(bank_id)
);