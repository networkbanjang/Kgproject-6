
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
String id= "tmddud73";

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

String tmp = request.getParameter("num") ;
String originalanswernum=request.getParameter("answernum");

int answernum=Integer.parseInt(originalanswernum);
answerDAO answerDao = new answerDAO();
answerDTO answer= answerDao.selectNum(answernum);

answer.setContent(content);
answer.setPubl(publ);
answerDao.modify(answer);
answerDao.close();
%>
<script>alert('수정되었습니다'); location.href='view.jsp?num=<%=tmp%>';</script>
</body>
</html>