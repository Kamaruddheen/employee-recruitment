package projectniit;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class employer_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			System.out.println("\t\t-----Employer Update-----");
			System.out.println("Gathering Details from User");
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("email", request.getParameter("email"));
			
			String email =  request.getParameter("email");
			String password =  request.getParameter("password");
			System.out.println("\n---User Employer Login---\n\tEmail : "+email + "\n\tPassword :" + password);
			// SQL data declaration
			String sql_email,sql_pass;
			
			Class.forName("org.h2.Driver"); 
        
			// Open a connection 
			System.out.println("Trying to Connect Database..."); 
			Connection con = DriverManager.getConnection("jdbc:h2:~/pcs","sa","");  
			System.out.println("Connected Successfully..."); 
			
			// Execute a query 
			Statement stmt = con.createStatement(); 
			System.out.println("Searching for "+email+" from empr_details..."); 
        
			// Query for finding email id
			String sql = "SELECT * FROM EMPR_DETAILS where email='"+email+"'";
			ResultSet rs = stmt.executeQuery(sql); 
			// Extract data from result set 
			
			if(rs.next()) { 
				//to check email id exists this block will be executed
				System.out.println("Email Address Found for "+ email);
				// Retrieve by column name
				sql_email  = rs.getString("email");
				sql_pass = rs.getString("password");
				
				System.out.println("\n---SQL Data---");
				System.out.println("\tEmail : "+ sql_email);
				System.out.println("\tPassword : "+ sql_pass);
		
				// Checking the Password is correct or not 
				
				if(password.equals(sql_pass)) {
					// Forwarding to Employee Home Page
					System.out.println("Password Matched for "+email);
					RequestDispatcher rd = request.getRequestDispatcher("empr_home.jsp");
					rd.forward(request, response);
				}
				else {
					//Alert Box For Update
					response.setContentType("text/html");
					PrintWriter pw=response.getWriter();
				
					pw.println("<body><div class=\"alert alert-danger alert-dismissible fade show\" role=\"alert\">\r\n" + 
							"  Wrong password!!! Try again.\r\n" + 
							"  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n" + 
							"    <span aria-hidden=\"true\">&times;</span>\r\n" + 
							"  </button>\r\n" + 
							"</div>");
					
					//Redirecting to Login	
					RequestDispatcher rd = request.getRequestDispatcher("empr_login.jsp");
					rd.include(request, response);
				}
			}
			else {
				//if email doesn't exist this block will be executed
				
				System.err.println(email + " not found!!!");
				PrintWriter pw=response.getWriter();
				//Alert Box For Update
				pw.println("<body><div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">\r\n" + 
						"  Couldn't find your Email.\r\n" + 
						"  <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\">\r\n" + 
						"    <span aria-hidden=\"true\">&times;</span>\r\n" + 
						"  </button>\r\n" + 
						"</div>");
				
				//Redirecting to Login	
				RequestDispatcher rd = request.getRequestDispatcher("empr_login.jsp");
				rd.include(request, response);
			}
		}
		catch(Exception e) {
			System.err.println("Error in Employer Login Page : " + e);
			PrintWriter pw=response.getWriter();
			pw.print(e);
		}
	}
}
