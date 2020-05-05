<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Profile | Employer</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie-edge">
    <!--Bootstrap css import-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!--Jquery import-->
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <style>
    	.form1 {
            width: 100%;
            padding: 10px;
            margin: 0 auto;
            margin-top: 50px;
            margin-bottom: 50px;
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
	
	<div class="container tab" style="background-color: #ffffff19;">
        <form action="employer_update" method="post" class="needs-validation form1 shadow-lg" novalidate>
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
					 
		   	         System.out.println("Fetching Profile details from empr_details..."); 
			   	     
		   	         HttpSession httpSession=request.getSession();
			   	     
		   	         System.out.println("Your Email Address : "+ httpSession.getAttribute("email"));
		   	         String sql = "SELECT * FROM EMPR_DETAILS where email='"+httpSession.getAttribute("email")+"'";
		   	         ResultSet rs = stmt.executeQuery(sql);
		   	         
		   	         // Extract data from result set 
		   	         while(rs.next()) {
		   	        	System.out.println("Profile Found..."); 
		   	      %>
        	
			            <div class="container form-group row">
			                <div class="page-header p-2"><b>Personal Details : </b></div>
			                <button type="button" class="btn offset-9 btn-bg" onclick="edit1()"><svg
			                        xmlns="http://www.w3.org/2000/svg" width="14" height="16" viewBox="0 0 14 16">
			                        <path fill-rule="evenodd"
			                            d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 011.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z" />
			                    </svg></button>
			            </div>
			            <div class="row">
			                <div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="name">Name<span style="color: red">*</span></label>
			                        <input type="text" name="name" id="name" class="form-control" placeholder="Name..." required
			                            onkeyup="btn_submit()" disabled value="<%= rs.getString("name") %>">
			                        <div class="invalid-feedback">Enter a Name</div>
			                    </div>
			                </div>
			                <div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="email">Email id<span style="color: red">*</span></label>
			                        <input type="email" name="email" id="email" class="form-control" placeholder="Email Address..."
			                            value="<%= rs.getString("email") %>" onkeyup="btn_submit()" required disabled>
			                        <div class="invalid-feedback">Enter a Email Address</div>
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="password">Password<span style="color: red">*</span></label>
			                        <input type="password" name="password" id="password" pattern=".{8,}" placeholder="Password..."
			                            class="form-control" onkeyup="btn_submit()" required disabled value="<%= rs.getString("password") %>">
			                        <div class="invalid-feedback">Enter atleast 8 characters minimum</div>
			                    </div>
			                </div>
			                <div class="col">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="dob">Date of Birth<span style="color: red">*</span></label>
			                        <input type="date" name="dob" id="dob" placeholder="Date" class="form-control" required
			                            disabled value="<%= rs.getString("dob") %>">
			                        <div class="invalid-feedback">Select a Birth Date.</div>
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="dob">City</label>
			                        <select class="custom-select" id="city" name="city" onclick="btn_submit()" disabled>
			                            <option>Select Your City</option>
			                            <option>Bangalore</option>
			                            <option>Chennai</option>
			                            <option>Coimbatore</option>
			                            <option>Delhi</option>
			                            <option>Kolkata</option>
			                            <option>Mumbai</option>
			                            <option>Punne</option>
			                        </select>
			                    </div>
			                </div>
			            </div>
			            <div class="dropdown-divider"></div>
			            <div class="container form-group row">
			                <div class="page-header p-2"><b>Education : </b></div>
			            </div>
			            <div class="row">
			                <div class="col">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="college">College Name<span style="color: red">*</span></label>
			                        <input type="text" name="college" id="college" placeholder="Institution" class="form-control"
			                            required disabled value="<%= rs.getString("college") %>">
			                        <div class="invalid-feedback">Please enter you college name</div>
			                    </div>
			                </div>
			                <div class="col">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="percentage">Percentage<span style="color: red">*</span></label>
			                        <input type="text" name="percentage" id="percentage" placeholder="Percentage"
			                            class="form-control" required disabled value="<%= rs.getInt("clge_per") %>">
			                        <div class="invalid-feedback">Please select your Degree</div>
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="highest">Highest Degree Qualification<span style="color: red">*</span></label>
			                        <input type="text" name="highest" id="highest" placeholder="Highest Degree Qualification"
			                            class="form-control" required disabled value="<%= rs.getString("degree") %>">
			                        <div class="invalid-feedback">Please select your Degree</div>
			                    </div>
			                </div>
			                <div class="col">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="branch">Branch<span style="color: red">*</span></label>
			                        <input type="text" name="branch" id="branch" placeholder="Branch..." class="form-control"
			                            required disabled value="<%= rs.getString("branch") %>">
			                        <div class="invalid-feedback">Please select your Branch</div>
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			            	<div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="completion">Year of Completion<span style="color: red">*</span></label>
			                        <input type="text" name="completion" id="completion" placeholder="Year of Completion.."
			                            class="form-control" required disabled value="<%= rs.getInt("completion") %>">
			                        <div class="invalid-feedback">Enter a value between 1970 and 2020</div>
			                    </div>
			                </div>
			            </div>
			            <div class="row">
			                <div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="higher">XII<span style="color: red">*</span></label>
			                        <input type="text" name="higher" id="higher" class="form-control"
			                            placeholder="Higher Education Percentage..." required disabled value="<%= rs.getInt("tenth") %>">
			                        <div class="invalid-feedback">Enter a 12th percentage</div>
			                    </div>
			                </div>
			                <div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="secondary">X<span style="color: red">*</span></label>
			                        <input type="text" name="secondary" id="secondary" class="form-control"
			                            placeholder="Secondary Education Percentage..." required disabled value="<%= rs.getInt("twelve") %>">
			                        <div class="invalid-feedback">Enter a 10th percentage</div>
			                    </div>
			                </div>
			            </div>
			            <div class="dropdown-divider"></div>
			            <div class="container form-group row">
			                <div class="page-header p-2"><b>Experience : </b></div>
			            </div>
			            <div class="row">
			                <div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="experience">No. of Year Experience<span style="color: red">*</span></label>
			                        <input type="text" name="experience" id="experience" class="form-control"
			                            placeholder="Year of Experience..." required disabled value="<%= rs.getInt("experience") %>">
			                        <div class="invalid-feedback">Minimum 3 years of experience</div>
			                    </div>
			                </div>
			            </div>
			            <div class="dropdown-divider"></div>
			            <div class="container form-group row">
			                <div class="page-header p-2"><b>Skills : </b></div>
			                <button type="button" class="btn offset-4 btn-bg" onclick="edit2()"><svg
			                        xmlns="http://www.w3.org/2000/svg" width="14" height="16" viewBox="0 0 14 16">
			                        <path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 
			                        9 3l1.3-1.3a.996.996 0 011.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z" />
			                    </svg></button>
			            </div>
			            <div class="row">
			                <div class="col-6">
			                    <div class="form-group mx-sm-5 mb-2">
			                        <label for="skill">Skills<span style="color: red">*</span></label>
			                        <input type="text" name="skill" id="skill" class="form-control" placeholder="Skills..." required
			                            onkeyup="btn_submit()" disabled value="<%= rs.getString("skill") %>">
			                        <div class="invalid-feedback">Minimum 3 skills needed</div>
			                    </div>
			                </div>
			            </div>
			            <div class="dropdown-divider"></div>
			            <div class="row p-1">
			                <div class="col text-right">
			                    <a href="empr_home.jsp" type="button" class="btn btn-warning">Cancel</a>
			                    <input type="submit" class="btn btn-success" value="  Save  " id="btnsubmit" disabled>
			                </div>
			            </div>
			            
			       <%
			       		
				        	}
				        }
				        catch(Exception e ){
				        	System.err.println(e);
				        }
				    %>
        </form>
    </div>
    <script>
	    function __(x) {
	        return document.getElementById(x);
	    }
	
	    function edit1() {
	        __('name').disabled = false;
	        __('email').disabled = false;
	        __('password').disabled = false;
	        __('city').disabled = false;
	    }
	
	    function edit2() {
	        __('skill').disabled = false;
	    }
	
	    function btn_submit() {
	        __('btnsubmit').disabled = false;
	    }
    </script>
</body>
</html>