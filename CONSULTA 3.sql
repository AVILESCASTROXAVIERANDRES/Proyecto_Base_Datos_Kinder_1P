--CONSULTA 3

--Mostrar hist�rico de matriculaciones y deserciones. En una columna deber� aparecer el a�o lectivo,
 --en otra columna el n�mero de matriculados, en otra columna el n�mero de retirados.

select ANO_LECTIVO_MATRICULA as A�o, DESCRIPCION_MATRICULA, count (*) as Cantidad
from MATRICULA 
group by DESCRIPCION_MATRICULA,ANO_LECTIVO_MATRICULA
order by A�o asc