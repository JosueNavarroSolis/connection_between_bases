create or alter procedure [dbo].[verify_debt] @teacher bit
AS
 DECLARE @TempValidation AS TABLE 
(TempidUser int)
insert into @TempValidation 
	([TempidUser])
select 
	idUser from Financiero.dbo.Finance where delay = 1 or penalty = 1
	--select * from @TempValidation
if (@teacher = 1)
begin
	DECLARE @Teachers AS TABLE 
	(idTeacher int,name varchar(25),lastame varchar(25),age int,mail varchar(40),idCareer int,active bit)
	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_Alajuela.dbo.Teacher AS teacher
	inner join @TempValidation on TempidUser = teacher.idTeacher

	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_Cartago.dbo.Teacher AS teacher
	inner join @TempValidation on TempidUser = teacher.idTeacher

	insert into @Teachers
	select idTeacher,name,teacher.lastname,age,teacher.[e-mail],idCareer,active from TEC_SanJose.dbo.Teacher AS teacher
	inner join @TempValidation on TempidUser = teacher.idTeacher

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
 /*DECLARE @TempValidation AS TABLE 
(TempidTeacher int)
insert into @TempValidation 
	(TempidTeacher)
select 
	--idProfesor from MATRICULA.matricula.[public].Profesores
	--select * from @TempValidation
	*/
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