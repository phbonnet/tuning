select ssnum from employee e1 where salary = (select max(salary)		from employee e2	where e2.dept = e1.dept		)
