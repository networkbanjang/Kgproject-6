<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="Board.answerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="../header.jsp"%>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	int recommend =0;
	int s_question;
	String tmp="";
	String check = request.getParameter("check");
	String user;
	if (id.equals(check)) {
		String originalnum = request.getParameter("num");
		int num = Integer.parseInt(originalnum);
		String originalrecommend = request.getParameter("recommend");
		recommend = Integer.parseInt(originalrecommend);
		user=request.getParameter("user");
		tmp = request.getParameter("tmp");
		MemberDAO memberDao = new MemberDAO();
		answerDAO answerDao = new answerDAO();
		MemberDTO member = memberDao.selectId(user);
		if (recommend == 0) {
			s_question=member.getS_question()+1;
			answerDao.recommend(1, num);
			memberDao.recommend(s_question, member.getId());
			answerDao.close();
			memberDao.close();
		} else {
			s_question=member.getS_question()-1;
			answerDao.recommend(0, num);
			memberDao.recommend(s_question, member.getId());
			answerDao.close();
			memberDao.close();
		}
	}else{
	out.print("	<script>alert('잘못된 접근입니다.'); location.href='/KG-naver/index.jsp';</script>");
	}
	%>
	<%
	if (recommend == 0) {
	%>
	<script>alert('채택하였습니다.'); location.href='view.jsp?num=<%=tmp%>';</script>
	<%
	}
	%>
	<%
	if (recommend == 1) {
	%>
	<script>alert('채택취소하였습니다.'); location.href='view.jsp?num=<%=tmp%>';</script>
	<%
	}
	%>
	

</body>
</html>