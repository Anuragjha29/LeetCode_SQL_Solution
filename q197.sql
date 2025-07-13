select c.id as 'Id' from Weather as c
join Weather as p on p.recordDate = date_sub(c.recordDate, interval 1 day)
where c.temperature >p.temperature;
