/*
Inserts de sedes
*/

INSERT INTO public."Sedes"(
	"nombreSede", "localizacion")
	VALUES ('Sede Cartago', 'Cartago centro');
	
INSERT INTO public."Sedes"(
	"nombreSede", "localizacion")
	VALUES ('Sede Limón', 'De puerto Moin 200 metros oeste');
	
INSERT INTO public."Sedes"(
	"nombreSede", "localizacion")
	VALUES ('Sede San José', 'Ubicada en Zapote');


/*
Inserts de cursos
*/

INSERT INTO public."Cursos"(
	"idProfesor", "horario", "creditos", "carrera", "nombreCurso")
	VALUES (1, 'K-J 13:00-2:50', 4, 'IC', 'Bases de datos');
	
INSERT INTO public."Cursos"(
	"idProfesor", "horario", "creditos", "carrera", "nombreCurso")
	VALUES (1, 'K-J 13:00-2:50', 4, 'IC', 'Bases de datos');

INSERT INTO public."Cursos"(
	"idProfesor", "horario", "creditos", "carrera", "nombreCurso")
	VALUES (1, 'K-J 17:00-18:50', 4, 'IC', 'Analisis de algoritmos');


INSERT INTO public."Cursos"(
	"idProfesor", "horario", "creditos", "carrera", "nombreCurso")
	VALUES (2, 'M-V 7:30-9:20', 4, 'IC', 'Introduccion a la programacion');

INSERT INTO public."Cursos"(
	"idProfesor", "horario", "creditos", "carrera", "nombreCurso")
	VALUES (2, 'M-V 9:30-11:20', 4, 'IC', 'Taller de programacion');
	
INSERT INTO public."Cursos"(
	"idProfesor", "horario", "creditos", "carrera", "nombreCurso")
	VALUES (3, 'M-V 13:00-14:50', 4, 'IC', 'Lenguajes de programacion');

INSERT INTO public."Cursos"(
	"idProfesor", "horario", "creditos", "carrera", "nombreCurso")
	VALUES (4, 'L 7:30-11:20', 4, 'IC', 'Requerimientos de Software');

/*
Inserts profesores
*/

INSERT INTO public."Profesores"(
	"nombreProfesor", "telefono", "correo")
	VALUES ('Andres Serrano Sequeria', '8830-3040', 'Ansese@gmail.com');
	
INSERT INTO public."Profesores"(
	"nombreProfesor", "telefono", "correo")
	VALUES ('Daniel Gutierrez Pérez', '60075914', 'dagupe@gmail.com');
	
INSERT INTO public."Profesores"(
	"nombreProfesor", "telefono", "correo")
	VALUES ('Anna Carrillo Martinez', '8828-3820', 'ancamar@gmail.com');
	
INSERT INTO public."Profesores"(
	"nombreProfesor", "telefono", "correo")
	VALUES ('Maria Jimenez Sandí', '8201-9392', 'majisan@gmail.com');

/*
Inserts grupos
*/
INSERT INTO public."Grupos"(
	"idCurso", "numeroGrupo", "idSede")
	VALUES (1, 1, 1);
	
INSERT INTO public."Grupos"(
	"idCurso", "numeroGrupo", "idSede")
	VALUES (1, 2, 1);
	
INSERT INTO public."Grupos"(
	"idCurso", "numeroGrupo", "idSede")
	VALUES (2, 1, 2);
	
INSERT INTO public."Grupos"(
	"idCurso", "numeroGrupo", "idSede")
	VALUES (2, 2, 2);
	
INSERT INTO public."Grupos"(
	"idCurso", "numeroGrupo", "idSede")
	VALUES (2, 3, 2);
	
INSERT INTO public."Grupos"(
	"idCurso", "numeroGrupo", "idSede")
	VALUES (3, 1, 3);

/*
Inserts Estudiantes
*/

INSERT INTO public."Estudiantes"(
	"carnet", "nombreEstudiante", "horaMatricula")
	VALUES (2020201030, 'Nuria Balbina Manolo', '08:00:00');
	
INSERT INTO public."Estudiantes"(
	"carnet", "nombreEstudiante", "horaMatricula")
	VALUES (2019234563, 'Eligia Modesto Albano', '09:00:00');
	
INSERT INTO public."Estudiantes"(
	"carnet", "nombreEstudiante", "horaMatricula")
	VALUES (2018234443, 'Américo Renzo Quirino', '13:00:00');
	
INSERT INTO public."Estudiantes"(
	"carnet", "nombreEstudiante", "horaMatricula")
	VALUES (2016133423, 'Gutierre Dulce Maricela', '14:50:00');
	
INSERT INTO public."Estudiantes"(
	"carnet", "nombreEstudiante", "horaMatricula")
	VALUES (2018323123, 'Julieta María Carmen Matilde', '11:15:00');
	
INSERT INTO public."Estudiantes"(
	"carnet", "nombreEstudiante", "horaMatricula")
	VALUES (2021142022, 'Margarita Socorro Claudina', '08:30:00');
	
select * from "Grupos"
/*
Inserts matriculas
*/
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (1,2021142022);

INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (3,2021142022);
	
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (6,2021142022);
	
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (2,2018323123);
	
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (4,2018323123);	
	
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (6,2018323123);	
	
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (1,2020201030);	
	
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (5,2020201030);	
	
INSERT INTO public."Matriculas"(
	"idGrupo", "idEstudiante")
	VALUES (6,2019234563);	