package it;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// �������� �� ��û ó���� ����
// 1. extends 

@WebServlet("/snd.t")
// 3. web.xml�� ��ϵǴ� ȿ��
public class Second extends HttpServlet {
	// 2. service �޼��� �������̵�
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String addr = request.getRemoteAddr();		// ��û�� ip
		String m = request.getParameter("mode");
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter pw = response.getWriter();
		
		
		//�Ʒ� �̿� ���� �ڵ���� ���� �� ������ ����
		pw.println("<html><body>");
		pw.println("ur ip address:");
		pw.println(addr);
		pw.println("<br/>");
		pw.println("mode�� ������ �Ķ���Ͱ� :");
		pw.println(m);
		pw.println("</body></html>");
		
		// ó���� ���� �� ������ʿ��� ������ �����ϱ� ���ؼ�
		
		
		
	}
}





