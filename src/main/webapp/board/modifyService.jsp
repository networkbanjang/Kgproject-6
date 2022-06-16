
<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%

request.setCharacterEncoding("utf-8");
String id= (String)session.getAttribute("id");

String saveFolder = "C:\\Kraken\\Kgproject-6\\src\\main\\webapp\\up\\"+id;

int maxSize = 1024 * 1024 * 10; // 10MB
MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8",new DefaultFileRenamePolicy());

String originalnum=multi.getParameter("num");
int num = Integer.parseInt(originalnum);

String subject = multi.getParameter("subject");
String content = multi.getParameter("editordata");
String upimage = multi.getFilesystemName("upimage");

int answernum=Integer.parseInt(originalnum);
BoardDAO boardDao = new BoardDAO();
BoardDTO board= boardDao.selectNum(num);

board.setContent(content);
board.setTitle(subject);
board.setNum(num);

if(upimage != null){
	saveFolder = saveFolder + "\\" + board.getPhoto();
	board.setPhoto(upimage);
	File file = new File(saveFolder);
	if(file.exists()){
		file.delete();
	}
}
boardDao.modify(board);
boardDao.close();
%>
<script>alert('수정되었습니다'); location.href='view.jsp?num=<%=num%>';</script>
</body>
</html>