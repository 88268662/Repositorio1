
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
        
    }

       
}
