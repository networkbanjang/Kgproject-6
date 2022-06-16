<%@page import="hall.TalkDTO"%>
<%@page import="hall.TalkDAO"%>
 <%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	String content = request.getParameter("content");


	if(content == "" || content == null){
		out.print("<script>alert('내용을 입력해주세요.'); history.back(); </script>");
		return;
	}
	
	TalkDAO talkDao = new TalkDAO();
	TalkDTO talk = new TalkDTO();

	talk.setId(id);
	talk.setContent(content);
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	talk.setWritedate(sdf.format(date));
	
	talkDao.write(talk);
	talkDao.close();
	
	%>
	<script>alert('토크 작성 완료'); location.href='commentList.jsp';</script>


%>
<script>alert("작성 완료!"); history.back(); </script>