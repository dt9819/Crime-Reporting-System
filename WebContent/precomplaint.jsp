//<%@page import="mypack.*,java.sql.*" %>

<%

		try
		{
ConnectionProvider provider=new ConnectionProvider();
Connection con=provider.getCon();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select MAX(cid) from complaint");
		rs.next();
String str=rs.getString(1);
Integer value=Integer.parseInt(str);
out.println(str);
out.println(value);
value++;
request.setAttribute("value",value);
		}catch(Exception e){out.println(e);}	 
%>
<jsp:forward page="complaint.jsp" />