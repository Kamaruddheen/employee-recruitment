package projectniit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class employer_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("\t\t-----Employer Update-----");
			System.out.println("Gathering Details from User");
			
			String name =  request.getParameter("name");
			String email =  request.getParameter("email");
			String password =  request.getParameter("password");
			String city =  request.getParameter("city");
			String skill =  request.getParameter("skill");
			
			System.out.println("--- User Employer Details---\n"+name +"\n"+ email +"\n"+ password +"\n"+ city +"\n"+ skill);
			
			Class.forName("org.h2.Driver"); 
	             
  	        // Open a connection 
			System.out.println("Trying Connect Database..."); 
  	        Connection con = DriverManager.getConnection("jdbc:h2:~/pcs","sa","");  
  	        System.out.println("Connected Successfully...");
  	      
  	        // Execute a query 
  	        Statement stmt = con.createStatement(); 
  	        System.out.println("Updating Profile details for "+email+" in EMPR_details...");
  	      
  	        // Query for Finding email id
  	        String sql = "update EMPR_DETAILS set name='"+name+"', email='"+email+"', password='"+password+"', city='"+city+"', skill= '"+skill+"' where email='"+email+"'";
  	        stmt.executeUpdate(sql);
  	        
  	        System.out.println("Update Successfull for "+ email);
			
  	        // Alert Box for Profile Update
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			
			pw.println("<body><div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\r\n" + 
					"  Your Profile is successfully Updated.\r\n" + 
					"  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n" + 
					"    <span aria-hidden=\"true\">&times;</span>\r\n" + 
					"  </button>\r\n" + 
					"</div>");
			
			// Redirecting to Home Page
			RequestDispatcher rd=request.getRequestDispatcher("empr_home.jsp");
			rd.include(request, response);			
		}
		catch(Exception e) {
			System.err.println(e);
			PrintWriter pw = response.getWriter();
			pw.print(e);
		}
	}
}
