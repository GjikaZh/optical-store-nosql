--query 1
SELECT * FROM client
--query 2
SELECT * FROM employee
--query 3
SELECT * FROM salesworker
--query 4
SELECT * FROM medicalworker
--query 5
SELECT * FROM manager
--query 6
SELECT * FROM product
--query 7
SELECT * FROM eye_examination
--query 8
SELECT * FROM invoice
--query 9
SELECT * FROM supplier
--query 10
SELECT * FROM purchase

--Additional queries
--query 1
SELECT c_id, ex_id, ex_date, ex_time, type_of_ex
FROM eye_examination
WHERE c_id = 'CL0001';
--query 2
SELECT pr_id, pr_name, pr_price
FROM product
WHERE pr_availability = 'Y';
--query 3
SELECT c.c_name, c.c_surname, i.i_id, i.i_total
FROM client c
JOIN invoice i ON c.c_id = i.c_id;
--query 4
SELECT s.s_name, p.pr_name
FROM supplies sp
JOIN supplier s ON sp.s_id = s.s_id
JOIN product p ON sp.pr_id = p.pr_id;
--query 5
select c.* 
from client c, salesworker s
where c.sw_id=s.sw_id and s.sw_id='SW0012' and s.s_shift='Morning shift'
--query 6
select ex.c_id, ex.medw_id, ex.type_of_ex, ex.ex_date
from eye_examination ex
where ex.type_of_ex='Routine Check-up' and ex.ex_date='2023-05-01'
--query 7
select c.*
from client c, eye_examination ex, purchase pu, makes m
where c.c_id=ex.c_id 
except
select c.*
from client c, eye_examination ex, purchase pu, makes m
where  c.c_id=ex.c_id and pu.i_id=m.i_id and c.c_id=m.c_id 
--query 8 
select s.s_shift, count(s.sw_id) as "Number of Sales Workers"
from salesworker s
group by s.s_shift
