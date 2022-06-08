<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지식IN</title>

</head>
<%@ include file="header.jsp"%>
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
				<li class="tc-tab tc-selected"><a href="#answer_wrap_top" class="title" onclick="nhn.Kin.Utility.nClicks('ldl.qna', '', '', event);" id="contentsOfMain">답변을 기다리는 질문</a></li>
				<li class="tc-tab"><a href="#answer_wrap_top" class="title on" onclick="nhn.Kin.Utility.nClicks('ldl.con', '', '', event);">답변을 기다리는 관심질문</a></li>
			</ul>
		</div>
		<div>
			<div class="tc-panel tc-selected">
				












<h4 class="blind">답변을 기다리는 질문</h4>
<div class="content_wrap _noanswer_wrap">
	<div class="directory_area _qna_menu">
		<div class="directory_box _list_area">
			<ul class="directory_list _qna_list">
	<li dirid="0" poiid="" class="on"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '0', '1', event);">전체<span class="blind _selected">질문 목록 선택됨</span></a></li>
	
	<li dirid="11" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '11', '2', event);">교육, 학문</a></li>
	
	<li dirid="1" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '1', '3', event);">컴퓨터통신</a></li>
	
	<li dirid="2" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '2', '4', event);">게임</a></li>
	
	<li dirid="3" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '3', '5', event);">엔터테인먼트, 예술</a></li>
	
	<li dirid="8" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '8', '6', event);">생활</a></li>
	
	<li dirid="7" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '7', '7', event);">건강</a></li>
	
	<li dirid="6" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '6', '8', event);">사회, 정치</a></li>
	
	<li dirid="4" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '4', '9', event);">경제</a></li>
	
	<li dirid="9" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '9', '10', event);">여행</a></li>
	
	<li dirid="10" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '10', '11', event);">스포츠, 레저</a></li>
	
	<li dirid="5" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '5', '12', event);">쇼핑</a></li>
	
	<li dirid="13" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '13', '13', event);">쥬니버Q&amp;A</a></li>
	
	<li dirid="12" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '12', '14', event);">지역&amp;플레이스</a></li>
	
	<li dirid="20" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dir', '20', '15', event);">고민Q&amp;A</a></li>
	</ul> 
		</div>
		<div class="directory_box _list_area _recommend_list_area" style="display: block;">
			<h5>추천분야</h5>
			<ul class="directory_list _recommend_list" style="display: block;">
	<li dirid="80101" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '80101', '1', event);">연애, 결혼</a></li>
	
	<li dirid="811" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '811', '2', event);">자동차</a></li>
	
	<li dirid="406" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '406', '3', event);">직업, 취업</a></li>
	
	<li dirid="1070402" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '1070402', '4', event);">안드로이드폰</a></li>
	
	<li dirid="61303" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '61303', '5', event);">사람과 그룹</a></li>
	
	<li dirid="110408" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '110408', '6', event);">대학 입시, 진학</a></li>
	
	<li dirid="8110201" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '8110201', '7', event);">자동차구입</a></li>
	
	<li dirid="208" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '208', '8', event);">모바일게임</a></li>
	
	<li dirid="11080308" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '11080308', '9', event);">영어 공부, 시험</a></li>
	
	<li dirid="10704" poiid=""><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.rec', '10704', '10', event);">스마트폰</a></li>
	</ul> 
		</div>
	</div>
	<span class="border"></span>
	<div class="content_area _dir_content" style="display: block;">
		
		
		
		<div class="heading_area _dir_content_title" style="display: block;">
			
			<h5 class="tit ellipsis _heading_title">
		
			<a href="/qna/list.naver" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dirn', '0', '', event);"><strong>전체</strong> <span class="blind">의 답변을 기다리는 바로가기</span></a>
		
	</h5>
			
			
			<a href="#" class="btn_line _ros _btn_add_interest" dirid="0" onclick="nhn.Kin.Utility.nClicks('nql_lgd.cdir', '0', '', event);" style="display:none"><span><i class="ico_plus sp_common"></i>관심분야 추가</span></a>
			
			
			<div class="search_area _heading_search" onclick="nhn.Kin.Utility.nClicks('nql_lgd.search', '', '', event);">
				<input type="text" class="search_input _search_input" title="검색어 입력">
				<a href="#" class="ico_search sp_common _search_button">검색</a>
			</div>
			
			<div class="sort_list_group _option">
				<div class="sort_list_group_left">
					<div class="view_type_wrap">
						<p class="blind">보기옵션 선택</p>
						
						<ul class="view_type_list _view_type_list" role="tablist">

								<!-- [D]
									1) 클로바앱 질문(선택안되게): is_disabled 클래스 추가 / aria-disabled="true" 추가
									2) tab 요소(ul.view_type_list > li > a) click 이벤트시 동작
										- 선택된 탭일 경우: on 클래스 추가 및 aria-selected="true"로 변경
										- 선택되지 않은 탭일 경우: on 클래스 제거 및 aria-selected="false"로 변경
										- 비활성화된 탭일 경우: is_disabled 클래스 추가 및 aria-disabled="true" 속성 추가
										- 활성화된 탭일 경우: is_disabled 클래스 제거 및 aria-disabled 속성 제거
									3) tab 요소(ul.view_type_list > li > a)와 하단 div.answer_list 요소 연결
										- 미리보기형 탭은 미리보기형 목록과, 제목형 탭은 제목형 목록과 각각 연결
										- a 요소의 aria-controls=""와 div 요소의 id=""에 동일한 id 값 제공
								-->
							<li class="_preview"><a href="#" role="button" aria-selected="false" aria-controls="questionListTypePreview" class="type_preview _previewTypeBtn" onclick="nhn.Kin.Utility.nClicks('nql_lgd.preview', '', '', event);">미리보기형</a></li>
							<li class="_onlyTitle"><a href="#" role="button" aria-selected="true" aria-controls="questionListTypeTitle" class="type_title _onlyTitleTypeBtn on" onclick="nhn.Kin.Utility.nClicks('nql_lgd.title', '', '', event);">제목형</a>
								<div class="tooltip _previewTypeTooltipLayer" style="display:none">
									<span class="sp_common arrow"></span>
									<div class="inner">
										<p class="blind">안내</p>
										제목만 모아서 많은 질문을<br> 한 번에 볼 수 있어요!
										<a href="#" class="sp_common btn_close _previewTypeTooltipLayerClose">닫기</a>
									</div>
								</div>
							</li>
						</ul>
						
						<div class="select_area _countPerPageSelectBox">
							<a href="#" class="btn_select _selectedCountPerPageValue">20개 보기 <span class="ico_arrow sp_common"></span></a>
							<p class="blind">보기 개수 선택</p>
							<ul class="select_list _countPerPageListArea">
								<li class="_countPerPage _param('5')"><a href="#" class="_countPerPageValue _param('5')">5개 보기</a></li>
								<li class="_countPerPage _param('10')"><a href="#" class="_countPerPageValue _param('10')">10개 보기</a></li>
								<li class="_countPerPage _param('15')"><a href="#" class="_countPerPageValue _param('15')">15개 보기</a></li>
								<li class="_countPerPage _param('20') on"><a href="#" class="_countPerPageValue _param('20') default">20개 보기</a></li>
								<li class="_countPerPage _param('25')"><a href="#" class="_countPerPageValue _param('25')">25개 보기</a></li>
								<li class="_countPerPage _param('30')"><a href="#" class="_countPerPageValue _param('30')">30개 보기</a></li>
								<li class="_countPerPage _param('50')"><a href="#" class="_countPerPageValue _param('50')">50개 보기</a></li>
							</ul>
						</div>
					</div>
				</div>

				
				<div class="sort_list_group_right">
					
					<p class="blind">정렬 옵션 선택</p>
					<ul class="sort_list_module _sortOptionList">
						<li class="is_active _answer"><a href="#" role="button" aria-selected="true" class="_sort_option _param('answer')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.answer', '', '', event);"><i class="ico_sort _sort_option _param('answer')"></i>답변적은순</a></li>
						<li class="_firstFlag" style="display: list-item;"><a href="#" role="button" aria-selected="false" class="_sort_option _param('firstFlag')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.newask', '', '', event);"><i class="ico_sort _sort_option _param('firstFlag')"></i>첫질문</a></li>
						<li class="_recent"><a href="#" role="button" aria-selected="false" class="_sort_option _param('recent')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.latest', '', '', event);"><i class="ico_sort _sort_option _param('recent')"></i>최신순</a></li>
						<li class="_betPoint"><a href="#" role="button" aria-selected="false" class="_sort_option _param('betPoint')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.point', '', '', event);"><i class="ico_sort _sort_option _param('betPoint')"></i>내공높은순</a></li>
					</ul>
				</div>
			</div>
		</div>

		
		
		<div class="answer_list _noanswer_list type_title" role="tabpanel" style="display: block;" id="questionListTypeTitle"><strong class="blind"><span>답변적은순</span>질문 리스트</strong><div class="answer_box _noanswerItem no_tag first">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=110501&amp;docId=421207069&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '110501_421207069', '1', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110501,421207069,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>100</span>
				
				<span class="tit_txt">대학생 교수</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=110501" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '110501', '1', event);">대학공부</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('110501,421207069')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '110501_421207069', '1', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=110501&amp;docId=421207069" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '110501_421207069', '1', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110501,421207069,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						뭔가 문제점이 생기면 교수가아니라 학교 행정관련사람들이랑 대화를하나요
					</p>
				</div>
			</div>
		
	</div>
	<div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=6&amp;dirId=6130201&amp;docId=421207066&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '6130201_421207066', '4', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,6130201,421207066,'answerCntNew');">
				
				<span class="tit_txt">Kt&amp;g 상상장학금 푸른등대 태블릿</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=6130201" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '6130201', '4', event);">외국국기, 국가정...</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('6130201,421207066')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '6130201_421207066', '4', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=6&amp;dirId=6130201&amp;docId=421207066" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '6130201_421207066', '4', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,6130201,421207066,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						Kt&amp;g 상상장학금에 합격하게 됐는데요.. 타 생활비 장학금과 중복 수혜가 안된다는데 혹시 장학재단에서 주는 푸른등대 기부장학금이 아닌 푸른등대 태블릿pc 사업도 생활비 장학금으로 중복수혜인가요?ㅜㅜ
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=1&amp;dirId=1060801&amp;docId=421207065&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '1060801_421207065', '5', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1060801,421207065,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>50</span>
				
				<span class="tit_txt">카톡 내용 복구 ..</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=1060801" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '1060801', '5', event);">카카오톡</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('1060801,421207065')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '1060801_421207065', '5', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=1&amp;dirId=1060801&amp;docId=421207065" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '1060801_421207065', '5', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1060801,421207065,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						안녕하세여 ! 오늘 제가 그 다른 기계(?)에 카톡을 깔아서 제 카톡 아이디와 비번 그리고 똑같은 전번으로 로그인을 했어욥 그리고 폰에 있는 카톡을 들어가보나가 뭐 다른 곳에서 로그인했다 뭐 이러면서 나가져서 제 카톡 아이디로 다시 가입을 했어욥 그랬는데 살짝 초기화 된것 같더라구요 카톡 내용이 2일 전껏부터 있엉여.. 근데 그 전에 중요한 톡을 많이하고 했는데 흩흑 :( 그 카톡 테마도 사라지고 1:1 체팅방(?)도 사라지고 다 사라졐ㅅ어요 힝 다시 카톡 내용이라도 복구할 수 없나요 ... 너무 슬프고 꿈 같애요 ㅠㅠ 흙흑
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=7&amp;dirId=710&amp;docId=421207064&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '710_421207064', '6', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,710,421207064,'answerCntNew');">
				
				<span class="tit_txt">손다쳤는데 병원가야할까여</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=710" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '710', '6', event);">의료기관, 의료인</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('710,421207064')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '710_421207064', '6', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=7&amp;dirId=710&amp;docId=421207064" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '710_421207064', '6', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,710,421207064,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						스덴으로 된 사다리에 날이있었는데 내려가다 발을 헛디뎌 손을다쳤는데 병원을가야할까요?? 우선 소독하고 멸균반창고 붙였습니다
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=7&amp;dirId=70602&amp;docId=421207063&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '70602_421207063', '7', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70602,421207063,'answerCntNew');">
				
				<span class="tit_txt">안전관련 자료조사</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=70602" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '70602', '7', event);">술, 담배</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('70602,421207063')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '70602_421207063', '7', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=7&amp;dirId=70602&amp;docId=421207063" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '70602_421207063', '7', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70602,421207063,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						내일까지 안전관련 자료조사를 해오라는데.. 오늘 체험학습으로 가서 완강기 화재 지진 배안에서의 태풍을 체험했어요 이걸로 안전관련 자료조사해오라는데 사진도 같이해주심 정말정말 감사하겠습니다
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=11080405&amp;docId=421207061&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '11080405_421207061', '8', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11080405,421207061,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>40</span>
				
				<span class="tit_txt">일본 네일샵에서 ㅠㅠ</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=11080405" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '11080405', '8', event);">생활일본어, 회화</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('11080405,421207061')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '11080405_421207061', '8', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=11080405&amp;docId=421207061" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '11080405_421207061', '8', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11080405,421207061,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						제가 일본 온지 얼마 안됐는데 네일샵에 네일을 받으러 갔어요. 근데 한국 네일샵에서는 파츠붙이구 마무리할때 젤로 스톤을 다 덮으면 그 스톤 광? 이 사라지니까 사이사이에만 채우잖아요. 근데 일본은 그냥 다 덮더라구요 ㅜㅜㅜㅜㅜ 이거 다 덮지말고 광 사라지니까 스톤 사이사이만 채워달라고 말하고 싶은데 뭐라고 해야하나요 ㅠㅠ
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=10&amp;dirId=100501&amp;docId=421207062&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '100501_421207062', '9', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,100501,421207062,'answerCntNew');">
				
				<span class="tit_txt">자전거 체인</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=100501" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '100501', '9', event);">자전거</a></span>
			<span class="info">방금</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('100501,421207062')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '100501_421207062', '9', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=10&amp;dirId=100501&amp;docId=421207062" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '100501_421207062', '9', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,100501,421207062,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						비 올 때 놀러갔었는데 밖에 실수로 그냥 두고 갔거든요ㅠㅠ 자전거 체인이 이래 되버렸는데 곧 고장나나요? 교체하는데 얼마 할까요ㅠㅠ
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=1131&amp;docId=421207059&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '1131_421207059', '10', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1131,421207059,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>100</span>
				
				<span class="tit_txt">연소공학 문제</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=1131" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '1131', '10', event);">공학</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('1131,421207059')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '1131_421207059', '10', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=1131&amp;docId=421207059" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '1131_421207059', '10', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1131,421207059,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						풀어주세요 ㅠㅠㅠㅠ 반응차수 총괄차수 속도
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=1&amp;dirId=1060104&amp;docId=421207058&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '1060104_421207058', '11', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1060104,421207058,'answerCntNew');">
				
				<span class="tit_txt">네이버 시리즈 3300원 으로 볼만한거 추천해주세요~</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=1060104" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '1060104', '11', event);">기타 네이버 서비스</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('1060104,421207058')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '1060104_421207058', '11', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=1&amp;dirId=1060104&amp;docId=421207058" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '1060104_421207058', '11', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1060104,421207058,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						네이버 시리즈 3300원 으로 볼만한거 추천해주세요~
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=7&amp;dirId=70701&amp;docId=421207057&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '70701_421207057', '12', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70701,421207057,'answerCntNew');">
				
				<span class="tit_txt">벤치프레스중량</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=70701" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '70701', '12', event);">헬스, 웨이트트레...</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('70701,421207057')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '70701_421207057', '12', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=7&amp;dirId=70701&amp;docId=421207057" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '70701_421207057', '12', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70701,421207057,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						벤치프레스 100키로와 150키로는 좀 다른중량인가요?
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=1117&amp;docId=421207055&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '1117_421207055', '13', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1117,421207055,'answerCntNew');">
				
				<span class="tit_txt">고2 지구과학</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=1117" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '1117', '13', event);">지구과학</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('1117,421207055')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '1117_421207055', '13', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=1117&amp;docId=421207055" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '1117_421207055', '13', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1117,421207055,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						이게 어딜봐서 남고북저형이죵???
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=1&amp;dirId=1070201&amp;docId=421207054&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '1070201_421207054', '14', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1070201,421207054,'answerCntNew');">
				
				<span class="tit_txt">Sm 981n 이 자급제인가요?</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=1070201" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '1070201', '14', event);">휴대전화서비스</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('1070201,421207054')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '1070201_421207054', '14', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=1&amp;dirId=1070201&amp;docId=421207054" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '1070201_421207054', '14', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1070201,421207054,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						서비스 공급자버전에는 LUC 도 있고 KOO도 있는데 유플용인지? 자급제인지 궁금합니다.
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=110401&amp;docId=421207052&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '110401_421207052', '15', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110401,421207052,'answerCntNew');">
				
				<span class="tit_txt">문제 풀어주세용</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=110401" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '110401', '15', event);">국어, 한문</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('110401,421207052')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '110401_421207052', '15', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=110401&amp;docId=421207052" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '110401_421207052', '15', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110401,421207052,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						문제 풀어주세용
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=6&amp;dirId=6030205&amp;docId=421207050&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '6030205_421207050', '16', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,6030205,421207050,'answerCntNew');">
				
				<span class="tit_txt">군생활 중 공익</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=6030205" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '6030205', '16', event);">대체복무</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('6030205,421207050')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '6030205_421207050', '16', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=6&amp;dirId=6030205&amp;docId=421207050" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '6030205_421207050', '16', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,6030205,421207050,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						지금 군생활 딱 1년차 입니다. 허리에 문제가 생겨 현부심 받고 공익으로 전환 될 것 같은데 혹시 군생활 얼마나 인정해주고 공익근무를 몇 개월 더 서야하는지 알고싶습니다.
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=110307&amp;docId=421207049&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '110307_421207049', '17', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110307,421207049,'answerCntNew');">
				
				<span class="tit_txt">중학교 태권도부들어갈때 몇품인지는 상...</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=110307" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '110307', '17', event);">학교생활</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('110307,421207049')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '110307_421207049', '17', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=110307&amp;docId=421207049" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '110307_421207049', '17', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110307,421207049,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						중학교 태권도부들어갈때 몇품인지는 상관없나요? 그리고 입학할때부터 태권도부안들어가도 나중에 들어갈수있는거죠?
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=110306&amp;docId=421207048&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '110306_421207048', '18', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110306,421207048,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>170</span>
				
				<span class="tit_txt">영어 문제 풀어주세요 내공 170</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=110306" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '110306', '18', event);">영어</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('110306,421207048')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '110306_421207048', '18', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=110306&amp;docId=421207048" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '110306_421207048', '18', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,110306,421207048,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_254/1654594032473az8Gr_JPEG/1654594032442.jpg?type=f200_200" width="70" height="70" alt="영어 문제 풀어주세요 내공 170"></span>
					

					<p class="preview_txt">
						10분내외로 정확하게 풀어주세요
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=11&amp;dirId=11080405&amp;docId=421207047&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '11080405_421207047', '19', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11080405,421207047,'answerCntNew');">
				
				<span class="tit_txt">일본어로 안맞다를 뭐라고 하나요?</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=11080405" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '11080405', '19', event);">생활일본어, 회화</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('11080405,421207047')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '11080405_421207047', '19', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=11080405&amp;docId=421207047" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '11080405_421207047', '19', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11080405,421207047,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						나는 공부랑 안맞는거같아 게임이랑 안맞는거같아 이런말을 일본어로 뭐라고 하나요?
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag last">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=8&amp;dirId=814&amp;docId=421207046&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '814_421207046', '20', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,814,421207046,'answerCntNew');">
				
				<span class="tit_txt">일안하거나  못하는 사람</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=814" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '814', '20', event);">기타</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('814,421207046')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '814_421207046', '20', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=8&amp;dirId=814&amp;docId=421207046" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '814_421207046', '20', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,814,421207046,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						일안하거나 못하는 사람 기쁘고 행복하게 살수있게 도와주는게 있나요?? 있다면 어떻게 도와주나요??
					</p>
				</div>
			</div>
		
	</div></div>
		
		
		<div class="answer_list _dir_content_noanswer_noresult" style="display:none;">
			<div class="no_data">
				<p>선택하신 분야에 등록된 답변을 기다리는 질문이 없습니다.</p>
			</div>
		</div>
		
		
		<div id="pagingArea0" class="paging_area paging_control_type1 _pagingArea" style="display: block;">
		
		
			<a href="#" class="number _page _param('1') on" title="선택됨" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '1', event);">1</a>
		
			<a href="#" class="number _page _param('2')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '2', event);">2</a>
		
			<a href="#" class="number _page _param('3')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '3', event);">3</a>
		
			<a href="#" class="number _page _param('4')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '4', event);">4</a>
		
			<a href="#" class="number _page _param('5')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '5', event);">5</a>
		
			<a href="#" class="number _page _param('6')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '6', event);">6</a>
		
			<a href="#" class="number _page _param('7')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '7', event);">7</a>
		
			<a href="#" class="number _page _param('8')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '8', event);">8</a>
		
			<a href="#" class="number _page _param('9')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '9', event);">9</a>
		
			<a href="#" class="number _page _param('10')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '10', event);">10</a>
		
		
			<a href="#" class="next _nextPage _param('11')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.next', '', '11', event);">다음</a>
		
	</div>
	</div>
	
	
	<div class="content_area _dir_content_error" style="display:none;">
		<div>
			<div class="_dir_content_noanswer_noresult view_all_question view_all_question2">
				<div class="cont">
					<p class="tit"><strong>요청하신 정보를 일시적으로 불러올 수 없습니다. <br>잠시 후 다시 시도해 주세요.</strong></p>
				</div>
			</div>
		</div>
	</div>
