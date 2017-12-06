package bean;  
import java.sql.*;  


public class LoginDao {  
  
public static boolean validate(LoginBean bean){  
boolean status=false;  
try{  
	Connection con=ConnectionProvider.getCon();  
              
		PreparedStatement ps=con.prepareStatement(  
				"SELECT username=?, password=? FROM users");  
  
		ps.setString(1,bean.getUname());  
		ps.setString(2,bean.getPass());  
              
		ResultSet rs=ps.executeQuery();  
		status=rs.next(); 

              
}catch(Exception e){
	System.out.println(e.getMessage());
}  
  
return status;  
  
}  
}  