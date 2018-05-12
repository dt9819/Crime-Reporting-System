<%@page import="java.io.*,java.sql.*"  session="true"%>

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
.style5 {color: #CC0033}
-->
</style>
</head>
<body>
<jsp:include page="header.jsp" />
<jsp:include page="userRight.jsp" />  

<%
            try {
                
                String userid = request.getParameter("userid");
                String nameinformant1 = request.getParameter("nameinformant");
                String address = request.getParameter("address");
                String det = request.getParameter("det");
                String description = request.getParameter("description");
                String da = request.getParameter("da");
                 
                mypack.ConnectionProvider provider=new mypack.ConnectionProvider();
                Connection con=provider.getCon();
                Statement st2 = con.createStatement();
                st2.executeUpdate("insert into crimereport values('"+userid +"','"+nameinformant1+"','"+address+"','"+det+"','"+description+"','"+da+"')");
                             
                 out.println("Crime report submitted,take action soon,Thank You");



            } catch (Exception e) {
                out.println(e);
            }
%>

<jsp:include page="footer.jsp" />
</body>
</html>
























