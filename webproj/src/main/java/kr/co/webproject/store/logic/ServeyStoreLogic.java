package kr.co.webproject.store.logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import kr.co.webproject.domain.Servey;
import kr.co.webproject.store.ServeyStore;
import kr.co.webproject.store.factory.ConnectionFactory;
import kr.co.webproject.store.logic.utill.JdbcUtils;


@Repository
public class ServeyStoreLogic implements ServeyStore {

	private ConnectionFactory connectionFactory;
	
	public ServeyStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}
	
	@Override
	public boolean set(Servey servey) {
		
		Connection conn = null;
		PreparedStatement psmt = null;
		int createdCount = 0;
		int num = 1;
		
		try {
			conn = connectionFactory.createConnection();
			
			psmt = conn.prepareStatement("INSERT INTO PROJECT_SERVEY(SERVEY_NUM, USER_ID, SURVEY_1, SURVEY_2, SURVEY_3, SURVEY_4, SURVEY_5, SURVEY_6, SURVEY_7, SURVEY_8) VALUES (?,?,?,?,?,?,?,?,?,?)");
			
			psmt.setInt(1, num);
			psmt.setString(2, servey.getUserId());
			psmt.setInt(3, servey.getServey(0));
			psmt.setInt(4, servey.getServey(1));
			psmt.setInt(5, servey.getServey(2));
			psmt.setInt(6, servey.getServey(3));
			psmt.setInt(7, servey.getServey(4));
			psmt.setInt(8, servey.getServey(5));
			psmt.setInt(9, servey.getServey(6));
			psmt.setInt(10, servey.getServey(7));

			createdCount = psmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.close(psmt, conn);
			num++;
		}

		return createdCount > 0;
	}

	@Override
	public Servey read(String UserId) {
		
		String sql="SELECT SURVEY_1, SURVEY_2, SURVEY_3, SURVEY_4, SURVEY_5, SURVEY_6, SURVEY_7, SURVEY_8 FROM PROJECT_SERVEY WHERE USER_ID = ?";

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		Servey servey = null;

		try {
			conn = connectionFactory.createConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, UserId);
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				servey = new Servey();
				servey.setServey(rs.getInt(1),0);
				servey.setServey(rs.getInt(2),1);
				servey.setServey(rs.getInt(3),2);
				servey.setServey(rs.getInt(4),3);
				servey.setServey(rs.getInt(5),4);
				servey.setServey(rs.getInt(6),5);
				servey.setServey(rs.getInt(7),6);
				servey.setServey(rs.getInt(8),7);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.close(rs, psmt, conn);
		}

		return servey;
	}

}
