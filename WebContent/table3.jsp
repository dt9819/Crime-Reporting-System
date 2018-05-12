<html>
<body>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
try
{
String USER_ID=request.getParameter("userid");
String PASSWORD=request.getParameter("p1");
String NAME=request.getParameter("username");
String fname=request.getParameter("fname");
String ADDRESS=request.getParameter("address");
String COUNTRY=request.getParameter("course");
String ZIPCODE=request.getParameter("zip");
String mob=request.getParameter("mob");
String EMAIL=request.getParameter("email");
String SEX=request.getParameter("sex");
String ABOUT=request.getParameter("desc");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
Statement st=cn.createStatement();
//int x=st.executeUpdate("create table login(User_id varchar2(10), Password varchar2(10),Name varchar2(10),Address varchar2(10),Country varchar2(10),Zipcode varchar2(10),Email varchar2(10),Sex varchar2(10),Language varchar2(10),About varchar2(50))");
ResultSet rs=st.executeQuery("select USER_ID from studentreg where USER_ID like '"+'%'+USER_ID+'%'+"'");
if(rs.next())
{
response.sendRedirect("studentexist.jsp");
}
else
{
int i= st.executeUpdate("insert into studentreg values('"+USER_ID+"','"+PASSWORD+"','"+NAME+"','"+fname+"','"+ADDRESS+"','"+COUNTRY+"',"+ZIPCODE+","+mob+",'"+EMAIL+"','"+SEX+"','"+ABOUT+"')");
}
st.close();
cn.close();
}
catch(Exception e)
{
out.println(e);
}
%>  
<center>
<font size=8 color=red>

your registration has been complete<br>
<a href=index.jsp> GOTO HOME</a>
</font>
</center>
</body>
</html>