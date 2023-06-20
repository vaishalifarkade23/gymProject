<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" >
<link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">

<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js" ></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>

<title>Insert title here</title>
</head>
<body>

<div class="container">
<h2 style="text-align: center;">FILTER TABLE </h2>
<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                					<th>Id</th>
									<th>Full Name</th>
									<th>Email</th>
									<th>Weight</th>
									<th>Gender</th>
									<th>Package</th>
									<th>UserType</th>
									<th>Address</th>
									
			</tr>
        </thead>
        <tbody>
       							 <%
								try {
									Class.forName("com.mysql.jdbc.Driver");
									Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
									String sql = "select * from client";
									PreparedStatement ps =con.prepareStatement(sql);
									ResultSet rs = ps.executeQuery();
									while (rs.next())
									{
								%>
           <tr>
									<td><%= rs.getInt("id")%></td>
									<td><%=rs.getString("fullname")%></td>
									<td><%=rs.getString("email")%></td>
									<td><%=rs.getString("weight")%></td>
									<td><%=rs.getString("gender")%></td>
									<td><%=rs.getString("package")%></td>
									<td><%=rs.getString("usertype")%></td>
									<td><%=rs.getString("address")%></td>
									
									</tr>
								<%
								}
								
								}	
								catch (Exception ex) 
								{
									out.print("Exception : "+ex);
								}
								%>
        </tbody>
       
    </table>
 </div>   
 
<!-- JavaScript -->
<script>
	$(document).ready(function () {
    $('#example').DataTable();
	});
</script>

</body>
</html>