package pack01_url;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//GET- FORM 태그안에 있는 정보들을 URPㅓ주소에 그대로 노출시켜서 전송함(보함X)-> form nethod(get)->servlet(dogetㅡ메소드 실행)
//POST - 파라메터를 보안으로 숨김->FORM method(post)->servlet(dopostㅡ메소드 실행)
//톰캣 실행시 프로젝트의 파일을 .class로 바꾼 후 톰캣 내부에 배포하고 ㅅㄹ행
@WebServlet("/Ex01_Servlet")
public class Ex01_Servlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("KYM RESPONSE");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
