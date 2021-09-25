package DAO;


import TO.TOEstudiantes;
import db.ConexionDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class DAOEstudiantes {
    
    private ConexionDB con;
    private final String nombreTabla = "vistaestudiante";
    

    public DAOEstudiantes() { 
        
        try{
            con = new ConexionDB();
        }catch(SQLException ex){
            System.out.println("Error en DAOEstudiantes.constructor: " + ex.getMessage());
        }
    }
       
    public ArrayList<TOEstudiantes> consultarEstudiantes(){
        
        ArrayList<TOEstudiantes> estudiantes = new ArrayList<>();
        TOEstudiantes toEstudiante;
        try{
            ResultSet rs = con.consultar(nombreTabla);
            while (rs.next()){
                toEstudiante = new TOEstudiantes();
                toEstudiante.setApellidos(rs.getString("apellidos"));
                toEstudiante.setCorreo(rs.getString("correo"));
                toEstudiante.setDireccion(rs.getString("direccion"));
                toEstudiante.setEps(rs.getString("eps"));
                toEstudiante.setEstadoCivil(rs.getString("estadoCivil"));
                toEstudiante.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                toEstudiante.setGenero(rs.getString("genero"));
                toEstudiante.setIdUsuariosEstudiante(rs.getInt("idUsuariosEstudiante"));
                toEstudiante.setIdentificacion(rs.getString("identificacion"));
                toEstudiante.setNombres(rs.getString("nombres"));
                toEstudiante.setTelefono(rs.getString("telefono"));
                toEstudiante.setTipoIdentificacion(rs.getString("tipoIdentificacion"));
                toEstudiante.setTipoUsuario(rs.getString("tipoUsuario"));
                toEstudiante.setIdEstudiante(rs.getInt("idEstudiante"));
                toEstudiante.setIdSede(rs.getInt("idSede"));
                toEstudiante.setEstrato(rs.getString("estrato"));
                toEstudiante.setIdAcudiente(rs.getInt("idAcudiente"));
                toEstudiante.setNombresAcudiente(rs.getString("nombresAcudiente"));
                toEstudiante.setApellidosAcudiente(rs.getString("apellidosAcudiente"));
                toEstudiante.setSedeEducativaCol(rs.getString("sedeEducativaCol"));
                toEstudiante.setNid(rs.getString("nid"));
                 
                estudiantes.add(toEstudiante);
            }
            return estudiantes;
        }catch(SQLException ex){
            System.out.println("Error en DAOEstudiantes.consultarEstudiantes: " + ex.getMessage());
            return null;
        }
    
    }
    
    public int insertarEstudiantes(TOEstudiantes toEstudiante){
        
        String[] valores = {toEstudiante.getTipoUsuario(), toEstudiante.getNombres(), toEstudiante.getGenero(), toEstudiante.getApellidos(), toEstudiante.getCorreo(), toEstudiante.getDireccion(), toEstudiante.getEps(), toEstudiante.getEstadoCivil(), toEstudiante.getIdentificacion(), toEstudiante.getTipoIdentificacion(), toEstudiante.getTelefono(), String.valueOf(toEstudiante.getIdUsuariosEstudiante()), String.valueOf(toEstudiante.getFechaNacimiento()), String.valueOf(toEstudiante.getIdEstudiante()), String.valueOf(toEstudiante.getIdSede()), toEstudiante.getEstrato(), String.valueOf(toEstudiante.getIdAcudiente()), toEstudiante.getNombresAcudiente(), toEstudiante.getApellidosAcudiente(), toEstudiante.getSedeEducativaCol(), toEstudiante.getNid() };
    
        try{
            return con.insertar(nombreTabla, valores);
        }catch(Exception ex){
            System.out.println("Error en DAOEstudiantes.insertarEstudantes: " + ex.getMessage());
            return 0;
        }
    
    }
    public boolean actualizarEstudiantes(TOEstudiantes toEstudiante){
        
        String[] valores = {toEstudiante.getTipoUsuario(), toEstudiante.getNombres(), toEstudiante.getGenero(), toEstudiante.getApellidos(), toEstudiante.getCorreo(), toEstudiante.getDireccion(), toEstudiante.getEps(), toEstudiante.getEstadoCivil(), toEstudiante.getIdentificacion(), toEstudiante.getTipoIdentificacion(), toEstudiante.getTelefono(), String.valueOf(toEstudiante.getIdUsuariosEstudiante()), String.valueOf(toEstudiante.getFechaNacimiento()), String.valueOf(toEstudiante.getIdEstudiante()), String.valueOf(toEstudiante.getIdSede()), toEstudiante.getEstrato(), String.valueOf(toEstudiante.getIdAcudiente()), toEstudiante.getNombresAcudiente(), toEstudiante.getApellidosAcudiente(), toEstudiante.getSedeEducativaCol(), toEstudiante.getNid() };
    
        try{
            return con.actualizar(nombreTabla, valores, toEstudiante.getIdEstudiante());
        }catch(Exception ex){
            System.out.println("Error en DAOEstudiantes.actualizarEstudiantes: " + ex.getMessage());
            return false;
        }
    }
    
    
    public boolean eliminarEstudiantes(int idEstudiante){
        
        try{
            return con.eliminar(nombreTabla, idEstudiante);
        
        }catch(Exception ex){
            System.out.println("Error en DAOEstudiantes.eliminarEstudiantes: " + ex.getMessage());
            return false;
        }
    
    
    }
    
}

            

    
    
    
    
    
    
    
    
    
    
    
    
    
