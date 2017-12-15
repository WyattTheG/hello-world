package bean;  
  
import java.sql.*;  
  
public class ListBikeDao {  
  

	public static int listBike(Bike b){  
		
		int status=0;  

		
		try{  
			Connection con=ConnectionProvider.getCon();  
			PreparedStatement ps=con.prepareStatement("SELECT * from bike");  
			status=ps.executeUpdate();  

		}catch(Exception e){
			System.out.println(e.getMessage());
		}  
      
return status;  
}  
  
}  