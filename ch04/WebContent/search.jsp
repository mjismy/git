<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); //이건 oracle 사이트에서 다운받아서 넣는 거
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.1:1521:xe","jsp","1111");
		

		String sql = "select * from score where id=?";

		PreparedStatement ps = conn.prepareStatement(sql);
		String result = request.getParameter("searchId");
		
		ps.setString(1,result);

		ResultSet rs = ps.executeQuery();
		out.println("<h2>결과집합 발생</h2>");
		
		if(rs.next()){
			String id = rs.getString("id");
			int kor = rs.getInt("kor");
			int eng = rs.getInt("eng");
			int math = rs.getInt("math");
			out.println("id:"+id+"/kor:"+kor+"/eng:"+eng+"/math:"+math+"<br/>");

	
		}else{
			out.println("흐잉 ㅠ 검색결과없쇼");
		}
		
		rs.close();
		ps.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	


%>
</body>
</html>