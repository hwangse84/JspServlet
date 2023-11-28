package mybatis;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisTblDAO {
private static SqlSession sql;
	static {
		System.out.println("싱글톤?");
		String resource = "mybatis/config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			
			 sql = sqlSessionFactory.openSession(true);// connection객체를 이용해서 ps(전송)
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insert(MybatisTblVO vo) {
		int result = sql.insert("mytbl.insert", vo);
		return result;
	}
	public int update(MybatisTblVO vo) {
		int result=sql.update("mytbl.update" , vo);
		return result;
	}
	public int delete(MybatisTblVO vo) {
		int result=sql.delete("mytbl.delete" , vo);
		return result;
	}
	public List<MybatisTblVO> select(){
		
		List<MybatisTblVO> list = sql.selectList("mytbl.select");
		return list;
	}
	}

