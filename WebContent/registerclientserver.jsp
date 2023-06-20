<%@page import="java.sql.*" %>
<%@ page import="java.util.Random" %>
<%@page import="javax.mail.Message.RecipientType"%>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="java.util.Properties" %>

<% 
	String rfullname = request.getParameter("fullname");
	String remail = request.getParameter("email");
	String rpassword = request.getParameter("password");
	String rcpassword = request.getParameter("confirmpass");
	String rweight = request.getParameter("weight");
	String rgender = request.getParameter("combo1");
	String rpack = request.getParameter("combo2");
	//String ramount= request.getParameter("amount");
	String ruser = request.getParameter("combo3");
	String raddress = request.getParameter("address");
	boolean resp=false;
	Random ob = new Random();
	int otp = ob.nextInt(899999) + 100000;

	try
    {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
		String sql =  "select email from client where email = '"+remail+"'";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			if(rs.getString("email").equalsIgnoreCase(remail))
			{
				session.setAttribute("sesReg1", "email id already exist!!");
				resp=true;
				//response.sendRedirect("registerclient.jsp");//registerclient.jsp
			}
		}

		else
		{
			try
			{
				//Class.forName("com.mysql.jdbc.Driver");
				//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
				String sql1 = "insert into client (fullname, email, password, confirmpassword,weight,gender, package, usertype, address) values ('"+rfullname+"', '"+remail+"', '"+rpassword+"', '"+rcpassword+"', '"+rweight+"', '"+rgender+"', '"+rpack+"', '"+ruser+"', '"+raddress+"')";//amount,   '"+ramount+"',
				PreparedStatement pst = con.prepareStatement(sql1);
		 		int i = pst.executeUpdate();
		 		if(i>0)
		 		{
		 			session.setAttribute("sesReg", "Successfully Registartion...!!!");
					//response.sendRedirect("otp.jsp");//registerclient.jsp
		 		}
			}
			catch(Exception ex)
			{
				out.print("Exception"+ex);
			}
		}
}
	catch(Exception ex)
	{
		out.print("Exception" +ex);
	}
	
	// Generate 6 digit OTP number
	
	
	
				// Set session for email 
				session.setAttribute("email", remail);
				//response.sendRedirect("enterEmail1.jsp");
				 
						
				// Set session for otp
				session.setAttribute("otp", otp); // We'll save the OTP in this sesseion to validate later, when user will enter OTP than we'll get this OTP from session & we'll check/compare with the OTP enter by the user (if both the OTP is same then we'll reset the password otherwise we'll show wrong message)
				//String Message = "Your OTP is "+otp;
				
				if(resp){
					
				// Send 6 digit OTP to Email
				//Get properties object    
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
			     MimeMessage message = new MimeMessage(session1);    
			    // message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
			    message.addRecipient(RecipientType.TO, new InternetAddress(remail));
			    message.setSubject("Get OTP");    
			     message.setText("Your OTP is "+otp);    
			     //send message  
			     Transport.send(message);    
			     //System.out.println("message sent successfully");  
			    } catch (MessagingException e) {
			    	out.println(e);
			    	}   
			    response.sendRedirect("otp.jsp");
				}

				
				
	%>

		