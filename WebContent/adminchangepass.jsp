<%@ page import="java.io.*,java.sql.*"  session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
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
.style2 {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
-->
</style>
<script language="javascript">
function doCheck()
{
  var op=document.getElementById("oldpassword");
  var np=document.getElementById("newpassword");
  var cp=document.getElementById("confirmpassword");
  
    
     if(op.value == "")
 {
  alert("Enter the old password");
  op.focus();
  return false;
  }


      if(np.value == "")
 {
  alert("Enter the new password");
  np.focus();
  return false;
  }
  
   if(cp.value == "")
 {
  alert("Enter the confirm password");
 cp.focus();
  return false;
  }
  
  if(np.value!=cp.value)
  {
  
  alert("Password does not matched.....");
 cp.focus();
 return false;
  }
}
</script>
</head>
<body>
<%
String user=(String)session.getAttribute("admin");
out.println("Welcome...."+user); 
%>
<jsp:include page="adminHeader.jsp" />
<jsp:include page="adminRight.jsp" />


<form id="form1" name="form1" method="post" action="adminchangepassaction.jsp">
    
   <table width="371" border="0">
  <tr>
    <td height="58" colspan="2"><div align="center" class="style1">CHANGE PASSWORD </div></td>
  </tr>
  <tr>
    <td width="151" height="34"><div align="right" class="style2">Username<strong>:</strong></div></td>
    <td width="204"><label>
      <div align="justify">
        <input name="username" type="text" id="username"  value="<%=user%>" readonly/>
      </div>
    </label></td>
  </tr>
  <tr>
    <td height="35"><div align="right" class="style2">Old Password<strong>: </strong></div></td>
    <td><div align="justify">
      <input name="oldpassword" type="password" id="oldpassword" />
    </div></td>
  </tr>
  <tr>
    <td height="31"><div align="right" class="style2">New Password<strong>: </strong></div></td>
    <td><div align="justify">
      <input name="newpassword" type="password" id="newpassword" />
    </div></td>
  </tr>
  <tr>
    <td height="31"><div align="right"><span class="style2">Confirm Password</span><strong>: </strong></div></td>
    <td><div align="justify">
      <input name="confirmpassword" type="password" id="confirmpassword" />
    </div></td>
  </tr>
  <tr>
    <td height="27">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="37" colspan="2">
	<div align="center">
      <input type="submit" name="Submit" value="Change" onclick="return doCheck()"/>
    
  
     
        <input type="reset" name="reset" value="Reset" />
      </div>
                
    </td>
  </tr>
</table>
</form>

<jsp:include page="adminFooter.jsp"  />
</body>
</html>











