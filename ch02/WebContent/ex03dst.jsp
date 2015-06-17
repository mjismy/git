<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	String yourId = request.getParameter("i"); 
	String yourPassword = request.getParameter("p"); 
	String yourGender = request.getParameter("g"); 
%>

ID is <%=yourId %><br/><hr>
Password is <%=yourPassword %><br/><hr>
Gender is <%if(yourGender.equals("m")){ %>
male
<%} else { %>
female
<%}
%>
</body>
</html>