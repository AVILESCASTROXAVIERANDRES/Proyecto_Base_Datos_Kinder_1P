--CONSULTA 1 ---

--- Mostrar hist�rico de rendimiento por programas. En una columna debe aparecer el a�o lectivo,
--en otra columna el nombre del programa, en otra columna la cantidad de rendimientos buenos, en otra
--columna la cantidad de rendimientos regulares, en otra columna la cantidad de rendimientos regulares.

select 
clma.ANO_LECTIVO_CLUB_MATRI as A�o,clma.RENDIMIENTO_CLUB_MATRI as Rendimiento,  count (*) as Cantidad, cl.NOMBRE_CLUB
from CLUB_MATRICULA clma
inner join club cl ON  clma.Id_Club=cl.Id_club
group by clma.RENDIMIENTO_CLUB_MATRI,cl.NOMBRE_CLUB,clma.ANO_LECTIVO_CLUB_MATRI
order by A�o asc