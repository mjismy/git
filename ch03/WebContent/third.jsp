<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String addr = request.getRemoteAddr();
	String m = request.getParameter("mode");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
ur id adr :<%=addr %><br/>
mode이란 이름으로 전달한 값 : <%=m %>

<% out.println(m); %>
</body>
</html>