
package DAO;

import TO.TOUsuarios;
import db.ConexionDB;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class DAOUsuarios {
    
    private ConexionDB con;
    private final String nombreTabla = "usuario";
  
  
