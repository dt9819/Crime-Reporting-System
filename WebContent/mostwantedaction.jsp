<%@page import="mypack.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
</style>
</head>
<body>
<jsp:include page="adminHeader.jsp" />

<div id="content">

  <div id="colOne">
    <p align="right"><strong><a href="mostwanted.jsp"></a> </strong></p>
    <div>
<%@ page language="java" contentType="text/html" import="java.sql.*" session="false" %>

<%
	try
        {
    	String nam=request.getParameter("name");
     	String ag=request.getParameter("age");
      	String addr=request.getParameter("add");
     	String typeof=request.getParameter("type");
      	String complexn=request.getParameter("complex");
     	String ha=request.getParameter("hair");
     	String buil=request.getParameter("built");
     	String psp=request.getParameter("passno");
     	String cased=request.getParameter("desc");
    
     ConnectionProvider provider=new ConnectionProvider();
     Connection con=provider.getCon();
     Statement st = con.createStatement();
     st.executeUpdate("insert into mostwanted values('"+nam+"','"+ag+"','"+addr+"','"+typeof +"','"+complexn+"','"+ha+"','"+buil+"','"+psp+"','"+cased+"')");
     out.println("Data completed successfully");
 
   		}catch(Exception e)
      	{
      	out.println(e);
      	} 
%>
		  <form id="form1" name="form1" method="post" action="mostwantedaction.jsp">
<table width="502" border="0" align="center">
 
  <tr>
    <td width="486" height="65">
      <label>
        
        <div align="center">
		
	  <form method="post" action="simple.jsp" name="upform" enctype="multipart/form-data">
	    <br>
  <br>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p align="center">&nbsp;</p>
  
	</form></div>
      </label>      </td>
  </tr>
</table>
</form>
  </div>
  </div>
  
<jsp:include page="adminRight.jsp" />
<jsp:include page="adminFooter.jsp" />

</body>
</html>






