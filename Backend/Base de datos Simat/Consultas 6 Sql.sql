
INSERT INTO usuario (idUsuario, usuario, clave, tipoUsuario, nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps) 
VALUES ('0', 'camilo', '123', 'Estudiante', 'Camilo', 'Cataño', 'TI-Tarjeta Identidad', '3434345', 'calle 20', '4343', 'cam@gmail.com', 'Masculino', 'Solter@', '1990-01-01', 'sanitas')

INSERT INTO estudiante (idEstudiante, idUsuariosEstudiante, idSede, estrato, nombresAcudiente, apellidosAcudiente) 
VALUES ('0', '28', '0', '5', 'Ramon', 'Cataño')

INSERT INTO estudiante (idEstudiante, idUsuariosEstudiante, idSede, estrato, nombresAcudiente, apellidosAcudiente) 
VALUES ('0', '29', '0', '4', 'dsfs', 'dfsdf')

UPDATE estudiante 
SET idEstudiante = '1', idUsuariosEstudiante = '1', idSede = '1', estrato = '10', nombresAcudiente = 'MiLia', apellidosAcudiente = 'Quintana' 
WHERE idestudiante = 1