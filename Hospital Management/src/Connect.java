import javax.swing.JOptionPane;
import java.sql.*;

public class Connect {
    Connection con = null;
   
        public static Connection ConnectDB(){
        try{
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emergency_medical_management_system","root","");
           return con;
        }catch(ClassNotFoundException | SQLException e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }      
    }
}
