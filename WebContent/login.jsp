<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Login Page</title>
    <link rel="stylesheet" href="css/stylelogin.css">
  </head>
  <body>
  <!-- Registration Successful -->    
<%
	String sesReg = (String)session.getAttribute("sesReg");
	if(sesReg == null)
	{
		
	}
	else
	{
		%>
			<script type="text/javascript">swal({
				  title: "Good job!",
				  text: "<%=sesReg%>",
				  icon: "success",
				  button: "ok",
				});</script>
		<% 
	}
%>

<%
	String sesSignIn = (String)session.getAttribute("sesSignIn");
	if(sesSignIn == null)
	{
		
	}
	else
	{
		%>
			<script type="text/javascript">Swal.fire({
				  icon: 'error',
				  title: 'Wrong Credential...!!!',
				  text: 'Something went wrong!',
				  footer: '<a href="">Why do I have this issue?</a>'
				})</script>
				
				<div class="alert alert-danger"><%= sesSignIn%></div>
				
		<% 
	}
%>
  	<div class="main">
       	<form action="loginServer.jsp" method="post">
    		<h1> Login  </h1>
  			<div class="inset">
	  			<p>
	    		<label for="userName">EMAIL</label>
   	 			<input type="text" name="email" id="email" placeholder="Email address" required />
				</p>
  				<p>
				    <label for="password">PASSWORD</label>
				    <input type="password"  name="password" id="password" placeholder="password" required/>
  				</p>
  				
  				  <!--   <div class="form-group">
  				     <p >
				    <label for="type">TYPE</label>
				    <input type="radio" name="radioaction" value="trainer"  id="id1"> <label for="remember">trainer</label>
				    <input  type="radio" name="radioaction" value="client"  id="id2"> <label for="remember">client</label>
				    </p>
				    </div>  -->
                                
				  <p>
				    <input type="checkbox" name="remember" id="remember">
				    <label for="remember">Agree to Continue</label>
				  </p>
 			 </div>
 	 
			  <p class="p-container">
			  <span><a href="registerclient.jsp">Sign Up As Client ! </a></span>
			  <span><a href="registertrainer.jsp"> Sign Up As Trainer</a></span>
			  <span><a href="#">Forgot password?</a></span>
			    <input type="submit" value="Login">
			  </p>
		</form>
    	</div>  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>