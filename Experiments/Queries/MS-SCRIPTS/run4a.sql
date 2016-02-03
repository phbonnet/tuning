select employee.ssnum 
from employee, student
where employee.ssnum = student.ssnum;