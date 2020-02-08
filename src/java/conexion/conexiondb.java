/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;
import java.sql.*;
/**
 *
 * @author marcalegriamolina
 */
public class conexiondb {
    public static Connection getConnection(){
    
        Connection con = null;
        try{
         Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/torneospadel",
                    "root", "root");
            System.out.println("Conexion correcta");
        }catch(Exception e){
            
            System.out.println("Error" +e);
        
        }   
        return con;
    }
    public static void main (String[] args ){
        
        conexiondb.getConnection();
    }
}
