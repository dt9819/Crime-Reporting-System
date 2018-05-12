

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />

<script language="javascript">
function doEnter()
{
 var a=document.getElementById("cs");
  var b=document.getElementById("ns");
  var c=document.getElementById("dt");
  var d=document.getElementById("fn");
  var e=document.getElementById("dis");
  var f=document.getElementById("na");
  var g=document.getElementById("add");
   var h=document.getElementById("occ");
  var i=document.getElementById("par");
  var j=document.getElementById("nm");
  var k=document.getElementById("ad");
  var l=document.getElementById("ag");
  var m=document.getElementById("oc");
  var n=document.getElementById("ac");
  
  var o=document.getElementById("ne");
  var p=document.getElementById("adr");
  var p=document.getElementById("ocp");
  
  if(a.value == "")
  {
    alert ("enter the chargesheetno");
	a.focus();
	return false;
	}
  
   if(b.value == "")
  {
    alert ("enter the name of police station");
	b.focus();
	return false;
	}
	
	 if(c.value == "")
  {
    alert ("enter the date");
	c.focus();
	return false;
	}
   if(d.value == "")
  {
    alert ("enter the firno");
	d.focus();
	return false;
	}
	
	 if(e.value == "")
  {
    alert ("enter the district");
	e.focus();
	return false;
	}
	
	 if(f.value == "")
  {
    alert ("enter the name");
	f.focus();
	return false;
	}
	
	 if(g.value == "")
  {
    alert ("enter the address:");
g.focus();
	return false;
	}
	
	
	 if(h.value == "")
  {
    alert ("enter the occupation");
	h.focus();
	return false;
	}
	
	 if(i.value == "")
  {
    alert ("enter the particulars:");
	i.focus();
	return false;
	}
   if(j.value == "")
  {
    alert ("enter the name");
	j.focus();
	return false;
	}
	
	 if(k.value == "")
  {
    alert ("enter the address:");
	k.focus();
	return false;
	}
	
	 if(l.value == "")
  {
    alert ("enter age");
	l.focus();
	return false;
	}
	
	 if(m.value == "")
  {
    alert ("enter the occupation");
m.focus();
	return false;
	}
	
	
	
	 if(n.value == "")
  {
    alert ("enter the action:");
	n.focus();
	return false;
	}
	
	 if(o.value == "")
  {
    alert ("enter name");
	o.focus();
	return false;
	}
	
	 if(p.value == "")
  {
    alert ("enter the address");
p.focus();
	return false;
	}
	
	
 if(q.value == "")
  {
    alert ("enter the occupation");
q.focus();
	return false;
	}
	
	
	}
 </script>
<style type="text/css">
<!--
.style1 {
	font-size: 18px;
	font-weight: bold;
}
-->
</style>


</head>
<body>
<div id="header">
	<div id="logo">
		<h1>CrimeStation</h1>
		<h2>within the hands of safe </h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="adminhome.html">my home </a></li>
			<li><a href="latestnews.jsp">latest news </a></li>
			<li><a href="feedback.jsp">feedbacks</a></li>
			<li><a href="login.jsp">logout</a></li>
		</ul>
  </div>
</div>
<div id="content">

  <div id="colOne">
    <p>&nbsp;</p>
    <div>
		<form id="form1" name="form1" method="post" action="chargesheetaction.jsp">
<table width="341" border="0" align="center">
  <tr>
    <td colspan="2"><div align="center" class="style1">CHARGE SHEET</div></td>
  </tr>
  <tr>
    <td width="141">&nbsp;</td>
    <td width="184">&nbsp;</td>
  </tr>
  <tr>
    <td>CHARGESHEET NO :</td>
    <td>
      <label>
        <input type="text" name="cs" id="cs" />
        </label>      </td>
  </tr>
  <tr>
    <td>NAME OF POLICE STATION:</td>
    <td>
      <label>
      <input type="text" name="ns" id="ns" />
      </label>  </td>
  </tr>
  <tr>
    <td>DATE :</td>
    <td>
      <label>
      <input type="text" name="dt" id="dt" />
      </label>   </td>
  </tr>
  <tr>
    <td>FIR NO :</td>
    <td>
      <label>
      <input type="text" name="fn" id="fn" />
      </label>   </td>
  </tr>
  <tr>
    <td>DISTRICT :</td>
    <td>
      <label>
      <input type="text" name="dis" id="dis" />
      </label>  </td>
  </tr>
  <tr>
    <td height="54" colspan="2"><div align="left"><em>INFORMATION DETAILS :</em></div></td>
  </tr>
  <tr>
    <td><strong>NAME :</strong></td>
    <td>
      <label>
      <input type="text" name="na" id="na" />
      </label>  </td>
  </tr>
  <tr>
    <td><strong>ADDRESS:</strong></td>
    <td><textarea name="add" id="add" cols="25" rows="2"></textarea></td>
  </tr>
  <tr>
    <td><strong>OCCUPATION :</strong></td>
    <td>
      <label>
      <input type="text" name="occ" id="occ" />
      </label> </td>
  </tr>
  <tr>
    <td><strong>PARTICULARS:</strong></td>
    <td>
      <label>
      <input type="text" name="par" id="par" />
      </label>    </td>
  </tr>
  <tr>
    <td height="34" colspan="2"><strong>ACCUSED DETAILS:</strong></td>
  </tr>
  <tr>
    <td><strong>NAME :</strong></td>
    <td>
      <label>
      <input type="text" name="nm" id="nm" />
      </label>    </td>
  </tr>
  <tr>
    <td><strong>ADDRESS :</strong></td>
    <td><textarea name="address" id="address" cols="25" rows="2"></textarea></td>
  </tr>
  <tr>
    <td><strong>SEX :</strong></td>
    <td>
      <label>
     Male
     <input name="male" type="radio" id="male" value="male"  />
      </label>
        <label>
          Female
      <input type="radio" name="female" id="female" value="female" />
