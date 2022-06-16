<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" type="text/css" href="/KG-naver/member/find_help.css">
<link href="https://nid.naver.com/favicon_1024.png" rel="apple-touch-icon-precomposed" sizes="1024x1024"> 
<link rel="stylesheet" type="text/css" href="/KG-naver/member/find_sign.css">
<link rel="stylesheet" type="text/css" href="/KG-naver/member/find_HF.css">
<%
	request.setCharacterEncoding("utf-8");
	
	String userId = request.getParameter("userId");
	String new_pw = request.getParameter("new_pw");
	String new_conf_pw = request.getParameter("new_conf_pw");
	
	
	if(new_pw == "" || new_conf_pw == ""){
		out.print("<script>alert('비밀번호를 입력해주세요.'); history.back(); </script>");
		return;
	}
	if(!new_pw.equals(new_conf_pw)){
		out.print("<script>alert('비밀번호가 일치하지 않습니다.'); history.back(); </script>");
		return;
	}
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(userId);

	if(member != null){
		member.setPw(new_pw);
		member.setId(userId);
		memberDao.updatePw(member);
		memberDao.close();
		out.print("<script>alert('비밀번호 수정 완료');location.href='/KG-naver/index.jsp'; </script>");
	}else{
		memberDao.close();
		out.print("<script>alert('비밀번호 수정 실패'); history.back(); </script>");
	}

%>
