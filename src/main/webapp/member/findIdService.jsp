<%@page import="member.MemberDAO" %>
<%@page import="member.MemberDTO" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("phoneNm");
	String tel = request.getParameter("phoneNo");
	
	MemberDTO member = new MemberDTO();
	MemberDAO memberDao = new MemberDAO();
	
	String id = memberDao.findId(name, tel);
%>

<%
	if(id == null) {
%>

<script type="text/javascript">
alert("존재하지 않은 계정입니다");
history.go(-1);
</script>

<%}%>
<script type="text/javascript">
alert("<%=name%>님의 아이디는 <%=id%>입니다.");
location.href="/KG-naver/index.jsp";
</script>

