<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/project_6/images/tab_icon.png" rel="icon" type="icon" />
<%
	request.setCharacterEncoding("utf-8");

	ArrayList<MemberDTO> eliteMember;
	ArrayList<MemberDTO> eliteMember2;
	MemberDAO memberDao = new MemberDAO();
	eliteMember = memberDao.selectElite();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainTest</title>
</head>
<body>
<script>
	var count = 0;
	function increaseBtn(){
		count += 1;
		document.querySelector("#countBtn").innerText=count;
	}
</script>
	<%@ include file="../header.jsp" %>
	<h1 align="center">test page</h1><br>
<!-- 	<button type="button" id="countBtn" onclick="increaseBtn()">0</button>
	
	<style>
.btn-like {
  color: transparent;
  text-shadow: 0 0 2px rgba(255,255,255,.7), 0 0 0 #000;
}
.btn-like:hover {
  text-shadow: 0 0 0 #ea0;
}
.btn-like.done {
  color: inherit;
  text-shadow: 0;
}
.btn-like.done:hover {
  color: transparent;
  text-shadow: 0 0 0 #777;
}
</style>
<button class="btn-like">👍</button>

<script src="//code.jquery.com/jquery.min.js"></script>
<script>
$(".btn-like").click(function() {
	$(this).toggleClass("done");
})
</script> -->
<%-- 	<% int count = 1;
	for(MemberDTO m : eliteMember) {%>
		순위 : <%=count %>  |  id : <%=m.getId() %>  |  채택 : <%=m.getS_question() %><br>
		--------------------<br>
	<%count++;
	} %> --%>
	<%for(MemberDTO member : eliteMember) {%>
		순위 : <%=member.getRank() %>  |  id : <%=member.getId() %>  |  채택 : <%=member.getS_question() %><br>
		--------------------<br>
	<%} %>
	<%@ include file="../footer.jsp" %>
</body>
</html>