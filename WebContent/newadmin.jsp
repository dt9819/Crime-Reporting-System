

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
		   alert("Password not matched !! Re-enter the password");
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
.style4 {
	color: #C14744;
	font-weight: bold;
}
.style8 {color: #CCCC99}
-->
</style>
</head>

<body>
<%@page session="true" %>

<%
	
	String admin=(String)session.getAttribute("admin");
	out.println("welcome ..."+admin);
	
%>
	
<% 	
	
 %>
<jsp:include page="adminHeader.jsp" />

<div id="content">

  <div id="colOne">
    <p>&nbsp;</p>
    
    <div>
    <form name="form1" method="get" action="newadminaction.jsp" >
		  <table width="455" border="0" align="center">
<tr>
 <td height="34" colspan="2"><div align="center" class="style1 style8">ADMIN REGISTRATION </div></td>
 </tr>
  <tr>
  
    <td height="31" scope="col"><div align="right" class="style4">Username:</div></td>
    <th width="238" scope="col">
      <div align="left">
        <input name="username" type="text" id="username" />
        </div>      </th>
  </tr>
  <tr>
    <td height="30" scope="row"><div align="right"><span class="style4">Password</span>:</div></td>
    <td>
      <input name="password" type="password" id="password" maxlength="8" /></td>
  </tr>
  <tr>
    <td height="30" scope="row"><div align="right"><span class="style4">Confirm password</span>:</div></td>
    <td>
      <input name="conpass" type="password" id="conpass" maxlength="8" />      </td>
  </tr>
  <tr>
  	<td></td>
	<td><div align="center"><span class="style4">					
	<input type="submit" id="submit1" name="submit1" value="submit" onclick="return doCheck()" />
		</span>
		</div>
	</td>
</tr>			      
	
  
    
</table>
</form>



	</div>
  </div>
	<jsp:include page="adminRight.jsp" />	

<jsp:include page="adminFooter.jsp" />

</body>
</html>













