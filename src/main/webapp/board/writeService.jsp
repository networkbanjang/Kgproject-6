<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
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
<%
	request.setCharacterEncoding("utf-8");
	String id= (String)session.getAttribute("id");
	
	String saveFolder = "C:\\javas\\upload\\"+id;
	File file = new File(saveFolder);
	if(file.exists() == false)
		file.mkdirs();
	
	int maxSize = 1024 * 1024 * 10; // 10MB
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8");
	
	String subject = multi.getParameter("subject");
	String category = multi.getParameter("category");
	String content = multi.getParameter("editordata");
	String originalscore = multi.getParameter("score");
	int score=Integer.parseInt(originalscore);
	String nick = multi.getParameter("nick");
	String children = multi.getParameter("children");
	String children_answer = multi.getParameter("children_answer");
	
	BoardDTO board = new BoardDTO();
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	board.setTitle(subject);
	board.setContent(content);
	board.setCategory(category);
	board.setPoint(score);
	board.setTime(sdf.format(date));
	board.setId(id);
	
	if(nick.equals("pri")){
		board.setNick("비공개");
	}else{
		board.setNick((String)session.getAttribute("nickname"));
	}
	if(children.equals("adult")){
		board.setMinor_v("1");
	}else{
		board.setMinor_v("0");
	}
	if(children_answer.equals("adult_answer")){
		board.setMinor_an("1");
	}else{
		board.setMinor_an("0");
	}
	
	BoardDAO boardDao = new BoardDAO();
	boardDao.write(board);
	boardDao.close();
	%>
	<script>alert('게시글 작성 완료'); location.href='../question_list.jsp';</script>
</body>
</html>