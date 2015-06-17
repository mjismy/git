<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<% 
	int s1 = Integer.parseInt(request.getParameter("kor"));
	int s2 = Integer.parseInt(request.getParameter("eng"));
	int s3 = Integer.parseInt(request.getParameter("math"));

	int avg = (s1+s2+s3)/3;
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
// 1. avg > 60
// 2. each subject > 40
%>

평균은 <%=avg %>점 입니다.

국어는 <%=s1 %>점, 영어는 <%=s2 %>점, 수학은 <%=s3 %>점입니다.
<%if(s1<40 || s2<40 || s3<40){ %>
그러나 아쉽게도 40점 이하 과목이 있어서 불합격
<%}else { %>
그러므로 합격
<%} %>
입니다.


</body>
</html>