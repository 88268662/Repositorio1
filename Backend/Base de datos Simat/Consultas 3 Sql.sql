select nombres, apellidos, tipoIdentificacion, idUsuariosAlumnos, idSede, sedeEducativacol, idAcudiente, fechaMatricula FROM matricula 
inner join estudiante on  matricula.idEstudiante = estudiante.idAlumnos
inner join usuario on estudiante.idUsuariosAlumnos = usuario.idUsuario
inner join sedeeducativa on estudiante.idSede = sedeeducativa.idSedeEducativa
where usuario.eps = "sanitas"


SELECT matricula.*, estudiante.*  FROM matricula 
INNER JOIN estudiante ON matricula.idEstudiante = estudiante.idAlumnos


SELECT matricula.*, estudiante.*  FROM matricula 
LEFT JOIN estudiante ON matricula.idEstudiante = estudiante.idAlumnos
LEFT JOIN usuario ON estudiante.idUsuarioAlumnos = usuario.idUsuario
LEFT JOIN sedeeducativa ON estudiante.idSede = sedeeducativa.idSedeEducativa


SELECT estudiante.*, usuario.*, sedeeducativa.*  FROM estudiante 
LEFT JOIN usuario ON estudiante.idUsuariosAlumnos = usuario.idUsuario
LEFT JOIN sedeeducativa ON estudiante.idSede = sedeeducativa.idSedeEducativa

//Crear una vista llamada vistamatricula:

CREATE VIEW `vistamatricula` AS
SELECT `matricula`.`idMatricula` AS `idMatricula`,
        `matricula`.`idEstudiante` AS `idEstudiante`,
        `usuario`.`nombres` AS `NombreEstudiante`,
        `usuario`.`apellidos` AS `ApellidoEstudiante`,
        `matricula`.`year` AS `year`,
        `matricula`.`periodo` AS `periodo`,
        `matricula`.`fechaMatricula` AS `fechaMatricula`,
        `matricula`.`grado` AS `grado`,
        sedeeducativa.sedeEducativaCol AS NombreSedeEducativa, 
        sedeeducativa.nid AS NIDSedeEducativa 
FROM matricula
LEFT JOIN estudiante ON matricula.idEstudiante = estudiante.idAlumnos
LEFT JOIN usuario ON estudiante.idUsuariosAlumnos = usuario.idUsuario
LEFT JOIN sedeeducativa ON estudiante.idSede = sedeeducativa.idSedeEducativa

//Crear una vista llamada vistaestudiante:
CREATE  VIEW `vistaestudiante` AS
    SELECT 
        `estudiante`.`idAlumnos` AS `idAlumnos`,
        `estudiante`.`idUsuariosAlumnos` AS `idUsuariosAlumnos`,
        `usuario`.`nombres` AS `NombreEstudiante`,
        `usuario`.`apellidos` AS `ApellidoEstudiante`,
        `usuario`.`tipoIdentificacion` AS `tipoIdentificacion`,
        `usuario`.`identificacion` AS `identificacion`,
        `usuario`.`direccion` AS `direccion`,
        `usuario`.`telefono` AS `telefono`,
        `usuario`.`correo` AS `correo`,
        `usuario`.`genero` AS `genero`,
        `usuario`.`estadoCivil` AS `estadoCivil`,
        `usuario`.`fechaNacimiento` AS `fechaNacimiento`,
        `usuario`.`eps` AS `eps`,
        `sedeeducativa`.`sedeEducativacol` AS `NombreSedeEducativa`,
        `sedeeducativa`.`nid` AS `NIDSedeEducativa`,
        `estudiante`.`idSede` AS `IDSede`,
        `estudiante`.`estrato` AS `estrato`,
        `estudiante`.`idAcudiente` AS `idAcudiente`,
        `matricula`.`year` AS `year`,
        `matricula`.`periodo` AS `periodo`,
        `matricula`.`fechaMatricula` AS `fechaMatricula`
    FROM
        (((`estudiante`
        JOIN `usuario` ON ((`estudiante`.`idUsuariosAlumnos` = `usuario`.`idUsuario`)))
        JOIN `sedeeducativa` ON ((`estudiante`.`idSede` = `sedeeducativa`.`idSedeEducativa`)))
        LEFT JOIN `matricula` ON ((`estudiante`.`idAlumnos` = `matricula`.`idEstudiante`)))
        
SELECT matricula.*, estudiante.*  FROM matricula 
LEFT JOIN estudiante ON matricula.idEstudiante = estudiante.idAlumnos
LEFT JOIN usuario ON estudiante.idUsuarioAlumnos = usuario.idUsuario
LEFT JOIN sedeeducativa ON estudiante.idSede = sedeeducativa.idSedeEducativavistamatricula1vistaestudiantevistaestudiante
        
