create schema adresses;


create table "adresses"."countries" (
   country_id serial PRIMARY KEY UNIQUE,
   country VARCHAR (30) NOT NULL UNIQUE-- the longest country name: The United Kingdom of Great Britain and Northern Ireland, i'll reserve 30 characters instead.
);

create table "adresses"."cities"(
   city_id serial PRIMARY KEY UNIQUE,
    country_id int NOT NULL, --not unique because i think there would be some same named cities in different countries because of ottoman, roman empire and united kingdom.
    city VARCHAR (30) NOT NULL --the longest city name's lenght is 163 :D i'll reserve 30 characters instead.
);

create table "adresses"."districts"(
    district_id serial PRIMARY KEY UNIQUE,
    city_id int NOT NULL,
    district VARCHAR (30) NOT NULL
);


alter table "adresses"."cities"
add constraint "cityofcountry" foreign key ("country_id")
references "adresses"."countries" ("country_id")
on delete cascade
on update cascade;

alter table "adresses"."districts"
add constraint "districtofcity" foreign key ("city_id")
references "adresses"."cities" ("city_id")
on delete cascade
on update cascade;