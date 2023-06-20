<%@page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  
   <!-- email already exit -->
    <%
		
		String sesReg=(String)session.getAttribute("sesReg");
		if(sesReg!=null)
		{
			%>
			<script>
			swal({
				  title: "Failed!",
				  text: "<%=sesReg%>",
				  icon: "error",
				  button: "ok",
				});
			</script>
			<div class="alert alert-danger"><%= sesReg%></div>
			<% 
			session.invalidate();	
		}
	 %>
           <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Register</div>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validate()" action="registertrainerserver.jsp" method="">
                            
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right">Full Name</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="fullname" id="fullname">
                                    </div>
                                    
                                </div>
								
                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right">E-Mail Address</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="email" id="email">
                                    </div>
                                    
                                </div>

                              <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Password</label>
                                    <div class="col-md-6">
                                        <input type="password" class="form-control" name="password" id="password">
                                    </div>
                                    
                                </div>
                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Confirm Password</label>
                                    <div class="col-md-6">
                                        <input type="password" class="form-control" name="confirmpass" id="confirmpass">
                                    </div>
                                   
                                </div>
                                 <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Weight</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="weight" id="username">
                                    </div>
                                    </div>
                                
                                 <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Add certificate</label>
                                    <div class="col-md-6">
                                        <select name="combo2" class="form-control" id="combo2">
                                        	<option >Select</option>
                                        	<option >k11</option>
                                        	<option >ace</option>
                                        	<option >other</option>
                                        	 </select>
                                      </div>
                                  </div>
                                
                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Select Gender</label>
                                    <div class="col-md-6">
                                        <select name="combo1" class="form-control" id="combogender">
                                        	<option value="select gender">Select Gender</option>
                                        	<option value="Male">Male</option>
                                        	<option value="Female">Female</option>
                                        </select>
                                    </div>
                                   
                                </div>
                                
                                
                                    
                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right">Registered As</label>
                                    <div class="col-md-6">
                                        <select name="combo3" class="form-control" id="comboreg">
                                        	<option value="select user type">Select User Type</option>
                                        	<option >client</option>
                                        	<option >trainer</option>
                                        </select>
                                    </div>
                                    
                                </div>
                                
  								<div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right">Address</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" name="address" id="address">
                                    </div>
                                  
                                </div>
                                
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right"> upload certificate</label>
                                    <div class="col-md-6">
                                       <input class="form-control form-control-lg" id="formFileLg" type="file" name="file" />
                                    </div>
                                  
                                </div>

                                <div class="col-md-6 offset-md-4">
                                 	<button type="submit" class="btn btn-primary">
                                        Register
                                        </button>
                                    </div>
                                
                            </form>
                        </div>
                    </div>
            </div>
        </div>
    </div>

</main>
           

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>