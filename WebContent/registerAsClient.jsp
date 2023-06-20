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
     <div class="container">
    <h1 class="well" style="text-align: center;">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<form action="registerAsClientServer.jsp">
					<div class="col-sm-12">
							
						<div class="row">
						   <div class="col-sm-6 form-group">
								<label>Full Name</label>
								<input type="text" placeholder="Enter Full Name Here.." class="form-control" name="fname">
							</div>
							<div class="col-sm-6 form-group">
								<label>Adhar Number</label>
								<input type="text" placeholder="Enter Adhar Number Here.." class="form-control" name="adhar">
							</div>
						</div>					
						<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control" name="address"></textarea>
						</div>	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Age</label>
								<input type="text" placeholder="Enter Age Here.." class="form-control" name="age">
							</div>	
							<div class="col-sm-4 form-group">
								<label>Height</label>
								<input type="text" placeholder="Enter Height Here.." class="form-control" name="height">
							</div>	
							<div class="col-sm-4 form-group">
								<label>Weight</label>
								<input type="text" placeholder="Enter Weight Here.." class="form-control" name="weight">
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Packages</label>
								 <select name="combotype" class="form-control" id="cpackage">
                                            <option value="select">select</option>
        									<option value="Admin">Silver</option>
        									<option value="Student">Gold</option>
        									<option value="Student">Platinum</option>
      									</select>
						</div>		
							<div class="col-sm-6 form-group">
								<label>Plan Amount</label>
								<input type="text" placeholder="Enter Amount Here.." class="form-control" name="amount">
							</div>	
						</div>
						<div class="row">
						   <div class="col-sm-6 form-group">
								<label>Join From</label>
								<input type="date"  class="form-control" name="jdate">
							</div>
							<div class="col-sm-6 form-group">
								<label>Package valid upto</label>
								<input type="text"  class="form-control" name="vdate">
							</div>
						</div>				
										
					<div class="row">
						   <div class="col-sm-6 form-group">
								<label>Phone Number</label>
								<input type="text"  class="form-control" name="phone">
							</div>
							<div class="col-sm-6 form-group">
								<label>Date of birth</label>
								<input type="date"  class="form-control" name="dob">
							</div>
						</div>
									
					<div class="row">
						   <div class="col-sm-6 form-group">
						<label>Email Address</label>
						<input type="text" placeholder="Enter Email Address Here.." class="form-control" name="email">
					</div>	
					 <div class="col-sm-6 form-group">
						<label>Password</label>
						<input type="password" placeholder="Enter Password Here.." class="form-control" name="password">
					</div>
					</div>	
					
					<div class="row">
					<div class="col-sm-6 form-group">
								<label>Photo</label>
					<input class="form-control form-control-lg" id="formFileLg" type="file" name="file" name="photo"/>
               		</div>
               		<div class="col-sm-6 form-group">
								<label>UserType</label>
								 <select name="usercombotype" class="form-control" id="usertype">
                                            <option value="select">select</option>
        									<option value="Client">Client</option>
        									<option value="Trainer">Trainer</option>
        									</select>
               		
                   </div>
					
					<button type="button" class="btn btn-lg btn-info">Submit</button>					
					</div>
					</div>
				</form> 
				</div>
	</div>
	</div>
	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>