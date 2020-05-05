package projectniit;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class emp_register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			System.out.println("\t\t-----Employee Registration-----");
			System.out.println("Gathering Details from User");
			
			String name =  request.getParameter("name");
			String email =  request.getParameter("email");
			String password =  request.getParameter("password");
			String dob =  request.getParameter("dob");
			String gender =  request.getParameter("gender");
			String city =  request.getParameter("city");
			//Education
			String college =  request.getParameter("college");
			String clge_per =  request.getParameter("percentage");
			String degree =  request.getParameter("highest");
			String branch =  request.getParameter("branch");
			String completion =  request.getParameter("completion");
			
			String ten =  request.getParameter("higher");
			String twelve =  request.getParameter("secondary");
			//Experience
			String experience =  request.getParameter("experience");
			//Skills
			String[] ski = request.getParameterValues("skill");
			String skill="";
			// Merging All ski in skill
			for(int i=0;i<ski.length;i++) {
				// null values won't be added
				if(ski[i]!=null) {
					skill += ski[i] + " ";
				}
			}
			
			Class.forName("org.h2.Driver"); 
            
			// Open a connection 
			System.out.println("Trying to Connect Database..."); 
 	        Connection con = DriverManager.getConnection("jdbc:h2:~/pcs","sa","");  
  	       System.out.println("Connected Successfully...");
 	       
 	        //Execute a query 
 	        Statement stmt = con.createStatement(); 
 	        System.out.println("Inserting Profile details for "+email+" in emp_details table..."); 
 	        
 	        String sql = "insert into EMP_DETAILS  values ('"+name+"', '"+email+"', '"+password+"', '"+dob+"', '"+gender+"', '"+city+"', '"+college+"',"+clge_per+",'"+degree+"','"+branch+"', "+completion+","+ten+","+twelve+","+experience+",\r\n" + 
 	        		"'"+skill+"');";
 	        stmt.executeUpdate(sql);
			
 	        System.out.println("Registered Successfully for " + email);
 	        
			// Forwarding to Employee Home Page
			RequestDispatcher rd = request.getRequestDispatcher("emp_login.jsp");
			rd.forward(request, response);
		}	
		catch(Exception e)
		{
			//Alert Box For Update
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			
			pw.println("<body><div class=\"alert alert-success alert-dismissible fade show\" role=\"alert\">\r\n" + 
					"  " + e + "\r\n" + 
					"  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n" + 
					"    <span aria-hidden=\"true\">&times;</span>\r\n" + 
					"  </button>\r\n" + 
					"</div>");
			
			RequestDispatcher rd = request.getRequestDispatcher("signup.html");
			rd.include(request, response);
		}
	}

}
