-
<%@page import="Board.replyDTO"%>
<%@page import="Board.replyDAO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<body>
<%@include file="../header.jsp"%>
<%
	request.setCharacterEncoding("utf-8");

	//String id = request.getParameter("subject");
	//String category = request.getParameter("catagory");
	//String content = request.getParameter("editordata");
	
	//out.print(id);
	//out.print(category);
	//out.print(content);

	String content = request.getParameter("reply");

	
	String num = request.getParameter("num");
	String originalanswernum=request.getParameter("answernum");
	int answernum=Integer.parseInt(originalanswernum);
	
	if (content == null || content.equals("")){

		out.print("<script>alert('댓글내용이 공백입니다.');history.back();</script>");
		return ;
	}
	replyDAO replyDao=new replyDAO();
	replyDTO reply=new replyDTO();

	reply.setId(id);
	reply.setContent(content);
	reply.setSlave(answernum);
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	reply.setWritedate(sdf.format(date));
	
	replyDao.write(reply);
	replyDao.close();
	
	%>
	<script>alert('댓글 작성 완료'); location.href='view.jsp?num=<%=num%>&answernum=<%=answernum%>';</script>
</body>
</html>