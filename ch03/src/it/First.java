package it;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 서블릿을 만들려면
// 1. extends HttpServlet   or   GenericServlet   
// (미리 설계가 된 클래스중에 하나를 extends 걸고 설계하면 된다)
// cf) smart import [단축키] : ctrl+shift+o
public class First extends HttpServlet {
	// 2. void service(HttpServletRequest arg0, HttpServletResponse arg1)
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1)
			throws ServletException, IOException {
		System.out.println("요청 발생.!");
	} 
}
// 3. web.xml(프로젝트 설정파일) 에 등록




