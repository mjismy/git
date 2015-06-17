package it;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/bc.nhn")
public class bmiCalculation extends HttpServlet {
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		//age, gender, weight, height
		int a = Integer.parseInt(request.getParameter("age"));
		String g = request.getParameter("gender");
		int w = Integer.parseInt(request.getParameter("weight"));
		int h = Integer.parseInt(request.getParameter("height"));
		double bmi = w/(h/100*h/100);
				
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter pw = response.getWriter();
		
		pw.println("<html><body>");

		//Age
		String b = null;
		if(a<10){
			b = "������";
		}else if(a<20){
			b = "10��";
		}else if(a<30){
			b = "20��";
		}else if(a<40){
			b = "30��";
		}else if(a<50){
			b = "40��";
		}else if(a<60){
			b = "50��";
		}else if(a<70){
			b = "60��";
		}else if(a<80){
			b = "70��";
		}else if(a<90){
			b = "80��";
		}
		pw.println("<br/>");
		
		String result = null;
		if(bmi<18.5){
			result = "��ü��";
		}else if(bmi<23.0){
			result = "����ü��";
		}else{
			result = "��ü��";
		}
		
		//age
		pw.println("�����"+b+"�̰�");
		//gender
		pw.println(g+"�Դϴ�");
		//bmi
		pw.println("����� �񸸵���"+bmi+"����");
		//result
		pw.println(result+"�Դϴ�");
		
		pw.println("</body></html>");
		
		
		
	}	
}
