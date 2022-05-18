create or alter procedure [dbo].[verify_debt] @teacher bit
AS
 DECLARE @TempValidation AS TABLE 
(TempidUser int)
insert into @TempValidation 
	([TempidUser])
select 
	idUser from Financiero.dbo.Finance where delay = 1 or penalty = 1

if (@teacher = 1)
begin
	DECLARE @Teachers AS TABLE 
	(idTeacher int,name varchar(25),lastame varchar(25),age int,mail varchar(40),idCareer int,active bit)
	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_Alajuela.dbo.Teacher AS teacher
	inner join @TempValidation on TempidUser = teacher.idTeacher
	inner join MATRICULA.matricula.[public].Profesores AS teacherMatri on teacherMatri.idProfesor = teacher.idTeacher

	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_Cartago.dbo.Teacher AS teacher
	inner join @TempValidation on TempidUser = teacher.idTeacher
	inner join MATRICULA.matricula.[public].Profesores AS teacherMatri on teacherMatri.idProfesor = teacher.idTeacher

	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_SanJose.dbo.Teacher AS teacher
	inner join @TempValidation on TempidUser = teacher.idTeacher
	inner join MATRICULA.matricula.[public].Profesores AS teacherMatri on teacherMatri.idProfesor = teacher.idTeacher

	select idTeacher,name,lastame,age,mail,idCareer,active from @Teachers
end
if (@teacher = 0)
begin
	select * from MATRICULA.matricula.[public].Estudiantes AS registration
	inner join @TempValidation on TempidUser = registration.carnet
end
go

exec verify_debt 1


create or alter procedure [dbo].[verify_teacher] 
AS

	DECLARE @Teachers AS TABLE 
	(idTeacher int,name varchar(25),lastame varchar(25),age int,mail varchar(40),idCareer int,active bit)
	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_Alajuela.dbo.Teacher AS teacher
	inner join MATRICULA.matricula.[public].Profesores AS teacherMatri on teacherMatri.idProfesor = teacher.idTeacher

	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_Cartago.dbo.Teacher AS teacher
		inner join MATRICULA.matricula.[public].Profesores AS teacherMatri on teacherMatri.idProfesor = teacher.idTeacher

	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_SanJose.dbo.Teacher AS teacher
	inner join MATRICULA.matricula.[public].Profesores AS teacherMatri on teacherMatri.idProfesor = teacher.idTeacher

	select idTeacher,name,lastame,age,mail,idCareer,active from @Teachers

go

exec verify_teacher

create or alter procedure [dbo].[verify_book] 
AS
	select Data_book.nombreLibro,Data_book.nombreAutor,Data_book.nombreEditorial,Data_book.fechaLanzamiento,Data_book.edicion from Libros.dbo.Libros AS Book
	inner join Libros.dbo.Datos_Libros AS Data_book on Data_book.idDatosLibro = Book.idDatosLibro

go

exec verify_book

