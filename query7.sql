-- use learnsql;
select * from users;

delimiter $$
create procedure select_females()
begin
select * from users
where not gender = 'Male';
end $$
delimiter ;

call select_females();


