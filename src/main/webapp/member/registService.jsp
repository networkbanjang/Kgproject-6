<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pswd1");
	String confirmPw = request.getParameter("pswd12");
	String name = request.getParameter("name");
	String yy = request.getParameter("yy");
	String mm = request.getParameter("mm");
	String dd = request.getParameter("dd");
	String birth = yy+mm+dd;
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String tel = request.getParameter("phoneNo");
	
	if(id == "" || pw == "" || name == "" || birth == "" || gender == "" || tel == "") {
		out.print("<script>alert('필수 정보를 입력해주세요.'); history.back();</script>");
		return;
	} 
	
	if(pw == confirmPw) {
		out.print("<script>alert('두 패스워드가 일치하지 않습니다.'); history.back();</script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check1 = memberDao.selectId(id);
	MemberDTO check2 = memberDao.selectTel(tel);
	if(check1 == null && check2 == null) {
		MemberDTO member = new MemberDTO();
		member.setId(id);
		member.setPw(pw);
		member.setName(name);
		member.setBirth(yy+mm+dd);
		member.setGender(gender); //남자:M 여자F 선택안함:U
		member.setEmail(email);
		member.setTel(tel);
		memberDao.insert(member);
		out.print("<script>alert('회원 가입 완료'); location.href='/KG-naver/index.jsp';</script>");
	} else if (check1 != null) {
		out.print("<script>alert('이미 가입된 아이디입니다.'); location.back();</script>");
	} else if (check2 != null) {
		out.print("<script>alert('이미 등록된 휴대전화 번호입니다.'); location.back();</script>");
	} else {
		out.print("<script>alert('회원 가입 실패'); location.back();</script>");
	}
%> 