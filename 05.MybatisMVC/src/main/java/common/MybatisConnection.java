package common;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConnection {
	protected SqlSession sql;

	public MybatisConnection() {
		System.out.println("생성자");
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
}
