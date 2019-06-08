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
public class ListStoreLogic implements ListStore{

	private ConnectionFactory connectionFactory;

	public ListStoreLogic() {
		connectionFactory = ConnectionFactory.getInstance();
	}
	
	
	@Override
	public Tourlist read(int list_num) {
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_name = ?" ;

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
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list WHERE list_name LIKE ?" ;

		Connection conn = null;
		Statement statement = null;
		ResultSet rs = null;
		List<Tourlist> lists = new ArrayList<Tourlist>();
		PreparedStatement psmt = null;
		
		try {
			conn = connectionFactory.createConnection();
			psmt = conn.prepareStatement(sql.toString());
			psmt.setString(1, "%"+list_name+"%");
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
		String sql = "SELECT list_num,user_id,list_img,areaname,list_name,arealocation,list_story,list_type, list_rank FROM project_list" ;

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
