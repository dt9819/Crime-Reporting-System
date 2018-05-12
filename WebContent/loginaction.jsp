<%@ page language="java" contentType="text/html" import="java.sql.*,mypack.*" session="true"%>

<%
            

            try {
                String s1 = request.getParameter("username");
                String s2 = request.getParameter("password");
                ConnectionProvider provider=new ConnectionProvider();
                Connection con=provider.getCon();
                Statement st = con.createStatement();
                
                
                ResultSet rs;
                rs = st.executeQuery("select * from login where username='" + s1 + "' and password='" + s2 + "'");
                int flag=0;
                while(rs.next())
                {
                if(s1.equals(rs.getString(1))&&s2.equals(rs.getString(2)))
                {
               
                flag=1;
                session.setAttribute("user",s1);
                response.sendRedirect("userHome.jsp");
                break;
                }
                }
                if(flag==0)
                {
                response.sendRedirect("loginerror.jsp");
                }

				
				
            }

                           catch (Exception e) {
                out.println(e);
            }
%>
