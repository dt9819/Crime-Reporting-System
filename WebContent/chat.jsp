<%-- 

<%@ page session="true" import="sukhwinder.chat.ChatRoomList, sukhwinder.chat.ChatRoom" %>
<%
	String nickname = (String)session.getAttribute("nickname");
	if (nickname != null && nickname.length() > 0)
	{
		ChatRoomList roomList = (ChatRoomList) application.getAttribute("chatroomlist");
		ChatRoom room = roomList.getRoomOfChatter(nickname);
		String roomname = room.getName();
%>
	
<HTML>
<HEAD>
<TITLE>Crimestation Chat - <%=nickname%> (<%=roomname%>) </TITLE>
</HEAD>
<FRAMESET rows="80%,20%">
<FRAME SRC="displayMessages.jsp#current" name="MessageWin"></FRAME>
<FRAME SRC="sendMessage.jsp" name="TypeWin"></FRAME>
</FRAMESET>
<NOFRAMES>
<H2>This chat rquires a browser with frames support</H2>
</NOFRAMES>

</HTML>
<%
}
else
{
	response.sendRedirect("chatlogin.jsp");
}
%> --%>