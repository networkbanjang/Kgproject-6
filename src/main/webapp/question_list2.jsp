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
int i = 1;
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
								<table class="list_sel">
									<tr>
										<td colspan="3" class="list_top">Q&A</td>
									</tr>
									<tr>
										<td><a href="question_list2.jsp?category=교육,학문">교육,학문
												(<%=boardDao.count("교육,학문")%>)
										</a></td>
										<td><a href="question_list2.jsp?category=컴퓨터 통신">컴퓨터
												통신</a>(<%=boardDao.count("컴퓨터 통신")%>)</td>
										<td><a href="question_list2.jsp?category=게임">게임</a>(<%=boardDao.count("게임")%>)</td>
									</tr>
									<tr>
										<td><a href="question_list2.jsp?category=엔터테이먼트,예술">엔터테이먼트,예술</a>(<%=boardDao.count("엔터테이먼트,예술")%>)</td>
										<td><a href="question_list2.jsp?category=생활">생활</a>(<%=boardDao.count("생활")%>)</td>
										<td><a href="question_list2.jsp?category=건강">건강</a>(<%=boardDao.count("건강")%>)</td>
									</tr>
									<tr>
										<td><a href="question_list2.jsp?category=사회,정치">사회,정치</a>(<%=boardDao.count("사회,정치")%>)</td>
										<td><a href="question_list2.jsp?category=경제">경제</a>(<%=boardDao.count("경제")%>)</td>
										<td><a href="question_list2.jsp?category=여행">여행</a>(<%=boardDao.count("여행")%>)</td>
									</tr>
									<tr>
										<td><a href="question_list2.jsp?category=스포츠,레저">스포츠,레저</a>
											(<%=boardDao.count("스포츠,레저")%>)</td>
										<td><a href="question_list2.jsp?category=쇼핑">쇼핑</a>(<%=boardDao.count("쇼핑")%>)</td>
										<td><a href="question_list2.jsp?category=쥬니버">쥬니버Q&A</a>(<%=boardDao.count("쥬니버")%>)</td>
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
									<%=result%>

									<div class="search">
										<form name="bottom_search" id="bottom_search" method="get"
											action="/KG-naver/search/list.jsp">
											<fieldset>
												<legend>검색영역</legend>

												<input type="text" name="keyword" title="검색어"
													class="keyword" id="au_input_query"> <input
													type="image" alt="검색" title="키워드 검색"
													src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif"
													id="au_search_submit">
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
		<div class="footer">
			<h2 class="blind">하위영역</h2>
			<div class="footer_menu">
				<a href="http://www.naver.com/rules/service.html" target="_blank"
					class="_nclicks:fot.agreement">네이버 이용약관</a> <span class="f_bar">|</span>
				<a href="/common/guide.naver?query=p1" target="_blank"
					class="_nclicks:fot.policy">지식iN 서비스 운영정책</a> <span class="f_bar">|</span>
				<a href="http://www.naver.com/rules/privacy.html" target="_blank"
					class="_nclicks:fot.privacy"><strong>개인정보처리방침</strong></a> <span
					class="f_bar">|</span> <a
					href="http://inoti.naver.com/inoti/main.nhn" target="_blank"
					class="_nclicks:fot.claim">게시중단요청서비스</a> <span class="f_bar">|</span>
				<a
					href="https://help.naver.com/support/service/main.nhn?serviceNo=1003"
					target="_blank" class="_nclicks:fot.help">지식iN 고객센터</a>
			</div>
			<p class="copyright">
				<a href="http://www.naver.com" class="footer_logo sp_common"
					target="_blank">NAVER</a>Copyright © <strong><a
					href="https://www.navercorp.com" target="_blank"
					class="logo _nclicks:fot.nhncorp">NAVER Corp.</a></strong> All Rights
				Reserved.
			</p>
		</div>
	</div>

</body>
</html>