package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberService;
import member.MemberVO;

@WebServlet("*.me")
public class MemberController extends HttpServlet {
	RequestDispatcher rd;
	MemberService service;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getServletPath().equals("/loginpage.me")) {
			rd = req.getRequestDispatcher("member/login.jsp");
			rd.forward(req, resp);
		}else if(req.getServletPath().equals("/login.me")) {
			//"success">ligin.jsp
		
			service=new MemberDAO();
			MemberVO vo=new MemberVO();
			vo.setUser_id(req.getParameter("user_id"));
			vo.setUser_pw(req.getParameter("user_pw"));
			
			//service를 이용하여 member_login메소드를 호출하고 그 결과를 다시memberVO에 담아보기( select해오기)
			
		   vo=service.member_login(vo);
		   req.getSession().setAttribute("logininfo", vo);//로그인동안 정보유지
		   
		   String result= req.getSession().getAttribute("logininfo")==null ?"-1":"1";//F12 :로그인1,안되면-1
		   
			resp.getWriter().print(result);
			
		}else if(req.getServletPath().equals("/logout.me")) {
			req.getSession().removeAttribute("logininfo");
			resp.sendRedirect("/mvc");
		}else if(req.getServletPath().equals("/joinpage.me")) {
			rd=req.getRequestDispatcher("member/join.jsp");
			rd.forward(req, resp);
			
		}
	}
}
