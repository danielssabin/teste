
create database [dba-teste1];

use [dba-teste1];

CREATE TABLE roles(
	id int primary key,
	role_name varchar(30),
	role_description varchar(100)
);

create table profiles(
    id int primary key,
	profile_name varchar(30),
	profile_description varchar(100)
);

create table roles_profiles(
	id int primary key,
	role_id int,
	profile_id int
);

ALTER TABLE roles_profiles ADD CONSTRAINT [profiles_fk] FOREIGN KEY(profile_id) REFERENCES profiles(id);

ALTER TABLE roles_profiles ADD CONSTRAINT [roles_fk] FOREIGN KEY(role_id) REFERENCES roles(id);

CREATE TABLE users(
	id int primary key,
	first_name varchar(30),
	last_name varchar(30),
	email varchar(50),
	password varchar(50),
	profile_id int
);

ALTER TABLE users ADD  CONSTRAINT [user_profile_fk] FOREIGN KEY(profile_id) REFERENCES profiles(id);




