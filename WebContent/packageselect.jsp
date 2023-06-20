  <%@page import="java.sql.*"%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script >
    $(document).ready(function ()
			{
		$("#combo2").change(function()
				{
				var cname=$("#combo2").val();
				$.get("packageselect.jsp",{combo2:cname},function(data)
						{
					$("#amount").text(data);	
					
				});
		});
	});
    
    
    </script>
  
  <% 
                                      
                                       
                                       String plan=request.getParameter("combo2");
                                   
                                       String amount="";
                                        try{
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gymprojectjquery", "root", "");
                                        String sql ="select amount from plan where plan='"+plan+"'";
                                        PreparedStatement  pst = con.prepareStatement(sql);
                                        ResultSet rs=pst.executeQuery();
                                        while(rs.next())
                                        {
                                           amount=rs.getString("amount"); 
                                           out.println(amount);
                                      }
                                     
                                    }
			             			catch(Exception e)
                                    {
                                        out.println(e.getMessage());
                                    }
                                   %>       