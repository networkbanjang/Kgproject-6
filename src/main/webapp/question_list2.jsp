<%@page import="Page.PageService"%>
<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>네이버 지식IN</title>
<link href="/KG-naver/css/naver_sub.css" type="text/css"
	rel="stylesheet">

<%
//현재 페이지 번호
int pagenumber = 0;
try {
	pagenumber = Integer.parseInt(request.getParameter("pageNumber"));
} catch (Exception e) {
	pagenumber = 1;
}

if (pagenumber < 1)
	pagenumber = 1;

//한 페이지에 출력할 페이지의 수
int pageBlock = 10;

//데이터베이스에서 게시글 범위
int end = pagenumber * pageBlock;
int begin = end + 1 - pageBlock;

// 총 게시글의 수 : list.size()안됨.

ArrayList<BoardDTO> list;
BoardDAO boardDao = new BoardDAO();
int totalCount = 0;
String result = "";
String category = request.getParameter("category");
String search = request.getParameter("search");
if (category == null || category.equals("전체")) {
	if (search == null || search.equals("")) {
		list = boardDao.listAll(begin, end);
		totalCount = boardDao.count();
		category = "전체";
		String url = "question_list2.jsp?category=" + category + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	} else {

		list = boardDao.listAll(begin, end, search);
		category = "전체";
		totalCount = boardDao.allsearchcount(search);
		String url = "question_list2.jsp?category=" + category + "&search=" + search + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	}

} else {
	if (category.equals("컴퓨터"))
		category = "컴퓨터 통신";

	if (search == null || search.equals("")) {
		list = boardDao.listselect(category, begin, end);
		totalCount = boardDao.count(category);
		String url = "question_list2.jsp?category=" + category + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	} else {
		list = boardDao.listselect(category, begin, end, search);
		totalCount = boardDao.count(category, search);
		String url = "question_list2.jsp?category=" + category + "&search=" + search + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	}
}

answerDAO answerDao = new answerDAO();
ArrayList<answerDTO> a;
%>
</head>

<body>

	<%@ include file="header.jsp"%>

	<div id="wrap" class="wrap wrap_qna_list">

		<div id="container" class="container-fluid">
			<div
				class="container-fluid-content-inner _containerFluidContentInner">
				<h3 class="blind">답변하기 영역</h3>
				<div class="section_answer">

					<div class="container-fluid-content__left">

						<span id="answer_wrap_top"></span>

						<div class="answer_wrap" id="main_content">


							<div class="tc-panel tc-selected"></div>

							<div class="list_seldiv">
								<table class="list_sel" >
								<tr>
								<td colspan="3" class="list_top">Q&A</td>
								</tr>
									<tr>
									<td>	<a href="question_list2.jsp?category=교육,학문">교육,학문</a></td>
									<td>	<a href="question_list2.jsp?category=컴퓨터 통신">컴퓨터 통신</a></td>
										<td>	<a href="question_list2.jsp?category=게임">게임</a></td>
									</tr>
									<tr>
										<td>	<a href="question_list2.jsp?category=엔터테이먼트,예술">엔터테이먼트,예술</a></td>
										<td>	<a href="question_list2.jsp?category=생활">생활</a></td>
										<td>	<a href="question_list2.jsp?category=건강">건강</a></td>
									</tr>
									<tr>
										<td>	<a href="question_list2.jsp?category=사회,정치">사회,정치</a></td>
										<td>	<a href="question_list2.jsp?category=경제">경제</a></td>
										<td>	<a href="question_list2.jsp?category=여행">여행</a></td>
									</tr>
									<tr>
										<td>	<a href="question_list2.jsp?category=스포츠,레저">스포츠,레저</a></td>
										<td>	<a href="question_list2.jsp?category=쇼핑">쇼핑</a></td>
										<td>	<a href="question_list2.jsp?category=쥬니버">쥬니버Q&A</a></td>
									</tr>
								</table>					
							</div>
							<div class="content_wrap _noanswer_wrap">


								<div class="heading_area _dir_content_title"
									style="display: block;">

									<h5 class="tit ellipsis _heading_title">

										<strong><%=category%></strong>
									</h5>



									<%
									for (BoardDTO b : list) {
										a = answerDao.answer_list(b.getNum());
									%>
									<div class="answer_list _noanswer_list type_title"
										style="display: block;">
										<div class="answer_box _noanswerItem no_tag first">
											<div class="tit_wrap ">
												<a href="board/view.jsp?num=<%=b.getNum()%>"> <span
													class="tit_txt"><%=b.getTitle()%></span>
												</a>
											</div>


											<div class="update_info">
												<span class="num_answer">답변 <em><%=a.size()%></em></span> <span
													class="info"><a href="#"><%=b.getCategory()%></a></span> <span
													class="info"><%=b.getTime()%></span>
											</div>
										</div>
										</div>

										<%
										}
										boardDao.close();
										answerDao.close();
										%>
												<%=result %>
													<div class="search">
	<form name="bottom_search" id="bottom_search" method="get" action="/KG-naver/search/list.jsp">
	<fieldset>
		<legend>검색영역</legend>            
		
		<input type="text" name="keyword" title="검색어" class="keyword" id="au_input_query">
		<input type="image" alt="검색" title="키워드 검색" src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif" id="au_search_submit">
	</fieldset>
	</form>
</div>
</body>
</html>