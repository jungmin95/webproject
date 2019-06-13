package kr.co.wp.store.logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.wp.domain.Article;
import kr.co.wp.store.ArticleStore;
import kr.co.wp.store.factory.ConnectionFactory;
import kr.co.wp.store.factory.JdbcUtils;

@Repository
public class ArticleStoreLogic implements ArticleStore{

	private ConnectionFactory connectionFactory;

	public ArticleStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}
	
	@Override
	public boolean create(Article article) {
		
		Connection connection = null;
		PreparedStatement psmt = null;
		int createdCount = 0;

		try {
			connection = connectionFactory.createConnection();
			
			psmt = connection.prepareStatement("INSERT INTO PROJECT_ARTICLE(article_title, article_contents, user_id) VALUES (?,?,?)");
			
			psmt.setString(1, article.getTitle());
			//psmt.setDate(2, article.getDate());
			psmt.setString(2, article.getContents());
			psmt.setString(3, article.getUserId());

			createdCount = psmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(psmt, connection);
		}

		return createdCount > 0;
	}

	@Override
	public void delete(Integer articleNo) {
		
		String sql = "DELETE FROM PROJECT_ARTICLE WHERE article_no = ?";
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {
			conn = connectionFactory.createConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, articleNo);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.Close(conn, rs, pstmt); 
		}		

	}

	@Override
	public Article update(Article article, Integer articleNo) {
		
		String sql = "UPDATE PROJECT_ARTICLE SET article_title = ?, article_contents = ? WHERE article_no = ?";

		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
				
		try {
			conn = connectionFactory.createConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getTitle());
			pstmt.setString(2, article.getContents());
			pstmt.setInt(3, articleNo);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.Close(conn, rs, pstmt); 
		}		
		
		return article;
	}
	
	@Override
	public Article read(Integer articleNo) {
		
		String sql = "SELECT article_no, article_title, article_date, article_contents, user_id, article_viewcount FROM PROJECT_ARTICLE WHERE article_no = ?";
		
		Connection conn=null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		Article article = null;
		
		try {
			conn = connectionFactory.createConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, articleNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				article = new Article();
				article.setArticleNo(rs.getInt(1));
				article.setTitle(rs.getString(2));
				article.setDate(rs.getDate(3));
				article.setContents(rs.getString(4));
				article.setUserId(rs.getString(5));
				article.setViewCount(rs.getInt(6));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtils.Close(conn, rs, pstmt); 
		}
	
		return article;
	}

	@Override
	public List<Article> readAll() {

		String sql = "SELECT article_no, article_title, article_date, user_id, article_viewcount FROM PROJECT_ARTICLE";

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Article> list = new ArrayList<Article>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Article article = new Article();
				article.setArticleNo(rs.getInt(1));
				article.setTitle(rs.getString(2));
				article.setDate(rs.getDate(3));
				article.setUserId(rs.getString(4));
				article.setViewCount(rs.getInt(5));
				list.add(article);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}
		//System.out.println("store:"+list);
		
		return list;		
	}

	@Override
	public List<Article> readMe(String userId) {
		
		String sql = "SELECT article_no, article_title, article_date, user_id, article_viewcount FROM PROJECT_ARTICLE WHERE user_id = '"+userId+"'";

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;

		List<Article> list = new ArrayList<Article>();
		
		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			
			while (rs.next()) {
				Article article = new Article();
				article.setArticleNo(rs.getInt(1));
				article.setTitle(rs.getString(2));
				article.setDate(rs.getDate(3));
				article.setUserId(rs.getString(4));
				article.setViewCount(rs.getInt(5));

				list.add(article);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}
		//System.out.println("store:"+list);
		
		return list;		
	}

}
