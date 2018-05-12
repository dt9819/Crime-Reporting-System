<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License
-->



<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="default.css" rel="stylesheet" type="text/css" />

<script language="javascript">
function doCheck()
{
  var a=document.getElementById("username");
  var b=document.getElementById("password");
  var c=document.getElementById("conpass");
  
  if(a.value == "")
  {
    alert ("enter the username");
	a.focus();
	return false;
	}
  
    if(b.value == "")
  {
    alert ("enter the password");
	b.focus();
	return false;
	}
	
	else if((b.value.length)<6)   
	{
	 alert("password should contain atleast 6 characters ");
	 b.focus();
 return false;
	 }
	
  if(c.value == "")
  {
    alert ("enter the confirm password");
	c.focus();
	return false;
	}
	
		   if((c.value)!=(b.value))
		   {
		   alert("Re-enter the password");
		   c.focus();
		   return false;
			}
		   
  }
  </script>

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

 	String uname=(String)session.getAttribute("admin"); 
 	out.println("................You are logged as..."+ uname); 
%>
	
<jsp:include page="adminHeader.jsp" />

<div id="content">

  <div id="colOne">
    <h2>Welcome to crimeStation!</h2>
		<div><table width="501" height="289" border="0" align="left">
  <tr>
    <td width="505" height="285" class="style3"><div align="justify"><span class="style4"> <p>&nbsp;&nbsp;&nbsp;&nbsp;This web based product created by Pawan, Rahul, Rajdeep, Preeti for final year project aims at helping the Police Department with their investigation making easier by the data of Crimes.</p></br>
      </br>
      &nbsp;&nbsp;&nbsp;&nbsp;All endeavours have been made to provide a correct informations in the website.However ,any inadvertant error that might have crept in ,if brought to our notice will be rectified in the next updating schedule. </span></div></td>
  </tr>
</table>
		</div>
  </div>
	
	
<jsp:include page="adminRight.jsp" />
			
<jsp:include page="adminFooter.jsp" />
</body>
</html>
