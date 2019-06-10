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
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list LIMIT 10";

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
					"INSERT INTO PROJECT_list(list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank) VALUES (?,?,?,?,?,?,?,?,?)");

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
	public List<Tourlist> readBySeoul() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '서울'";

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
	public List<Tourlist> readByGyeonggi() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '경기'";

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
	public List<Tourlist> readByIncheon() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '인천'";

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
	public List<Tourlist> readByGangwon() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '강원'";

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
	public List<Tourlist> readByChungbuk() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '충북' or areaname = '대전'";

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
	public List<Tourlist> readByChungnam() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '충남' or areaname = '세종'";

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
	public List<Tourlist> readByBusan() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '부산'";

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
	public List<Tourlist> readByGyeongbuk() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '경북' or areaname = '대구'";

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
	public List<Tourlist> readByGyeongnam() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '경남' or areaname = '울산'";

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
	public List<Tourlist> readByJeonbuk() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '전북'";

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
	public List<Tourlist> readByJeonnam() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '전남' or areaname = '광주'";

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
	public List<Tourlist> readByJeju() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE areaname = '제주'";

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
	public List<Tourlist> readByActivity() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'A'";

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
	public List<Tourlist> readByYolo() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'B'";

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
	public List<Tourlist> readByHistory() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'C'";

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
	public List<Tourlist> readByHealing() {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_type = 'D'";

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