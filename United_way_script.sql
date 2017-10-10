select * from united_way_lives;

select * from united_way_monies;

select year,area,Strategy, sum(Lives) from united_way_lives where year=2014 group by org,Strategy;
select year,org, Strategy, sum(Lives) from united_way_lives where year=2015 group by org,Strategy;

CREATE TABLE lives2015 (
    year int,
    org varchar(255),
    strategy varchar(255),
    lives int
);

INSERT INTO lives2015
select year,org, Strategy, sum(Lives) from united_way_lives where year=2015 group by org,Strategy;

select * from lives2014;

SELECT *
FROM impact2015 l
LEFT JOIN united_way_monies i ON l.org = i.Agency;

# getting impact data for each year 
select l.year,l.org,l.strategy,l.lives,u.Budget1415 from lives2014 l, united_way_monies u where l.year=2014  and u.agency=l.org and u.Strategy=l.strategy;
select l.year,l.org,l.strategy,l.lives,u.Budget1516 from lives2015 l, united_way_monies u where l.year=2015  and u.agency=l.org and u.Strategy=l.strategy;

CREATE TABLE impact2015 (
    year int,
    org varchar(255),
    strategy varchar(255),
    lives int,
    awarded int
);

INSERT INTO impact2015
select l.year,l.org,l.strategy,l.lives,u.Budget1516 from lives2015 l, united_way_monies u where l.year=2015  and u.agency=l.org and u.Strategy=l.strategy;


ALTER TABLE impact2014
ADD  dollarperperson int ;

select * from impact2014;
select * from impact2015;

select u.Year,u.Area,u.org,u.Zip,u.Strategy,u.Lives,i.awarded,i.dollarperperson, u.Lives*i.dollarperperson dipp from united_way_lives u, impact2015 i 
where u.Year=2015 and u.Org=i.org and u.Strategy=i.strategy;

select * from united_way_lives u, impact2015 i 
where u.year=2015 and u.Org=i.org and u.Strategy=i.strategy;








