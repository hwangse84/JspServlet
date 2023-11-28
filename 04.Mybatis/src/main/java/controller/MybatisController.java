package controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mybatis.MybatisVO;

@WebServlet("*.my")
public class MybatisController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String resource = "mybatis/config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

		
		SqlSession sql = sqlSessionFactory.openSession(true);//connection객체를 이용해서 ps(전송)
		String path = req.getServletPath();
		if (req.getServletPath().equals("/select1.my")) {
			int result = sql.selectOne("testmapper.select1");
			System.out.println(result);

		} else if (path.equals("/select2.my")) {
			String result = sql.selectOne("testmapper.select2");
			System.out.println(result);
		} else if (path.equals("/selectVO.my")) {
			MybatisVO vo = sql.selectOne("testmapper.selectVO");
			System.out.println(vo.getParam1() + " : " + vo.getParam2());

		} else if (path.equals("/selectVOList.my")) {
			List<MybatisVO> list = sql.selectList("testmapper.selectVOList");
			System.out.println(list.size());
			System.out.println(list.get(0).getParam1());
			System.out.println(list.get(1).getParam1());

		} else if (path.equals("/param1.my")) {
			String param = "hse";
			String result = sql.selectOne("testmapper.param1", param);
			System.out.println(result);

		} else if (path.equals("/param2.my")) {

			int result = sql.selectOne("testmapper.param2", 10);
			System.out.println(result);
			// 내가 원하는 숫자를 파라메터로 selet id가 param2인 mapper보내기
			// 해당 숫자에 10을 더한값을 다시 db 를 통해 return받아 출력하기

		} else if (path.equals("/params.my")) {
			MybatisVO vo = new MybatisVO();
			vo.setParam1("abc");
			vo.setParam2("def");
			MybatisVO voRtn = sql.selectOne("testmapper.params", vo);
			System.out.println(voRtn.getParam1());
			System.out.println(voRtn.getParam2());

		} else if (path.equals("/parammap.my")) {
			HashMap<String, String> paramMap = new HashMap();
			paramMap.put("param1", "abc");
			paramMap.put("param2", "def");

			MybatisVO voRtn = sql.selectOne("testmapper.params", paramMap);
			System.out.println(voRtn.getParam1());
			System.out.println(voRtn.getParam2());

		} else if (path.equals("/insert.my")) {
			
			int result = sql.insert("testmapper.insert");
			//sql.commit();// 반디시 커밋해줘야함
			System.out.println(result);
			
			
		} else if (path.equals("/update.my")) {
			
			int result = sql.update("testmapper.update");
			//sql.commit();// 반디시 
         //위에서..SqlSession sql = sqlSessionFactory.openSession(true);
			System.out.println(result);
		
		
		//delete기능 만들어보기->COL1의 값이 cons인 행들은 전부삭제
		
	} else if (path.equals("/delete.my")) {
		
		int result = sql.delete("testmapper.delete");
		//sql.commit();// 반드시 커밋해줘야함
		System.out.println(result);
		
	}
	}
}