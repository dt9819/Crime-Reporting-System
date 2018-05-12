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
-->
</style>


<script language="javascript">

function doValue()
{
 	var a=document.getElementById("matter");
  	var b=document.getElementById("time");
  	var c=document.getElementById("place");

   	if(a.value == " ")
  	{
    alert ("enter the matter");
	a.focus();
	return false;
	}
  
   	if(b.value == " ")
  	{	
    alert ("enter the time");
	b.focus();
	return false;
	}
	
	if(c.value == " ")
  	{
    alert ("enter the place of occurance");
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
.style10 {color: #CC9966}
-->
</style>
</head>
<body>

<jsp:include page="adminHeader.jsp"/>

<div id="content">

  <div id="colOne">
    <p>&nbsp;</p>
    <div>
    
    
		  <form id="form1" name="form1" method="post" action="hotnewsaction.jsp">
<table width="375" height="300" border="0" align="center">
  <tr>
    <td height="50" colspan="2"><div align="center" class="style1 style10">HotNews</div></td>
  </tr>
  <tr>
    <td width="167" height="65"><div align="right" class="style4">Matter:</div></td>
    <td width="192">
      <textarea name="matter" cols="25" rows="5"></textarea>      </td>
  </tr>
  <tr>
    <td height="57"><div align="right" class="style4">Time:</div></td>
    <td>
      <input type="text" name="time" />      </td>
  </tr>
  <tr>
    <td height="57"><div align="right" class="style4">Place:</div></td>
    <td><input type="text" name="place" /></td>
  </tr>
  <tr>
    <td colspan="2">
      <div align="center">
        <input type="submit" name="Submit" value="Submit" onclick="return doValue()" /> &nbsp;&nbsp;&nbsp;&nbsp;
         <input name="reset" type="reset" id="reset" value="Cancel" />
      </div>    </td>
  </tr>
</table>
</form>

	</div>
  </div>
	<jsp:include page="adminRight.jsp"></jsp:include>
<jsp:include page="adminFooter.jsp"></jsp:include>

</body>
</html>






