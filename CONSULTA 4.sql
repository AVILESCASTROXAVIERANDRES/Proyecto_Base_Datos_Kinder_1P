--CONSULTA 4

--Mostrar total de valores recaudados por cada año lectivo--

Select sum(Precio_matricula) as SumaTotal, ANO_LECTIVO_MATRICULA As Año
from Matricula
group by ANO_LECTIVO_MATRICULA