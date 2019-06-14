package kr.co.wp.store.logic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.wp.domain.Tourlist;
import kr.co.wp.page.Criteria;
import kr.co.wp.store.ListStore;
import kr.co.wp.store.factory.ConnectionFactory;
import kr.co.wp.store.factory.JdbcUtils;

@Repository
public class ListStoreLogic implements ListStore {

	private ConnectionFactory connectionFactory;

	public ListStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}

	@Override
	public Tourlist read(int list_num) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_name = ?";

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		Tourlist list = null;

		try {
			conn = connectionFactory.createConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setInt(1, list_num);
			rs = psmt.executeQuery();
			if (rs.next()) {
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, psmt, conn);
		}

		return list;
	}
	 @Override
	   public Tourlist readDetail(int list_num) {
	      System.out.println("3333333333333333333333");
	      
	      String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_num = ?";
	      Connection conn = null;
	      PreparedStatement psmt = null;
	      ResultSet rs = null;
	      Tourlist list = null;
	      try {
	         System.out.println("444444444444444444444");

	         conn = connectionFactory.createConnection();
	         psmt = conn.prepareStatement(sql.toString());
	         psmt.setInt(1, list_num);
	         rs = psmt.executeQuery();
	         if (rs.next()) {
	            list = new Tourlist();
	            list.setList_num(rs.getInt(1));
	            list.setUserid(rs.getString(2));
	            list.setTourimg(rs.getString(3));
	            list.setTour_areaname(rs.getString(4));
	            list.setTourname(rs.getString(5));
	            list.setTourLocation(rs.getString(6));
	            list.setTourstory(rs.getString(7));
	            list.setTourtype(rs.getString(8));
	            list.setTourRank(rs.getInt(9));
	         }
	      } catch (SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtils.Close(rs, psmt, conn);
	      }

	      return list;

	   }

	   @Override
	   public void delete(int list_num) {
	      Connection connection = null;
	      PreparedStatement psmt = null;
	      ResultSet rs = null;
	      Tourlist list = null;
	      int deleteCount = 0;
	      try {
	         connection = connectionFactory.createConnection();
	         psmt = connection.prepareStatement(
	               "DELETE FROM PROJECT_list WHERE list_num = ?");
	         
	         psmt.setInt(1, list_num);

	         deleteCount = psmt.executeUpdate();

	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         JdbcUtils.Close(psmt, connection, rs);
	      }

	      
	   }   
	   
	      	   
	@Override
	public List<Tourlist> readByName(String list_name) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_name LIKE ?";

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();
		PreparedStatement psmt = null;

		try {
			conn = connectionFactory.createConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, "%" + list_name + "%");
			rs = psmt.executeQuery();

			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}

	@Override
	public List<Tourlist> readAll() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list";

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}

	@Override
	public List<Tourlist> Top10() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list LIMIT 12, 9";

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}

	@Override
	public boolean create(Tourlist list) {
		Connection connection = null;
		PreparedStatement psmt = null;
		int createdCount = 0;
		try {
			connection = connectionFactory.createConnection();

			psmt = connection.prepareStatement(
					"INSERT INTO PROJECT_list(list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type,list_rank) VALUES (?,?,?,?,?,?,?,?,?)");

			psmt.setInt(1, list.getList_num());
			psmt.setString(2, list.getUserid());
			
			psmt.setString(3, list.getTourimg());
			psmt.setString(4, list.getTour_areaname());
			
			
			psmt.setString(5, list.getTourname());
			psmt.setString(6, list.getTourLocation());
			psmt.setString(7, list.getTourstory());
			psmt.setString(8, list.getTourtype());
			psmt.setInt(9, list.getTourRank());

			createdCount = psmt.executeUpdate();

		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(psmt, connection);
		}

		return createdCount > 0;
	}
 
	@Override
	public List<Tourlist> readBySeoul(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '서울'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}

	@Override
	public List<Tourlist> readByGyeonggi(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '경기'"
		+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();
		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByIncheon(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '인천'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByGangwon(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '강원'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByChungbuk(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '충북' or areaname = '대전'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByChungnam(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '충남' or areaname = '세종'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByBusan(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '부산'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByGyeongbuk(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '경북' or areaname = '대구'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByGyeongnam(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '경남' or areaname = '울산'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByJeonbuk(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '전북'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByJeonnam(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '전남' or areaname = '광주'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByJeju(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '제주'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByActivity(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'A'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByYolo(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'B'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByHistory(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'C'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}
	
	@Override
	public List<Tourlist> readByHealing(Criteria cri) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'D'"
				+ "LIMIT " + cri.getPageStart() + "," + cri.getPerPageNum();

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();

		try {
			conn = connectionFactory.createConnection();
			statement = conn.createStatement();
			rs = statement.executeQuery(sql);
			while (rs.next()) {
				Tourlist list = new Tourlist();
				list = new Tourlist();
				list.setList_num(rs.getInt(1));
				list.setUserid(rs.getString(2));
				list.setTourimg(rs.getString(3));
				list.setTour_areaname(rs.getString(4));
				list.setTourname(rs.getString(5));
				list.setTourLocation(rs.getString(6));
				list.setTourstory(rs.getString(7));
				list.setTourtype(rs.getString(8));
				list.setTourRank(rs.getInt(9));
				lists.add(list);
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtils.Close(rs, statement, conn);
		}

		return lists;
	}

	@Override
	public List<Tourlist> readByActivity_9() {
	     String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'A' LIMIT 9";

	      Connection conn = null;
	      Statement statement = null;
	      ResultSet rs = null;
	      List<Tourlist> lists = new ArrayList<Tourlist>();

	      try {
	         conn = connectionFactory.createConnection();
	         statement = conn.createStatement();
	         rs = statement.executeQuery(sql);
	         while (rs.next()) {
	            Tourlist list = new Tourlist();
	            list = new Tourlist();
	            list.setList_num(rs.getInt(1));
	            list.setUserid(rs.getString(2));
	            list.setTourimg(rs.getString(3));
	            list.setTour_areaname(rs.getString(4));
	            list.setTourname(rs.getString(5));
	            list.setTourLocation(rs.getString(6));
	            list.setTourstory(rs.getString(7));
	            list.setTourtype(rs.getString(8));
	            list.setTourRank(rs.getInt(9));
	            lists.add(list);
	         }
	      } catch (SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtils.Close(rs, statement, conn);
	      }

	      return lists;

	}

	@Override
	public List<Tourlist> readByYolo_9() {
		  String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'B' LIMIT 9";

	      Connection conn = null;
	      Statement statement = null;
	      ResultSet rs = null;
	      List<Tourlist> lists = new ArrayList<Tourlist>();

	      try {
	         conn = connectionFactory.createConnection();
	         statement = conn.createStatement();
	         rs = statement.executeQuery(sql);
	         while (rs.next()) {
	            Tourlist list = new Tourlist();
	            list = new Tourlist();
	            list.setList_num(rs.getInt(1));
	            list.setUserid(rs.getString(2));
	            list.setTourimg(rs.getString(3));
	            list.setTour_areaname(rs.getString(4));
	            list.setTourname(rs.getString(5));
	            list.setTourLocation(rs.getString(6));
	            list.setTourstory(rs.getString(7));
	            list.setTourtype(rs.getString(8));
	            list.setTourRank(rs.getInt(9));
	            lists.add(list);
	         }
	      } catch (SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtils.Close(rs, statement, conn);
	      }

	      return lists;

	}

	@Override
	public List<Tourlist> readByHistory_9() {
		   String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'C' LIMIT 9";

		      Connection conn = null;
		      Statement statement = null;
		      ResultSet rs = null;
		      List<Tourlist> lists = new ArrayList<Tourlist>();

		      try {
		         conn = connectionFactory.createConnection();
		         statement = conn.createStatement();
		         rs = statement.executeQuery(sql);
		         while (rs.next()) {
		            Tourlist list = new Tourlist();
		            list = new Tourlist();
		            list.setList_num(rs.getInt(1));
		            list.setUserid(rs.getString(2));
		            list.setTourimg(rs.getString(3));
		            list.setTour_areaname(rs.getString(4));
		            list.setTourname(rs.getString(5));
		            list.setTourLocation(rs.getString(6));
		            list.setTourstory(rs.getString(7));
		            list.setTourtype(rs.getString(8));
		            list.setTourRank(rs.getInt(9));
		            lists.add(list);
		         }
		      } catch (SQLException e) {
		         throw new RuntimeException(e);
		      } finally {
		         JdbcUtils.Close(rs, statement, conn);
		      }

		      return lists;

	}

	@Override
	public List<Tourlist> readByHealing_9() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'D' LIMIT 9";

	      Connection conn = null;
	      Statement statement = null;
	      ResultSet rs = null;
	      List<Tourlist> lists = new ArrayList<Tourlist>();

	      try {
	         conn = connectionFactory.createConnection();
	         statement = conn.createStatement();
	         rs = statement.executeQuery(sql);
	         while (rs.next()) {
	            Tourlist list = new Tourlist();
	            list = new Tourlist();
	            list.setList_num(rs.getInt(1));
	            list.setUserid(rs.getString(2));
	            list.setTourimg(rs.getString(3));
	            list.setTour_areaname(rs.getString(4));
	            list.setTourname(rs.getString(5));
	            list.setTourLocation(rs.getString(6));
	            list.setTourstory(rs.getString(7));
	            list.setTourtype(rs.getString(8));
	            list.setTourRank(rs.getInt(9));
	            lists.add(list);
	         }
	      } catch (SQLException e) {
	         throw new RuntimeException(e);
	      } finally {
	         JdbcUtils.Close(rs, statement, conn);
	      }

	      return lists;

	}
	
}