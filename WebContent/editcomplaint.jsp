
<%@page import="mypack.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page import="java.io.*,java.sql.*"  session="true"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<script language="javascript">
            function doJob()
            {
                var cmp=document.getElementById("comploaintno");
                var ui=document.getElementById("userid");
                var ds=document.getElementById("detailssuspect");
                var t=document.getElementById("typecrime");
                var to=document.getElementById("typeothers");
                
                if(cmp.value == "")
                    {
                        alert("Enter the complaint no:");
                        cmp.focus();
                        return false;
                    }
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
                            
                            if(t.value == "")
                                {
                                    alert("Enter the type of crime");
                                    t.focus();
                                    return false;
                                }
                                
                                if(to.value == "")
                                    {
                                        alert("Enter the type of other crimes");
                                        to.focus();
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
<jsp:include page="adminHeader.jsp" />
<div id="content">
  <div id="colTwo">
		<ul>
			<li>
			  <div align="center"><strong> 
			    </strong>		      </div>
			  
					<div>
						<div align="center">
						  <a href="login.jsp"><input type="button" id="b1" name="b1" value="Logout" /></a>
					      </div>
					</div>
			 
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
					<li><a href="firreport.jsp">FIR Report</a></li>	</ul>
			</li>
			<li>
				<h2>Account Settings </h2>
				<ul>
					<li><a href="changepassword.jsp">Change Password</a></li>
				    <li><a href="editcomplaint.jsp">Edit Complaint</a></li>
			        <li><a href="editregister.jsp">Edit Account </a></li>
		        </ul>
			</li>
			<li>
				<h2>More Facilities </h2>
				<ul>
					<li><a href="chat.jsp">Chat</a></li>
					<li><a href="compose.jsp">Mail</a></li>
				</ul>
			</li>
		</ul>
  </div>
  <div>
<form name="form1" method="get" action="editcomplaintaction.jsp">
            
            
            
            <% try {

                //              
                String a = null;
                String b = null;
                String c = null;
                String d = null;
                String e = null;
                String f = null;
                String c1 = (String) session.getAttribute("s1");
                out.println(c1);
                String c2 = (String) session.getAttribute("s2");
                ConnectionProvider provider=new ConnectionProvider();
                Connection con=provider.getCon();
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select detailssuspect,Description,Datc,typeofcrime from complaintreg where userid='" + c1 + "'");
                while (rs.next()) {
                   // a = rs.getString("complaintno");
                    b = rs.getString("detailssuspect");
                    c = rs.getString("Description");
                    d = rs.getString("Datc");
                    e = rs.getString("typeofcrime");
                   

                }


            %>   
            
            <table width="487" border="0">
                
                
                <tr>
                    <th scope="row"><div align="right">Detailssuspect:</div></th>
                    <td>
                        <input name="detailssuspect" type="text" id="detailssuspect" value='<%=b%>'/>                    </td>
                </tr>
                <tr>
                    <th scope="row"><div align="right">Description:</div></th>
                    <td><label>
                            <input type="text" name="description"  value='<%=c%>'/>
                    </label></td>
                </tr>
                <tr>
                    <th scope="row"><div align="right">Date:</div></th>
                    <td>
                        <input name="date" type="text" id="date" value='<%=d%>'/>                    </td>
                </tr>
                <tr>
                    <th scope="row"><div align="right">Typeofcrime:</div></th>
                    <td>
                        <select name="typecrime" id="typecrime" value='<%=e%>'>
                            <option>civil</option>
                            <option>Others</option>
                        </select>                    </td>
                </tr>
                <tr>
                    <th scope="row">&nbsp;</th>
                    <td>
                        <input type="submit" name="Submit" value="Edit" onclick="return doJob()" />
                        <input type="reset" name="Reset" value="Cancel" />                    </td>
                </tr>
            </table>
    </form>
<%
            } catch (Exception e) {
                out.println(e);
            }
        %>
</div>
<div id="footer">
	<p>Copyright &copy; 2009 cfm. </p>
</div>
</body>
</html>


