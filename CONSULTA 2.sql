--CONSULTA 2

--Mostrar histórico de cantidad de profesores por período. En una columna aparecerá el  año lectivo, en otra
--columna aparecerá el número de mujeres, en otra columna aparecerá el número de hombres.
select ANO_LECTIVO_PROFESOR, genero_Profesor, count (*) as Cantidad
from Profesor 
group by genero_Profesor,ANO_LECTIVO_PROFESOR;

