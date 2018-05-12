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
.style3 {color: #CC3333}
.style4 {
	color: #C14744;
	font-weight: bold;
}
-->
</style>
</head>
<body>

<%@page session="true" %>
<%
String name=(String)session.getAttribute("user");
out.println("Welcome...."+name);
 %>	
<jsp:include page="header.jsp" />
<jsp:include page="userRight.jsp" />


<div id="content">

  <div id="colOne">
    <h2>Welcome to crime Station!</h2>
		<div><table width="501" height="289" border="0" align="left">
  <tr>
    <td width="505" height="285" class="style3"><div align="justify"><span class="style4"> <p>&nbsp;&nbsp;&nbsp;&nbsp;This website is developed for the Department of the police for helping them in the investigation level.visitors must keep in mind that websites of government organisations anywhere in the world are in view of their inherent complexity intended to provide a general idea of the organisation and furnish authentic through basic information on its functioning in a convenient and attractive manner.</p></br>
      </br>
      &nbsp;&nbsp;&nbsp;&nbsp;All endeavours have been made to provide a correct informations in the website.However ,any inadvertant error that might have crept in ,if brought to our notice will be rectified in the next updating schedule. </span></div></td>
  </tr>
</table>
		</div>
  </div>
	
	
<jsp:include page="footer.jsp" />
</body>
</html>
