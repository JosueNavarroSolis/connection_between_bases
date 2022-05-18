use Financiero;

create or alter procedure consulta_prestamos_active 
as

DECLARE @TempIDs AS TABLE 
(TempID int, TempEsProfe bit)
insert into @TempIDs 
	([TempID], [TempEsProfe])
select 
	idUsuario, esProfesor from Libros.dbo.Prestamos where cancelado = 0

	DECLARE @deudores AS TABLE 
	(name varchar(25), nombreLibro varchar(50))
	insert into @deudores
	select teacher.lastname, DL.nombreLibro  from TEC_Alajuela.dbo.Teacher AS teacher
	inner join @TempIDs on TempID = teacher.idTeacher
	inner join Financiero.dbo.Finance as finance on finance.idUser = TempID
	inner join Libros.dbo.Prestamos as prestamo on prestamo.idUsuario = teacher.idTeacher
	inner join Libros.dbo.Libros as libro on libro.idLibro = prestamo.idLibro
	inner join Libros.dbo.Datos_Libros as DL on DL.idLibro = libro.idLibro
	where Finance.delay = 1 or Finance.penalty = 1

	insert into @deudores
	select teacher.lastname, DL.nombreLibro  from TEC_SanJose.dbo.Teacher AS teacher
	inner join @TempIDs on TempID = teacher.idTeacher
	inner join Financiero.dbo.Finance as finance on finance.idUser = TempID
	inner join Libros.dbo.Prestamos as prestamo on prestamo.idUsuario = teacher.idTeacher
	inner join Libros.dbo.Libros as libro on libro.idLibro = prestamo.idLibro
	inner join Libros.dbo.Datos_Libros as DL on DL.idLibro = libro.idLibro
	where Finance.delay = 1 or Finance.penalty = 1

	insert into @deudores
	select teacher.lastname, DL.nombreLibro  from TEC_Cartago.dbo.Teacher AS teacher
	inner join @TempIDs on TempID = teacher.idTeacher
	inner join Financiero.dbo.Finance as finance on finance.idUser = TempID
	inner join Libros.dbo.Prestamos as prestamo on prestamo.idUsuario = teacher.idTeacher
	inner join Libros.dbo.Libros as libro on libro.idLibro = prestamo.idLibro
	inner join Libros.dbo.Datos_Libros as DL on DL.idLibro = libro.idLibro
	where Finance.delay = 1 or Finance.penalty = 1

	---select idTeacher,name,lastame,age,mail,idCareer,active from @Teachers
	insert into @deudores
	select registration.nombreEstudiante,DL.nombreLibro  from MATRICULA.Matricula.[public].Estudiantes AS registration
	inner join @TempIDs on TempID = registration.carnet
	inner join Financiero.dbo.Finance as finance on finance.idUser = TempID
	inner join Libros.dbo.Prestamos as prestamo on prestamo.idUsuario = registration.carnet
	inner join Libros.dbo.Libros as libro on libro.idLibro = prestamo.idLibro
	inner join Libros.dbo.Datos_Libros as DL on DL.idLibro = libro.idLibro

	select name, nombreLibro from @deudores


exec consulta_prestamos_active 