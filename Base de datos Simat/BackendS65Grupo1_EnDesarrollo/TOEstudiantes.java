
package TO;

import java.sql.Date;

public class TOEstudiantes extends TOUsuarios {
    
    private int idEstudiante;
    private int idUsuariosEstudiante;
    private int idSede;
    private String estrato;
    private int idAcudiente;
    private String nombresAcudiente;
    private String apellidosAcudiente;
    private String sedeEducativaCol;
    private String nid;
    
    

    public TOEstudiantes() {
    }

    public TOEstudiantes(String nombres, String apellidos, String tipoIdentificacion, String identificacion) {
        super(nombres, apellidos, tipoIdentificacion, identificacion);
    }

    public TOEstudiantes(int idEstudiante, int idUsuariosEstudiante, int idSede, String estrato, int idAcudiente, String nombresAcudiente, String apellidosAcudiente, String sedeEducativaCol, String nid, int idUsuario, String nombres, String apellidos, String tipoIdentificacion, String identificacion, String direccion, String telefono, String correo, String genero, String estadoCivil, Date fechaNacimiento, String eps, String tipoUsuario) {
        super(idUsuario, nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps, tipoUsuario);
        this.idEstudiante = idEstudiante;
        this.idUsuariosEstudiante = idUsuariosEstudiante;
        this.idSede = idSede;
        this.estrato = estrato;
        this.idAcudiente = idAcudiente;
        this.nombresAcudiente = nombresAcudiente;
        this.apellidosAcudiente = apellidosAcudiente;
        this.sedeEducativaCol = sedeEducativaCol;
        this.nid = nid;
    }
    public int getIdEstudiante() { 
        return idEstudiante;
    }

    public void setIdEstudiante(int idEstudiante) {
        this.idEstudiante = idEstudiante;
    }


    public int getIdUsuariosEstudiante() {
        return idUsuariosEstudiante;
    }

    public void setIdUsuariosEstudiante(int idUsuariosEstudiante) {
        this.idUsuariosEstudiante = idUsuariosEstudiante;
    }

    public int getIdSede() {
        return idSede;
    }

    public void setIdSede(int idSede) {
        this.idSede = idSede;
    }


}
