<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>합격조회</h2>
<hr/>

------ 합격조건 ------<br/>
1. 평균이 60 이상 <br/>
2. 개별 과목 점수는 40점 이상<br/>
<hr/>
<form action="qz02proc.jsp">
kor <input type="text" name="kor"/><br/>
eng <input type="text" name="eng"/><br/>
math <input type="text" name="math"/><br/>
<hr/>
<input type="submit"/>
</form>


</body>
</html>