use TEC_SanJose
-- Career

insert into dbo.Career (idCareer,name,coordinar,period)
values
(21,'ING.Computacion','Erika Marin','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(22,'Administracion','Roberto Exposito','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(23,'ING.Forestal','Alberta Arboleda','2020 Semestre 1')

insert into dbo.Career (idCareer,name,coordinar,period)
values
(24,'ING.Mecatronica','Lucy Fernanda Morningstar ','2020 Semestre 1')

--Teacher

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(21,'Rupert Adrian','Gonzales',28,'ragonzales@itcr.ac.cr',21,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(22,'Juan Jose','Arias',55,'jjarias@itcr.ac.cr',21,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(23,'Marta Marcella','Picado',25,'mmpicado@itcr.ac.cr',22,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(24,'Steven Gabriel','Fernandez Navarro',21,'sgfernadeznavarro@itcr.ac.cr',22,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(25,'Alister Gabriel','Navarro',26,'agnavarro@itcr.ac.cr',23,1)

insert into dbo.Teacher(idTeacher,name,lastname,age,[e-mail],idCareer,active)
values
(26,'Jeaustin','Obando',32,'jobando@itcr.ac.cr',24,1)

select * from dbo.Teacher

--Subjetc

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(21,'Diseño y arquitectura de software',21,21)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(22,'Elementos de computacion',22,21)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(23,'Contabilidad 1',23,22)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(24,'Contabilidad 2',24,22)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(25,'Arboles 1',25,23)

insert into dbo.Subject(idSubject,name,idTeacher,idCareer)
values
(26,'Circuitos Continuos',26,24)

select * from dbo.Subject