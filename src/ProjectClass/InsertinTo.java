
package ProjectClass;

import java.sql.Connection;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class InsertinTo {
    
    
    public static void setData(String query,String msg)
    {
        Connection con;
        Statement s;
        try
        {
            con=ConnectionProvider.getCon();
            s=con.createStatement();
            s.executeUpdate(query);
            if(!msg.equals(""))
                JOptionPane.showMessageDialog(null, msg);
            
        
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Similar room number isn`t possible check it!"+e);
        }
    }
    
}
