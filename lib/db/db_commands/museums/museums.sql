create schema museums;


create table "museums"."museums" (
   museum_id serial PRIMARY KEY UNIQUE,
   museum VARCHAR (30) NOT NULL UNIQUE,
   country_id int NOT NULL,
   city_id int NOT NULL,
   district_id int NOT NULL,
   --art_ids int

);



alter table "museums"."museums"
add constraint "museumofcountry" foreign key ("country_id")
references "adresses"."countries" ("country_id")
on delete cascade
on update cascade;

alter table "museums"."museums"
add constraint "museumofcity" foreign key ("city_id")
references "adresses"."cities" ("city_id")
on delete cascade
on update cascade;

alter table "museums"."museums"
add constraint "museumofdistricts" foreign key ("district_id")
references "adresses"."districts" ("district_id")
on delete cascade
on update cascade;



--insert into "museums"."museums"(museum,country_id,city_iddistrict_id,art_id) values('Louvre Museum',6,8,1,);--daha bu boyle gider devam