/*
insert tipo empleado
*/

insert into tipoEmpleados(nombreTipo)
values ('Gerente')

insert into tipoEmpleados(nombreTipo)
values ('Recepcionista')

insert into tipoEmpleados(nombreTipo)
values ('Librero')

insert into tipoEmpleados(nombreTipo)
values ('Subgerente')
select * from tipoEmpleados
/*
insert empleados
*/

insert into Empleados(nombreEmpleado, apellidoEmpleado, telefono, tipoEmpleado, correo, fechaNac)
values ('Adriana', 'Quesada', '6234-2311', 1, 'adrique@gmail.com', '1990-10-28')

insert into Empleados(nombreEmpleado, apellidoEmpleado, telefono, tipoEmpleado, correo, fechaNac)
values ('Vivian', 'Mu�oz', '8232-2019', 2, 'vimu@gmail.com', '1995-03-10')

insert into Empleados(nombreEmpleado, apellidoEmpleado, telefono, tipoEmpleado, correo, fechaNac)
values ('Andr�s', 'M�ndez', '7282-2393', 3, 'anmen@gmail.com', '1982-04-01')

insert into Empleados(nombreEmpleado, apellidoEmpleado, telefono, tipoEmpleado, correo, fechaNac)
values ('Dariel', 'Mart�nez', '6220-2291', 4, 'anmen@gmail.com', '1989-07-14')


/*
insert Datos del libro
*/

insert into Datos_Libros(idLibro, nombreLibro, nombreAutor, nombreEditorial, fechaLanzamiento, edicion)
values (1, 'Probabilidad para ingenier�a y administraci�n', 'William W. Hines Douglas C.', 'Libreria nacional', '2000-10-10', 4)

insert into Datos_Libros(idLibro, nombreLibro, nombreAutor, nombreEditorial, fechaLanzamiento, edicion)
values (2, 'Patrones de dise�o', 'Erich Gamma-Richard Helm-Ralph', 'Libreria nacional', '2002-01-01', 2)

insert into Datos_Libros(idLibro, nombreLibro, nombreAutor, nombreEditorial, fechaLanzamiento, edicion)
values (3, 'Estad�stica m�todos', 'Edwin galindo.', 'Libreria nacional', '2010-02-04', 1)

/*
insert libro **verificar el numero de dato de libro***
*/

insert into Libros(idDatosLibro)
values (1)

insert into Libros(idDatosLibro)
values (2)

insert into Libros(idDatosLibro)
values (3)


/*
insert prestamos
*/
select * from Prestamos

insert into Prestamos(idLibro, costo, fechaSolicitud, vencimiento, cancelado, idUsuario, idEmpleado)
values (4, 5000, '2022-04-10', '2022-05-10', 0, 2016133423, 1)

insert into Prestamos(idLibro, costo, fechaSolicitud, vencimiento, cancelado, idUsuario, idEmpleado)
values (5, 4000, '2022-03-14', '2022-03-14', 0, 2018234443, 2)

insert into Prestamos(idLibro, costo, fechaSolicitud, vencimiento, cancelado, idUsuario, idEmpleado)
values (6, 3500, '2022-05-29', '2022-06-29', 0, 2019234563, 3)
