<%@page import="java.io.*,java.sql.*,mypack.*"  session="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--
.style1 {
	color: #CC9999;
	font-weight: bold;
}
.style6 {color: #CC0033}
.style10 {color: #CC0033; font-weight: bold; }
-->
</style>
</head>
<body>

<jsp:include page="header.jsp" />
<jsp:include page="userRight.jsp" />                                        
<%
            try {
                String user = (String) session.getAttribute("user");
                out.println("welcome "+user);
                ConnectionProvider provider=new ConnectionProvider();
                Connection con=provider.getCon();
                Statement st = con.createStatement();
                String opass = request.getParameter("oldpassword");
                
                ResultSet rs = st.executeQuery("select * from login where username='"+user+"' ");
                if(rs.next())
                {
                String pass1=rs.getString(2);
                	if(opass.equals(pass1))
                	{
                String pass = request.getParameter("newpassword");
                String a1 = "Update login set password='"+pass+"' where username='" + user + "'";
                st.executeUpdate(a1);
                out.println("Your password has been successfully changed....");	
                	}
                	else
                	{
                out.println("old password does not match!!!!.....");	
                	}
                
                
               
         }else
         {
         out.println("User does not exits.....");
         }       
                
            } catch (Exception e) {

                out.println(e);
            }

            %>
<jsp:include page="footer.jsp" />
</body>
</html>


