use TEC_Cartago
-- Career

insert into dbo.Career (idCareer,name,coordinar,period)
values
(1,'ING.Computacion','Erika Marin','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(2,'Administracion','Roberto Exposito','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(3,'ING.Forestal','Alberta Arboleda','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(4,'ING.Mecatronica','Lucy Fernanda Morningstar ','2020 Semestre 1')

--Teacher

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(1,'Federico Fernando',' Artavia',32,'ffartavia@itcr.ac.cr',1,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(2,'Maria Jose','Ferrer',55,'mjferrer@itcr.ac.cr',1,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(3,'Stella Rosalia','LeonHeart',25,'sleonheart@itcr.ac.cr',2,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(4,'Lucy Layla','Rosales',21,'llrosales@itcr.ac.cr',2,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(5,'Natsu Haru','Dragoignnel',32,'nhdragonignnel@itcr.ac.cr',3,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(6,'Wendy Aria','Matto',32,'wamatto@itcr.ac.cr',4,1)

select * from dbo.Teacher

--Subjetc

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(1,'Diseño y arquitectura de software',1,1)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(2,'Elementos de computacion',2,1)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(3,'Contabilidad 1',3,2)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(4,'Contabilidad 2',4,2)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(5,'Arboles 1',5,3)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(6,'Circuitos Continuos',6,4)

select * from dbo.Subject