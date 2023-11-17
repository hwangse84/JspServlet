package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usertbl.UserTblDAO;
import usertbl.UserTblDTO;
//name,urlpatterns...

//*.user,*.do....  :/를 빼야함(주의점)
@WebServlet(name = "usertbl", urlPatterns = { "/list", "/detail", "/update", "/delete","/newpage", "/newpageInsert"}) // 여러가지 목록
public class UserTblController extends HttpServlet {

	// url요청이 list이면 전체목록을 list.jsp 가 보여주게함
	// url요청이 detail이면 회원 한명의 정보를 detail.jsp가 보여주게함
	// 요청에 따라 콘솔창에 list,detail이 찍히게 처리해보기

	RequestDispatcher rd;
	
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		// Request(Forward):servlet이 받은 요청을 다시 다른 (servlet, jsp..등)에 전달
		// 실제로는 새로운 요청을 하지 안고, 원래 요청에 대한 처리를 받은 서블릿이나 jsp등에서 새로운 자원으로 제어를
		// 넘김(setAttribute)
		// 웹 브라우저느 이전환을 인지하지 못하여 url이 바꾸지 않음(실제 카일 경로가 안보임)

		// Response(Redirect):웹브라우저에게 새로운 url로 이동하라는 명령을 전달.
		// 웹브라우저는 새로운 url로 새로운 요청(request)을 보내고, 서버는 이요청에 응답삼.
		// 사용자가 실제로다른 페이지로 이동하여 , 주소표시줄의 url이 변경됨

		UserTblDAO dao = new UserTblDAO();

		if (req.getServletPath().equals("/list")) {

			ArrayList<UserTblDTO> list = dao.selectList();
			req.setAttribute("list", list);
			rd = req.getRequestDispatcher("usertbl/list.jsp");

		} else if (req.getServletPath().equals("/detail")) {
			String name = req.getParameter("name");
			UserTblDTO dto = dao.selectOne(name);
			req.setAttribute("dto", dto);
			rd = req.getRequestDispatcher("usertbl/detail.jsp");

		} else if (req.getServletPath().equals("/update")) {

			UserTblDTO dto = new UserTblDTO();

			/* System.out.println(req.getParameter("username"));--먼져 확인해보기 */
			dto.setUsername(req.getParameter("username"));
			dto.setBirthyear(Integer.parseInt(req.getParameter("birthyear")));
			dto.setMobile(req.getParameter("mobile"));
			dto.setAddress(req.getParameter("address"));
			System.out.println(dto.getUsername());
			// dao에 update 메소드 만들어보기.

			dao.updatechange(dto);

			resp.sendRedirect("list");

			// 요청에 대한 처리가 끝나고 코드가 있다면 오류가 발생함(실행이 안되거나~)
			return; // 아래 forward가 실행되지 않게 해줌

		} else if (req.getServletPath().equals("/delete")) {
			String username = req.getParameter("username");
			dao.delete(username);
			resp.sendRedirect("list");
			return;
		}else if(req.getServletPath().equals("/newpage")) {
			rd = req.getRequestDispatcher("usertbl/newpage.jsp");
			
			
		}else if(req.getServletPath().equals("/newpageInsert")) {
			UserTblDTO dto= new UserTblDTO();
			
			/* System.out.println(req.getParameter("username")); */
			dto.setUsername(req.getParameter("username"));
			dto.setBirthyear(Integer.parseInt(req.getParameter("birthyear")));
			dto.setMobile(req.getParameter("mobile"));
			dto.setAddress(req.getParameter("address"));
			System.out.println(dto.getUsername());
			
			dao.insert(dto);
			
			resp.sendRedirect("list");
			return;
		}
		
		
		
		

		rd.forward(req, resp);// resp.sendRedirect("list");를 쓴후에 하면 오류난다. 같이 쓸수 없다.
	
}
}