package bean;  
  
import java.sql.*;  
  
public class AddBikeDao {  
  

	public static int addBike(Bike b){  
		
		int status=0;  

		
		try{  
			Connection con=ConnectionProvider.getCon();  
			PreparedStatement ps=con.prepareStatement("insert into bike (ownerName, ownerId, bikeId, price, rating, location) values(?,?,?,?,?,?)");  
			ps.setString(1,b.getOwnerName());
			ps.setInt(2,b.getOwnerId());
			ps.setInt(3,b.getBikeId());
			ps.setDouble(4,b.getPrice());
			ps.setInt(5,b.getRating());
			ps.setString(6,b.getLocation());
			status=ps.executeUpdate();  

		}catch(Exception e){
			System.out.println(e.getMessage());
		}  
      
return status;  
}  
  
}  