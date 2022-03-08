
package ProjectClass;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class DeleteClass {
    
    public static void deleteRow(String query,String msg)
    {
        Connection con;
        Statement s;
        con=ConnectionProvider.getCon();
        try {
            s=con.createStatement();
           int j= JOptionPane.showConfirmDialog(null, msg,"Delete",JOptionPane.OK_OPTION);
              if(j==0)
              {
            s.executeUpdate(query);
            JOptionPane.showMessageDialog(null, "Deleted");
              }
                    
                    
        } catch (SQLException ex) {
            Logger.getLogger(DeleteClass.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
}
