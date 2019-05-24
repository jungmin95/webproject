package kr.co.webproject.store.logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import kr.co.webproject.domain.User;
import kr.co.webproject.store.MemberStore;
import kr.co.webproject.store.factory.ConnectionFactory;
import kr.co.webproject.store.factory.JdbcUtils;

@Repository
public class MemberStoreLogic implements MemberStore{

	private ConnectionFactory connectionFactory;

	public MemberStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}
	
	@Override
	public boolean create(User user) {
		
		Connection connection = null;
		PreparedStatement psmt = null;
		int createdCount = 0;
		try {
			connection = connectionFactory.createConnection();
			
			psmt = connection.prepareStatement("INSERT INTO PROJECT_USER(user_id, user_pw, user_name, user_sex, user_age) VALUES (?,?,?,?,?)");
			
			psmt.setString(1, user.getId());
			psmt.setString(2, user.getPw());
			psmt.setString(3, user.getName());
			psmt.setInt(4, user.getSex());
			psmt.setInt(5, user.getAge());
			
			createdCount = psmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(psmt, connection);
		}

		return createdCount > 0;
	}

	@Override
	public User read(String id) {

		String sql = "SELECT user_id, user_pw, user_name, user_age, user_sex FROM PROJECT_USER WHERE user_id = ?";
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		User user = null;
		
		try {
			conn = connectionFactory.createConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				user = new User();
				user.setId(rs.getString(1));
				user.setPw(rs.getString(2));
				user.setName(rs.getString(3));
				user.setAge(rs.getInt(4));
				user.setSex(rs.getInt(5));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.Close(conn, rs, pstmt); 
		}
		return user;
	}

}
