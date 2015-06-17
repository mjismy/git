<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>성적관리</title>
</head>
<body>
	<h2>성적</h2>
	<hr/>
	<!-- ul : unorder list / ol : ordered list -->
	<ul>
		<li>등록하기</li>
			<a href="insform.jsp">성적등록</a>
		<li>전체보기</li>
			<a href="read.jsp">전체조회</a>
		<li>검색</li>
			<form action="search.jsp" method="post">
			검색	<input type="text" size="8" name="searchId" value=""><input type="submit">	
		</form>
	</ul>
</body>
</html>