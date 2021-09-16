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