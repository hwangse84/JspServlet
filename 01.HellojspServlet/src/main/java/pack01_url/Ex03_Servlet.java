package pack01_url;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Ex03")
public class Ex03_Servlet extends HttpServlet {
	//request(요청) ,response(응답)
	//요청 : 크롬창에 어떤 url을 넣어놓고, ENTER KEY, FORM태그가 제출(SUBMIT)또는 A 태그가 href로 url을 바꿀때 등등
	//httpservlettequest :요청 정보 모두 있음
	//음답 : response를 이용해서 어떤 문자열을 html형태로 출력하거나 응답처리
	//httpservletresponse : 응답관련기능
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("요청이 들어옴. request");
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("id"));
		
		PrintWriter writer =response.getWriter();
		writer.print("<html>");
		writer.print("<body>");
		writer.print("<h1>Hello Get</h1>");
		writer.print("</body>");
		writer.print("<html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 if("admin".equals(request.getParameter("id"))&&"admin1234".equals(request.getParameter("pw"))) {
		 
		 //null.equals:널포인터익셉션
		 //"".equals:오류발생x
		 response.getWriter().println("success");
	 }else{
		 response.getWriter().println("fail"); 
		
	}
	}

}
