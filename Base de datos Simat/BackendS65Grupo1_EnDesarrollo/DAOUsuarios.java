
package DAO;

import TO.TOUsuarios;
import db.ConexionDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class DAOUsuarios {
    
    private ConexionDB con;
    private final String nombreTabla = "usuario";
  
  

    
     public ArrayList<TOUsuarios> consultarUsuarios(){

        ArrayList<TOUsuarios> usuarios = new ArrayList<>();
        TOUsuarios toUsuario;
        try{
            ResultSet rs = con.consultar(nombreTabla);
            while (rs.next()){
                toUsuario = new TOUsuarios();
                toUsuario.setApellidos(rs.getString("apellidos"));
                toUsuario.setCorreo(rs.getString("correo"));
                toUsuario.setDireccion(rs.getString("direccion"));
                toUsuario.setEps(rs.getString("eps"));
                toUsuario.setEstadoCivil(rs.getString("estadoCivil"));
                toUsuario.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                toUsuario.setGenero(rs.getString("genero"));
                toUsuario.setIdUsuario(rs.getInt("idusuario"));
                toUsuario.setIdentificacion(rs.getString("identificacion"));
                toUsuario.setNombres(rs.getString("nombres"));
                toUsuario.setTelefono(rs.getString("telefono"));
                toUsuario.setTipoIdentificacion(rs.getString("tipoIdentificacion"));
                toUsuario.setTipoUsuario(rs.getString("tipoUsuario"));
                
                usuarios.add(toUsuario);
            }
        return usuarios;
        }catch(SQLException ex){
            System.out.println("Error en DAOUsuarios.consultarUsuarios: " + ex.getMessage());
            return null;
        }
    
    }
