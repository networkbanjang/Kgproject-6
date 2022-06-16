package people;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import member.MemberDTO;

public class PartnerDAO {
	
private Connection con;
	
	public PartnerDAO() {
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
	
	public ArrayList<PartnerDTO> partnerAll() {
		ArrayList<PartnerDTO> partners = new ArrayList<PartnerDTO>();
		String sql = "select * from naver_partner";
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				PartnerDTO partner = new PartnerDTO();
				partner.setImg(rs.getString("img"));
				partner.setName(rs.getString("name"));
				partner.setCategory(rs.getString("category"));
				partner.setQuestion(rs.getInt("question"));
				partner.setS_question(rs.getInt("s_question"));
				partners.add(partner);
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
		return partners;
	}

}
