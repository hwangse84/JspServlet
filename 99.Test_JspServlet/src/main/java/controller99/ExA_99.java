
package controller99;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



	

@WebServlet("/ExA_99")
	public class ExA_99 extends HttpServlet {
	
		
@Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			System.out.println("Service 까지옴");
			RequestDispatcher rd = req.getRequestDispatcher("request/list.jsp");
			rd.forward(req, resp);
		}
		
	}
	

