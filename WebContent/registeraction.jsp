<%@ page language="java" contentType="text/html" import="java.sql.*"  import="java.util.regex.*" session="true"%>
<%@page import="mypack.ConnectionProvider"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<style type="text/css">
<!--
.style2 {color: #D6A55C}
-->
</style>


	<title>Crimefile Management</title>
	<link rel="stylesheet" href="default.css" type="text/css" charset="utf-8" />
	
    <style type="text/css">
<!--
.style1 {
	color: #F67637;
	font-family: "Monotype Corsiva";
	font-size: 34px;
}
-->
    </style>
</head>


<body>
<jsp:include page="header.jsp" />
<jsp:include page="userRight.jsp" />
		<%
            String uname = request.getParameter("username");
            String passd = request.getParameter("password");
            String name = request.getParameter("name");
            String select = request.getParameter("select");
            String answer = request.getParameter("answer");
            String address = request.getParameter("address");
            String pincode = request.getParameter("pincode");
            int pin=Integer.parseInt(pincode);
            String phoneno = request.getParameter("phoneno");
           long pno=Long.valueOf(phoneno);
            String email = request.getParameter("email");
           
           boolean b1=Pattern.matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
            		+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",email);

	
            
            try {
            	if(b1==true)
            	{
            		
            	
              ConnectionProvider provider=new ConnectionProvider();
              Connection con=provider.getCon();  
              PreparedStatement ps = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?)");
              ps.setString(1,uname);
              ps.setString(2,passd);
              ps.setString(3,name);
              ps.setString(4,select);
              ps.setString(5,answer);
              ps.setString(6,address);
              ps.setLong(7,pin);
              ps.setLong(8,pno);
              ps.setString(9,email);
			  int x=ps.executeUpdate();
			  
			    if(x!=0)
			    {
			    PreparedStatement ps1 = con.prepareStatement("insert into login values(?,?)");
			    ps1.setString(1,uname);
              	ps1.setString(2,passd);
              	int y=ps1.executeUpdate();
              			if(y!=0)
			    		out.println("Successfully registred....");
			    		else
			    		out.println("Some problem is going on...");
			   }
            	}                
            	else
            	{
            		response.sendRedirect("newregistre1.jsp");
            	}
            	

        %>
                  
		<%
            }
            catch (Exception e) 
            {
            out.println(e);
           	}
		%>
<jsp:include page="footer.jsp" />		
</body>
</html>
