package constroller;

import java.io.IOException;
//정확한 구분자를 통해 해당 구분자로 끝나는 모든 요청을 받게 만드는게 사능
//string으로 하나의 문자열을 url맵핑으로 쓰는 경우."/list"
//string배열을 이용하여..@webServlet(name="usertbl",urlPatterns= {"/list,"/.."..")

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.te")
public class TestController extends HttpServlet {

	RequestDispatcher rd; // 서블릿에서 다시 페이지로요청 넘김(Forward)

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("여기까지 servlet");

		if (req.getServletPath().equals("/list.te")) {
			rd = req.getRequestDispatcher("test/list.jsp");

			req.setAttribute("data", "servletDate");/* date라는 값은 찾으면 servltDate를 쓸수 있게 해줌.. */
			req.setAttribute("data2", 123);

		} else if (req.getServletPath().equals("/new.te")) {
			rd = req.getRequestDispatcher("test/new.jsp");
			
		} else if (req.getServletPath().equals("/insert.te")) {
			System.out.println("insert처리"+ req.getParameter("id"));
			rd = req.getRequestDispatcher("test/list.jsp");
        //받은 id와 pw값을  test/update.jsp로 보내고 출력해보기.
			req.setAttribute("id", req.getParameter("id"));
			req.setAttribute("pw", req.getParameter("pw"));//${id}
			

		
		} else if (req.getServletPath().equals("/delete.te")) {
			System.out.println("여기까지!!"+req.getParameter("deleteid"));
			rd = req.getRequestDispatcher("test/delete.jsp");
			
			resp.sendRedirect("list.te");
			return;
		
		} else {
			resp.getWriter().println("오류!");

		}
		rd.forward(req,resp);
	}
}
