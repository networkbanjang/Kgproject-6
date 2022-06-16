<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = (String)session.getAttribute("id");
	if(id == null || id == ""){
		response.sendRedirect("login.jsp");
		return;
	}
/* 	String useNickname = request.getParameter("useNickname");
	String nickname = request.getParameter("nickname");
	String intro = request.getParameter("introduction");
	String agreeCheck = request.getParameter("agreeCheck"); */
	
	String saveFolder = "C:\\Kraken\\Kgproject-6\\src\\main\\webapp\\up\\"+id;
//	String saveFolder = "C:\\javas\\upload\\" + id;
	  File file = new File(saveFolder);
	   if(file.exists() == false)
	      file.mkdirs();
	
	int maxSize = 1024 * 1024 * 10;
	MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, "utf-8");
	
	String useNickname = multi.getParameter("useNickname");
	String nickname = multi.getParameter("nickname");
	String intro = multi.getParameter("introduction");
	String agreeCheck = multi.getParameter("agreeCheck");
	String upfile = multi.getOriginalFileName("upfile");
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	if(agreeCheck != null){
		if(member != null){		
			member.setId(id);
			if(useNickname.equals("true"))
				member.setNickname(nickname);
			if(upfile != null)
				member.setPic(upfile);
			member.setIntro(intro);
			memberDao.update(member);
			response.sendRedirect("/KG-naver/main/profile.jsp?id=" + id);
		}else{
			out.print("<script>alert('회원 정보 수정 실패'); history.back(); </script>");
		}
	}else{
		out.print("<script>alert('프로필 정보공개에 대해 동의해주세요.'); history.back(); </script>");
	}
%>