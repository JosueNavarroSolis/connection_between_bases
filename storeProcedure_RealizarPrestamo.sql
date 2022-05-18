/*
Conexion a la base de datos de LIBROS
*/

/*
Store procedure que crea los prestamos
	Parametros:
		- @idLibro: id del libro
		- @costo: el costo total
		- @idUsuario: id del usuario del prestamo
		- @idEmpleado: id del empleado que realizó el prestamo
		- @esprofesor: bit para reconcer si es profesor o estudiante.
*/
create or alter procedure realizar_prestamos @idLibro int, @costo int, @idUsuario int, @idEmpleado int, @esprofesor bit
as

insert into Libros.dbo.Prestamos(idLibro, costo, fechaSolicitud, vencimiento, cancelado, idUsuario, idEmpleado, esProfesor)
values (@idLibro, @costo, CONVERT(date, GETDATE()), CONVERT (date, GETDATE()+ 30), 0, @idUsuario, @idEmpleado, @esprofesor)


exec realizar_prestamos 4,9000, 3, 2, 1