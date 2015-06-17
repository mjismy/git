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
당신은 남성입니다.
<%} else if(g.equals("f")){ %>
당신은 여성입니다.
<%} %>

당신은 <%=yearNum %> 세입니다.


</body>
</html>