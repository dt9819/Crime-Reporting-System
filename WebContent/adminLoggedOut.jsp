<%@page session="false" %>
<html>
<head>
	<link href="default.css" rel="stylesheet" type="text/css" />
</head>
	<body>
	<%

	%>
	
	<%
		HttpSession admin_session=request.getSession(false);
		if(admin_session!=null)
		{
		admin_session.invalidate();
		admin_session=null;
		out.println(admin_session);
		
		response.setHeader("Cache-Control","no-cache"); 
		response.setHeader("Pragma","no-cache"); 
		response.setDateHeader ("Expires", 0);
		}
	%>
	<%="You are successfully logged out...." %>
	<jsp:include page="adminLogin.jsp" />
	
	<%
	//String name=(String)session.getAttribute("name");
	//out.println("You are ...."+name);
	 %>
	</body>
</html>