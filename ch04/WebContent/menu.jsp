<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��������</title>
</head>
<body>
	<h2>����</h2>
	<hr/>
	<!-- ul : unorder list / ol : ordered list -->
	<ul>
		<li>����ϱ�</li>
			<a href="insform.jsp">�������</a>
		<li>��ü����</li>
			<a href="read.jsp">��ü��ȸ</a>
		<li>�˻�</li>
			<form action="search.jsp" method="post">
			�˻�	<input type="text" size="8" name="searchId" value=""><input type="submit">	
		</form>
	</ul>
</body>
</html>