import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import usertbl.UserTblDAO;

class userTblDaoTest {


	@Disabled
	@Test
	public void delete() {
		UserTblDAO dao= new UserTblDAO();
		dao.delete("이승기T");// 이승기 T->reqest.getParam..
		
	}
	
	
	
	
}
