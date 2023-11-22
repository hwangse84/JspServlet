package constroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.hse")
public class HseController extends HttpServlet {
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// System.out.println("222");

		if (req.getServletPath().equals("/list.hse")) {
			rd = req.getRequestDispatcher("hse/list.jsp");

		} else if (req.getServletPath().equals("/insert.hse")) {
			rd = req.getRequestDispatcher("hse/inserthse.jsp");
			req.setAttribute("param1", req.getParameter("param1") + "1");
			req.setAttribute("param2", req.getParameter("param2") + "1");
			/* System.out.println(req.getParameter("param1")); */
		}
		rd.forward(req, resp);
	}

}
