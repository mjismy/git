<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
//�������� ���� �����ų �������� �����ص� ������
//����ڴ� �� �������� �ִ����� �𸣰� 
	String top = (String)request.getAttribute("top");
	String center = (String)request.getAttribute("center");
%>
<head>
<title>Insert title here</title>
<style type="text/css">
	h1,h2,input,textarea,pre,select,li,td,tg
	{
	font-family:cursive;	
	}
</style>

</head>
<body>
	<table style="width:100%;height:100%">
		<tr height="10%" bgcolor="#700000">
			<td><jsp:include page="<%=top %>"/></td>
		</tr>
		<tr>
			<td><jsp:include page="<%=center %>"/></td>
		</tr>
	</table>
	
</body>
</html>