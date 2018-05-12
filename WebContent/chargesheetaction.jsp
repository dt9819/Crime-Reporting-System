
<%@page import="java.io.*,java.sql.*"  session="true"%>
<%
            try {
                String cs1 = request.getParameter("cs");
                String ns1 = request.getParameter("ns");
                String dt1 = request.getParameter("dt");
                String fn = request.getParameter("fn");
                String dis = request.getParameter("dis");
                String na = request.getParameter("na");
                String add = request.getParameter("add");
                String occ = request.getParameter("occ");
                String par = request.getParameter("par");
                String nm = request.getParameter("nm");
                String address = request.getParameter("address");
                String male = request.getParameter("male");
                String female = request.getParameter("female");
                String ag1=request.getParameter("ag");
                String oc = request.getParameter("oc");
                String select = request.getParameter("select");
                String ac = request.getParameter("ac");
                String ne = request.getParameter("ne");
                String adr = request.getParameter("adr");
                String ocp = request.getParameter("ocp");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con1 = DriverManager.getConnection("Jdbc:mysql://localhost/crimefile", "root", "");
                Statement st2 = con1.createStatement();
                st2.executeUpdate("insert into chargesheet values('" +cs1 +"','"+ns1+"',"+dt1+",'"+fn+"','"+dis+"','"+na+"','"+add+"','"+occ+"','"+par+"','"+nm+"','"+address+"','"+male+"','"+female+"',"+ag1+",'"+oc+"','"+select+"','"+ac+"','"+ne+"','"+adr+"','"+ocp+"')");

                out.println("Chargesheet submitted,take action soon,Thank You");
            } catch (Exception e) {
                out.println(e);
            }
%>