</label>      </td>
  </tr>
  <tr>
    <td><strong>AGE :</strong></td>
    <td>
      <label>
      <input type="text" name="ag" id="ag" />
      </label>   </td>
  </tr>
  <tr>
    <td><strong>OCCUPATION :</strong></td>
    <td>
      <label>
      <input type="text" name="oc" id="oc" />
      </label>    </td>
  </tr>
  <tr>
    <td><strong>CURRENT STATUS :</strong></td>
    <td>
      <label></label>
       
      
        <label>
          <select name="select" id="select">
            <option>custody</option>
            <option>released</option>
          </select>
        </label>    </td>
  </tr>
  <tr>
    <td><strong>ACTION :</strong></td>
    <td>
      <label>
      <input type="text" name="ac" id="ac" />
      </label>   </td>
  </tr>
  <tr>
    <td height="44" colspan="2"><em><strong>WITNESS DETAILS :</strong></em></td>
  </tr>
  <tr>
    <td><strong>NAME :</strong></td>
    <td><input type="text" name="ne" id="ne" /></td>
  </tr>
  <tr>
    <td><strong>ADDRESS :</strong></td>
    <td>
      <label>
        <textarea name="adr" id="adr" cols="25" rows="2"></textarea>
        </label>      </td>
  </tr>
  <tr>
    <td><strong>OCCUPATION :</strong></td>
    <td><input type="text" name="ocp" id="ocp" /></td>
  </tr>
  <tr>
    <td colspan="2"><div align="center">
      <input type="submit" name="button" id="button" value="Submit" onclick="return doEnter()"/>
    </div></td>
    </tr>
</table>
<label></label>
</form>


	</div>
  </div>
	<div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>
		      </div>
			  <form method="get" action="#">
					<div>
						<div align="center">
						  <input type="text" id="textfield1" name="textfield1" value="" size="18" />
						  <input type="submit" id="submit1" name="submit1" value="Search" />
				      </div>
					</div>
			  </form>
		  </li>
			<li>
				<h2>New Additions</h2>
				<ul>
					<li><a href="newadmin.jsp">New admin </a></li>
					<li><a href="hotnews.jsp">Hot News </a></li>
					<li><a href="viewHotNews.jsp">View Hot News </a></li>
					<li><a href="viewfeedback.jsp">View Feedback </a></li>
					<li><a href="mostwanted.jsp">Most Wanted </a></li>
					<li><a href="viewMostWanted.jsp">View  MostWanted </a></li>
					<li><a href="missingperson.jsp">Missing Persons </a></li>
					<li><a href="viewadminmissing.jsp">Delete Missing Persons </a></li>
					<li><a href="criminalregister.jsp">Criminal Register </a></li>
					<li><a href="viewcomplaintreply.jsp">View Allcomplaintreply </a></li>
					<li><a href="prisonerreg.jsp">Prisoners Register </a></li>
					<li><a href="prisonerreport.jsp">ViewPrisonerReport </a></li>
					<li><a href="history.jsp">History</a></li>
					<li><a href="viewhistory.jsp">View History</a></li>
					<li><a href="fir.jsp">FIR</a></li>
					<li><a href="firreport.jsp">FIR Report</a></li>
				</ul>
			</li>
			<li>
				<h2>Account Settings </h2>
				<ul>
					<li><a href="adminchangepass.jsp">Change Password </a></li>
				</ul>
			</li>
			<li>
				<h2>More Facilities </h2>
				<ul>
					<li><a href="chatlogin.jsp">Chat</a></li>
					<li><a href="compose.jsp">Mail</a></li>
				</ul>
			</li>
		</ul>
  </div>
</div>
<div id="footer">
	<p>Copyright &copy; 2009 cfm. Designed by<em class="style1"> <a href="http://www.freecsstemplates.org/">www.crimefilemanagement.com</a></em></p>
</div>

</body>
</html>
















