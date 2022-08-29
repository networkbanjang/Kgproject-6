package Board;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class answerDAO {
	private Connection con;

	public answerDAO() {
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

	public void write(answerDTO answer) {
		String sql = "INSERT INTO naver_answer VALUES(answer_seq.nextval,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, answer.getContent());
			ps.setString(2, answer.getPhoto());
			ps.setString(3, answer.getFile_root());
			ps.setString(4, answer.getTime());
			ps.setString(5, answer.getPubl());
			ps.setInt(6, answer.getSlave());
			ps.setInt(7, 0);
			ps.setString(8, answer.getId());
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

	public ArrayList<answerDTO> answer_list(int slave) {
		String sql = "SELECT * FROM naver_answer where slave=? order by recommend desc";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<answerDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, slave);
			rs = ps.executeQuery();
			while (rs.next()) {
				answerDTO answer = new answerDTO();
				answer.setNum(rs.getInt("num"));
				answer.setId(rs.getString("id"));
				answer.setContent(rs.getString("content"));
				answer.setTime(rs.getString("time"));
				answer.setPubl(rs.getString("publ"));
				answer.setRecommend(rs.getInt("recommend"));
				answer.setFile_root(rs.getString("file_root"));
				list.add(answer);

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

	public ArrayList<BoardDTO> hitDesc(int begin,int end) {
		String sql = "select b.* from (select rownum rn, A.* FROM (select * from naver_view order by hit desc) A)B where rn between ? and ?";
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
				board.setContent(rs.getString("content"));
				board.setHit(rs.getInt("hit"));
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
	
	public void close() {
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public answerDTO selectNum(int num) {
		String sql = "select * from naver_answer where num=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
	
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if(rs.next()) {
			answerDTO answer = new answerDTO();
			answer.setNum(rs.getInt("num"));
			answer.setId(rs.getString("id"));
			answer.setContent(rs.getString("content"));
			answer.setTime(rs.getString("time"));
			answer.setPubl(rs.getString("publ"));
			answer.setSlave(rs.getInt("slave"));

				return answer;
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
		String sql = "DELETE FROM reply WHERE slave=?";
		
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
		sql = "DELETE FROM naver_answer WHERE num=?";
		ps = null;
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
	public void modify(answerDTO answer) {
			String sql = "UPDATE naver_answer SET content=?, publ=?, file_root=? WHERE num=?";
	
			
			PreparedStatement ps = null;
			try {
				ps = con.prepareStatement(sql);
				ps.setString(1, answer.getContent());
				ps.setString(2, answer.getPubl());
				ps.setString(3, answer.getFile_root());
				ps.setInt(4, answer.getNum());
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

public void recommend(int bool,int num) {
	String sql = "UPDATE naver_answer SET recommend=? WHERE num=?";
	
	PreparedStatement ps = null;
	try {
		ps = con.prepareStatement(sql);
		ps.setInt(1, bool);
		ps.setInt(2, num);
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
public int count() {
	String sql = "SELECT count(*) as cnt FROM naver_answer";

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
//내가 추가한 것
public ArrayList<answerDTO> answerList(String id){
	String sql = "select naver_view.title, naver_view.category, naver_view.num, naver_answer.content, naver_answer.recommend, naver_view.time from naver_view join naver_answer on naver_view.num = naver_answer.slave where naver_answer.id=?";
	ArrayList<answerDTO> answers = new ArrayList<answerDTO>();
	PreparedStatement ps = null;
	ResultSet rs = null;
	try {
		ps = con.prepareStatement(sql);
		ps.setString(1, id);
		rs = ps.executeQuery();
		while(rs.next()) {
			answerDTO answer = new answerDTO();
			answer.setTitle(rs.getString("title"));
			answer.setCategory(rs.getString("category"));
			answer.setSlave(rs.getInt("num"));
			answer.setContent(rs.getString("content"));
			answer.setRecommend(rs.getInt("recommend"));
			answer.setTime(rs.getString("time"));
			answers.add(answer);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			if(ps != null) ps.close();
			if(rs != null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	return answers;
}

//--------------------------my answer list ---------------------------------------

	public ArrayList<answerDTO> answerList(int begin, int end, String data) {
		String sql = "SELECT B.* FROM (SELECT rownum rn,A.*  FROM (SELECT * FROM  naver_answer WHERE title like ? ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<answerDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+data+"%");
			ps.setInt(2, begin);
			ps.setInt(3, end);
			rs = ps.executeQuery();
			while(rs.next()) {
				answerDTO answer = new answerDTO();
				answer.setContent(rs.getString("content"));
				answer.setPhoto(rs.getString("photo"));
				answer.setFile_root(rs.getString("file_root"));
				answer.setTime(rs.getString("time"));
				answer.setPubl(rs.getString("publ"));
				answer.setSlave(rs.getInt("slave"));
				answer.setRecommend(rs.getInt("recommend"));
				answer.setId(rs.getString("id"));
				list.add(answer);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public int answerCount(String data) {
		String sql = "SELECT count(*) as cnt FROM naver_answer WHERE title like=?";
		
		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%"+data+"%");
			rs = ps.executeQuery();
			if(rs.next()) {
				cnt = rs.getInt("cnt");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return cnt;
	}
	
	public ArrayList<answerDTO> answerListAll(int begin, int end) {
		String sql = "SELECT B.* FROM (SELECT rownum rn, A.* FROM (SELECT * FROM  naver_answer ORDER BY num DESC)A)B WHERE rn BETWEEN ? and ?";

		PreparedStatement ps = null;
		ResultSet rs = null;
		
		ArrayList<answerDTO> list = new ArrayList<>();
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, begin);
			ps.setInt(2, end);
			rs = ps.executeQuery();
			while (rs.next()) {
				answerDTO answer = new answerDTO();
				answer.setContent(rs.getString("content"));
				answer.setPhoto(rs.getString("photo"));
				answer.setFile_root(rs.getString("file_root"));
				answer.setTime(rs.getString("time"));
				answer.setPubl(rs.getString("publ"));
				answer.setSlave(rs.getInt("slave"));
				answer.setRecommend(rs.getInt("recommend"));
				answer.setId(rs.getString("id"));
				list.add(answer);
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
	
	public int count(String id) {
		String sql = "SELECT count(*) as cnt FROM naver_answer where id=?";

		PreparedStatement ps = null;
		ResultSet rs = null;
		int cnt = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
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
}
