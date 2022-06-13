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
<link href="/KG-naver/css/naver_main.css" type="text/css"
	rel="stylesheet">

<%	//현재 페이지 번호
int pagenumber = 0;
try{
	pagenumber = Integer.parseInt(request.getParameter("pageNumber"));
}catch(Exception e){
	pagenumber = 1;
}

if(pagenumber < 1)
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
String result="";
String category = request.getParameter("category");
String search = request.getParameter("search");
if (category == null || category.equals("전체")) {
	if(search == null || search.equals(""))
	{
	list = boardDao.listAll(begin,end);
	totalCount=boardDao.count();
	category = "전체";
	String url = "question_list.jsp?category=" + category +"&pageNumber=";
	result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	}else{
		
		list = boardDao.listAll(begin,end,search);
		category = "전체";
		totalCount=boardDao.allsearchcount(search);
		String url = "question_list.jsp?category=" + category +"&search="+search+"&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	}

}else{
	if(category.equals("컴퓨터"))
		category="컴퓨터 통신"	;

	if(search == null || search.equals("")){
	list = boardDao.listselect(category,begin,end);
	totalCount=boardDao.count(category);
	String url = "question_list.jsp?category=" + category +"&pageNumber=";
	result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	}
	else{
		list = boardDao.listselect(category,begin,end,search);
		totalCount=boardDao.count(category,search);
		String url = "question_list.jsp?category=" + category +"&search="+search+"&pageNumber=";
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

							<div>
								<div class="tc-panel tc-selected">

									<h4 class="blind">답변을 기다리는 질문</h4>
									<div class="content_wrap _noanswer_wrap">
										<div class="directory_area _qna_menu">
											<div class="directory_box _list_area">
												<ul class="directory_list _qna_list">

													<li dirid="0" <%if (category.equals("전체")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=전체">전체</a></li>

													<li dirid="11" <%if (category.equals("교육,학문")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=교육,학문">교육,학문</a></li>

													<li dirid="1" <%if (category.equals("컴퓨터통신")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=컴퓨터 통신">컴퓨터 통신</a></li>

													<li dirid="2" <%if (category.equals("게임")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=게임">게임</a></li>

													<li dirid="3" <%if (category.equals("엔터테이먼트,예술")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=엔터테이먼트,예술">엔터테이먼트,예술</a></li>

													<li dirid="4" <%if (category.equals("생활")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=생활">생활</a></li>

													<li dirid="7" <%if (category.equals("건강")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=건강">건강</a></li>

													<li dirid="6" <%if (category.equals("사회,정치")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=사회,정치">사회,정치</a></li>

													<li dirid="4" <%if (category.equals("경제")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=경제">경제</a></li>

													<li dirid="9" <%if (category.equals("여행")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=여행">여행</a></li>

													<li dirid="10" <%if (category.equals("스포츠,레져")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=스포츠,레져">스포츠,레져</a></li>

													<li dirid="11" <%if (category.equals("쇼핑")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=쇼핑">쇼핑</a></li>

													<li dirid="13" <%if (category.equals("쥬니버")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=쥬니버">쥬니버
															Q&A</a></li>

													<li dirid="12" <%if (category.equals("지역,플레이스")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=지역,플레이스">지역&플레이스</a></li>

													<li dirid="20" <%if (category.equals("고민")) {%> class="on"
														<%}%>><a href="question_list.jsp?category=고민">고민Q&A</a></li>


												</ul>
											</div>
											<div class="directory_box _list_area _recommend_list_area">
												<h5>추천분야</h5>
												<ul class="directory_list _recommend_list">

													<li dirid="70404" <%if (category.equals("약 효능,성분")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=약 효능,성분">약 효능,성분</a></li>

													<li dirid="70402" <%if (category.equals("의약외품")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=의약외품">의약외품</a></li>

													<li dirid="70403" <%if (category.equals("영양제")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=영양제">영양제,건강보조식</a></li>

													<li dirid="70401" <%if (category.equals("의약품")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=의약품">의약품</a></li>

													<li dirid="602060204" <%if (category.equals("공갈,협박")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=공갈,협박">공갈,협박</a></li>

													<li dirid="602060201" <%if (category.equals("살인")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=살인">살인</a></li>

													<li dirid="602060203" <%if (category.equals("폭행")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=폭행">폭행</a></li>
														
													<li dirid="602060202" <%if (category.equals("강도")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=강도">강도</a></li>
														
													<li dirid="61303" <%if (category.equals("사람과 그룹")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=사람과 그룹">사람과 그룹</a></li>
														
														
													<li dirid="61302" <%if (category.equals("외국사회문화")) {%>
														class="on" <%}%>><a
														href="question_list.jsp?category=외국사회문화">외국사회문화</a></li>

												</ul>
											</div>
										</div>
										<span class="border"></span>
										<div class="content_area _dir_content" style="display: block;">

											<div class="heading_area _dir_content_title"
												style="display: block;">

												<h5 class="tit ellipsis _heading_title">

													<strong><%=category%></strong>
												</h5>
			



												<div class="search_area _heading_search">
												<form action="question_list.jsp">
													<input type="hidden" value=<%=request.getParameter("category") %> name="category">
													<input type="text" class="search_input _search_input" name="search"> 
													<input class="ico_search sp_common _search_butto" type="image" src="images/searchicon.png" >
													
												</form>
												</div>


												<%
												for (BoardDTO b : list) {
													a=answerDao.answer_list(b.getNum());
												%>
												<div class="answer_list _noanswer_list type_title"
													style="display: block;">
													<div class="answer_box _noanswerItem no_tag first">
														<div class="tit_wrap ">
															<a href="board/view.jsp?num=<%=b.getNum()%>"> <span class="tit_txt"><%=b.getTitle()%></span>
															</a>
														</div>


														<div class="update_info">
															<span class="num_answer">답변 <em><%=a.size() %></em></span> <span
																class="info"><a href="#"><%=b.getCategory()%></a></span>
															<span class="info"><%=b.getTime()%></span>
														</div>
													</div>
													<%
													}
													boardDao.close();
													answerDao.close();

													%>
													<%=result %>
													
												
</body>
</html>