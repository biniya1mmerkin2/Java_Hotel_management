
package ProjectClass;

import java.sql.Connection;
import java.sql.*;
import javax.swing.JOptionPane;

public class TableCreate {
   
    public static void main(String []args)
    {
         Connection con=null;
         Statement s=null;
        try
        {
            con=ConnectionProvider.getCon();
            s=con.createStatement();
            
            s.executeUpdate("create table userinfodetail(id int primary key auto_increment,Fname varchar(30),LastName varchar(30),Email varchar(30),Country varchar(30),Address varchar(30),Phone varchar(30),CheckIn date,CheckOut date,Room int,noOfDayStay long,totalroomcharge int)");
            s.executeUpdate("create table user(name varchar(200),email varchar(200),password varchar(50),securityQuestion varchar(500),answer varchar(200),address varchar(200),states varchar(100))");
            s.executeUpdate("create table roomInfos(RoomNo varchar(10)not null primary key,RoomType varchar(40),Ac varchar(40),price int,States varchar(40))");
            //
            s.executeUpdate("create table register(id int not null auto_increment primary key,FName varchar(255),LastName varchar(255),email varchar(100),country varchar(100),Address varchar(100),phone varchar(50))");
            JOptionPane.showMessageDialog(null, "Successfully Created");
        
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, e);
            
        
        }
        finally
        {
            try
            {
              con.close();
              s.close();
                
            
            }catch(Exception e)
            {
            
            
            }
        
        }
    
    
    }
}
