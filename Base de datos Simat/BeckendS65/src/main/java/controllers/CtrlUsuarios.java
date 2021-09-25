
package controllers;

import DAO.DAOUsuarios;
import TO.TOUsuarios;
import java.util.ArrayList;


public class CtrlUsuarios {
    
    DAOUsuarios usuariosDAO;

    public CtrlUsuarios() {
        this.usuariosDAO = new DAOUsuarios();
    }
    
    public ArrayList<TOUsuarios> consultarUsuarios(){
        return usuariosDAO.consultarUsuarios();
    }
    
    public int insertarUsuarios(TOUsuarios toUsuarios){
        return usuariosDAO.insertarUsuarios(toUsuarios);
    }
    
    public boolean actualizarUsuarios(TOUsuarios toUsuarios){
        return usuariosDAO.actualizarUsuarios(toUsuarios);
    }
    
    public boolean eliminarUsuarios(int idUsuarios){
        return usuariosDAO.eliminarUsuarios(idUsuarios);
    }
    
    
    
    
}
