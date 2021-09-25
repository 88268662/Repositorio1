
package controllers;

import DAO.DAOProfesores;
import TO.TOProfesores;
import java.util.ArrayList;

public class CtrlProfesores {
    
    DAOProfesores profesoresDAO;

    public CtrlProfesores() {
        this.profesoresDAO = new DAOProfesores();
    }
    
    public ArrayList<TOProfesores> consultarProfesores(){
        return profesoresDAO.consultarProfesores();
    }
    
    public int insertarProfesores(TOProfesores toProfesores){
        return profesoresDAO.insertarProfesores(toProfesores);
    }
    
    public boolean actualizarProfesores(TOProfesores toProfesores){
        return profesoresDAO.actualizarProfesores(toProfesores);
    }
    
    public boolean eliminarProfesores(int idProfesores){
        return profesoresDAO.eliminarProfesores(idProfesores);
    }
    
    
}
