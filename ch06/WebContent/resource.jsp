<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.text.*, java.util.*" %>
<%

	//java.text.SimpleDateFormat => �ð��� ����� ��, yyyy MM ���� ����ִ� Ŭ����
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd(E) hh:mm:ss");
	
	//sdf.format();	//�ð��� ����־��ָ� => ������ �������·� ���ڿ��� ������ش�.
	Date d = new Date();
	String today1 = sdf.format(new Date());
	long g = System.currentTimeMillis();	//���� ��ǻ�� �ð��� �̴� �̴ϴ�. GMT �ð� �������� �и����������� �ð��� ���� ����.
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