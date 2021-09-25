
package db;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionDB {
    
    private String DB_driver;
    private String url;
    private String db;
    private String host;
    private String username;
    private String password;
    private Connection con;
    private Statement stmt;
    private ResultSet rs;
    
    public ConexionDB() throws SQLException{
        DB_driver = "com.mysql.jdbc.Driver"; //Esta es la libreria
        host = "localhost:3306";
        db = "tablassimatsql";
        url = "jdbc:mysql://" + host + "/" + db;
        username = "root";
        password = "root";
        
        try{
            Class.forName(DB_driver);
        }catch(ClassNotFoundException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try{
            con = DriverManager.getConnection(url, username, password);
            con.setTransactionIsolation(8);
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private Connection getConection(){
        try{
            con.setAutoCommit(true);
            return con;
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    private void closeConection(Connection con){
        try{
            con.close();
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean commitDB(){
        try{
            con.commit();
            return true;
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    public boolean rollbackDB(){
        try{
            con.rollback();
            return true;
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
    //nombreTabla = usuarios
    //columnas = [idUsuarios,nombres, apellidos]
    //valores = [1, camila, pimentel]
    
    public int insertar(String nombreTabla, String[] valores ){
        
        ArrayList<String> columnas = getTableColumns(nombreTabla);
        StringBuilder query = new StringBuilder("INSERT INTO" );
        query.append(nombreTabla);
        query.append("(");
        
        for (int i = 0; i < valores.length; i++){
            query.append(columnas.get(i));
            if(i < valores.length-1)
                query.append(",");
        }
        
        query.append(") VALUES (");
        
        for (int i = 0; i < valores.length; i++){
            query.append(valores[i]);
            if(i < valores.length-1)
                query.append(",");
        }
        
        query.append(")");
        
        try{
            stmt = con.createStatement();
            rs = stmt.executeQuery(query.toString());
            return rs.getInt("id" + nombreTabla);
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }catch(RuntimeException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }catch(Exception ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }   
        
        //Los catch en la clase insetar retornan 0 porque la clase es de tipo entero (int)
    }
    
    
    public boolean actualizar(String nombreTabla, String[] valores, int  id ){
        
        //UPDATE sedeeducativa SET sedeEducativacol = "Saleciano", nid = "17" WHERE idSedeEducativa = 7;
        
        ArrayList<String> columnas = getTableColumns(nombreTabla);
        StringBuilder query = new StringBuilder("UPDATE" );
        query.append(nombreTabla);
        query.append("SET");
        
        for (int i = 0; i < columnas.size(); i++){
            query.append(columnas.get(i));
            query.append(" = '");
            query.append(valores[i]);
            query.append("'");
            
            if(i < columnas.size()-1)
                query.append(",");
        }
        query.append("WHERE id");
        query.append(nombreTabla);
        query.append(" = ");
        query.append(id);
        
        try{
            stmt = con.createStatement();
            return stmt.execute(query.toString());
            
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }catch(RuntimeException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }catch(Exception ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }   
        
        //Los catch en la clase actualizar retornan false porque la clase es de tipo booleano
    }
    
    public ResultSet consultar(String nombreTabla){
        
       String query = "SELECT * FROM " + nombreTabla;
        
        try{
            stmt = con.createStatement();
            rs =  stmt.executeQuery(query);
            return rs;
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }catch(RuntimeException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }catch(Exception ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } 
        
        //Los catch de la clase consultar no retornan nada porque es un consultar por eso retornan null (vacio)
    }
    
    
    public boolean eliminar(String nombreTabla, int id){
    
        String query = "DELET FROM " + nombreTabla + "WHERE id" + nombreTabla + " = " + id;
        
        try{
            stmt = con.createStatement();
            return stmt.execute(query); 
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }catch(RuntimeException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }catch(Exception ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } 
        
       
    }
    
    
    public ArrayList<String> getTableColumns(String nombreTabla){
        
       String query = "SELECT COLUMN_NAME from INFORMATION_SCHEMA.COLUMNS where TABLE_SCHEMA = '"+db+"' and TABLE_NAME = '"+nombreTabla+"' order by ORDINAL POSITION";
       
       ArrayList<String> columnas = new ArrayList<>();
        
        try{
            stmt = con.createStatement();
            rs =  stmt.executeQuery(query);
            while(rs.next()){
                
                if(!rs.getString("COLUMN_NAME").equals("id" + nombreTabla)){
                    columnas.add(rs.getString("COLUMN_NAME"));
                }
            }
            return columnas;
        }catch(SQLException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }catch(RuntimeException ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }catch(Exception ex){
            Logger.getLogger(ConexionDB.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } 
        
        //Los catch de la clase consultar no retornan nada porque es un consultar por eso retornan null (vacio)
    }
    
    
    
}
