<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2015-06-09</title>
</head>
<body>
<%
	String title = "JSP Class";
%>
<h2><%=title %></h2>
<hr/>

<% if(Math.random()>0.5){ %>
wow!! good
<% }else{ %>
errrrr...
<% } %>

</body>
</html>