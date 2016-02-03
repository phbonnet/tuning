select ssnum
from employee e1
where salary = (
		select avg(e2.salary)
		from employee e2, techdept
		where e2.dept = techdept.dept
		  and e2.dept = e1.dept
		)
;
