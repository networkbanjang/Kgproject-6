<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	response.sendRedirect("/KG-naver/index.jsp");
%>
<script>alert('로그아웃 완료!');</script>