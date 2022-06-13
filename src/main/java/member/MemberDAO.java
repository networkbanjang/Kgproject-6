package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	private Connection con;
	
	public MemberDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "oracle";
		String pass = "oracle";
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, pass);
			System.out.println("DB 연결 성공!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("DB 접속 실패!");
		}
	}
	
	public void insert(MemberDTO member) {
		String sql = "INSERT INTO member VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1,  member.getId());
			ps.setString(2,  member.getPw());
			ps.setString(3,  member.getName());
			ps.setInt(4,  member.getAge());
			ps.setString(5,  member.getGender());
			ps.setString(6,  member.getEmail());
			ps.setString(7,  member.getNickname());
			ps.setString(8,  member.getTel());
			ps.setString(9,  member.getBirth());
			ps.setString(10,  member.getPic());
			ps.setString(11,  member.getIntro());
			ps.setString(12,  member.getGrade());
			ps.setInt(13,  member.getAnswer());
			ps.setInt(14,  member.getS_question());
			ps.setInt(15,  member.getQuestion());
			ps.setInt(16,  member.getLike_n());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public MemberDTO selectId(String id) {
		String sql = "SELECT * FROM member WHERE id=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setPw(rs.getString("pw"));
				member.setName(rs.getString("name"));
				member.setAge(rs.getInt("age"));
				member.setGender(rs.getString("gender"));
				member.setEmail(rs.getString("email"));
				member.setNickname(rs.getString("nickname"));
				member.setTel(rs.getString("tel"));
				member.setBirth(rs.getString("birth"));
				member.setPic(rs.getString("pic"));
				member.setIntro(rs.getString("intro"));
				member.setGrade(rs.getString("grade"));
				member.setAnswer(rs.getInt("answer"));
				member.setS_question(rs.getInt("s_question"));
				member.setQuestion(rs.getInt("question"));
				member.setLike_n(rs.getInt("like_n"));

				return member;
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
		}
		return null;
	}
	
	public MemberDTO selectTel(String tel) {
		String sql = "SELECT * FROM member WHERE tel=?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, tel);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setBirth(rs.getString("birth"));
				member.setGender(rs.getString("gender"));
				member.setEmail(rs.getString("email"));
				member.setTel(rs.getString("tel"));
				return member;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	
	public ArrayList<MemberDTO> selectElite() {
		ArrayList<MemberDTO> eliteMember = new ArrayList<MemberDTO>();
		String sql = "SELECT id, nickname, pic, s_question, like_n, ROW_NUMBER() OVER (ORDER BY s_question DESC) RANK FROM member ORDER BY s_question DESC";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO member = new MemberDTO();
				member.setId(rs.getString("id"));
				member.setNickname(rs.getString("nickname"));
				member.setPic(rs.getString("pic"));
				member.setS_question(rs.getInt("s_question"));
				member.setLike_n(rs.getInt("like_n"));
				member.setRank(rs.getInt("rank"));
				eliteMember.add(member);
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
		return eliteMember;
	}
	public void close() {
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void recommend(int bool,String id) {
		String sql = "UPDATE member SET s_question=? WHERE id=?";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, bool);
			ps.setString(2, id);
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
