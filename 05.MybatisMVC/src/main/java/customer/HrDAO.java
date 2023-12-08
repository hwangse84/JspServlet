package customer;

import java.util.HashMap;
import java.util.List;

import common.MybatisConnection;

public class HrDAO extends MybatisConnection{

	public HrDAO() {
		super(DataResource.HR);
		// TODO Auto-generated constructor stub
	}
	
	public List<HrVO> select(HashMap<String, String> map){
		return sql.selectList("hr.select",map);
		

	}
	
}
