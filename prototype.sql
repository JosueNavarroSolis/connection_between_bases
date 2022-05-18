select * from MATRICULA.matricula.[public].Profesores

declare @profe as varchar(50)
set @profe = (select coordinar from TEC_Cartago.dbo.Career where idCareer=1)

if ((select coordinar from TEC_Alajuela.dbo.Career)= (select coordinar from TEC_Alajuela.dbo.Career))
begin 
	select * from TEC_Alajuela.dbo.Career
end

use TEC_Alajuela
select * from dbo.Career