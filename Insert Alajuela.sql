use TEC_Alajuela
-- Career

insert into dbo.Career (idCareer,name,coordinar,period)
values
(11,'ING.Computacion','Erika Marin','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(12,'Administracion','Roberto Exposito','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(13,'ING.Forestal','Alberta Arboleda','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(14,'ING.Mecatronica','Lucy Fernanda Morningstar ','2020 Semestre 1')

--Teacher

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(11,'Albert Robert','Perez',28,'arperez@itcr.ac.cr',11,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(12,'Rosa Elena','Arias',55,'rearias@itcr.ac.cr',11,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(13,'Stella Rosalia','LeonHeart',25,'sleonheart@itcr.ac.cr',12,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(14,'Layla Lia','Cuarzo',21,'llcuarzo@itcr.ac.cr',12,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(15,'Haruki Tobi','Uenoyama',32,'htuenoyama@itcr.ac.cr',13,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(16,'Shinji','Ikari',32,'sikari@itcr.ac.cr',14,1)

select * from dbo.Teacher

--Subjetc

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(11,'Diseño y arquitectura de software',11,11)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(12,'Elementos de computacion',12,11)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(13,'Contabilidad 1',13,12)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(14,'Contabilidad 2',14,12)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(15,'Arboles 1',15,13)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(16,'Circuitos Continuos',16,14)

select * from dbo.Subject