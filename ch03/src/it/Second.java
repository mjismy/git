package it;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 서블릿으로 웹 요청 처리후 응답
// 1. extends 

@WebServlet("/snd.t")
// 3. web.xml에 등록되는 효과
public class Second extends HttpServlet {
	// 2. service 메서드 오버라이드
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String addr = request.getRemoteAddr();		// 요청지 ip
		String m = request.getParameter("mode");
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter pw = response.getWriter();
		
		
		//아래 이와 같은 코드들은 현재 잘 쓰이지 않음
		pw.println("<html><body>");
		pw.println("ur ip address:");
		pw.println(addr);
		pw.println("<br/>");
		pw.println("mode로 전달한 파라미터값 :");
		pw.println(m);
		pw.println("</body></html>");
		
		// 처리가 끝난 후 사용자쪽에게 응답을 전달하기 위해서
		
		
		
	}
}





