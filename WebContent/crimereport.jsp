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
function doValue()
{

  var ui=document.getElementById("userid");
  var ni=document.getElementById("nameinformant");
  var d=document.getElementById("det");
  var a=document.getElementById("address");
  var des=document.getElementById("description");
  var da1=document.getElementById("da");
   
 
  
   if(ui.value == "")
  {
    alert ("enter the userid");
	ui.focus();
	return false;
	}
	
	 if(ni.value == "")
  {
    alert ("enter the name of informant");
	ni.focus();
	return false;
	}
   if(a.value == "")
  {
    alert ("enter the address");
	a.focus();
	return false;
	}
	
	 if(d.value == "")
  {
    alert ("enter the details");
	d.focus();
	return false;
	}
	
	 if(des.value == "")
  {
    alert ("enter the description");
	des.focus();
	return false;
	}
	
	 if(da.value == "")
  {
    alert ("enter the date");
	da.focus();
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
<%@page import="java.sql.*,mypack.*"%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="userRight.jsp"></jsp:include>

<%
 	ConnectionProvider provider=new ConnectionProvider();
 	Connection con=provider.getCon();
 	Statement st=con.createStatement();
 	ResultSet rs=st.executeQuery("select MAX(userid) from crimereport");
 	int value=0;
 		if(rs.next())
 		{
 		value=Integer.parseInt(rs.getString(1));
 		value++;
 		//out.println(value);
 		request.setAttribute("value",value);
 		}
%>
  
<div>
<form name="form1" method="get" action="crimereportaction.jsp">
<table width="422" border="0">
  <tr>
    <th width="205" scope="row"><div align="right">ReportId:</div></th>
    <td width="201">
      <input name="userid" type="text" id="userid" value="<%=value%>" readonly/>       </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Name of the informant: </div></th>
    <td>
      <input name="nameinformant" type="text" id="nameinformant" />    </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Address of the informant: </div></th>
    <td>
      <input name="address" type="text" id="address" />    </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Details of the suspect: </div></th>
    <td>
      <input name="det" type="text" id="det" /></td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Description:</div></th>
    <td>
      <textarea name="description" id="description"></textarea>      </td>
  </tr>
  <tr>
    <th scope="row"><div align="right">Date of reporting: </div></th>
    <td width="300">
      <input name="da" type="text" id="da" />e.g 10aug14       </td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <th scope="row">&nbsp;</th>
    <td>
     <input name="submit" type="submit" id="submit" value="Register" onclick="return doValue()" />
      <input name="cancel" type="reset" id="cancel" value="Cancel" />     </td>
  </tr>
</table>
  </form>

</div>
<jsp:include page="footer.jsp" />
</body>
</html>


