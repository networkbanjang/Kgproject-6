package Board;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO {
	private Connection con;

	public BoardDAO() {
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

	public void write(BoardDTO board) {
		String sql = "INSERT INTO naver_view VALUES(naver_seq.nextval, ?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getId());
			ps.setString(2, board.getContent());
			ps.setString(3, board.getTitle());
			ps.setString(4, board.getTime());
			ps.setString(5, board.getCategory());
			ps.setInt(6, board.getPoint());
			ps.setString(7, board.getMinor_v());
			ps.setString(8, board.getMinor_an());
			ps.setInt(9, 0);
			ps.setString(10, board.getNick());
			ps.setString(11, board.getTime());
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

	public ArrayList<BoardDTO> listAll() {
		String sql = "SELECT * FROM naver_view ORDER BY num DESC";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<BoardDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));

				board.setCategory(rs.getString("category"));
				board.setTime(rs.getString("time"));

				list.add(board);
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

	public ArrayList<BoardDTO> listselect(String category) {
		String sql = "SELECT * FROM naver_view where category=? ORDER BY num DESC";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<BoardDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			rs = ps.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));

				board.setCategory(rs.getString("category"));
				board.setTime(rs.getString("time"));
				list.add(board);
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

	public BoardDTO selectNum(int num) {
		String sql = "select * from naver_view where num=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(num);
				board.setId(rs.getString("id"));

				board.setContent(rs.getString("content"));
				board.setTitle(rs.getString("title"));
				board.setCategory(rs.getString("category"));
				board.setPoint(rs.getInt("point"));
				board.setMinor_v(rs.getString("minor_v"));
				board.setMinor_an(rs.getString("minor_an"));
				board.setHit(rs.getInt("hit"));
				board.setNick(rs.getString("nick"));
				board.setTime(rs.getString("time"));
				return board;
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

	public void hitUP(int num, int hit) {
		String sql = "UPDATE naver_view SET hit=? WHERE num=?";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, hit);
			ps.setInt(2, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public ArrayList<BoardDTO> listAll(int begin, int end) {
		String sql = "SELECT B.* FROM (SELECT rownum rn, A.* FROM (SELECT * FROM  naver_view ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";

		PreparedStatement ps = null;
		ResultSet rs = null;

		ArrayList<BoardDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, begin);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));

				board.setCategory(rs.getString("category"));
				board.setTime(rs.getString("time"));

				list.add(board);
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

	public ArrayList<BoardDTO> listselect(String category, int begin, int end) {
		String sql = "SELECT B.* FROM (SELECT rownum rn, A.* FROM (SELECT * FROM  naver_view where category=? ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<BoardDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			ps.setInt(2, begin);
			ps.setInt(3, end);
			rs = ps.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));

				board.setCategory(rs.getString("category"));
				board.setTime(rs.getString("time"));
				list.add(board);
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
	
	public ArrayList<BoardDTO> listselect(String category, int begin, int end,String search) {
		String sql = "select * from (select rownum rn, B.* from (select A.* from "
				+ "(select * from naver_view where category= ? ORDER BY num desc)A where title like ?)B)where rn between ? and ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<BoardDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, "%"+search+"%");
			ps.setInt(3, begin);
			ps.setInt(4, end);
			rs = ps.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));

				board.setCategory(rs.getString("category"));
				board.setTime(rs.getString("time"));
				list.add(board);
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
		String sql = "SELECT count(*) as cnt FROM naver_view";

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

	public int count(String category) {
		String sql = "SELECT count(*) as cnt FROM naver_view where category=?";

		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
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
	public int count(String category,String search) {
		String sql = "select count(*) as cnt from (SELECT * FROM naver_view where category=?) where title like ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, category);
			ps.setString(2, "%"+search+"%");		
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

	public int allsearchcount(String search) {
		String sql = "select count(*) as cnt from naver_view where title like ?";

		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+search+"%");		
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
	public void delete(int num) {

		String sql = "delete from(select A.* from  (select * from naver_answer where slave=?)A inner join (reply) B on a.num = b.slave)";

		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		sql = "DELETE FROM naver_answer where slave=?";
		ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		sql = "DELETE FROM naver_view where num=?";
		ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null)
					ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}
	public ArrayList<BoardDTO> listAll(int begin, int end ,String search) {
		String sql = "select B.* from(select rownum rn,A.* from (SELECT * FROM naver_view WHERE title like ? ORDER BY num DESC)A)B where rn between ? and ?";

		PreparedStatement ps = null;
		ResultSet rs = null;

		ArrayList<BoardDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1,"%"+search+"%");
			ps.setInt(2, begin);
			ps.setInt(3, end);
			rs = ps.executeQuery();
			while (rs.next()) {
				BoardDTO board = new BoardDTO();
				board.setNum(rs.getInt("num"));
				board.setTitle(rs.getString("title"));

				board.setCategory(rs.getString("category"));
				board.setTime(rs.getString("time"));

				list.add(board);
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
	
	public void modify(BoardDTO board) {
		String sql = "UPDATE naver_view SET content=?, title=? WHERE num=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getContent());
			ps.setString(2, board.getTitle());
			ps.setInt(3, board.getNum());
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