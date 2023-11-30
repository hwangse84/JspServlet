package customer;

import java.util.HashMap;
import java.util.List;

import common.MybatisConnection;

public class HanulDAO extends MybatisConnection{

	public HanulDAO() {
		super(DataResource.HANUL);
		// TODO Auto-generated constructor stub
	}
	public List<HanulVO> select(HashMap<String, String> map){
		return sql.selectList("hanul.select",map);
		
	}
}
