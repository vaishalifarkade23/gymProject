<%@page import="java.sql.*" %>
<% 
	String rfullname = request.getParameter("fname");
	String radhar = request.getParameter("adhar");
	String raddress = request.getParameter("address");
	String rage = request.getParameter("age");
	String rheight = request.getParameter("height");
	String rweight = request.getParameter("weight");
	String rpackage = request.getParameter("combotype");
	String ramount = request.getParameter("amount");
	String rjoindate = request.getParameter("jdate");
	String rvaliddate = request.getParameter("vdate");
	String rphone = request.getParameter("phone");
	String rdob = request.getParameter("dob");
	String remail = request.getParameter("email");
	String rpassword = request.getParameter("password");
	String rphoto = request.getParameter("photo");
	String rusertype = request.getParameter("usercombotype");

	/*try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
		String sql =  "select email from registerasclient where email = '"+remail+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			if(rs.getString("email").equalsIgnoreCase(remail))
			{
				session.setAttribute("sesReg1", "email id already exist!!");
				response.sendRedirect("registerAsClient.jsp");
			}
		}
		else
		{*/
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
				String sql = "insert into registerasclient  (fullname,adharno,address,age,weight,height,package,planamount,joindate,validdate,dob,email,password,photo,usertype) values ('"+rfullname+"', '"+radhar+"', '"+raddress+"', '"+rage+"', '"+rweight+"', '"+rheight+"', '"+rpackage+"', '"+ramount+"',, '"+rjoindate+"', '"+rvaliddate+"', '"+rphone+"', '"+rdob+"', '"+remail+"', '"+rpassword+"', '"+rphoto+"', '"+rusertype+"')";
				PreparedStatement pst = con.prepareStatement(sql);
		 		int i = pst.executeUpdate();
		 		if(i>0)
		 		{
		 			session.setAttribute("sesReg", "Successfully Registartion...!!!");
					response.sendRedirect("registerAsClient.jsp");
		 		}
			}
			catch(Exception ex)
			{
				out.print("Exception"+ex);
			}
		/*}
	} 
	catch(Exception ex)
	{
		out.print("Exception" +ex);
	}*/
%>
