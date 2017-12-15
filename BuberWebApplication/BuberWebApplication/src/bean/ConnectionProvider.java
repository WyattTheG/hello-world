package bean;  
import java.sql.*;
//import java.util.logging.*;
import static bean.Provider.*;  
 

public class ConnectionProvider {  

	private static Connection con=null;  

	static{  

		try{  

			Class.forName(DRIVER);  
			con=DriverManager.getConnection(CONNECTION_URL + "/" + DB_NAME,USERNAME,PASSWORD);  

		}catch(Exception e){}  

	}  
  
/*
	private static Logger logger = Logger.getLogger("InfoLogging");

	  public static void main(String[] args) {
	    logger.info("Logging an INFO-level message");
	  }
	  
	private static Connection con=null;  
	static  {
	      try {
	      Class.forName("DRIVER");
	      String dbName = System.getProperty("RDS_DB_NAME");
	      String userName = System.getProperty("RDS_USERNAME");
	      String password = System.getProperty("RDS_PASSWORD");
	      String hostname = System.getProperty("RDS_HOSTNAME");
	      String port = System.getProperty("RDS_PORT");
	      String jdbcUrl = "jdbc:postgresql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;
	      //logger.getLogger("Getting remote connection with connection string from environment variables.");
	      con = DriverManager.getConnection(jdbcUrl);
	      logger.info("Remote connection successful.");
	}catch(Exception e){
		System.out.println(e.getMessage());}  
	}

	*/
	
	public static Connection getCon(){  
		return con;  
		}  
	

	  
	
}

	


/*
private static Connection getCon() {
    if (System.getProperty("RDS_HOSTNAME") != null) {
      try {
      Class.forName("org.mysql.Driver");
      String dbName = System.getProperty("RDS_DB_NAME");
      String userName = System.getProperty("RDS_USERNAME");
      String password = System.getProperty("RDS_PASSWORD");
      String hostname = System.getProperty("RDS_HOSTNAME");
      String port = System.getProperty("RDS_PORT");
      String jdbcUrl = "jdbc:postgresql://" + hostname + ":" + port + "/" + dbName + "?user=" + userName + "&password=" + password;
     // logger.trace("Getting remote connection with connection string from environment variables.");
      Connection con = DriverManager.getConnection(jdbcUrl);
      //logger.info("Remote connection successful.");
      return con;
   // }
    //catch (ClassNotFoundException e) { logger.warn(e.toString());}
    //catch (SQLException e) { logger.warn(e.toString());}
    
    //return null;
      	}
  }
  */

