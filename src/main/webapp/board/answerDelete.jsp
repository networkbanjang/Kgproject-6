<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@include file="../header.jsp"%>
	<% 
	request.setCharacterEncoding("utf-8");
	String originalnum = request.getParameter("answernum") ;
	String tmp=request.getParameter("num");
	int num = 0;
		try{
		num = Integer.parseInt(originalnum);
		}catch(Exception e){
			out.print("<script>alert('잘못된 접근입니다.'); location.href='../index.jsp';</script>");			 
		}
		answerDAO answerDao=new answerDAO();
		answerDTO answer = answerDao.selectNum(num);
		
		answerDao.delete(answer.getNum());
		answerDao.close();
	%>

		<script>alert('삭제되었습니다'); location.href='view.jsp?num=<%=tmp%>';</script>
</body>
</html>