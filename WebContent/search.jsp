<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Search a Employee | Employer </title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <!--Bootstrap css import-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--Jquery import-->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <style>
        form {
            width: 100%;
            padding: 15px;
            background-color: #ffffffcc;
        }
    </style>
</head>
<body>
	<div id="navigator" style="color: red;">
        Navigation Bar is not inserted correctly
    </div>
    <script>
        //to load navigator for all
        $.get("empr_navig.jsp", function (data) {
            $("#navigator").replaceWith(data);
        });
    </script>
	<div class="container p-2 tab" id="cont3" style="background-color: #ffffff19;">
    	<form action="" method="post">
	        <div class="container" id="container3" style="margin-top: 20px; margin-bottom: 20px;">
	            <div class="card form-group shadow-lg">
	                <div class="card-body text-center">
	                    <h5 class="card-title"><b>Recruit Employee!!!</b></h5>
	                    <div class="dropdown-divider"></div>
	                </div>
	            </div>
	
	            <div class="card form-group shadow-lg" id="job">
	                <div class="card-body">
	                    <div class="form-group row">
	                        <div class="col">
	                            <select class="custom-select"  name="skilled" id="skilled">
	                            	<option>Select a Skill</option>
		                            <option>Active Listening</option>
		                            <option>Communication</option>
		                            <option>Creativity</option>
		                            <option>Decision Making</option>
		                            <option>Critical Thinking</option>
		                            <option>Computer skills</option>
		                            <option>Leadership</option>
								</select>	                       
	                        </div>
	                        <div class="col">
	                            <button type="submit" class="btn btn-warning">Search</button>
	                        </div>
	                    </div>
	                </div>
	            </div>
				
				<%@page import="java.sql.*"%>
				<%@page import="javax.sql.*"%>
	            <%
	        	try { 
	   	         Class.forName("org.h2.Driver"); 
	   	             
	   	         // Open a connection 
	   	         System.out.println("Connecting to database..."); 
	   	         Connection con = DriverManager.getConnection("jdbc:h2:~/pcs","sa","");  
	   	         
	   	         //Execute a query 
	   	         Statement stmt = con.createStatement(); 

	   	         System.out.println("Fetching skills from emp_details..."); 
	   	         String sql = "SELECT * FROM EMP_DETAILS where skill like'%"+request.getParameter("skilled")+"%'";
	   	         ResultSet rs = stmt.executeQuery(sql); 
	   	         
	   	         // Extract data from result set 
	   	         while(rs.next()) {
	   	        	 %>
	   	        	 
	   	        	 <div class="card form-group shadow-lg" id="job">
		                 <div class="container p-2">
		                    <div class="row">
		                        <div class="col-3 align-rt">
		                            <h5 class="card-title">Name :</h5>
		                        </div>
		                        <div class="col">
		                            <label id="name"><%= rs.getString("name") %></label>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col-3 align-rt">
		                            <h5 class="card-title">Email :</h5>
		                        </div>
		                        <div class="col">
		                            <label id="email"><%= rs.getString("email") %></label>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col-3 align-rt">
		                            <h5 class="card-title">Percentage :</h5>
		                        </div>
		                        <div class="col">
		                            <label id="percentage"><%= rs.getInt("clge_per") %></label>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col-3 align-rt">
		                            <h5 class="card-title">Experience :</h5>
		                        </div>
		                        <div class="col">
		                            <label id="experience"><%= rs.getInt("experience") %></label>
		                        </div>
		                    </div>
		                </div>
					</div>
	   	        	 
	   	        	 <%
	   	         }
	        	}
	        	catch(Exception e ){
	        		System.out.println(e);
	        	}
	        	%>
	        	
	        </div>
        </form>
    </div>
</body>
</html>