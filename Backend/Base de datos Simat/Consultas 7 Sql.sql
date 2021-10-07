
UPDATE usuario 
SET idUsuario = '24', usuario = 'pedro', clave = '123', tipoUsuario = 'Estudiante', nombres = 'Pedro', apellidos = 'Soto', 
tipoIdentificacion = 'TI-Tarjeta Identidad', identificacion = '2234345', direccion = 'null', telefono = '66666', correo = 'null', 
genero = 'null', estadoCivil = 'null', fechaNacimiento = '1900-01-01', eps = 'null' 
WHERE idusuario = 24

UPDATE estudiante 
SET idEstudiante = '6', idUsuariosEstudiante = '24', idSedeEducativaEstudiante = '0', estrato = '3', nombresAcudiente = 'gdfgd', apellidosAcudiente = 'fggf' 
WHERE idestudiante = 6

ex = (java.sql.SQLIntegrityConstraintViolationException) java.sql.SQLIntegrityConstraintViolationException: 
Cannot add or update a child row: a foreign key constraint 
fails (`tablassimatsql`.`estudiante`, CONSTRAINT `sedeeducativaEstudiante` FOREIGN KEY (`idSedeEducativaEstudiante`) REFERENCES `sedeeducativa` (`idSedeEducativa`))

UPDATE usuario 
SET idUsuario = '24', usuario = 'pedro', clave = '123', tipoUsuario = 'Estudiante', nombres = 'Pedro', apellidos = 'Soto', 
tipoIdentificacion = 'TI-Tarjeta Identidad', identificacion = '2234345', direccion = 'null', telefono = '11111', correo = 'null',
genero = 'null', estadoCivil = 'null', fechaNacimiento = '1900-01-01', eps = 'null' 
WHERE idusuario = 24

UPDATE estudiante 
SET idEstudiante = '6', idUsuariosEstudiante = '24', idSedeEducativaEstudiante = '6', estrato = '5', nombresAcudiente = 'fgdfg', apellidosAcudiente = 'fdgdgdg' 
WHERE idestudiante = 6

INSERT INTO estudiante (idEstudiante, idUsuariosEstudiante, idSedeEducativaEstudiante, estrato, nombresAcudiente, apellidosAcudiente) 
VALUES ('0', '33', '0', '4', 'Florinda', 'Meza')

ex = (java.sql.SQLIntegrityConstraintViolationException) java.sql.SQLIntegrityConstraintViolationException: 
Cannot add or update a child row: a foreign key constraint 
fails (`tablassimatsql`.`estudiante`, CONSTRAINT `sedeeducativaEstudiante` FOREIGN KEY (`idSedeEducativaEstudiante`) REFERENCES `sedeeducativa` (`idSedeEducativa`))



