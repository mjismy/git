<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String nick = request.getParameter("nick");
	int age = Integer.parseInt(request.getParameter("age"));
	String gen = request.getParameter("gender");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>qz01proc</title>
</head>
<body>
	대화명 
	<%if(gen.equals("m")){ %>
	<font color="blue">
	[<b><%=nick %></b>]
	</font>으로
	
	<%}else if(gen.equals("f")) {%>
	<font color="red">
	[<b><%=nick %></b>]
	</font>으로<%} %>
	
	<%if(age>=19){ %>
	성인 채팅방
	<%}else{ %>
	미성년자채팅방
	<%} %>
	으로 입장합니다
	
</body>
</html>