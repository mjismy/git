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
	//qz.jsp?year=???&gender=???
	String g = request.getParameter("gender");
	int yearNum = 2015-Integer.parseInt(request.getParameter("year"));
%>
Quiz <hr>

<%if(g.equals("m")){%>	
����� �����Դϴ�.
<%} else if(g.equals("f")){ %>
����� �����Դϴ�.
<%} %>

����� <%=yearNum %> ���Դϴ�.


</body>
</html>