package hall;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import Board.replyDTO;



public class TalkDAO {
	private Connection con;

	public TalkDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "oracle";
		String password = "oracle";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void close() {
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
	public void write(TalkDTO talk) {
		String sql = "INSERT INTO naver_talk VALUES(reply_seq.nextval,?,?,?,?)";
		PreparedStatement ps = null;
		try {

			ps = con.prepareStatement(sql);
			ps.setString(1, talk.getId());
			ps.setString(2, talk.getContent());
			ps.setString(3, talk.getWritedate());
			ps.setInt(4, 0);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	public ArrayList<TalkDTO> listdate(int begin, int end ) {
		String sql = "select B.* from(select rownum rn,A.* from (select * from naver_talk inner join member on "
				+ "naver_talk.id = member.id order by num desc)A)B where rn between ? and ?";

		PreparedStatement ps = null;
		ResultSet rs = null;

		ArrayList<TalkDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, begin);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			while (rs.next()) {
				TalkDTO talk = new TalkDTO();
				talk.setNum(rs.getInt("num"));
				talk.setPic(rs.getString("pic"));
				talk.setId(rs.getString("id"));
				talk.setRecommend(rs.getInt("recommend"));
				talk.setContent(rs.getString("content"));
				talk.setWritedate(rs.getString("writeDate"));
				list.add(talk);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;

	}
	public int count() {
		String sql = "SELECT count(*) as cnt FROM naver_talk";

		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
	}
	public TalkDTO selectNum(int num) {
		String sql = "select * from naver_talk where num=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
	
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				TalkDTO talk = new TalkDTO();
				talk.setNum(rs.getInt("num"));
				talk.setId(rs.getString("id"));
				talk.setRecommend(rs.getInt("recommend"));
				talk.setContent(rs.getString("content"));
				talk.setWritedate(rs.getString("writeDate"));

				return talk;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return null;

	}
	public void delete(int num) {
		String sql = "DELETE FROM naver_talk WHERE num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
