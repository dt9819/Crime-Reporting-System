<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->



<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<link href="default.css" rel="stylesheet" type="text/css" />



<style type="text/css">
<!--
.style1 {
	color: #CC9999;
	font-weight: bold;
}
.style3 {color: #CC3333}
.style4 {
	color: #C14744;
	font-weight: bold;
}
-->
</style>


<style>
table, th, td
{
border:1px solid white;
}
th, td
{
padding:5px;
}
</style>

</head>
<body>

<%@page session="true" %>
<%
String user=(String)session.getAttribute("user");
out.println("welcome ..."+user);
 %>



<%@page import="java.sql.*,mypack.*" %>	
<jsp:include page="header.jsp" />
<jsp:include page="userRight.jsp" />
<%
	try
	{
String cid=(String)request.getParameter("cid");
out.println(cid);
ConnectionProvider provider=new ConnectionProvider();
Connection con=provider.getCon();
PreparedStatement st=con.prepareStatement("select *from complaint where cid=?");
st.setString(1,cid);
ResultSet rs=st.executeQuery();

	if(rs.next())
	{		
%>

  <div id="colOne">
    <h2>Status of complaint.....</h2>
		<div>
		<table width="501" height="289" border="0" align="left">
  <tr>
  <th>Complaint Id</th>
  <td>   		
  			<%
     		out.println(rs.getString(1));
     		 %>
   </td>
  </tr>
  <tr>
  <th> Details Suspect</th>
  <td>
     		<%
     		out.println(rs.getString(2));
     		 %>
  </td>
  </tr>
  <tr>
  <th>	Description</th>
  <td>
     		<%
     		out.println(rs.getString(3));
     		 %>
   </td>
  </tr>
  <tr>
  <th>Date</th>
  <td>
     		<%
     		out.println(rs.getString(4));
     		 %>
  </td>
  </tr>
  <tr>
  <th>Type of Crime</th>
  <td>
     		<%
     		out.println(rs.getString(5));
     		 %>
  </td>
  </tr>
  <tr>
  	<th>Status of Complaint </th>
  	<td>
  	<%
  		//out.println(cid);
  			
  		Statement st1=con.createStatement();
  		ResultSet rs1=st1.executeQuery("select * from compaintstatus where cid='"+cid+"'");
  		if(rs1.next())
  		{
  		out.println(rs1.getString(2));
  		}
  		else
  		{
  		out.println("complaint is processing.... ");
  		}
  	 %>
  	</td>
  </tr>
		</table>
</div>
</div>
	<%
	}else
	{
	out.println("Complaint id does not exists......");
	%>
	
	<%
	}
	}catch(Exception e){out.println(e);} 
	%>
	
<jsp:include page="footer.jsp" />
</body>
</html>
