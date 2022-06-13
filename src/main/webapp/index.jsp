<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
<%@page import="Page.PageService"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지식IN</title>

</head>
<%@ include file="header.jsp"%>
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
		String url = "question_list.jsp?category=" + category + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	} else {

		list = boardDao.listAll(begin, end, search);
		category = "전체";
		totalCount = boardDao.allsearchcount(search);
		String url = "question_list.jsp?category=" + category + "&search=" + search + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	}

} else {
	if (category.equals("컴퓨터"))
		category = "컴퓨터 통신";

	if (search == null || search.equals("")) {
		list = boardDao.listselect(category, begin, end);
		totalCount = boardDao.count(category);
		String url = "question_list.jsp?category=" + category + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	} else {
		list = boardDao.listselect(category, begin, end, search);
		totalCount = boardDao.count(category, search);
		String url = "question_list.jsp?category=" + category + "&search=" + search + "&pageNumber=";
		result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
	}
}

answerDAO answerDao = new answerDAO();
ArrayList<answerDTO> a;
%>
<body>

	<div id="loadingIndicator"
		style="display: none; width: 100%; height: 100%; position: fixed; top: 0px; left: 0px; background-color: transparent; z-index: 10000;">
		<img src="https://ssl.pstatic.net/static/kin/m/ico_lod2.gif"
			width="21" height="21" alt="데이터 요청 응답 대기중"
			style="position: absolute; top: 49%; left: 49%;">
	</div>
	<div id="wrap" class="wrap wrap_home">


		<div id="container" class="container-fluid" role="main">

			<div class="container-fluid-content">
				<div
					class="container-fluid-content-inner _containerFluidContentInner">
					<h3 class="blind">홈 영역</h3>
					<div class="section_spot">


						<div class="best_qna_wrap">
							<h4 class="blind">베스트 질문/답변</h4>
							<div class="best expert">
								<a class="best_link" href="https://expert.naver.com"
									target="_blank">
									<div class="best_background" aria-hidden="">
										<div class="best_background_image"
											style="background-image: url(https://ssl.pstatic.net/static/kin/section/expert/pc/home_panel_expert2.png)"></div>
										<img
											src="https://ssl.pstatic.net/static/kin/section/expert/pc/home_panel_expert2.png"
											alt="">
									</div>
									<div class="best_title">
										<div class="subtitleBox">
											<h2 class="subtitle">
												<span class="blind">NEW</span>
											</h2>
										</div>
										<p class="description">
											전문가 상담이<br>필요할 땐,<br>지식iN 엑스퍼트
										</p>
									</div>
								</a>
							</div>

							<div class="best hall">
								<a class="best_link"
									href="/qna/detail.naver?d1id=3&amp;dirId=304&amp;docId=237615594"
									onclick="nhn.Kin.Utility.nClicks('con.sanc', '', '', event);">
									<div class="best_title">
										<h2 class="subtitle">
											<span class="blind">지식iN 성지</span>
										</h2>
										<p class="description">이누야샤 가영이</p>
									</div>
								</a>
							</div>


							<div class="best today">
								<a class="best_link"
									href="/qna/detail.naver?d1id=5&amp;dirId=50801&amp;docId=421178301"
									onclick="nhn.Kin.Utility.nClicks('con.today', '', '', event);">

									<div class="best_title">
										<h2 class="subtitle">
											<span class="blind">오늘의 질문</span>
										</h2>
										<p class="description">나의 치아 관리법?</p>
									</div>
								</a>
							</div>


							<div class="best aha">
								<a class="best_link"
									href="/qna/detail.naver?d1id=11&amp;dirId=1117&amp;docId=390871953"
									onclick="nhn.Kin.Utility.nClicks('con.aha', '', '', event);">

									<div class="best_title">
										<h2 class="subtitle">
											<span class="blind">아하! 그렇구나</span>
										</h2>
										<p class="description">천둥소리나는이유</p>
									</div>
								</a>
							</div>

						</div>

						<div class="banner_promot" id="rightTopBanner">

							<ul class="banner_list">


								<li class="_banner_1"><a
									href="https://cafe.naver.com/cafesupport/169622"
									class="_nclicks:sbn.thum" target="_blank"> <img
										src="https://ssl.pstatic.net/static/kin/09renewal/promotion/main/rb_8_main_20220531104134.png?ver=20220531104135"
										height="220" width="280" alt="카페 이웃톡파원 이벤트">
								</a></li>
							</ul>

							<div class="paging _bannerPaging">

								<a href="#" class="_clickcode:sbn.btn on _bannerPage _banner_1">1</a>
							</div>
						</div>
						<script type="text/javascript">
							$Fn(
									function() {
										var elRightTopBanner = $("rightTopBanner");
										var elBannerList = $$("li",
												elRightTopBanner);
										var elBannerPaging = $$.getSingle(
												"._bannerPaging",
												elRightTopBanner);
										var elBannerPagingList = $$(
												"a._bannerPage", elBannerPaging);
										$Fn(
												function(oEvent) {
													if (oEvent.element.tagName != 'a'
															&& oEvent.element.tagName != 'A') {
														return;
													}
													var className = oEvent.element.className;
													for (i = 0; i < elBannerList.length; i++) {
														welBanner = $Element(elBannerList[i]);
														welPage = $Element(elBannerPagingList[i]);
														if (!welPage
																|| !welBanner) {
															break;
														}
														if (className
																.indexOf(elBannerList[i].className) >= 0) {
															welBanner.show();
															if (!welPage
																	.hasClass("on")) {
																welPage
																		.addClass("on");
															}
														} else {
															welBanner.hide();
															if (welPage
																	.hasClass("on")) {
																welPage
																		.removeClass("on");
															}
														}
													}
													oEvent.stop();
													return false;
												}, this).attach(elBannerPaging,
												"click");

									}).attach(window, 'load');
						</script>

					</div>

					<div class="section_answer">

						<div class="container-fluid-content__left" id="left_content">



							<div class="stats_ranking_area" id="statsRankingArea">

								<div class="section_headings section_headings__step1">
									<h4 class="section_headings_title">많이 본 Q&amp;A</h4>
									<div class="side _ranking_base_date" id="rankingDate">07일
										06시 기준</div>
								</div>
								<div class="ranking_section">
									<div class="ranking_list_area" id="rankingChart">

										<ul class="ranking_list">


											<li class="ranking_item _item_1"><span class="no">1</span>
												<a
												href="/qna/detail.naver?d1id=8&amp;dirId=80510&amp;docId=114044734"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">귀뚜라미
													키우기(내공 30)</a> <a
												href="/qna/detail.naver?d1id=8&amp;dirId=80510&amp;docId=114044734"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">신나는
													여름방학~↖(^0^)↗ 제가 여름방학동안 곤충 10마리를 잡기로 했어요~ 동생과 딱지를 사러갔다가...</a> <span
												class="recommend_num">조회수 87</span><span class="reply_num">답변수
													37</span></li>



											<li class="ranking_item _item_2"><span class="no">2</span>
												<a
												href="/qna/detail.naver?d1id=11&amp;dirId=111301&amp;docId=310914081"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">(중딩)리만가설이
													무엇인가요?? 말</a> <a
												href="/qna/detail.naver?d1id=11&amp;dirId=111301&amp;docId=310914081"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">(중딩)리만가설이
													무엇인가요?? 말 그자체로 소수인가요??? 모르겠어요ㅠㅠ..</a> <span
												class="recommend_num">조회수 75</span><span class="reply_num">답변수
													3</span></li>



											<li class="ranking_item _item_3"><span class="no">3</span>
												<a
												href="/qna/detail.naver?d1id=11&amp;dirId=1115&amp;docId=345921729"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">달
													모양이</a> <a
												href="/qna/detail.naver?d1id=11&amp;dirId=1115&amp;docId=345921729"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">제가
													지금 보고 있는 달이 초승달이라면 어느나라 어느곳에서 봐도 지구 안에만 있으면 초승달로 보이나요?...</a> <span
												class="recommend_num">조회수 68</span><span class="reply_num">답변수
													11</span></li>









											<li class="ranking_item _item_7" style="display: none;">
												<span class="no">7</span> <a
												href="/qna/detail.naver?d1id=10&amp;dirId=10010204&amp;docId=421161237"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">야구룰
													질문입니다</a> <a
												href="/qna/detail.naver?d1id=10&amp;dirId=10010204&amp;docId=421161237"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">1사만루에서
													타자가 유격수 앞 타구를 칩니다. 유격수는 643병살을 만들기 위해 2루에 송구하지만 송구가...</a> <span
												class="recommend_num">조회수 32</span><span class="reply_num">답변수
													1</span>
											</li>



											<li class="ranking_item _item_8" style="display: none;">
												<span class="no">8</span> <a
												href="/qna/detail.naver?d1id=11&amp;dirId=1113&amp;docId=363388813"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">혈류속도
													미분 유도 과정</a> <a
												href="/qna/detail.naver?d1id=11&amp;dirId=1113&amp;docId=363388813"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">유도
													과정 자세하게 알려주세요ㅜㅜ 마지막에 -Pr/2nl 이 되는 이유도요 -가 왜 붙는지도...</a> <span
												class="recommend_num">조회수 32</span><span class="reply_num">답변수
													1</span>
											</li>



											<li class="ranking_item _item_9" style="display: none;">
												<span class="no">9</span> <a
												href="/qna/detail.naver?d1id=3&amp;dirId=3031001&amp;docId=349200363"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">애교대사&amp;멘트</a>
												<a
												href="/qna/detail.naver?d1id=3&amp;dirId=3031001&amp;docId=349200363"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">해줘해줘,슈크림빵,애라애교등등
													대사 알려주세요 최대한 많이요!!!</a> <span class="recommend_num">조회수
													22</span><span class="reply_num">답변수 1</span>
											</li>




										</ul>

										<ul class="ranking_list">








											<li class="ranking_item _item_4"><span class="no">4</span>
												<a
												href="/qna/detail.naver?d1id=3&amp;dirId=31505&amp;docId=371870455"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">신발
													잃어버리는 꿈</a> <a
												href="/qna/detail.naver?d1id=3&amp;dirId=31505&amp;docId=371870455"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">단체로
													실내에서 신발을 벽쪽에 벗어두고 뭔가를 하다가 끝났다고 가라길래 신발을 신고 가려는데 누가 신...</a> <span
												class="recommend_num">조회수 58</span><span class="reply_num">답변수
													1</span></li>



											<li class="ranking_item _item_5"><span class="no">5</span>
												<a
												href="/qna/detail.naver?d1id=11&amp;dirId=1114&amp;docId=421114417"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">기압이
													0이라면 어떤 현상이 발생될까요?</a> <a
												href="/qna/detail.naver?d1id=11&amp;dirId=1114&amp;docId=421114417"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">바람이
													가지는 그 공기는 무한히 영원으로 변하며 그 공기의각 객체 원자및 분자들은 무한한 에너지를 갖게...</a> <span
												class="recommend_num">조회수 54</span><span class="reply_num">답변수
													2</span></li>



											<li class="ranking_item _item_6"><span class="no">6</span>
												<a
												href="/qna/detail.naver?d1id=3&amp;dirId=31504&amp;docId=219800607"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">1859년생이면
													무슨띠인가요</a> <a
												href="/qna/detail.naver?d1id=3&amp;dirId=31504&amp;docId=219800607"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">1859년생
													친구가 있습니다. 띠에 맞춰 마스코트 선물을 주려고 하는데요.오늘 새벽3시에 집에 오기로 되어...</a> <span
												class="recommend_num">조회수 46</span><span class="reply_num">답변수
													1</span></li>




											<li class="ranking_item _item_10" style="display: none;">
												<span class="no">10</span> <a
												href="/qna/detail.naver?d1id=6&amp;dirId=603&amp;docId=356006436"
												class="ranking_title" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">군인들은
													다 아미인가요?</a> <a
												href="/qna/detail.naver?d1id=6&amp;dirId=603&amp;docId=356006436"
												class="text" target="_blank"
												onclick="nhn.Kin.Utility.nClicks('hrk.list', '', '', event);">전
													중학생 아미인데요. 왜 군인들 아미라고 적혀있는 옷을 입고 다니나요? 국방부 장관이 아미라서 그렇게...</a>
												<span class="recommend_num">조회수 21</span><span
												class="reply_num">답변수 2</span>
											</li>


										</ul>
									</div>
									<div class="paginate" id="rankingPaging">

										<a href="#" class="on" title="선택됨"
											onclick="nhn.Kin.Utility.nClicks('hrk.page', '', '', event);">1</a>

										<a href="#"
											onclick="nhn.Kin.Utility.nClicks('hrk.page', '', '', event);">2</a>

									</div>
								</div>

							</div>

							<div id="hotTopicKeywordArea" class="hottopic_keyword_area ">
								<div class="title_group">
									<h4 class="title">지금 알아보세요!</h4>
								</div>
								<div class="hottopic_keyword_list_group">
									<ul class="hottopic_keyword_list">

										<li class="item"><a
											href="https://m.expert.naver.com/mobile/expert/category/home?groupCategoryId=153&amp;categoryId=1"
											target="_blank" class="link"
											onclick="nhn.Kin.Utility.nClicks('hlk.link','','', event);">세무사
												상담</a></li>

										<li class="item"><a
											href="https://m.expert.naver.com/mobile/events/21391716671"
											target="_blank" class="link"
											onclick="nhn.Kin.Utility.nClicks('hlk.link','','', event);">MBTI
												검사</a></li>

										<li class="item"><a
											href="https://m.expert.naver.com/mobile/expert/category/home?groupCategoryId=153&amp;categoryId=459"
											target="_blank" class="link"
											onclick="nhn.Kin.Utility.nClicks('hlk.link','','', event);">디자인
												외주</a></li>

										<li class="item"><a
											href="https://m.expert.naver.com/mobile/expert/category/home?groupCategoryId=294&amp;categoryId=157"
											target="_blank" class="link"
											onclick="nhn.Kin.Utility.nClicks('hlk.link','','', event);">타로
												연애 상담</a></li>

										<li class="item"><a
											href="https://expert.naver.com/expert/introduction?tab=guide"
											target="_blank" class="link"
											onclick="nhn.Kin.Utility.nClicks('hlk.link','','', event);">엑스퍼트
												신청</a></li>

									</ul>
								</div>
							</div>



							<span id="answer_wrap_top"></span>

							<div class="answer_wrap" id="main_content">
								<div id="noanswer_tab" class="title_area">
									<ul>
										<li class="tc-tab tc-selected"><a href="#answer_wrap_top"
											class="title"
											onclick="nhn.Kin.Utility.nClicks('ldl.qna', '', '', event);"
											id="contentsOfMain">답변을 기다리는 질문</a></li>
										<li class="tc-tab"><a href="#answer_wrap_top"
											class="title on"
											onclick="nhn.Kin.Utility.nClicks('ldl.con', '', '', event);">답변을
												기다리는 관심질문</a></li>
									</ul>
								</div>
								<div
									class="container-fluid-content-inner _containerFluidContentInner">

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

																		<li dirid="0" <%if (category.equals("전체")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=전체">전체</a></li>

																		<li dirid="11" <%if (category.equals("교육,학문")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=교육,학문">교육,학문</a></li>

																		<li dirid="1" <%if (category.equals("컴퓨터통신")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=컴퓨터 통신">컴퓨터 통신</a></li>

																		<li dirid="2" <%if (category.equals("게임")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=게임">게임</a></li>

																		<li dirid="3" <%if (category.equals("엔터테이먼트,예술")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=엔터테이먼트,예술">엔터테이먼트,예술</a></li>

																		<li dirid="4" <%if (category.equals("생활")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=생활">생활</a></li>

																		<li dirid="7" <%if (category.equals("건강")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=건강">건강</a></li>

																		<li dirid="6" <%if (category.equals("사회,정치")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=사회,정치">사회,정치</a></li>

																		<li dirid="4" <%if (category.equals("경제")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=경제">경제</a></li>

																		<li dirid="9" <%if (category.equals("여행")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=여행">여행</a></li>

																		<li dirid="10" <%if (category.equals("스포츠,레져")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=스포츠,레져">스포츠,레져</a></li>

																		<li dirid="11" <%if (category.equals("쇼핑")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=쇼핑">쇼핑</a></li>

																		<li dirid="13" <%if (category.equals("쥬니버")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=쥬니버">쥬니버 Q&A</a></li>

																		<li dirid="12" <%if (category.equals("지역,플레이스")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=지역,플레이스">지역&플레이스</a></li>

																		<li dirid="20" <%if (category.equals("고민")) {%>
																			class="on" <%}%>><a
																			href="question_list.jsp?category=고민">고민Q&A</a></li>


																	</ul>
																</div>
																<div
																	class="directory_box _list_area _recommend_list_area">
																	<h5>추천분야</h5>
																	<ul class="directory_list _recommend_list">

																		<li dirid="70404"
																			<%if (category.equals("약 효능,성분")) {%> class="on"
																			<%}%>><a
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

																		<li dirid="602060204"
																			<%if (category.equals("공갈,협박")) {%> class="on" <%}%>><a
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
															<div class="content_area _dir_content"
																style="display: block;">

																<div class="heading_area _dir_content_title"
																	style="display: block;">

																	<h5 class="tit ellipsis _heading_title">

																		<strong><%=category%></strong>
																	</h5>




																	<div class="search_area _heading_search">
																		<form action="question_list.jsp">
																			<input type="hidden"
																				value=<%=request.getParameter("category")%>
																				name="category"> <input type="text"
																				class="search_input _search_input" name="search">
																			<input class="ico_search sp_common _search_butto"
																				type="image" src="images/searchicon.png">

																		</form>
																	</div>


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
																				<span class="num_answer">답변 <em><%=a.size()%></em></span>
																				<span class="info"><a href="#"><%=b.getCategory()%></a></span>
																				<span class="info"><%=b.getTime()%></span>
																			</div>
																		</div>
																		<%
																		}
																		boardDao.close();
																		answerDao.close();
																		%>
																		<%=result%>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>


									</div>
								</div>
							</div>

						</div>



						<div class="container-fluid-content__right">
							<div id="aside_content" class="aside" style="height: 2082px;">



								<div id="aside_login" class="aside_myinfo">
									<h2 class="blind">
										NAVER <em>로그인</em> 영역
									</h2>

									<div class="my_wrap">
										<a href="/myinfo/index.naver"
											onclick="nhn.Kin.Utility.nClicks('kmy_lgd.actmore', '', '', event);">
											<div class="my_photo">
												<img
													src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/5_3d.png"
													alt="프로필이미지" class="img" width="50" height="50">
											</div>
											<div class="my_service">
												<p class="user_id ellipsis">tmddud73</p>
												<p class="user_mykin">
													프로필 바로가기 <span>&gt;</span>
												</p>
											</div>
										</a> <span class="btn_login_area"> <a
											href="https://nid.naver.com/nidlogin.logout?retrul=https%3A%2F%2Fkin.naver.com%2Findex.naver"
											onclick="nhn.Kin.Utility.nClicks('kmy_lgd.out', '', '', event);"
											class="btn_login">로그아웃</a>
										</span>
									</div>
									<div class="mykin_wrap _tab_my_area">
										<div class="mykin_tab">
											<span class="tab on"><a href="#" class="_message_tab"
												onclick="nhn.Kin.Utility.nClicks('kmy_lgd.acttab', '', '', event);">내소식</a></span>
											<span class="tab"><a href="#" class="_level_tab"
												onclick="nhn.Kin.Utility.nClicks('kmy_lgd.ranktab', '', '', event);">나의
													지식iN 등급</a></span>
										</div>


										<div
											class="mykin_tab_content tc-panel tc-selected _message_area">
											<div class="mykin_list_wrap scroll mykin_list_scroll">
												<ul id="message-list" class="mykin_list"
													onclick="nhn.Kin.Utility.nClicks('kmy_lgd.actmsg', '', '', event);">
													<div class="no_data">
														<p>최근 내 소식이 없습니다.</p>
													</div>
												</ul>
											</div>
										</div>

										<div class="mykin_tab_content tc-panel _level_area"
											style="display: none">
											<h4 class="blind">나의 지식iN 등급</h4>

											<div class="scroll_area">
												<div class="gradeup_info">
													<div class="lv_area grd_lv5">
														<div class="mylv">
															<div class="gauge" id="level_guage">
																<strong class="my_level">중수</strong>
																<div class="grd_wrap">
																	<div class="inner" style="width: 100%;">
																		<div class="grd_bar">
																			<span class="grd_action"></span>
																		</div>
																	</div>
																</div>
																<div class="my_level_num">
																	내공: <strong>3,835</strong>
																</div>
																<span class="my_level_up">고수</span>
															</div>
														</div>
													</div>
													<div class="nessesary_area">
														<ul class="nessesary_list">
															<li><p class="tit">내공</p> <strong class="data">3,166필요</strong></li>
															<li><p class="tit">채택답변수</p> <strong class="data">40개
																	필요</strong></li>
															<li><p class="tit">답변채택률</p> <strong class="data">등업조건
																	만족</strong></li>
														</ul>
													</div>
													<ul class="major_area">
														<li><strong>활동분야</strong>활동 분야가 없습니다.</li>
														<li><strong>내공순위</strong>3,628,661위</li>
														<li><strong>전체질문</strong>16건 (질문채택률 75.0%)</li>
														<li><strong>전체답변</strong>1건</li>
													</ul>

												</div>
											</div>
										</div>
									</div>




								</div>
								<div class="aside_notice">
									<div class="inner">
										<h4>공지사항</h4>

										<a href="http://blog.naver.com/kin_friend"
											class="more no_underline _nclicks:not.more">더보기</a>
									</div>
								</div>



								<div class="aside_campaign" id="asideCampaign">


									<h4>캠페인</h4>


									<div class="campaign type1">
										<a href="https://kin.naver.com/volunteer/index.nhn"
											class="txt_area _nclicks:evt.list,r:0" target="_blank"> <span
											class="_campaignTitle">지식나눔의 기쁨과 봉사활동 시간 인정까지!</span> <i
											class="ico_campaign"><img
												src="https://ssl.pstatic.net/static/kin/09renewal/new_master/campaign1.png"
												alt="지식나눔의 기쁨과 봉사활동 시간 인정까지!"></i>
										</a>
									</div>




									<div class="campaign type1">
										<a href="https://kin.naver.com/partnercenter/index.nhn"
											class="txt_area _nclicks:evt.list,r:1" target="_blank"> <span
											class="_campaignTitle">공식답변을 편리하게 신청하는 지식파트너센터</span> <i
											class="ico_campaign"><img
												src="https://ssl.pstatic.net/static/kin/09renewal/new_master/campaign2.png"
												alt="공식답변을 편리하게 신청하는 지식파트너센터"></i>
										</a>
									</div>


									<div class="link_area">
										<a
											href="https://help.naver.com/support/service/main.nhn?serviceNo=1003"
											target="_blank" class="_nclicks:evt.help no_underline">지식iN
											도움말</a> <a target="_blank"
											href="http://blog.naver.com/kin_friend/"
											class="_nclicks:evt.blog no_underline">지식iN 공식블로그</a>
									</div>
								</div>



								<script type="text/javascript">
									$Fn(
											function() {
												var elList = $$(
														'span._campaignTitle',
														$("asideCampaign"));
												if (!elList) {
													return;
												}

												for (var i = 0; i < elList.length; i++) {
													wel = $Element(elList[i]);
													if (elList[i].scrollHeight > elList[i].clientHeight) {
														// 2줄일때
														wel
																.parent()
																.parent()
																.removeClass(
																		"type2");
														wel
																.parent()
																.parent()
																.addClass(
																		"type1");
													}
													wel = $Element(elList[i]);
												}
											}).attach(window, 'load');
								</script>

								<div class="aside_statistics">
									<h4>오늘의 질문과 답변</h4>
									<div class="stats stats_today">
										<span class="blind">질문</span><strong class="num">43,853</strong><em
											class="slash sp_common">/</em><span class="blind">답변</span><strong
											class="num">89,897</strong>
										<p class="date_info">2022.06.07.</p>
									</div>
									<h4>누적 답변수</h4>
									<div class="stats stats_accum">
										<strong class="num">503,395,820</strong>
										<p class="date_info">since 2002</p>
									</div>
								</div>


							</div>
						</div>
					</div>



				</div>


			</div>

		</div>


	</div>

</body>

</html>