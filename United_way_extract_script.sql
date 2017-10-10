select year,Strategy,sum(Lives)  from impactperzip where year=2014  group by Strategy order by sum(Lives) desc;1

select area,sum(lives) from united_way_all_data  where year=2014 group by area order by sum(Lives) desc;

select sum(Lives) from united_way_lives;

select strategy,sum(Budget1415),sum(Budget1516) from united_way_monies group by strategy;

select * from norockwall where year=2014 group by org order by sum(Lives) desc;

select Agency,sum(Budget1415),sum(Budget1516) from united_way_monies group by agency;

select org,sum(Lives) from united_way_lives_3 where Stratarea='HEALTH' group by org;

select org,sum(Lives) from united_way_lives_3 where year=2015 and Stratarea='BASIC NEEDS' group  by org order by sum(Lives) desc;