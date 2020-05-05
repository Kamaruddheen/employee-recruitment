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

public class employer_jobpost extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			System.out.println("\t\t-----Job Posting-----");
			System.out.println("Gathering Details from User");
			
			String title =  request.getParameter("topic");
			String content =  request.getParameter("descrip");
			
			System.out.println("Job Details : \n\tTitle : " +title + "\n\tContent : " + content);
			
			Class.forName("org.h2.Driver"); 
	        
			// Open a connection 
			System.out.println("Trying Connect Database..."); 
			Connection con = DriverManager.getConnection("jdbc:h2:~/pcs","sa","");
			System.out.println("Connected Successfully...");
        
			// Execute a query 
			Statement stmt = con.createStatement(); 
        
			// Inserting Title & Content to Job table
			String sql = "insert into job(title,content) values('"+title+"','"+content+"');";
			stmt.executeUpdate(sql);
			
			System.out.println("Update Successfull for "+ title);
			
			// Forwarding to Home Page
			RequestDispatcher rd = request.getRequestDispatcher("empr_home.jsp");
			rd.forward(request, response);
		}
		catch(Exception e) {
			System.err.println(e);
			PrintWriter pw = response.getWriter();
			pw.print(e);
		}
	}

}
