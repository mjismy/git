<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.text.*, java.util.*" %>
<%

	//java.text.SimpleDateFormat => 시간을 출력할 때, yyyy MM 형태 잡아주는 클래스
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd(E) hh:mm:ss");
	
	//sdf.format();	//시간을 집어넣어주면 => 정해진 포맷형태로 문자열로 만들어준다.
	Date d = new Date();
	String today1 = sdf.format(new Date());
	long g = System.currentTimeMillis();	//현재 컴퓨터 시간을 뽑는 겁니다. GMT 시간 기준으로 밀리세컨단위로 시간이 가고 있음.
	String today2 = sdf.format(System.currentTimeMillis());
	
	System.out.println("d.toString():"+d.toString());
	System.out.println("today1: "+today1);
	System.out.println("g:"+g);
	System.out.println("today2:"+today2);
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>