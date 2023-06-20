<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
      <form action="registerAsClientServer.jsp">
      <label>full name</label>
      <input type="text" name="fname"><br>
      <label>adhar</label>
      <input type="text" name="adhar"><br>
       <label>address</label>
      <input type="text" name="address"><br>
      
      <label>age</label>
      <input type="text" name="age"><br>
      <label>weight</label>
      <input type="text" name="weight"><br>
      <label>height</label>
      <input type="text" name="height"><br>
      <label>package</label>
      <select name="combotype" >
                                            <option >select</option>
        									<option>Silver</option>
        									<option>Gold</option>
        									<option>Platinum</option>
      									</select><br>
      <label>plan</label>
      <input type="text" name="amount"><br>
      <label>jdate</label>
      <input type="text" name="jdate"><br>
      
      <label>vdate</label>
      <input type="text" name="vdate"><br>
      
      <label>phone</label>
      <input type="text" name="phone"><br>
      
      <label>dob</label>
      <input type="text" name="dob"><br>
      
      <label>email</label>
      <input type="text" name="email"><br>
      
      <label>password</label>
      <input type="text" name="password"><br>
      <label>photo</label>
     <input class="form-control form-control-lg" id="formFileLg" type="file" name="photo"/><br>
      
      <label>user</label>
      <select name="usercombotype" >
                                            <option >select</option>
        									<option>client</option>
        									<option>trainer</option>
        									</select><br>
        									
        <button  type="submit" class="btn btn-success">submit</button>									
      
      
      </form>
      </div>
</body>
</html>