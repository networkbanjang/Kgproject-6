<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(id == "" || pw == "") {
		out.print("<script>alert('아이디 또는 비밀번호가 입력되지 않았습니다.'); history.back();</script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO check = memberDao.selectId(id);
	if(check != null && check.getPw().equals(pw) ) {
		session.setAttribute("id", id);
		session.setAttribute("nickname", check.getNickname());
		session.setAttribute("name", check.getName());
		session.setAttribute("gender", check.getGender());
		session.setAttribute("email", check.getEmail());
		session.setAttribute("tel", check.getTel());
		session.setAttribute("birth", check.getBirth());
		out.print("<script>alert('로그인 성공'); location.href='/KG-naver/index.jsp';</script>");
	} else {
		out.print("<script>alert('로그인 실패'); history.back();</script>");
	}
%>