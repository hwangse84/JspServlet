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
@WebServlet(name = "usertbl", urlPatterns = { "/list", "/detail","/update" }) // 여러가지 목록
public class UserTblController extends HttpServlet {

	// url요청이 list이면 전체목록을 list.jsp 가 보여주게함
	// url요청이 detail이면 회원 한명의 정보를 detail.jsp가 보여주게함
	// 요청에 따라 콘솔창에 list,detail이 찍히게 처리해보기
	RequestDispatcher rd;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		UserTblDAO dao = new UserTblDAO();
		
		if(req.getServletPath().equals("/list")) {
			
			ArrayList<UserTblDTO> list = dao.selectList();
			req.setAttribute("list", list);
			rd = req.getRequestDispatcher("usertbl/list.jsp");
			
			
		}else if(req.getServletPath().equals("/detail")) {
			String name = req.getParameter("name");
			UserTblDTO dto = dao.selectOne(name);
			req.setAttribute("dto", dto);
			rd = req.getRequestDispatcher("usertbl/detail.jsp");
			
			
		}else if(req.getServletPath().equals("/update")){
			
			UserTblDTO dto = new UserTblDTO();
		
			/* System.out.println(req.getParameter("username"));--먼져 확인해보기 */ 
			dto.setUsername(req.getParameter("username"));
			dto.setBirthyear(Integer.parseInt(req.getParameter("birthyear")));
			dto.setMobile(req.getParameter("mobile"));
			dto.setAddress(req.getParameter("address"));
			//dao에 update 메소드 만들어보기.
	
		dao.updatechange(dto);
	}
		rd.forward(req, resp);
	}
}