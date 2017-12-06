package bean;  
  
import java.sql.*;  
  
public class UpdateRatingDao {  
  

	public static int update(Rating r){  
		
		int status=0;  

		try{  
			Connection con=ConnectionProvider.getCon();  
			PreparedStatement ps=con.prepareStatement("UPDATE rented_bikes SET rating=? WHERE bikeId=?");  
			ps.setInt(1,r.getRatingInt());   
			ps.setInt(2,r.getRatingId());
			status=ps.executeUpdate();
			ps.close();

		}catch(Exception e){
			System.out.println(e.getMessage());
		}  
      
return status;  
}  
  
}  