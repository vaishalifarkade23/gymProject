<%@page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Properties "%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"  %>


<% 
	String rfullname = request.getParameter("fullname");
	String remail = request.getParameter("email");
	String rpassword = request.getParameter("password");
	String rcpassword = request.getParameter("confirmpass");
	String rweight = request.getParameter("weight");
	String rcertificate = request.getParameter("combo2");
	String rgender = request.getParameter("combo1");
	//String ramount= request.getParameter("amount");
	String ruser = request.getParameter("combo3");
	String raddress = request.getParameter("address");
	String rupload = request.getParameter("file");
	//boolean resp=false;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
		String sql =  "select email from trainer where email = '"+remail+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			if(rs.getString("email").equalsIgnoreCase(remail))
			{
				session.setAttribute("sesReg1", "email id already exist!!");
				//resp=true;
				response.sendRedirect("registerclient.jsp");
			}
		}
		else
		{
			try
			{
				//Class.forName("com.mysql.jdbc.Driver");
				//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");

				String sql1 = "insert into trainer (fullname, email, password, confirmpassword,weight,certificate,gender,  usertype, address,upload) values ('"+rfullname+"', '"+remail+"', '"+rpassword+"', '"+rcpassword+"', '"+rweight+"', '"+rcertificate+"', '"+rgender+"', '"+ruser+"', '"+raddress+"','"+rupload+"')";//amount,   '"+ramount+"',
				PreparedStatement pst = con.prepareStatement(sql1);
		 		int i = pst.executeUpdate();
		 		if(i>0)
		 		{
		 			session.setAttribute("sesReg", "Successfully Registartion...!!!");
					response.sendRedirect("registertrainer.jsp");
		 		}
			}
			catch(Exception ex)
			{
				out.print("Exception"+ex);
			}
		
		//email
		 Properties props = new Properties();    
		 props.put("mail.smtp.host", "smtp.gmail.com");    
		 props.put("mail.smtp.socketFactory.port", "465");    
		 props.put("mail.smtp.socketFactory.class",    
		           "javax.net.ssl.SSLSocketFactory");    
		 props.put("mail.smtp.auth", "true");    
		 props.put("mail.smtp.port", "465");  
		 
		 //get Session   
		 Session session1 = Session.getInstance(props,    
		  new javax.mail.Authenticator() {    
		  protected PasswordAuthentication getPasswordAuthentication() {    
		  return new PasswordAuthentication("vaishalifarkade143@gmail.com","crxgdeiiukusodku");   
		  }    
		 });  
		 
		 //compose message    
		 try {    
		  MimeMessage message1 = new MimeMessage(session1);    
		  message1.addRecipient(Message.RecipientType.TO,new InternetAddress(remail));    
		  message1.setSubject("thank you");    
		  message1.setText("we will inform you shortly");  
		  
		  //send message  
		  Transport.send(message1);    
		  System.out.println("message sent successfully");    
		 } catch (Exception e) {
			 out.print(e);
			 }    
		    
		  
		
		}
	} 
	catch(Exception ex)
	{
		out.print("Exception" +ex);
	}
	%>