<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	String content = request.getParameter("content");


	if(content == "" || content == null){
		out.print("<script>alert('내용을 입력해주세요.'); history.back(); </script>");
	}
	
	


%>
<script>alert("작성 완료!"); history.back(); </script>