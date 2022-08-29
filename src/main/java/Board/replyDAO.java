package Board;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class replyDAO {
	private Connection con;

	public replyDAO() {
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

	public void write(replyDTO reply) {
		String sql = "INSERT INTO reply VALUES(reply_seq.nextval,?,?,?,?)";
		PreparedStatement ps = null;
		try {

			ps = con.prepareStatement(sql);
			ps.setString(1, reply.getId());
			ps.setString(2, reply.getContent());
			ps.setInt(3, reply.getSlave());
			ps.setString(4, reply.getWritedate());
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

	public void close() {
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<replyDTO> listselect(int slave) {
		String sql = "SELECT * FROM reply where slave=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<replyDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, slave);
			rs = ps.executeQuery();
			while (rs.next()) {
				replyDTO reply = new replyDTO();
				reply.setNum(rs.getInt("num"));
				reply.setContent(rs.getString("content"));
				reply.setSlave(rs.getInt("slave"));
				reply.setId(rs.getString("id"));
				reply.setWritedate(rs.getString("writedate"));

				list.add(reply);
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

	public ArrayList<replyDTO> listselect(int slave, int begin, int end) {
		String sql = "select b.* from(select rownum rn, A.* from(select * from reply where slave=?)A)B where rn between ? and ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<replyDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, slave);
			ps.setInt(2, begin);
			ps.setInt(3, end);
			rs = ps.executeQuery();
			while (rs.next()) {
				replyDTO reply = new replyDTO();
				reply.setNum(rs.getInt("num"));
				reply.setContent(rs.getString("content"));
				reply.setSlave(rs.getInt("slave"));
				reply.setId(rs.getString("id"));
				reply.setWritedate(rs.getString("writedate"));

				list.add(reply);
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

	public replyDTO selectNum(int num) {
		String sql = "select * from reply where num=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
	
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
				replyDTO reply = new replyDTO();
				reply.setNum(rs.getInt("num"));
				reply.setId(rs.getString("id"));
				reply.setContent(rs.getString("content"));
				reply.setWritedate(rs.getString("writedate"));
				reply.setSlave(rs.getInt("slave"));

				return reply;
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
		String sql = "DELETE FROM reply WHERE num=?";
		
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
