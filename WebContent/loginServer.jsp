<%@ page import="java.sql.*" %>
<%
	String semail = request.getParameter("email");
	String spassword = request.getParameter("password");
	System.out.print(semail);
	System.out.print(spassword);
	//String usertype = request.getParameter("radioaction");
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
		//String sql = "select usertype from`"+usertype+"` where email = '"+semail+"' and password = '"+spassword+"'";
		String sql = "select * from client where email = '"+semail+"' and password = '"+spassword+"'";
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		if(rs.next())
		{
			session.setAttribute("semail", semail);
			session.setAttribute("sesSignIn", "Login Successfully...!!!");
			response.sendRedirect("table.jsp");
			
			/*if(usertype.equalsIgnoreCase("client"))
			{
				response.sendRedirect("paymentslide.jsp");
			}
			else
			{
				response.sendRedirect("registertrainer.jsp");
			}
			
		}
		else
		{
			session.setAttribute("sesSignIn", "Wrong Credential...!!!");
			response.sendRedirect("login.jsp");
		}*/
	}
	}
	catch(Exception ex)
	{
		out.println("Exception : "+ex);
	}
%>
