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
			b = "영유아";
		}else if(a<20){
			b = "10대";
		}else if(a<30){
			b = "20대";
		}else if(a<40){
			b = "30대";
		}else if(a<50){
			b = "40대";
		}else if(a<60){
			b = "50대";
		}else if(a<70){
			b = "60대";
		}else if(a<80){
			b = "70대";
		}else if(a<90){
			b = "80대";
		}
		pw.println("<br/>");
		
		String result = null;
		if(bmi<18.5){
			result = "저체중";
		}else if(bmi<23.0){
			result = "정상체중";
		}else{
			result = "과체중";
		}
		
		//age
		pw.println("당신은"+b+"이고");
		//gender
		pw.println(g+"입니다");
		//bmi
		pw.println("당신의 비만도는"+bmi+"으로");
		//result
		pw.println(result+"입니다");
		
		pw.println("</body></html>");
		
		
		
	}	
}
