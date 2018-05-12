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
function doJob()
{
 
  var ui=document.getElementById("userid");
  var ds=document.getElementById("detailssuspect");
  var t=document.getElementById("typecrime");
  var to=document.getElementById("typeothers");
  
 
     if(ui.value == "")
 {
  alert("Enter the user id:");
  ui.focus();
  return false;
  }


      if(ds.value == "")
 {
  alert("Enter the details suspect");
  ds.focus();
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
.style5 {color: #CC0033}
-->
</style>
</head>

<body>
<%
String name=(String)session.getAttribute("user");
out.println("Welcome...."+name);
Integer value=(Integer)request.getAttribute("value");


%>

<jsp:include page="header.jsp" />
<jsp:include page="userRight.jsp" />  
<form name="form1" method="get" action="complaintaction.jsp">
<table width="409" border="0">
  
  <tr>
    <th width="186" scope="row"><div align="right" class="style5">ComplaintId:</div></th>
    <td width="213">
      <input name="userid" type="text" id="userid" value="<%=value%>" readonly/>      </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Detailssuspect:</div></th>
    <td>
      <input name="detailssuspect" type="text" id="detailssuspect" />        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Description:</div></th>
    <td>
      <textarea name="description" id="description"></textarea>       </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Date:</div></th>
    <td width="300">
      <input name="date" type="text" id="date" />e.g 10/aug/2014        </td>
  </tr>
  <tr>
    <th scope="row"><div align="right" class="style5">Typeofcrime:</div></th>
    <td>
      <select name="typecrime" id="typecrime">
          <option>civil</option>
        <option>Others</option>
      </select>       </td>
  </tr>
  
  
  
  <tr>
    <th scope="row"><div align="right" class="style5"></div></th>
    <td>&nbsp;</td>
  <tr>
    <th scope="row"><div align="right"><span class="style5"></span></div></th>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>
      <input type="submit" name="Submit" value="Register" onclick="return doJob()" />
      <input type="reset" name="Reset" value="Cancel" />        </td>
  </tr>
</table>
</form>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
