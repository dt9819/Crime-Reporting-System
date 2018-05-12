<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<title>CrimeFile Management</title>
	<link rel="stylesheet" href="default.css" type="text/css" charset="utf-8" />
	<script language="javascript">
function doCheck()
{
  var u=document.getElementById("username");
  var p=document.getElementById("password");
  var c=document.getElementById("conpass");
  var n=document.getElementById("name");
  var a=document.getElementById("address");
  var pi=document.getElementById("pincode");
  var ph=document.getElementById("phoneno");
  var e=document.getElementById("email");
  var v=document.getElementById("village");
  var t=document.getElementById("taluk");
  var d=document.getElementById("district");
  var s=document.getElementById("state");
  
  if(u.value == "")
  {
    alert ("enter the username");
	u.focus();
	return false;
	}
  
    if(p.value == "")
  {
    alert ("enter the password");
	p.focus();
	return false;
	}
	
	else if((p.value.length)<6)   
	{
	 alert("password should contain atleast 6 characters ");
	 p.focus();
 return false;
	 }
	
  if(c.value == "")
  {
    alert ("enter the confirm password");
	c.focus();
	return false;
	}
	
		   if((c.value)!=(p.value))
		   {
		   alert("Re-enter the password");
		   c.focus();
		   return false;
	}
		   
	
	
	
	
  if(n.value == "")
  {
    alert ("enter the name");
    n.focus();
	return false;
	}
	  if(a.value == "")
  {
    alert ("enter the address");
	a.focus();
	return false;
	}

  if(pi.value == "")
  {
    alert ("enter the pincode");
	pi.focus();
	return false;
	}
	
	 else if(!parseInt(pi.value))
		{    
                    alert("Enter Integer");
		    return false;	
		}
              else if(((pi.value.length)>6))
	        {
	               alert("Pin no: should contain 6 integers ");  	            
	               pi.focus();
	               return false;
                 }
	
  if(ph.value == "")
  {
    alert ("enter the phone number");
    
	ph.focus();
	return false;
	}
   else if(!parseInt(ph.value))
		{    
                    alert("Enter valid Phone number ");
		    return false;	
		}
            else if(((ph.value.length)<6) || ((ph.value.length)>11))
	                     {
	               alert("Phone no should contain atleast 6 integers ");  
	            
	               ph.focus();
                        return false;
	                  }                 
  
    if(e.value == "")
  {
    alert ("enter the email");
	e.focus();
	return false;
	}
	
	 else if(e.value.indexOf('@')==-1)
		      {
		       alert("Use @ email correctly");
		       e.focus();
		       return false;
		      }
	
	  else if(e.value.indexOf('.')==-1)
		       {
		        alert("Use . email correctly");
		        e.focus();
		        return false;
		       }
	

    if(v.value == "")
  {
    alert ("enter the village");
	v.focus();
	return false;
	}
	  if(t.value == "")
  {
    alert ("enter the taluk");
	t.focus();
	return false;
	}
  if(d.value == "")
  {
    alert ("enter the district");
	d.focus();
	return false;
	}


    if(s.value == "")
  {
    alert ("enter the state");
	s.focus();
	return false;
	}

  }
  </script>
    <style type="text/css">
<!--
.style1 {
	color: #F67637;
	font-family: "Monotype Corsiva";
	font-size: 34px;
}
.style2 {color: #D6A55C}
-->
    </style>
</head>

<body>

<jsp:include page="beforeLoginHeader.jsp" />

		<div id="content">
			<div id="content-bot">
			  <div class="inner">
				 <form name="form1" method="get" action="registeraction.jsp">
<table width="455" border="0">
  <tr>
    <th width="197" scope="col"><div align="right">Username:</div></th>
    <th width="248" scope="col">
      <div align="left">
        <input name="username" type="text" id="username" />
      </div>        </th>
  </tr>
  <tr>
    <th scope="row"><div align="right">Password:</div></th>
    <td>
      <input name="password" type="password" id="password" maxlength="8" />       </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Confirmpassword:</div></th>
    <td>
      <input name="conpass" type="password" id="conpass" maxlength="8" />        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right"> Name:</div></th>
    <td>
      <input name="name" type="text" id="name" />        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Secret Question </div></th>
    <td><select name="select" size="1">
      <option>What is your pet's name?</option>
      <option>Which is your first school?</option>
      <option>Which is your native place?</option>
    </select>
    </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Answer</div></th>
    <td><input name="answer" type="text" id="answer" /></td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td><strong>Personal Information </strong></td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Address:</div></th>
    <td>
      <textarea name="address" id="address"></textarea>      </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Pincode:</div></th>
    <td>
      <input name="pincode" type="text" id="pincode" />        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Phoneno:</div></th>
    <td>
      <input name="phoneno" type="text" id="phoneno" />       </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">E-Mail:</div></th>
    <td>
      <input name="email" type="text" id="email" />        </td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>
      <input name="Submit" type="submit" id="submit" value="Register" onclick="return doCheck()" />
      <input name="reset" type="reset" id="reset" value="Reset" />       </td>
  </tr>
</table>
</form>
			  </div>
			</div>
	  </div>
	  
<br>
<br>
  
<jsp:include page="footer.jsp" />	  
</body>
</html>
