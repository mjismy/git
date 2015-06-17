<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>BMI</h2>
<hr/>
<form action="bc.nhn">
	age : <input type="text" name="age"/><br/>
	gender: <input type="radio" name="gender" value="male"/>m <input type="radio" name="gender" value="female"/>f<br/>
	weight :<input type="text" name="weight"/><br/>
	height :<input type="text" name="height"/><br/>
	<input type="submit"/>
</form>
</body>
</html>