</div>

			</div>
			<div class="tc-panel">
				












<h4 class="blind">답변을 기다리는 관심질문</h4>
<div class="content_wrap _noanswer_wrap">
	<div class="directory_area _int_menu">
	
		<div class="set_box multi">
			<a href="#" class="btn_setting _interest_setting_btn" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.setmy', '', '', event);" target="_blank"><span><i class="sp_common ico_set"></i>관심설정</span></a>
			<div class="help_wrap">
				<a href="#" class="ico_help _interest_setting_help_btn"><img src="https://ssl.pstatic.net/static/kin/09renewal/new_master/ico_help_v2.gif" width="12" height="12" alt="도움말">
				</a>
				<div class="tooltip _interest_setting_help_layer" style="display:none;">
					<span class="sp_common arrow"></span>
					<div class="inner">
						<p class="tit">관심설정을 하면?</p>
						<p>내가 설정한 관심분야/지역/키워드에 답변을 기다리는 질문이 등록되면 알림을 받을 수 있습니다.</p>
						<p>최초 관심설정 시 <strong class="point">내공 30점</strong>도 드려요! 지금 바로 관심설정 해보세요.</p>
						<a href="#" class="sp_common btn_close _interest_setting_help_layer_close">닫기</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="directory_box _list_area _interest_list_area">
			<h5>관심분야</h5>
			<ul class="directory_list _interest_list">
				
					
						
						
							<li dirid="0" class="on"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.myd', '0', '1', event);">전체<span class="blind _selected">질문 목록 선택됨</span></a></li>
						
					
						
						
							<li dirid="2"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.myd', '2', '2', event);">게임</a></li>
						
					
						
						
							<li dirid="10010202"><a href="#" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.myd', '10010202', '3', event);">프로야구</a></li>
						
					
				
			</ul>
			<ul class="directory_list _no_interest_list" style="display:none;">
				<li>관심분야가 없습니다.</li>
			</ul>
		</div>
		
		<div class="directory_box _list_area _local_list_area">
			<h5>관심지역</h5>
			<ul class="directory_list _local_list" style="display:none;">
				
			</ul>
			<ul class="directory_list _no_local_list">
				<li>관심지역이 없습니다.</li>
			</ul>
		</div>
		
		<div class="directory_box _list_area _keyword_list_area">
			<h5>관심키워드</h5>
			<ul class="directory_list _keyword_list" style="display:none;">
				
			</ul>
			<ul class="directory_list _no_keyword_list">
				<li>관심키워드가 없습니다.</li>
			</ul>
		</div>
	</div>
	<span class="border"></span>
	<div class="content_area _dir_content" style="display: block;">
		
		
		<div class="heading_area _dir_content_title" style="display: block;">
			
			<h5 class="tit ellipsis _heading_title">
				
			<a href="/myinfo/interest.naver" onclick="nhn.Kin.Utility.nClicks('ldl_lgd.dirn', '', '', event);"><strong>내 관심분야</strong> <span class="blind">의 답변을 기다리는 바로가기</span></a>
		
	</h5>
			
			
			<div class="set_recommend _tag_recommend" style="display:none;"></div>
			
			
			<div class="search_area _heading_search" onclick="nhn.Kin.Utility.nClicks('nql_lgd.search', '', '', event);" style="display:none">
				<input type="text" class="search_input _search_input" title="검색어 입력">
				<a href="#" class="ico_search sp_common _search_button">검색</a>
			</div>
			
			
			






