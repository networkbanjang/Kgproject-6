<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
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
	
	String saveFolder = "C:\\javas\\upload\\"+id;
	File file = new File(saveFolder);
	if(file.exists() == false)
		file.mkdirs();
	
	int maxSize = 1024 * 1024 * 10; // 10MB
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8");
	
	String originalnum=multi.getParameter("num");
	int num = Integer.parseInt(originalnum);
	
	String content = multi.getParameter("editordata");
	String publ=multi.getParameter("pubid");

	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

	answerDAO answerDao = new answerDAO();
	answerDTO answer = new answerDTO();
	answer.setId(id);
	answer.setSlave(num);
	answer.setContent(content);
	answer.setTime(sdf.format(date));
	answer.setPubl(publ);
	answerDao.write(answer);
	answerDao.close();
	%>
	<script>alert('답변 작성 완료'); location.href='view.jsp?num=<%=num %>';</script>
</body>
</html>