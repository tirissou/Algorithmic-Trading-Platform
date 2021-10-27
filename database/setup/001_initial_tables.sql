
create schema public_app;
create schema private_app;

create table public_app.symbols
(
    id serial,
    symbol varchar(8),
    primary key (symbol)
);

create table public_app.daily_data
(
  symbol_id integer          not null
    constraint daily_data_symbol_foreign references "symbols",
  time     date             not null,
  low      double precision not null,
  high     double precision not null,
  open     double precision not null,
  close    double precision not null,
  volume   double precision,
  constraint "daily_data_pkey"
  primary key (symbol_id, time)
);

create table private_app.users
(
    id serial primary key,
    first_name varchar(32),
    last_name varchar(32),
    email varchar(64),
    password varchar(256)
);

CREATE INDEX users_lower_email ON private_app.users(lower(email));
