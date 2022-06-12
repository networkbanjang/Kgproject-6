
<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<% 
	request.setCharacterEncoding("utf-8");
	String originalnum = request.getParameter("num") ;
	
	int num = 0;
		try{
		num = Integer.parseInt(originalnum);
		}catch(Exception e){
			out.print("<script>alert('잘못된 접근입니다.'); location.href='../index.jsp';</script>");			 
		}
	BoardDAO boardDao=new BoardDAO();
	BoardDTO board=boardDao.selectNum(num);
	boardDao.delete(board.getNum());
	boardDao.close();
	
		
		%>

		<script>alert('삭제되었습니다'); location.href='../question_list.jsp';</script>
</body>
</html>