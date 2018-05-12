<%@page session="true" %>
<html>
<head> 	
<link href="default.css" rel="stylesheet" type="text/css" />
	
<script language="javascript">
function doSubmit()
{
 var a=document.getElementById("username");
 var p=document.getElementById("password");
	 if(a.value == "")
 	{
 		alert("enter the username");
  		 a.focus();
		   return false;
	   }
	   
	 if(p.value == "")
 	{
 		alert("enter the password");
  		 p.focus();
		   return false;
	   }	
		   
   }
</script>
	
</head>
<body>

<form name="form1" method="post" action="adminLoginAction.jsp" >
                      <p>Login as Administrator <br /></p>
                      
                      <table width="317" border="0">
  <tr>
    <th width="137" height="34" scope="col"><div align="center">Username:</div></th>
    <th width="164" scope="col"><div align="left">
     
        <input type="text" name="username" id="username" />
      
      </div></th>
  </tr>
  <tr>
    <th height="34" scope="row"><div align="center">Password:</div></th>
    <td>
      <input name="password" type="password" id="password" />
    
    </td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>
      <input type="Submit" name="Submit" value="Login" onclick="return doSubmit()"  /></td>
  </tr>
</table>
</form>
<jsp:include page="adminFooter.jsp" />
</body>
</html>