<div class="_map_area map_area" style="display:none">
</div>

<script type="text/javascript">
	try {document.execCommand('BackgroundImageCache', false, true);} catch(e) {}
</script>
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static/maps/openapi_map/maps_openapi.css">


			<div class="sort_list_group _option">
				<div class="sort_list_group_left">
					
					<ul class="sort_tab _keyword_tag_tab" style="display:none">
						<li class="on _keyword_tab"><a href="#" class="_keyword_tab" onclick="nhn.Kin.Utility.nClicks('nql_lgd.iktext', '', '', event);">제목+본문</a></li>
						<li class="_tag_tab"><a href="#" class="_tag_tab" onclick="nhn.Kin.Utility.nClicks('nql_lgd.iktag', '', '', event);">태그</a></li>
					</ul>
					<div class="view_type_wrap">
						
						<ul class="view_type_list _view_type_list">
							<p class="blind">보기옵션 선택</p>
							<li class="_preview"><a href="#" role="button" aria-selected="false" aria-disabled="false" aria-controls="questionListTypePreview" class="type_preview _previewTypeBtn" onclick="nhn.Kin.Utility.nClicks('nql_lgd.preview', '', '', event);">미리보기형</a></li>
							<li class="_onlyTitle"><a href="#" role="button" aria-selected="true" aria-disabled="true" aria-controls="questionListTypeTitle" class="type_title _onlyTitleTypeBtn on" onclick="nhn.Kin.Utility.nClicks('nql_lgd.title', '', '', event);">제목형</a>
								<div class="tooltip _previewTypeTooltipLayer" style="display:none;">
									<span class="sp_common arrow"></span>
									<div class="inner">
										<p class="blind">안내</p>
										제목만 모아서 많은 질문을<br> 한 번에 볼 수 있어요!
										<a href="#" class="sp_common btn_close _previewTypeTooltipLayerClose">닫기</a>
									</div>
								</div>
							</li>
						</ul>

						
						<div class="select_area _countPerPageSelectBox">
							<a href="#" class="btn_select _selectedCountPerPageValue">20개 보기 <span class="ico_arrow sp_common"></span></a>
							<p class="blind">보기 개수 선택</p>
							<ul class="select_list _countPerPageListArea">
								<li class="_countPerPage _param('5')"><a href="#" class="_countPerPageValue _param('5')">5개 보기</a></li>
								<li class="_countPerPage _param('10')"><a href="#" class="_countPerPageValue _param('10')">10개 보기</a></li>
								<li class="_countPerPage _param('15')"><a href="#" class="_countPerPageValue _param('15')">15개 보기</a></li>
								<li class="_countPerPage _param('20') on"><a href="#" class="_countPerPageValue _param('20') default">20개 보기</a></li>
								<li class="_countPerPage _param('25')"><a href="#" class="_countPerPageValue _param('25')">25개 보기</a></li>
								<li class="_countPerPage _param('30')"><a href="#" class="_countPerPageValue _param('30')">30개 보기</a></li>
								<li class="_countPerPage _param('50')"><a href="#" class="_countPerPageValue _param('50')">50개 보기</a></li>
							</ul>
						</div>
					</div>
				</div>

				
				<div class="sort_list_group_right">
					<p class="blind">정렬 옵션 선택</p>
					<ul class="sort_list_module _sortOptionList">
						<li class="is_active _answer"><a href="#" role="button" aria-selected="false" class="_sort_option _param('answer')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.answer', '', '', event);"><i class="ico_sort _sort_option _param('answer')"></i>답변적은순</a></li>
						<li class="_firstFlag" style="display: list-item;"><a href="#" role="button" aria-selected="false" class="_sort_option _param('firstFlag')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.newask', '', '', event);"><i class="ico_sort _sort_option _param('firstFlag')"></i>첫질문</a></li>
						<li class="_recent"><a href="#" class="_sort_option _param('recent')" role="button" aria-selected="false" onclick="nhn.Kin.Utility.nClicks('nql_lgd.latest', '', '', event);"><i class="ico_sort _sort_option _param('recent')"></i>최신순</a></li>
						<li class="_betPoint"><a href="#" class="_sort_option _param('betPoint')" role="button" aria-selected="false" onclick="nhn.Kin.Utility.nClicks('nql_lgd.point', '', '', event);"><i class="ico_sort _sort_option _param('betPoint')"></i>내공높은순</a></li>
					</ul>
				</div>
			</div>
		</div>
		
		
		<div class="heading_area _dir_content_title_recommend" style="display:none">
			<h5 class="tit ellipsis"><strong>추천 관심분야</strong></h5>
			<span class="tit_desc">관심분야, 관심지역, 관심키워드를 설정하면 홈과 프로필에서 관심있는 분야의 질문을 바로 확인할 수 있습니다.<br>관심분야의 답변 활동을 통해 관심분야의 전문가로 활동해 보세요.</span>
		</div>
		
		
		
		<div class="answer_list _noanswer_list type_title" role="tabpanel" style="display: block;" id="questionListTypeTitle"><strong class="blind"><span>답변적은순</span>질문 리스트</strong><div class="answer_box _noanswerItem no_tag first">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=213&amp;docId=421207034&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '213_421207034', '1', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,213,421207034,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>100</span>
				
				<span class="tit_txt">로블록스 운테르게임만 하라고 하는 로블 5년차 신상 털었습니다</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=213" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '213', '1', event);">인디게임</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('213,421207034')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '213_421207034', '1', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=213&amp;docId=421207034" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '213_421207034', '1', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,213,421207034,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_121/1654593697296GNBLw_JPEG/%B3%EB%B9%AB%C7%F6_%C0%FC_%B4%EB%C5%EB%B7%C9_%BB%E7%BD%C7_%C0%CC%B0%C5_%BA%B8%BF%A9%C1%D6%B7%C1%B0%ED_%BE%EE%B1%D7%B7%CE%B2%F8%BE%FA%B4%D9...jpg?type=f200_200" width="70" height="70" alt="로블록스 운테르게임만 하라고 하는 로블 5년차 신상 털었습니다"></span>
					

					<p class="preview_txt">
						ㅤㅤㅤㅤㅤ
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=208&amp;docId=421207033&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '208_421207033', '2', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,208,421207033,'answerCntNew');">
				
				<span class="tit_txt">원신 데인슬레이프</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=208" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '208', '2', event);">모바일게임</a></span>
			<span class="info">1분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('208,421207033')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '208_421207033', '2', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=208&amp;docId=421207033" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '208_421207033', '2', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,208,421207033,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						제가 직접 찍은 스샷인데 데인슬레이프 왜케 존잘이죠 얘 나중에 나온다는 소문 들었는데 진짠가여?? ㅠㅠ 데인슬레이프 출시 확률 있나유.. 스토리 보면서 겁나 최애캐 됐는데.. 종려랑 목소리가 조금 비슷한 면도 있고.. ㅎ
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20411&amp;docId=421206973&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20411_421206973', '3', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20411,421206973,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>100</span>
				
				<span class="tit_txt">마인크래프트 모드 설치</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20411" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20411', '3', event);">마인크래프트</a></span>
			<span class="info">2분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20411,421206973')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20411_421206973', '3', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20411&amp;docId=421206973" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20411_421206973', '3', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20411,421206973,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_66/1654593767286W6irm_JPEG/1654593767246.jpeg?type=f200_200" width="70" height="70" alt="마인크래프트 모드 설치"></span>
					

					<p class="preview_txt">
						연결 프로그램을 혹시 알 수 있을까요..? 제가 밑에꺼는 포켓몬 모드를 다운 했는데 딱히 연결할 프로그램이 없어서 메모장으로 연결했는데 막 튤닯?/쐉쑑좨샗쁑묉천퐤뜂숸 막 이렇게 나오더라구요ㅠㅠ 동생 노트북은 그 자바 있죠? 그 모양 그대로 나오던데ㅠㅠ 저 아직 포지 같은 것도 설치 안 했어요. 마크만 다운한 게 끝이에요! 안되는 이유를 알 수 있을까용.? 내공 100 드려요!
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=2011305&amp;docId=421206948&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '2011305_421206948', '4', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,2011305,421206948,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>30</span>
				
				<span class="tit_txt">카드에서 몇만원부터</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=2011305" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '2011305', '4', event);">몬스터</a></span>
			<span class="info">2분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('2011305,421206948')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '2011305_421206948', '4', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=2011305&amp;docId=421206948" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '2011305_421206948', '4', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,2011305,421206948,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						카드에서 몇만원 부터 뺄수있나용??
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20413&amp;docId=421206927&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20413_421206927', '5', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20413,421206927,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>100</span>
				
				<span class="tit_txt">포켓몬고 메타몽...</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20413" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20413', '5', event);">포켓몬</a></span>
			<span class="info">2분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20413,421206927')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20413_421206927', '5', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20413&amp;docId=421206927" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20413_421206927', '5', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20413,421206927,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						포켓몬고 메타몽 사람들이 메타몽을 왜 잡고 싶어하나요?
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20409&amp;docId=421206871&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20409_421206871', '6', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20409,421206871,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>50</span>
				
				<span class="tit_txt">바카라 (현금) 하이브 SM 완벽 검증 놀겜 사이트 어디!?</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20409" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20409', '6', event);">킹오브파이터즈</a></span>
			<span class="info">3분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20409,421206871')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20409_421206871', '6', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20409&amp;docId=421206871" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20409_421206871', '6', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20409,421206871,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						근래에 알아보기론 제대로 믿음직한 업체를 알아보는것이 진정으로 쩔게 어려운거 같씁니다! 신속하게 환전이 되는 로얄 바카라 알고 있으신 사람이 있다면 크리스탈 눈부신 바카라 크리스탈 확겜에서 완벽하게 느낄수 있는 업체들을 말해주세요!
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20311&amp;docId=421206774&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20311_421206774', '7', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20311,421206774,'answerCntNew');">
				
				<span class="tit_txt">피파온라인4 Direc가 적용되지않았거나 연결이 잘 안됐다는데 어떻게해야하죠</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20311" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20311', '7', event);">아바(A.V.A 온라인...</a></span>
			<span class="info">4분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20311,421206774')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20311_421206774', '7', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20311&amp;docId=421206774" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20311_421206774', '7', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20311,421206774,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						쓰고있는건 노트북이고요 성능은 전혀 안딸립니다 성능검사 비교도 해봤는데 다 권상사양기준 이상이구요 DirectX는 12입니다 얼마전까지 잘 하다가 어느순간 이렇게 뜨는데 어떻게하면 고칠수있을까요
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=2010105&amp;docId=421206736&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '2010105_421206736', '8', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,2010105,421206736,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>70</span>
				
				<span class="tit_txt">중명전 분류와 문화제 구분, 소재지...</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=2010105" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '2010105', '8', event);">지역</a></span>
			<span class="info">5분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('2010105,421206736')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '2010105_421206736', '8', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=2010105&amp;docId=421206736" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '2010105_421206736', '8', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,2010105,421206736,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						중명전 분류와 문화제 구분, 소재지 알려주세요.. 중명전에 대한 내용도 적어주세요 (너무 길게는 말고 적당히..)
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20132&amp;docId=421206664&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20132_421206664', '9', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20132,421206664,'answerCntNew');">
				
				<span class="tit_txt">롤체 기계와 장치 패스</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20132" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20132', '9', event);">리그오브레전드</a></span>
			<span class="info">6분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20132,421206664')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20132_421206664', '9', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20132&amp;docId=421206664" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20132_421206664', '9', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20132,421206664,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						한 판이 끝났을 때 기준으로 일반과 더블업은 100포인트, 초고속은 50포인트를 얻는 걸로 아는데 혹시 랭겜은 포인트가 더 오를까요?
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20902&amp;docId=421206618&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20902_421206618', '10', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20902,421206618,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>100</span>
				
				<span class="tit_txt">닌텐도 근황</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20902" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20902', '10', event);">닌텐도Wii</a></span>
			<span class="info">6분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20902,421206618')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20902_421206618', '10', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20902&amp;docId=421206618" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20902_421206618', '10', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20902,421206618,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						어렸을때 정말 추억이었는데 포켓몬이랑 요괴워치... 요즘도 닌텐도 파나요? 아니면 이제 더이상닌텐도 없나요? 그리고 포켓몬스터도 아직도 하고 요괴워치도 하나요? 내공이 별로 없어서...100만 걸어요..
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=210&amp;docId=421206566&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '210_421206566', '11', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,210,421206566,'answerCntNew');">
				
				<span class="tit_txt">프세카 하츠네 미쿠</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=210" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '210', '11', event);">게임리그, 게이머</a></span>
			<span class="info">7분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('210,421206566')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '210_421206566', '11', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=210&amp;docId=421206566" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '210_421206566', '11', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,210,421206566,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						4성 고르는 티켓 마음에 드는 캐릭 없는데 시즌 비뀌거나 시간지나면 사라지나요?
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20313&amp;docId=421206496&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20313_421206496', '12', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20313,421206496,'answerCntNew');">
				
				<span class="tit_txt">애플워치 6 배터리 소모 문제</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20313" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20313', '12', event);">오버워치</a></span>
			<span class="info">8분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20313,421206496')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20313_421206496', '12', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20313&amp;docId=421206496" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20313_421206496', '12', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20313,421206496,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						쿠팡에서 시킨거 도착하자마자 방전 상태에서 완충시킨 다음에 오전8시부터 오후5시까지 착용하고 돌아다녔는데요 배터리가 55%까지 닳았아요 너무 빨리 닳아버리는거 같은데 문제 있는건가요
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=211&amp;docId=421206448&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '211_421206448', '13', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,211,421206448,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>100</span>
				
				<span class="tit_txt">게임 닉네임? 이거 어떻게 바꾸나요</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=211" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '211', '13', event);">게임사, 게임사이...</a></span>
			<span class="info">9분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('211,421206448')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '211_421206448', '13', event);">나도궁금해요 <em class="_metooWonderCount">1</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=211&amp;docId=421206448" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '211_421206448', '13', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,211,421206448,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_191/1654593553110QO8c0_JPEG/1654593553102.jpeg?type=f200_200" width="70" height="70" alt="게임 닉네임? 이거 어떻게 바꾸나요"></span>
					

					<p class="preview_txt">
						좀 어릴때 이상하게 설정했는데 바꾸고싶어서요... 어디로 들어가야하나요? 이 게임 말고도 다른 게임할때도 저런 닉네임이 뜨니깐 거슬러요ㅠ 내공 겁니다ㅔ
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=211&amp;docId=421206420&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '211_421206420', '14', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,211,421206420,'answerCntNew');">
				
				<span class="tit_txt">아라타키 이토 체형</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
								
					<span class="ico_nsfu sp_common">19세 이상 열람 가능</span>
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=211" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '211', '14', event);">게임사, 게임사이...</a></span>
			<span class="info">9분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('211,421206420')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '211_421206420', '14', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=211&amp;docId=421206420" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '211_421206420', '14', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,211,421206420,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_256/16545934880737TH7f_JPEG/1654593488029.jpg?type=f200_200" width="70" height="70" alt="아라타키 이토 체형"></span>
					

					<p class="preview_txt">
						만약 아라타키 이토가 원피스에 나오는 카이도같이 우락부락한 근육돼지 체형이였다면 유저들의 평가가 어떨까요
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=203&amp;docId=421206350&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '203_421206350', '15', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,203,421206350,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>50</span>
				
				<span class="tit_txt">발로란트 청약철회</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=203" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '203', '15', event);">FPS, 슈팅게임</a></span>
			<span class="info">10분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('203,421206350')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '203_421206350', '15', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=203&amp;docId=421206350" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '203_421206350', '15', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,203,421206350,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						친구가 오늘 말해줬는데 내일부터 청약철회 제한 생긴다는데 사실인가요? 산거 장착하고 일반전 돌리면 청약철회 못해요?게임 안돌리고 훈련장에서만 쓰면 철약철회 되겠죠..?제가 오늘 소버린 고스트를 살껀데 내일 게임 돌리면 청약철회 못해요?
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=10&amp;dirId=1001020205&amp;docId=421206348&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '1001020205_421206348', '16', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,1001020205,421206348,'answerCntNew');">
				
				<span class="tit_txt">롯데월드 키오스크 / 매표소 오픈시간</span>
				
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=1001020205" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '1001020205', '16', event);">롯데자이언츠</a></span>
			<span class="info">10분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('1001020205,421206348')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '1001020205_421206348', '16', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=10&amp;dirId=1001020205&amp;docId=421206348" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '1001020205_421206348', '16', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,1001020205,421206348,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						롯데월드 표를 가서 살려고 하는데요 1. 매표소는 몇시쯤 부터 하나요? 2. 키오스크는 몇시쯤 부터 가능한가요? 3. 키오스크/매표소 에 사람 많을까요? 언제까지 가야 좋은까요? 가능하시다면 3가지 질문 모두 답변 부탁드려요!
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20705&amp;docId=421206292&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20705_421206292', '17', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20705,421206292,'answerCntNew');">
				
					<span class="power_grade"><span class="blind">내공</span>200</span>
				
				<span class="tit_txt">브릿지 게임 점수</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20705" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20705', '17', event);">카드게임</a></span>
			<span class="info">11분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20705,421206292')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20705_421206292', '17', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20705&amp;docId=421206292" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20705_421206292', '17', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20705,421206292,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_125/1654593145819X981g_JPEG/1654593145759.jpg?type=f200_200" width="70" height="70" alt="브릿지 게임 점수"></span>
					

					<p class="preview_txt">
						브릿지 게임을 어제 막 유튜브로 익혔습니다. 그런데 점수 내는 방식은 글로만 봐선 헷갈리더라고요. 사진은 모바일 브릿지 게임인데 table1이 저희 팀 아닌가요? 왜 저희가 졌다고 나올까요? 트릭도 훨씬 많이 이겼는데 제 점수가 저게 맞나 싶어서 여쭤봅니다. 과정도 첨부합니다.
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap ">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=204&amp;docId=421206138&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '204_421206138', '18', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,204,421206138,'answerCntNew');">
				
				<span class="tit_txt">원신 일곱신상</span>
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=204" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '204', '18', event);">액션, 어드벤처 게...</a></span>
			<span class="info">13분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('204,421206138')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '204_421206138', '18', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=204&amp;docId=421206138" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '204_421206138', '18', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,204,421206138,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box">
				<div class="inner">
					

					<p class="preview_txt">
						그 창풍고지대? 그쪽에서 왼쪽위에 일곱신상 오픈하러 갈라그랬는데요.. 이상한 보호막??같은게 있는데 그건 도대체 어떻게 깨야되는건지.. 그리고 그 설산? 거기 일곱신상도 겨우겨우 갔는데 얼음으로 못깨게 막아져있더라고요..ㅠㅠㅠ 얼음은 또 어떻게 깨야되나요 불원소 캐 써도 금방 다시 얼던데..
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=10&amp;dirId=1001020206&amp;docId=421206053&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '1001020206_421206053', '19', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,1001020206,421206053,'answerCntNew');">
				
				<span class="tit_txt">삼성라이온즈 오버핸드 선수</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=1001020206" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '1001020206', '19', event);">삼성라이온즈</a></span>
			<span class="info">14분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('1001020206,421206053')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '1001020206_421206053', '19', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=10&amp;dirId=1001020206&amp;docId=421206053" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '1001020206_421206053', '19', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,1001020206,421206053,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_126/1654593179301Ol4BD_PNG/1654593179142.png?type=f200_200" width="70" height="70" alt="삼성라이온즈 오버핸드 선수"></span>
					

					<p class="preview_txt">
						제가 9M프로야구22라는 야구 폰게임을 하는데 대부분이 쓰리쿼터라서 좀 질려가지고 오버핸드 선수도 땡기더라고용 연도 상관없이 역대 삼성라이온즈 선발 선수중에 오버핸드 선수 좀 알려주세용
					</p>
				</div>
			</div>
		
	</div><div class="answer_box _noanswerItem no_tag last">
		<div class="tit_wrap icon">
			<a href="/qna/detail.naver?d1id=2&amp;dirId=20303&amp;docId=421206029&amp;mode=answer" class="_first_focusable_link" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qtit', '20303_421206029', '20', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20303,421206029,'answerCntNew');">
				
				<span class="tit_txt">도움요청!!!!</span>
				
				
					<span class="ico_picture sp_common">사진첨부</span>
				
				
				

				
			</a>
		</div>

		

		<div class="update_info">
			<span class="num_answer">답변 <em>0</em></span>
			<span class="info"><a href="/qna/list.naver?dirId=20303" class="_last_focusable_link" target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.qdir', '20303', '20', event);">메달오브아너</a></span>
			<span class="info">14분 전</span>
		</div>

		<div class="lnk_wrap">
			
				<a href="#" class="lnk_wonder _metooWonderBtn _param('20303,421206029')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.metoo', '20303_421206029', '20', event);">나도궁금해요 <em class="_metooWonderCount">0</em></a><span class="dv"></span>
			
			<a href="/qna/answer.nhn?serviceId=kin&amp;d1id=2&amp;dirId=20303&amp;docId=421206029" rel="KIN" class="lnk_answer " target="_blank" onclick="nhn.Kin.Utility.nClicks('nql_lgd.quicka', '20303_421206029', '20', event);nhn.Kin.Utility.saveListInfo('LIST_INTEREST_DIRECTORY_HOME',1,20303,421206029,'answerCntNew');">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>

		
			<div class="preview_box thumb_box">
				<div class="inner">
					
						<span class="preview_thumb"><img src="https://kin-phinf.pstatic.net/20220607_129/165459325776237SA2_JPEG/1654593257670.jpg?type=f200_200" width="70" height="70" alt="도움요청!!!!"></span>
					

					<p class="preview_txt">
						도와주세여 ㅜㅜ
					</p>
				</div>
			</div>
		
	</div></div>
		
		
		<div class="answer_list _dir_content_noanswer_noresult" style="display:none;">
			
			
			
				<div class="no_data">
					<p>선택하신 분야에 등록된 답변을 기다리는 질문이 없습니다.</p>
				</div>
			
		</div>
		
		
		<div id="pagingArea1" class="paging_area paging_control_type1 _pagingArea" style="display: block;">
		
		
			<a href="#" class="number _page _param('1') on" title="선택됨" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '1', event);">1</a>
		
			<a href="#" class="number _page _param('2')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '2', event);">2</a>
		
			<a href="#" class="number _page _param('3')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '3', event);">3</a>
		
			<a href="#" class="number _page _param('4')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '4', event);">4</a>
		
			<a href="#" class="number _page _param('5')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '5', event);">5</a>
		
			<a href="#" class="number _page _param('6')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '6', event);">6</a>
		
			<a href="#" class="number _page _param('7')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '7', event);">7</a>
		
			<a href="#" class="number _page _param('8')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '8', event);">8</a>
		
			<a href="#" class="number _page _param('9')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '9', event);">9</a>
		
			<a href="#" class="number _page _param('10')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.page', '', '10', event);">10</a>
		
		
			<a href="#" class="next _nextPage _param('11')" onclick="nhn.Kin.Utility.nClicks('nql_lgd.next', '', '11', event);">다음</a>
		
	</div>
	</div>
	
	
	<div class="content_area _dir_content_error" style="display:none;">		
		<div>
			<div class="_dir_content_noanswer_noresult view_all_question view_all_question2">
				<div class="cont">
					<p class="tit"><strong>요청하신 정보를 일시적으로 불러올 수 없습니다. <br>잠시 후 다시 시도해 주세요.</strong></p>
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
<%@ include file="footer.jsp"%>
</html>