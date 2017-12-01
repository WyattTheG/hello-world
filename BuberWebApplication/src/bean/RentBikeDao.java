package bean;  
  
import java.sql.*;  
  
public class RentBikeDao {  
  

	public static int rent(Bike b){  
		
		int status=0;  

		try{  
			Connection con=ConnectionProvider.getCon();  
			PreparedStatement ps=con.prepareStatement("insert into rentedBikes (ownerName, ownerId,bikeId, price, rating, location) SELECT ownerName, ownerId, bikeId, price, rating, location FROM bike WHERE bikeId=?");  
			//ps.setDouble(1,b.getTimeIn());
			//ps.setDouble(2,b.getTimeOut());
			ps.setInt(1,b.getDesiredBikeId());
			status=ps.executeUpdate();  

		}catch(Exception e){
			System.out.println(e.getMessage());
		}  
      
return status;  
}  
  
}  