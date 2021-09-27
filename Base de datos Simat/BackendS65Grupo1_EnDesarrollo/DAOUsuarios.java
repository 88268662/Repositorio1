
package DAO;

import TO.TOUsuarios;
import db.ConexionDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DAOUsuarios {
    
    private ConexionDB con;
    private final String nombreTabla = "usuario";
  
  public DAOUsuarios() {
        
        try{
            con = new ConexionDB();
        }catch(SQLException ex){
            System.out.println("Error en DAOUsuarios.constructor: " + ex.getMessage());
        }
    }
    
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

    public int insertarUsuarios(TOUsuarios toUsuario){
        
        String[] valores = {toUsuario.getTipoUsuario(), toUsuario.getNombres(), toUsuario.getGenero(), toUsuario.getApellidos(), toUsuario.getCorreo(), toUsuario.getDireccion(), toUsuario.getEps(), toUsuario.getEstadoCivil(), toUsuario.getIdentificacion(), toUsuario.getTipoIdentificacion(), toUsuario.getTelefono(), String.valueOf(toUsuario.getIdUsuario()), String.valueOf(toUsuario.getFechaNacimiento())};
    
        try{
            return con.insertar(nombreTabla, valores);
        }catch(Exception ex){
            System.out.println("Error en DAOUsuarios.insertarUsuarios: " + ex.getMessage());
            return 0;
        }
    }
    
public boolean actualizarUsuarios(TOUsuarios toUsuario){
        
        String[] valores = {toUsuario.getTipoUsuario(), toUsuario.getNombres(), toUsuario.getGenero(), toUsuario.getApellidos(), toUsuario.getCorreo(), toUsuario.getDireccion(), toUsuario.getEps(), toUsuario.getEstadoCivil(), toUsuario.getIdentificacion(), toUsuario.getTipoIdentificacion(), toUsuario.getTelefono(), String.valueOf(toUsuario.getIdUsuario()), String.valueOf(toUsuario.getFechaNacimiento()) };
    
        try{
            return con.actualizar(nombreTabla, valores, toUsuario.getIdUsuario());
        }catch(Exception ex){
            System.out.println("Error en DAOUsuarios.actuaizarUsuarios: " + ex.getMessage());
            return false;
        }
    }
    
    public boolean eliminarUsuarios(int idUsuarios){
        
        try{
            return con.eliminar(nombreTabla, idUsuarios);
            }catch(Exception ex){
            System.out.println("Error en DAOUsuarios.eliminarUsuarios: " + ex.getMessage());
            return false;
        }
    
    }
    }
