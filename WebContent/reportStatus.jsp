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
                var cmp=document.getElementByName("cid");
                
                if(cmp.value == "")
                    {
                        alert("Enter the complaint no:");
                        cmp.focus();
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
<%@page session="true" %>
<%
String user=(String)session.getAttribute("user");
out.println("welcome ..."+user);
 %>


<jsp:include page="header.jsp" />
<jsp:include page="userRight.jsp" />
  
<div>
<form method="get" action="reportStatusAction.jsp">                       
            
                        
            <table width="487" border="0">
                
                
                <tr>
                    <th scope="row"><div align="right">Enter Report Id:</div></th>
                    <td>
                        <input name="cid" type="text" />
                    </td>
                 </tr>
                 <tr>   
                 <th scope="row"><div align="right"></div></th>
                    <td>
                        <input type="submit" value="status" onclick="return doJob()"/>
                    </td>
                </tr>
                      
            </table>
 </form>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>


