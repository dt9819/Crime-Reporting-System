<%@page session="true" %>
<%@page import="java.sql.*" %>
<%@page errorPage="crimeError.jsp" %>

<html>
<body>
		&quot;<jsp:useBean id="mycon" class="mypack.ConnectionProvider" />
			<% 
                String uname = request.getParameter("username");
                String upass = request.getParameter("password");
                Connection con=mycon.getCon();
                Statement st = con.createStatement();
               
                ResultSet rs;
                rs = st.executeQuery("select * from admin where username='" + uname + "' and password='" + upass + "'");
				
                if(rs.next())
				{
				
				session.setAttribute("admin",uname);
			%>
				<jsp:forward page="adminHome1.jsp" />
			<% 
				
				}
				else
				{
				     
           %>
           			User-name/Password is not correct please try again ....
           			
                   <jsp:include page="adminLogin.jsp" />
			<%
                }    	
			%>
</body>
</html>