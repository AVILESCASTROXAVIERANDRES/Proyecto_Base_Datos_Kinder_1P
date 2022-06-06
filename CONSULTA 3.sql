--CONSULTA 3

--Mostrar histórico de matriculaciones y deserciones. En una columna deberá aparecer el año lectivo,
 --en otra columna el número de matriculados, en otra columna el número de retirados.

select ANO_LECTIVO_MATRICULA as Año, DESCRIPCION_MATRICULA, count (*) as Cantidad
from MATRICULA 
group by DESCRIPCION_MATRICULA,ANO_LECTIVO_MATRICULA
order by Año asc