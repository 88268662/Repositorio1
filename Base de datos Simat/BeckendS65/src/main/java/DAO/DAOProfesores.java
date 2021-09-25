
package DAO;


import TO.TOProfesores;
import db.ConexionDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class DAOProfesores {
    
    private ConexionDB con;
    private final String nombreTabla = "vistaprofesor";
    

    public DAOProfesores() { 
        
        try{
            con = new ConexionDB();
        }catch(SQLException ex){
            System.out.println("Error en DAOProfesores.constructor: " + ex.getMessage());
        }
    }
       
    public ArrayList<TOProfesores> consultarProfesores(){
        
        ArrayList<TOProfesores> profesores = new ArrayList<>();
        TOProfesores toProfesor;
        try{
            ResultSet rs = con.consultar(nombreTabla);
            while (rs.next()){
                toProfesor = new TOProfesores();
                toProfesor.setApellidos(rs.getString("apellidos"));
                toProfesor.setCorreo(rs.getString("correo"));
                toProfesor.setDireccion(rs.getString("direccion"));
                toProfesor.setEps(rs.getString("eps"));
                toProfesor.setEstadoCivil(rs.getString("estadoCivil"));
                toProfesor.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                toProfesor.setGenero(rs.getString("genero"));          
                toProfesor.setIdentificacion(rs.getString("identificacion"));
                toProfesor.setNombres(rs.getString("nombres"));
                toProfesor.setTelefono(rs.getString("telefono"));
                toProfesor.setTipoIdentificacion(rs.getString("tipoIdentificacion"));
                toProfesor.setTipoUsuario(rs.getString("tipoUsuario"));
                toProfesor.setIdProfesorescol(rs.getInt("idProfesorescol"));
                toProfesor.setIdUsuariosProfesores(rs.getInt("idUsuariosProfesores"));
                toProfesor.setUsuario(rs.getString("usuario"));
                toProfesor.setClave(rs.getString("clave"));
         
                profesores.add(toProfesor);
            }
            return profesores;
        }catch(SQLException ex){
            System.out.println("Error en DAOProfesores.consultarProfesores: " + ex.getMessage());
            return null;
        }
    
    }
    
    public int insertarProfesores(TOProfesores toProfesor){
        
        String[] valores = {toProfesor.getTipoUsuario(), toProfesor.getNombres(), toProfesor.getGenero(), toProfesor.getApellidos(), toProfesor.getCorreo(), toProfesor.getDireccion(), toProfesor.getEps(), toProfesor.getEstadoCivil(), toProfesor.getIdentificacion(), toProfesor.getTipoIdentificacion(), toProfesor.getTelefono(), String.valueOf(toProfesor.getFechaNacimiento()), String.valueOf(toProfesor.getIdProfesorescol()), String.valueOf(toProfesor.getIdUsuariosProfesores()), toProfesor.getUsuario(), toProfesor.getClave()  };
    
        try{
            return con.insertar(nombreTabla, valores);
        }catch(Exception ex){
            System.out.println("Error en DAOProfesores.insertarEstudantes: " + ex.getMessage());
            return 0;
        }
    
    }
    public boolean actualizarProfesores(TOProfesores toProfesor){
        
        String[] valores = {toProfesor.getTipoUsuario(), toProfesor.getNombres(), toProfesor.getGenero(), toProfesor.getApellidos(), toProfesor.getCorreo(), toProfesor.getDireccion(), toProfesor.getEps(), toProfesor.getEstadoCivil(), toProfesor.getIdentificacion(), toProfesor.getTipoIdentificacion(), toProfesor.getTelefono(), String.valueOf(toProfesor.getFechaNacimiento()), String.valueOf(toProfesor.getIdProfesorescol()), String.valueOf(toProfesor.getIdUsuariosProfesores()), toProfesor.getUsuario(), toProfesor.getClave()  };
    
        try{
            return con.actualizar(nombreTabla, valores, toProfesor.getIdProfesorescol());
        }catch(Exception ex){
            System.out.println("Error en DAOProfesores.actualizarProfesores: " + ex.getMessage());
            return false;
        }
    }
    
    
    public boolean eliminarProfesores(int idProfesorescol){
        
        try{
            return con.eliminar(nombreTabla, idProfesorescol);
        
        }catch(Exception ex){
            System.out.println("Error en DAOProfesores.eliminarProfesores: " + ex.getMessage());
            return false;
        }
    
    
    }
    
}

            

    
    
    
    
    
    
    
    
    
    
    
    
    
