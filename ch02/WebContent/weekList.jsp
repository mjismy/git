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
String today = request.getParameter("week");
String[] whatDay = {"mon","tue","wed","thu","fri","sat","sun"};

%>


<h2>
Webtoon list of
<%if(today.equals("mon")){ %>
monday
<%} else if(today.equals("tue")){ %>
tuesday
<%} else if(today.equals("wed")){ %>
wednesday
<%} else if(today.equals("thu")){ %>
thursday
<%} else if(today.equals("fri")){ %>
friday
<%} else if(today.equals("sat")){ %>
saturday
<%} else if(today.equals("sun")){ %>
sunday
<%} %>
</h2>

</body>
</html>