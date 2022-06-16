
<%@page import="hall.TalkDTO"%>
<%@page import="hall.TalkDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<% String originalnum = request.getParameter("num") ;
	int num = 0;
		try{
		num = Integer.parseInt(originalnum);
		}catch(Exception e){
			out.print("<script>alert('잘못된 접근입니다.'); location.href='../index.jsp';</script>");			 
		}
		TalkDAO TalkDao=new TalkDAO();
		TalkDTO reply = TalkDao.selectNum(num);
		TalkDao.delete(reply.getNum());
		TalkDao.close();
	%>

		<script>alert('삭제되었습니다'); location.href='commentList.jsp';</script>
</body>
</html>