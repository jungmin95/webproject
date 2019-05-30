package kr.co.wp.store.logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import kr.co.wp.domain.Servey;
import kr.co.wp.domain.Survey;
import kr.co.wp.store.SurveyStore;
import kr.co.wp.store.factory.ConnectionFactory;
import kr.co.wp.store.factory.JdbcUtils;



@Repository
public class SurveyStoreLogic implements SurveyStore {

	private ConnectionFactory connectionFactory;
	
	public SurveyStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}
	
	@Override
	public boolean set(Survey survey) {
		
		Connection conn = null;
		PreparedStatement psmt = null;
		int createdCount = 0;
		int num = 1;
		
		try {
			conn = connectionFactory.createConnection();
			
			psmt = conn.prepareStatement("INSERT INTO PROJECT_SURVEY(SURVEY_NUM, USER_ID, SURVEY_1, SURVEY_2, SURVEY_3, SURVEY_4, SURVEY_5, SURVEY_6, SURVEY_7, SURVEY_8) VALUES (?,?,?,?,?,?,?,?,?,?)");
			
			psmt.setInt(1, num);
			psmt.setString(2, survey.getUserId());
			psmt.setInt(3, survey.getSurvey(0));
			psmt.setInt(4, survey.getSurvey(1));
			psmt.setInt(5, survey.getSurvey(2));
			psmt.setInt(6, survey.getSurvey(3));
			psmt.setInt(7, survey.getSurvey(4));
			psmt.setInt(8, survey.getSurvey(5));
			psmt.setInt(9, survey.getSurvey(6));
			psmt.setInt(10, survey.getSurvey(7));

			createdCount = psmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(psmt, conn);
			num++;
		}

		return createdCount > 0;
	}

	@Override
	public Survey read(String UserId) {
		
		String sql="SELECT SURVEY_1, SURVEY_2, SURVEY_3, SURVEY_4, SURVEY_5, SURVEY_6, SURVEY_7, SURVEY_8 FROM PROJECT_SERVEY WHERE USER_ID = ?";

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		Survey survey = null;

		try {
			conn = connectionFactory.createConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, UserId);
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				survey = new Survey();
				survey.setSurvey(rs.getInt(1),0);
				survey.setSurvey(rs.getInt(2),1);
				survey.setSurvey(rs.getInt(3),2);
				survey.setSurvey(rs.getInt(4),3);
				survey.setSurvey(rs.getInt(5),4);
				survey.setSurvey(rs.getInt(6),5);
				survey.setSurvey(rs.getInt(7),6);
				survey.setSurvey(rs.getInt(8),7);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, psmt, conn);
		}

		return survey;
	}

}
