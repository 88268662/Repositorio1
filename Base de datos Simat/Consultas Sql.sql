insert into sedeeducativa (sedeEducativacol, nid) values ("Calazan", "16");
update sedeeducativa set sedeEducativacol = "Saleciano", nid = "17" where idSedeEducativa = 7;
delete FROM sedeeducativa where idSedeEducativa = 10;

select * FROM tablasimatsql.sedeeducativa;

INSERT INTO tablasimatsql.estudiante (idUsuariosAlumnos, idSede, estrato, idAcudiente) VALUES (5, 1, "2", 5) ;
INSERT INTO tablasimatsql.profesores (idUsuariosProfesores, usuario, clave) VALUES (4, "Johan55", "JO1234") ;

select nombres, apellidos, tipoIdentificacion, fechaMatricula, jornada FROM matricula 
inner join estudiante on  matricula.idEstudiante = estudiante.idAlumnos
inner join usuario on estudiante.idUsuariosAlumnos = usuario.idUsuario
inner join sedeeducativa on estudiante.idSede = sedeeducativa.idSedeEducativa
where usuario.eps = "sanitas"

INSERT INTO tablassimatsql.usuario (nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps, tipoUsuario) VALUES ("Maria", "Ramirez", "RC", "000003", "calle 7", "32222222", "peq@gmail.com", "femenino", "soltera", "2016-12-10", "famisanar", "Estudiante");
INSERT INTO tablassimatsql.usuario (nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps, tipoUsuario) VALUES ("Estefania", "Perez", "CC", "111111", "calle 8", "32333333", "e@gmail.com", "femenino", "casada", "1983-01-11", "sanitas", "Acudiente");
INSERT INTO tablassimatsql.usuario (nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps, tipoUsuario) VALUES ("Lia", "Quintana", "CC", "222222", "calle 9", "32444444", "l@gmail.com", "femenino", "soltera", "1976-11-10", "famisanar", "Acudiente");
INSERT INTO tablassimatsql.usuario (nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps, tipoUsuario) VALUES ("Jose", "Carrillo", "CC", "333333", "calle 10", "32555555", "j@gmail.com", "masculino", "casado", "1987-03-01", "nuevaeps", "Acudiente");
INSERT INTO tablassimatsql.usuario (nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps, tipoUsuario) VALUES ("Fernando", "Quintero ", "CC", "000004", "calle 11", "32666666", "f@gmail.com", "masculino", "soltero", "2016-04-20", "sanitas", "Estudiante");

INSERT INTO tablassimatsql.sedeeducativa (sedeEducativacol, nid) VALUES ("San Pedro", "12");
INSERT INTO tablassimatsql.sedeeducativa (sedeEducativacol, nid) VALUES ("San Pedro XX", "13");
INSERT INTO tablassimatsql.sedeeducativa (sedeEducativacol, nid) VALUES ("Saleciano", "17");
INSERT INTO tablassimatsql.sedeeducativa (sedeEducativacol, nid) VALUES ("Potosi", "15");

INSERT INTO tablassimatsql.profesores (idUsuariosProfesores, usuario, clave) VALUES (1, "Sharon12", "0000");
INSERT INTO tablassimatsql.profesores (idUsuariosProfesores, usuario, clave) VALUES (2, "pepito13", "1111");
INSERT INTO tablassimatsql.profesores (idUsuariosProfesores, usuario, clave) VALUES (3, "Nini14", "2222");
INSERT INTO tablassimatsql.profesores (idUsuariosProfesores, usuario, clave) VALUES (4, "Johan55", "JO1234");

INSERT INTO tablassimatsql.estudiante (idUsuariosAlumnos, idSede, estrato, idAcudiente) VALUES (1, 1, "3", 4);
INSERT INTO tablassimatsql.estudiante (idUsuariosAlumnos, idSede, estrato, idAcudiente) VALUES (2, 1, "4", 5);
INSERT INTO tablassimatsql.estudiante (idUsuariosAlumnos, idSede, estrato, idAcudiente) VALUES (3, 1, "6", 6);
INSERT INTO tablassimatsql.estudiante (idUsuariosAlumnos, idSede, estrato, idAcudiente) VALUES (4, 1, "1", 4);
INSERT INTO tablassimatsql.estudiante (idUsuariosAlumnos, idSede, estrato, idAcudiente) VALUES (5, 1, "2", 5);
INSERT INTO tablassimatsql.estudiante (idUsuariosAlumnos, idSede, estrato, idAcudiente) VALUES (6, 1, "2", 5);

INSERT INTO tablassimatsql.matricula (idEstudiante, year, periodo, fechaMatricula, grado) VALUES (4, "2021", "1", "2021-01-01", "4");
INSERT INTO tablassimatsql.matricula (idEstudiante, year, periodo, fechaMatricula, grado) VALUES (5, "2021", "1", "2021-01-01", "2");
INSERT INTO tablassimatsql.matricula (idEstudiante, year, periodo, fechaMatricula, grado) VALUES (6, "2021", "2", "2021-06-01", "3");

INSERT INTO `tablassimatsql`.`matricula` (`idEstudiante`, `year`, `periodo`, `fechaMatricula`, `grado`) VALUES ('6', '2021', '2', '2021-06-01', '3');