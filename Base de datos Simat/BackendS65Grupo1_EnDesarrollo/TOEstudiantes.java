
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

    public String getEstrato() {
        return estrato;
    }

    public void setEstrato(String estrato) {
        this.estrato = estrato;
    }

    public int getIdAcudiente() {
        return idAcudiente;
    }

    public void setIdAcudiente(int idAcudiente) {
        this.idAcudiente = idAcudiente;
    }

    public String getSedeEducativaCol() {
        return sedeEducativaCol;
    }

    public void setSedeEducativaCol(String sedeEducativaCol) {
        this.sedeEducativaCol = sedeEducativaCol;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public String getNombresAcudiente() {
        return nombresAcudiente;
    }

    public void setNombresAcudiente(String nombresAcudiente) {
        this.nombresAcudiente = nombresAcudiente;
    }

    public String getApellidosAcudiente() {
        return apellidosAcudiente;
    }

    public void setApellidosAcudiente(String apellidosAcudiente) {
        this.apellidosAcudiente = apellidosAcudiente;
    }
    
      
}
