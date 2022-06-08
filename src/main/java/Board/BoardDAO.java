package Board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
		String sql = "INSERT INTO naver_view VALUES(naver_seq.nextval, ?,?,?,?,?,?,?,?,?,?,?,?)";
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
			ps.setInt(10, 0);
			ps.setString(11, board.getNick());
			ps.setString(12, board.getTime());
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
}