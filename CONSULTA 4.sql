--CONSULTA 4

--Mostrar total de valores recaudados por cada a�o lectivo--

Select sum(Precio_matricula) as SumaTotal, ANO_LECTIVO_MATRICULA As A�o
from Matricula
group by ANO_LECTIVO_MATRICULA