//<%@page import="java.io.*,java.sql.*"  session="true"%>
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
//<jsp:include page="userRight.jsp" />


<%
            try {
               
                String userid = request.getParameter("userid");
                String detailssuspect = request.getParameter("detailssuspect");
                String description = request.getParameter("description");
                String date = request.getParameter("date");
                String typecrime = request.getParameter("typecrime");
               

                mypack.ConnectionProvider provider=new mypack.ConnectionProvider();
                Connection con=provider.getCon();
                PreparedStatement ps=con.prepareStatement("insert into complaint values(?,?,?,?,?)");
                ps.setString(1,userid);
                ps.setString(2,detailssuspect);
                ps.setString(3,description);
                ps.setString(4,date);
                ps.setString(5,typecrime);
                
                int x=ps.executeUpdate();
                	if(x!=0)
                	{
                out.println("Updated successfully....");
                	}
                	else
                	{
                out.println("problem in updation...");
                	}
                
            } catch (Exception e) {
                out.println(e);
            }
%>

<jsp:include page="footer.jsp" />
</body>
</html>







