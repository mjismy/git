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
	��ȭ�� 
	<%if(gen.equals("m")){ %>
	<font color="blue">
	[<b><%=nick %></b>]
	</font>����
	
	<%}else if(gen.equals("f")) {%>
	<font color="red">
	[<b><%=nick %></b>]
	</font>����<%} %>
	
	<%if(age>=19){ %>
	���� ä�ù�
	<%}else{ %>
	�̼�����ä�ù�
	<%} %>
	���� �����մϴ�
	
</body>
</html>