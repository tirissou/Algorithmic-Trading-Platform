create table "daily_data"
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
  primary key (ticker, time)
);
