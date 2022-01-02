select case when A=B and B=C then 'Equilateral'
            when A+B<=C or B+C<=A or A+C<=B then 'Not a Triangle'
	    when A=B or B=C or A=C then 'Isosceles'
	    else 'Scalene'
	end
from triangles









