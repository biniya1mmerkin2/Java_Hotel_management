
package ProjectClass;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class Select {

    
    public static ResultSet getSelect(String query)
    {
        Connection con=null;
    ResultSet rs=null;
    Statement s=null;
        try
        {
        con=ConnectionProvider.getCon();
        s=con.createStatement();
        rs=s.executeQuery(query);
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return rs;
    }
}
