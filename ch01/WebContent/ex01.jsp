<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int n = 3;

		request.toString();//request from User	
		response.toString();//response from Server
		
		String addr = request.getRemoteAddr(); //request your IP address
		
	%>
	
	addr? <%=addr %>
	
	<%
		response.sendError(500);
	%>
	
	
</body>
</html>