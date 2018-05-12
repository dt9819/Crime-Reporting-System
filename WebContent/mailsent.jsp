<%-- <%@ page language="java" contentType="text/html" import="java.sql.*,mypack.*" session="true"%>

<html>

<%@page import="java.io.*,java.util.*,javax.mail.*,javax.mail.internet.*,java.sql.*;"  session="true"%>

<head>
<LINK REL=STYLESHEET TYPE="text/css" HREF="styles.css">
<title>Email support</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FF9900" text="#000000">
    <p>&nbsp;</p>
    <p>&nbsp;    </p>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td bgcolor="#EEEEEE">
      <table width="100%" border="0" cellspacing="1" cellpadding="0">
        <tr bgcolor="#FFFFFF">
          <td><font face="Arial, Helvetica, sans-serif" size="-2"><a href="../blank/"></a></font></td>
          <td align="center"><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>CrimeFile Management  :<font color="#CC0000"> <font color="#FF0000">Email to support
            </font></font><font color="#FF0000" face="Verdana, Arial, Helvetica, sans-serif" size="-1"><b>contact</b></font></b></font></td>
          <td align="right"><font face="Arial, Helvetica, sans-serif" size="-2"><a href="../resume/"></a></font></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<hr noshade size="1">
<br>
<br>
<%
            try {
                String to1 = request.getParameter("to");
                final String from1= request.getParameter("from");
               final  String password= request.getParameter("password");
                
                  String subject1 = request.getParameter("subject");
                  String msg = request.getParameter("msg"); 
                  Properties props = new Properties();
                  props.put("mail.smtp.auth", "true");
                  props.put("mail.smtp.starttls.enable", "true");
                  props.put("mail.transport.protocol", "smtp");
                  props.put("mail.smtp.host", "smtp.gmail.com");
                  props.put("mail.smtp.port", "587");
                  Session session1 = Session.getInstance(props,
                  new javax.mail.Authenticator() {
                  protected PasswordAuthentication getPasswordAuthentication() {
                  return new PasswordAuthentication(from1,password);
                  }
                  });
                  
                  Message message = new MimeMessage(session1);
                  message.setFrom(new InternetAddress(from1));
                  message.setRecipients(Message.RecipientType.TO,
                  InternetAddress.parse(to1));
                  message.setSubject(subject1);
                  message.setText(msg);
                  Transport.send(message);
                 
                  
                  ConnectionProvider provider=new ConnectionProvider();
                  Connection con1=provider.getCon();
                  Statement st1 = con1.createStatement();
                st1.executeUpdate("insert into mail values('" + to1+ "','" + from1 + "' ,'"+subject1+"','"+msg+"' )");
               // st1.executeUpdate("insert into register values('" + logname + "','" + fname + "','" + midname + "','" + question + "','" + answer + "','" + org + "','" + address + "','" + city + "','" + state + "'," + postcode + ",'" + country + "'," + hphone + "   ," + mphone + ",'" + fax + "','" + account + "','" + select4 + "','" + birthday + "','" + email + "')");
                out.println("Thank You , mail"  + from1 +  " has been succesfully send to ravi.singh2007pro@gmail.com ");



            } catch (Exception e) {
                out.println(e);
            }


%>
<br>
<br>
<hr noshade size="1">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"><font face="Verdana, Arial, Helvetica, sans-serif" size="-2">crimefile</font><font face="Verdana, Arial, Helvetica, sans-serif" size="-2">
      &copy; Copyright  2005-2009</font></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
 --%>