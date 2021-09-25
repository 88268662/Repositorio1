
package controllers;

import DAO.DAOEstudiantes;
import TO.TOEstudiantes;
import java.util.ArrayList;


public class CtrlEstudiantes {
    
    DAOEstudiantes estudiantesDAO;

    public CtrlEstudiantes() {
        this.estudiantesDAO = new DAOEstudiantes();
    }
    
    public ArrayList<TOEstudiantes> consultarEstudiantes(){
        return estudiantesDAO.consultarEstudiantes();
    }
    
    public int insertarEstudiantes(TOEstudiantes toEstudiantes){
        return estudiantesDAO.insertarEstudiantes(toEstudiantes);
    }
    
    public boolean actualizarEstudiantes(TOEstudiantes toEstudiantes){
        return estudiantesDAO.actualizarEstudiantes(toEstudiantes);
    }
    
    public boolean eliminarEstudiantes(int idEstudiantes){
        return estudiantesDAO.eliminarEstudiantes(idEstudiantes);
    }
    
    
}
