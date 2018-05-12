

<%@page import="java.io.*,java.sql.*"  session="true"%>
<%@page import="mypack.*" %>

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

<jsp:include page="adminHeader.jsp"/>


<div id="content">

  <div id="colOne">
    <h2>Welcome to crimeStation!</h2>
		<div>
                                       
		<%
            try {
                                
                ConnectionProvider provider=new ConnectionProvider();
                Connection con=provider.getCon();
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select *from feedback");
               %>
               <table width="100%" border=" 1 px" >
               <tr bgcolor="red">
               	
               <td>Name</td><td>Email</td><td>Message</td>
               
               
               </tr>
               <% 
					while(rs.next())
					{
				%>

							<tr>
								<td>
								<% 
								out.println(rs.getString(1));
								%> 
								</td>
								<td>
								<% 
								out.println(rs.getString(2));
								%> 
								</td>
								<td>
								<% 
								out.println(rs.getString(3));
								%> 
								</td>
									
							</tr>
						
				<% 					
					}
				%>
				</table>
				<% 
					
            } catch (Exception e) {
                out.println(e);
            }


		%>
		</div>
</div>
	<jsp:include page="adminRight.jsp"/>    
	<jsp:include page="adminFooter.jsp"></jsp:include>
</body>
</html>







