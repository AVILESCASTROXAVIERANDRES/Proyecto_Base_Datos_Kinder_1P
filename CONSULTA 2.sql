--CONSULTA 2

--Mostrar hist�rico de cantidad de profesores por per�odo. En una columna aparecer� el  a�o lectivo, en otra
--columna aparecer� el n�mero de mujeres, en otra columna aparecer� el n�mero de hombres.
select ANO_LECTIVO_PROFESOR, genero_Profesor, count (*) as Cantidad
from Profesor 
group by genero_Profesor,ANO_LECTIVO_PROFESOR;

