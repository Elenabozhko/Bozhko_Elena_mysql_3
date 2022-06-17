use vk;

--�������� ������ ������������ ������ ���� ��� ���������� � ���������� �������--

select distinct firstname
from users u 
;

--�������� ������, ��������� ��������� �� ��������--

update messages 
	set created_at ='2023-09-09'
	where id = 15;
delete from messages
where created_at > now()
;

--������ ���������� ������������������ ��� ����������--

alter table profiles add is_active bit default false null;
update profiles 
set is_active = 1
where year(current_timestamp) - year(birtday) - (right(current_timestamp, 5) < right (birtday, 5)) < 18
alter table profiles add age bigint(5);
update profiles 
set age = year(current_timestamp) - year(birtday) - (right(current_timestamp, 5) < right(birtday, 5))
;
