<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 
	include action tag를 사용한 포함이예요
 -->
<jsp:include page="part.jsp"/>
<!-- 
	"<%@"와 다른 점!!
	"<jsp:include>",이 구문은 사용자가 요청할 때만 불러오는거고 (dynamic)
	"<%@", 이 구문은, 이 구문을 사용할 때 페이지 자체가 합쳐져 있고,
	합쳐져있는 채로 파일이 저장되어 있다가 그거 전체를 불러온다는, 그 정도의 구동적인 차이가 있음. (static) 
 -->
 <!-- 또 하나의 차이점!
 	"<%@" 안에는 include 지시어 안에는 변수 사용이 불가능합니당~ 
 	그런데 "<jsp:include"에는 변수 사용이 가능해욧
 -->
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<br/>
웹 어플리케이션

</body>
</html>