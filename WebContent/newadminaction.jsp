<%@page import="java.io.*,java.sql.*"  session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
		<jsp:useBean id="t1" class="mypack.ConnectionProvider" /> 
		<%
            try {
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                
                Connection con1=t1.getCon();
                Statement st = con1.createStatement();
                st.executeUpdate("insert into admin values('" + user + "','" + pass + "')");
              
                out.println("Successfully Data submitted");
          %>
          		<jsp:include page="adminHome1.jsp" />
          <%

            } 
            catch (Exception e) 
            {
            out.println(e);
            }
%>
</body>
</html>
















