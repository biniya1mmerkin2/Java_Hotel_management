
package ProjectClass;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


public class ConnectionProvider {
    
    public static Connection getCon()
    {
        try
        {
            new com.mysql.cj.jdbc.Driver();
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotelmanagementsystem","root", "");
            return con;
        
        }catch(Exception e)
        {
            return null;
        
        }   
        
            
         
        
    
    
        
    }
}
