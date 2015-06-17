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
	//사용자 측에서 이 페이지를 요청시, DB와 info 테이블에 있는 정보를 확보 후!
	//사람의 정보만 가져와서 화면을 꾸며보자 (조건을 기본키 로검색)
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); //이건 oracle 사이트에서 다운받아서 넣는 거
		//ojdbc6.jar 파일임. 그리고 그 파일의 OracleDriver 파일 경로를 말하는거임

		//1.Connection 클래스를 만든다
		//2. 연결주소, 아이디, 비밀번호를 입력한다
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.1:1521:xe","jsp","1111");
		
		
		//-----이 위에까지는 DB작업을 하기 위해서 항상 치는, 똑같은 부분
		//이 아래쪽에만 이제 DB를 바꿔줄때 내가 원하는 설정대로 바꿔주면 된다.
		
		
		//3. DB작업준비 (명령문을 전달할 수 있는 형태로 만들어두기)
		String sql = "select * from info where nick=?";

		//4. conn 클래스를 제어해보자
		PreparedStatement ps = conn.prepareStatement(sql);
		String word = "길똥이"; //getParameter()로 확보됐을 수도 있고.
		
		ps.setString(1,word);
		
		//5. 작업을 수행한다. 그 방법에는 두가지가 있다. 
		//executeUpdate() : DB에 조작이 일어날 때 Create, Update, Delete -> int 값을 반환한다 (그 값이란,= 영향을 받은 행의 개수)
		// executeQuery() : DB에 있는 결과물을 확보하는 Read -> ResultSet을 반환한다 (그 ResultSet이란,= 결과표(결과를 확인할 수 있게 해둔 객체)를 말한다)
		ResultSet rs = ps.executeQuery();
		out.println("<h2>결과집합 발생</h2>");
		
		
		//6. 결과값을 통한 작업
		//(데이터가 몇 개 있는지 모르므로, while 작업으로)
		if(rs.next()){
//			rs.getString(열이름); || rs.getInt(); ||	rs.getDouble();

			String ni = rs.getString("nick");
			String na = rs.getString("name");
			int ag = rs.getInt("age");
			
			out.println(ni+"("+na+"/"+ag+"세)<br/>");
	
		}else{
			out.println("흐잉 ㅠ 검색결과없쇼");
		}
		
		
		//7. DB작업시 사용했던 자원을 반환 for 깔끔한 코드를 위해
		rs.close();
		ps.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	


%>
</body>
</html>