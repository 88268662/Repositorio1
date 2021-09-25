
package TO;

import java.sql.Date;


public class TOProfesores extends TOUsuarios {
    
    private int idProfesorescol;
    private int idUsuariosProfesores;
    private String usuario;
    private String clave;

    public TOProfesores() {
    }

    public TOProfesores(int idProfesorescol, int idUsuariosProfesores, String nombres, String apellidos, String tipoIdentificacion, String identificacion) {
        super(nombres, apellidos, tipoIdentificacion, identificacion);
        
        //Nota: Porque no lleva atributos.
    }
/*
    public TOProfesores(int idProfesorescol, int idUsuariosProfesores, String usuario, String clave, int idUsuario, String nombres, String apellidos, String tipoIdentificacion, String identificacion, String direccion, String telefono, String correo, String genero, String estadoCivil, Date fechaNacimiento, String eps, String tipoUsuario) {
        super(idUsuario, nombres, apellidos, tipoIdentificacion, identificacion, direccion, telefono, correo, genero, estadoCivil, fechaNacimiento, eps, tipoUsuario);
        this.idProfesorescol = idProfesorescol;
        this.idUsuariosProfesores = idUsuariosProfesores;
        this.usuario = usuario;
        this.clave = clave;
    }
*/
    public int getIdProfesorescol() {
        return idProfesorescol;
    }

    public void setIdProfesorescol(int idProfesorescol) {
        this.idProfesorescol = idProfesorescol;
    }

    public int getIdUsuariosProfesores() {
        return idUsuariosProfesores;
    }

    public void setIdUsuariosProfesores(int idUsuariosProfesores) {
        this.idUsuariosProfesores = idUsuariosProfesores;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
    
    
}
