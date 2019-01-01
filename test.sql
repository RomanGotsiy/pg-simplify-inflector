drop schema if exists app_public cascade;
create schema app_public;
set search_path to app_public, public;

create table ponds(
  id serial primary key,
  name text not null
);

create table fish(
  id serial primary key,
  pond_id int not null references ponds,
  name text not null
);
insert into ponds (name) values ('Amy');
insert into fish (pond_id, name) values (1, 'Blub'), (2, 'Bubble'), (3, 'Guber');

create table companies(
  id serial primary key,
  name text not null
);

create table beverages(
  id serial primary key,
  manufacturer_id int not null references companies,
  distributor_id int not null references companies,
  name text not null
);