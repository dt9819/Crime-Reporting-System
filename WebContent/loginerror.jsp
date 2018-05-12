<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	
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
	   
	else if((p.value.length)<6 )   
	{
	 alert("password should contain atleast 6 characters ");
	 p.focus();
 return false;
	 }
		
		   
   }
</script>
<style type="text/css">
<!--
.style2 {color: #D6A55C}
-->
</style>
</head>
	<title>Crimefile Management</title>
	<link rel="stylesheet" href="default.css" type="text/css" charset="utf-8" />
	
    <style type="text/css">
<!--
.style1 {
	color: #F67637;
	font-family: "Monotype Corsiva";
	font-size: 34px;
}
-->
    </style>
</head>

<body>

<jsp:include page="beforeLoginHeader.jsp" />

user id or password wrong 
					<form name="form1" method="get" action="loginaction.jsp" >
                      <p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;
                      Login Here.... <br /></p>
                    
                      <table width="400" border="0" align="center">
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
      <input type="submit" name="Submit" value="Login" onclick="return doSubmit()"  /></td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <th scope="row">&nbsp;</th>
    <th scope="row">&nbsp;</th>
    <td align="center" width="50%">
     			New User ...... <a href="newregister.jsp">Sign Up</a>
     </td>
  </tr>
</table>
</form>

<br>
<br>
<br>
<br>
<br>
<jsp:include page="footer.jsp" />
	</body>
</html>

