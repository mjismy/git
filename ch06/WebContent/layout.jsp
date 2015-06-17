<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//jsp:include 태그를 이용한 페이지 포함은, 전체 어플리케이션에 고정틀(레이아웃/템플릿)을 적용시킬 때 사용
	
	//규모가 큰 어플리케이션의 경우에는 템플릿이 많이 사용되는데 
	//보통 틀 하나가지고 돌려서 사용한다.
	
	String top ="";
	String left="";
	String center="";
%>

<html>
<body>
	<table width="100%" height="100%" border="1">
		<tr height="15%">
			<td colspan="2">
				<jsp:include page="<%=top %>"/>
			</td>
		</tr>
		<tr>
			<td width="20%">
				<jsp:include page="<%=top %>"/>
			</td>
			<td width="80%">
				<jsp:include page="<%=center %>"/>
			</td>
		</tr>
		
	</table>


</body>
</html>