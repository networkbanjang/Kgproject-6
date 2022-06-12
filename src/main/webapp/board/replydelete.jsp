<%@page import="Board.replyDTO"%>
<%@page import="Board.replyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<% String originalnum = request.getParameter("replynum") ;
	String tmp=request.getParameter("num");
	String tmp2=request.getParameter("answernum");
	int num = 0;
		try{
		num = Integer.parseInt(originalnum);
		}catch(Exception e){
			out.print("<script>alert('잘못된 접근입니다.'); location.href='../index.jsp';</script>");			 
		}
		replyDAO replyDao=new replyDAO();
		replyDTO reply = replyDao.selectNum(num);
		replyDao.delete(reply.getNum());
		replyDao.close();
	%>

		<script>alert('삭제되었습니다'); location.href='view.jsp?num=<%=tmp%>&answernum=<%=tmp2%>';</script>
</body>
</html>