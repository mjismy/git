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
	//����� ������ �� �������� ��û��, DB�� info ���̺� �ִ� ������ Ȯ�� ��, �������� �ٸ缭 Ŭ���̾�Ʈ���� �����ְ� �غ���!!! ��~
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); //�̰� oracle ����Ʈ���� �ٿ�޾Ƽ� �ִ� ��
		//ojdbc6.jar ������. �׸��� �� ������ OracleDriver ���� ��θ� ���ϴ°���

		//1.Connection Ŭ������ �����
		//2. �����ּ�, ���̵�, ��й�ȣ�� �Է��Ѵ�
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.1:1521:xe","jsp","1111");
		
		
		//-----�� ���������� DB�۾��� �ϱ� ���ؼ� �׻� ġ��, �Ȱ��� �κ�
		//�� �Ʒ��ʿ��� ���� DB�� �ٲ��ٶ� ���� ���ϴ� ������� �ٲ��ָ� �ȴ�.
		
		
		//3. DB�۾��غ� (��ɹ��� ������ �� �ִ� ���·� �����α�)
		String sql = "select * from info order by nick asc";

		//4. conn Ŭ������ �����غ���
		PreparedStatement ps = conn.prepareStatement(sql);
		
		//5. �۾��� �����Ѵ�. �� ������� �ΰ����� �ִ�. 
		//executeUpdate() : DB�� ������ �Ͼ �� Create, Update, Delete -> int ���� ��ȯ�Ѵ� (�� ���̶�,= ������ ���� ���� ����)
		// executeQuery() : DB�� �ִ� ������� Ȯ���ϴ� Read -> ResultSet�� ��ȯ�Ѵ� (�� ResultSet�̶�,= ���ǥ(����� Ȯ���� �� �ְ� �ص� ��ü)�� ���Ѵ�)
		ResultSet rs = ps.executeQuery();
		out.println("<h2>������� �߻�</h2>");
		
		
		//6. ������� ���� �۾�
		//(�����Ͱ� �� �� �ִ��� �𸣹Ƿ�, while �۾�����)
		while(rs.next()){
//			rs.getString(���̸�);
//			rs.getInt();
//			rs.getDouble();

			String ni = rs.getString("nick");
			String na = rs.getString("name");
			int ag = rs.getInt("age");
			
			out.println(ni+"("+na+"/"+ag+"��)<br/>");
	
		}
		
		
		//7. DB�۾��� ����ߴ� �ڿ��� ��ȯ for ����� �ڵ带 ����
		rs.close();
		ps.close();
		conn.close();
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	


%>
</body>
</html>