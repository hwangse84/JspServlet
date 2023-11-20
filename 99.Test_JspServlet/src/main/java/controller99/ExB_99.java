package controller99;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ExB_99")
public class ExB_99 extends HttpServlet { 
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = null;
		System.out.println("");
		// req(form태그, a태그등을 이용했을때 들어오는 파라메터를 가지고 있다) getParameter<-String

		// email과 pw가 각각 admin, admin1234이면 ex03req.jsp로 넘어가고, 그게 아니라면 ex02req.jsp가 실행되게
		// 처리하기!!
		// ipconfig:
		/*
		 * String email = req.getParameter("email"); String pw = req.getParameter("pw");
		 * //=&pw=admin1234 if ("admin".equals(email) && "admin1234".equals(pw)) { rd =
		 * req.getRequestDispatcher("request/ex03req.jsp"); } else { rd =
		 * req.getRequestDispatcher("request/ex02req.jsp"); }
		 */

			//Attribute
		//ArrayList로 String데이터 5건을 묶어서 setAttribute를 통
		//jsp로 전송(jst에서는 받아서 출력)
		
		ArrayList<String> list =new ArrayList<>();
		list.add("number");
		list.add("username");
		list.add("birthyear");
		list.add("boldtype");
		
		
		//"list " ,list
		req.setAttribute("key", "data");
		req.setAttribute("list", list);

		// DAO,JDBC이용해서 로그인 확인 => Model처리
		rd.forward(req, resp);

	}

}




