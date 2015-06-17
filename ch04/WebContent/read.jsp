<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<% 
	response.setCharacterEncoding("euc-kr");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.1:1521:xe","jsp","1111");
		
		String sql = "select * from score";
		PreparedStatement ps = conn.prepareStatement(sql);
	
		ResultSet rs = ps.executeQuery();
		out.println("<h2>결과집합 발생</h2>");
		
		while(rs.next()){
			String id = rs.getString("id");
			int kor = rs.getInt("kor");
			int eng = rs.getInt("eng");
			int math = rs.getInt("math");
			out.println("id:"+id+"/kor:"+kor+"/eng:"+eng+"/math:"+math+"<br/>");
	
		}
		
	}catch(Exception e) {
		e.printStackTrace();
		out.println("DB 작업중 문제 발생..!");
	}
		
	
				
	
%>

</body>
</html>



