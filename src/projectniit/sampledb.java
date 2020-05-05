package projectniit;

import java.sql.Connection; 
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;  

public class sampledb {
	
	// JDBC driver name and database URL 
	 //  static final String JDBC_DRIVER = ;   
	   //static final String DB_URL = ;  
	   
	//  Database credentials 
	//   static final String USER = ; 
	//   static final String PASS = ""; 
	
	public static void main(String[] args) {
		 
	      try { 
	         Class.forName("org.h2.Driver"); 
	             
	         // Open a connection 
	         System.out.println("Connecting to database..."); 
	         Connection con = DriverManager.getConnection("jdbc:h2:~/pcs","sa","");  
	         
	         //Execute a query 
	         Statement stmt = con.createStatement(); 

	         System.out.println("Fetching data from emp_details..."); 
	         String sql = "SELECT * FROM EMP_DETAILS where email='kamar3160@gmail.com'";
	         ResultSet rs = stmt.executeQuery(sql); 
	         
	         // Extract data from result set 
	         if(rs.next()) { 
	            // Retrieve by column name 
	            int id  = rs.getInt("emp_id");
	            String name = rs.getString("name"); 
	            String email = rs.getString("email");  
	            String password = rs.getString("password");
	            String dob = rs.getString("dob");
	            String gender = rs.getString("gender"); 
	            String city = rs.getString("city");  
	            String college = rs.getString("college");
	            int clge_per  = rs.getInt("clge_per");
	            String degree = rs.getString("degree");
	            String branch = rs.getString("branch");
	            int completion  = rs.getInt("completion");
	            int tenth  = rs.getInt("tenth");
	            int twelve  = rs.getInt("twelve");
	            int experience  = rs.getInt("experience");
	            String skill = rs.getString("skill");
	            
	            // Display values 
	            System.out.println("ID        :  " + id); 
	            System.out.println("First     :  " + name); 
	            System.out.println("Email     :  " + email); 
	            System.out.println("Password  :  " + password); 
	            System.out.println("Dob       :  " + dob);
	            System.out.println("Gender    :  " + gender); 
	            System.out.println("City      :  " + city); 
	            System.out.println("college   :  " + college);
	            System.out.println("clge_per  :  " + clge_per);
	            System.out.println("Degree    :  " + degree);
	            System.out.println("branch    :  " + branch); 
	            System.out.println("complet   :  " + completion);
	            System.out.println("tenth     :  " + tenth);
	            System.out.println("twelve    :  " + twelve);
	            
	            System.out.println("experience:  " + experience); 
	            System.out.println("skill    :  " + skill);
	         } 
	         // Clean-up environment 
	         stmt.close(); 
	         con.close();
	      } 
	      catch(Exception e) { 
	    	  System.out.println("Error : " + e);
	      }  
	     
	}

}
