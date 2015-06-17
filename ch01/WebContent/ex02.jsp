<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
String v = request.getParameter("grade");
String r = request.getParameter("rank");
int rankNum = Integer.parseInt(r);
%>

the string you requested as a parameter is <%=v %>
<br/>
<hr/>
Q.Could it be promoted? <br>
<%if(rankNum>5){%>
A.yes, sure
<%} else {%>
A.well, no	
<%} %>

</body>
</html>