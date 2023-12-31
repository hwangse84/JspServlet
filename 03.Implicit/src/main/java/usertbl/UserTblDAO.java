package usertbl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserTblDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;

	public boolean isConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hanul";
		String password = "0000";
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			

			if (!conn.isClosed())
				return true;

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;

	}

//전체 목록조회!!!!
	public ArrayList<UserTblDTO> selectList() {

		ArrayList<UserTblDTO> list = new ArrayList<>();

		if (!isConnection())
			return list;

		try {

			ps = conn.prepareStatement("SELECT * FROM USERTBL");
			rs = ps.executeQuery();
			while (rs.next()) {

				UserTblDTO dto = new UserTblDTO();
				dto.setUsername(rs.getString("USERNAME"));
				dto.setAddress(rs.getString("ADDRESS"));
				dto.setBirthyear(rs.getInt("BIRTHYEAR"));
				dto.setMobile(rs.getString("MOBILE"));
				list.add(dto);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	// 데이터1건 조회!!
	public UserTblDTO selectOne(String name) {

		UserTblDTO dto = new UserTblDTO();
		if (!isConnection())
			return dto;

		try {

			ps = conn.prepareStatement("SELECT * FROM USERTBL WHERE USERNAME=?");
			ps.setString(1, name);
			rs = ps.executeQuery();
			while (rs.next()) {

				dto.setUsername(rs.getString("USERNAME"));
				dto.setAddress(rs.getString("ADDRESS"));
				dto.setBirthyear(rs.getInt("BIRTHYEAR"));
				dto.setMobile(rs.getString("MOBILE"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}

	// 데이터 1건 업데이트
	// 1.통신열기
	// 2. Statement통신을통해 전송 ->comm객체,sql문
	// 3. select의 경우 결과를 받기->ResultSet

	public void updatechange(UserTblDTO dto) {

		if (!isConnection() == false)
			return;

		try {

			ps = conn.prepareStatement(
					"update usertbl" + " set BIRTHYEAR=?, ADDRESS=?, MOBILE=?" + " where USERNAME = ?");
			ps.setInt(1, dto.getBirthyear());
			ps.setString(2, dto.getAddress());
			ps.setString(3, dto.getMobile());
			ps.setString(4, dto.getUsername());

			int result = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

//delete(삭제)

	public void delete(String username) {

		if (isConnection() == false)
			return;

		try {
			// String sql=" ";
			ps = conn.prepareStatement("delete from usertbl where username=?");
			ps.setString(1, username);
			int result = ps.executeUpdate();
			System.out.println();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	
	//insert
	
	public void insert(UserTblDTO dto) {

		if (isConnection() == false)
			return;

		try {

			ps = conn.prepareStatement("insert into usertbl VALUES(?, ?, ?, ?)");
			ps.setString(1, dto.getUsername());
			ps.setInt(2, dto.getBirthyear());
			ps.setString(3, dto.getAddress());
			ps.setString(4, dto.getMobile());

			int result = ps.executeUpdate();
			System.out.println();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	
	
	

}


