<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지식IN</title>
<link href="/KG-naver/css/naver_main.css" type="text/css"
	rel="stylesheet">
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


													<li dirid="0" class="on"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '0', '1', event);">전체<span
															class="blind _selected">질문 목록 선택됨</span></a></li>

													<li dirid="11"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '11', '2', event);">교육,
															학문</a></li>

													<li dirid="1"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '1', '3', event);">컴퓨터통신</a></li>

													<li dirid="2"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '2', '4', event);">게임</a></li>

													<li dirid="3"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '3', '5', event);">엔터테인먼트,
															예술</a></li>

													<li dirid="8"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '8', '6', event);">생활</a></li>

													<li dirid="7"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '7', '7', event);">건강</a></li>

													<li dirid="6"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '6', '8', event);">사회,
															정치</a></li>

													<li dirid="4"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '4', '9', event);">경제</a></li>

													<li dirid="9"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '9', '10', event);">여행</a></li>

													<li dirid="10"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '10', '11', event);">스포츠,
															레저</a></li>

													<li dirid="5"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '5', '12', event);">쇼핑</a></li>

													<li dirid="13"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '13', '13', event);">쥬니버Q&amp;A</a></li>

													<li dirid="12"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '12', '14', event);">지역&amp;플레이스</a></li>

													<li dirid="20"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dir', '20', '15', event);">고민Q&amp;A</a></li>



												</ul>
											</div>
											<div class="directory_box _list_area _recommend_list_area">
												<h5>추천분야</h5>
												<ul class="directory_list _recommend_list">


													<li dirid="70404"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '70404', '1', event);">약
															효능, 성분</a></li>

													<li dirid="70402"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '70402', '2', event);">의약외품</a></li>

													<li dirid="70403"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '70403', '3', event);">영양제,
															건강보조식...</a></li>

													<li dirid="70401"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '70401', '4', event);">의약품</a></li>

													<li dirid="602060204"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '602060204', '5', event);">공갈,
															협박</a></li>

													<li dirid="602060201"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '602060201', '6', event);">살인</a></li>

													<li dirid="602060203"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '602060203', '7', event);">폭행</a></li>

													<li dirid="602060202"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '602060202', '8', event);">강도</a></li>

													<li dirid="61303"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '61303', '9', event);">사람과
															그룹</a></li>

													<li dirid="61302"><a href="#"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.rec', '61302', '10', event);">외국사회문화</a></li>


												</ul>
											</div>
										</div>
										<span class="border"></span>
										<div class="content_area _dir_content" style="display: block;">



											<div class="heading_area _dir_content_title"
												style="display: block;">

												<h5 class="tit ellipsis _heading_title">

													<a href="/qna/list.naver"
														onclick="nhn.Kin.Utility.nClicks('ldl_nlg.dirn', '0', '', event);"><strong>전체</strong>
														<span class="blind">의 답변을 기다리는 질문 바로가기</span></a>

												</h5>


												<a href="#" class="btn_line _ros _btn_add_interest"
													dirid="0"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.cdir', '0', '', event);"
													style="display: none"><span><i
														class="ico_plus sp_common"></i>관심분야 추가</span></a>


												<div class="search_area _heading_search"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.search', '', '', event);">
													<input type="text" class="search_input _search_input"
														title="검색어 입력"> <a href="#"
														class="ico_search sp_common _search_button">검색</a>
												</div>

												<div class="sort_list_group _option">
													<div class="sort_list_group_left">
														<div class="view_type_wrap">
															<p class="blind">보기옵션 선택</p>

															<ul class="view_type_list _view_type_list">
																<li class="_preview"><a href="#"
																	class="type_preview _previewTypeBtn"
																	onclick="nhn.Kin.Utility.nClicks('nql_nlg.preview', '', '', event);">미리보기형</a></li>
																<li class="_onlyTitle"><a href="#"
																	class="type_title _onlyTitleTypeBtn on"
																	onclick="nhn.Kin.Utility.nClicks('nql_nlg.title', '', '', event);">제목형</a>
																	<div class="tooltip _previewTypeTooltipLayer"
																		style="display: none">
																		<span class="sp_common arrow"></span>
																		<div class="inner">
																			<p class="blind">안내</p>
																			제목만 모아서 많은 질문을<br> 한 번에 볼 수 있어요! <a href="#"
																				class="sp_common btn_close _previewTypeTooltipLayerClose">닫기</a>
																		</div>
																	</div></li>
															</ul>


															<div class="select_area _countPerPageSelectBox">
																<a href="#"
																	class="btn_select _selectedCountPerPageValue">20개
																	보기 <span class="ico_arrow sp_common"></span>
																</a>
																<p class="blind">보기 개수 선택</p>
																<ul class="select_list _countPerPageListArea">
																	<li class="_countPerPage _param('5')"><a href="#"
																		class="_countPerPageValue _param('5')">5개 보기</a></li>
																	<li class="_countPerPage _param('10')"><a href="#"
																		class="_countPerPageValue _param('10')">10개 보기</a></li>
																	<li class="_countPerPage _param('15')"><a href="#"
																		class="_countPerPageValue _param('15')">15개 보기</a></li>
																	<li class="_countPerPage _param('20') on"><a
																		href="#"
																		class="_countPerPageValue _param('20') default">20개
																			보기</a></li>
																	<li class="_countPerPage _param('25')"><a href="#"
																		class="_countPerPageValue _param('25')">25개 보기</a></li>
																	<li class="_countPerPage _param('30')"><a href="#"
																		class="_countPerPageValue _param('30')">30개 보기</a></li>
																	<li class="_countPerPage _param('50')"><a href="#"
																		class="_countPerPageValue _param('50')">50개 보기</a></li>
																</ul>
															</div>
														</div>
													</div>


													<div class="sort_list_group_right">
														<p class="blind">정렬 옵션 선택</p>
														<ul class="sort_list_module _sortOptionList">
															<li class="is_active _answer"><a href="#"
																class="_sort_option _param('answer')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.answer', '', '', event);"><i
																	class="ico_sort _sort_option _param('answer')"></i>답변적은순</a></li>
															<li class="_firstFlag" style="display: list-item;"><a
																href="#" class="_sort_option _param('firstFlag')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.newask', '', '', event);"><i
																	class="ico_sort _sort_option _param('firstFlag')"></i>첫질문</a></li>
															<li class="_recent"><a href="#"
																class="_sort_option _param('recent')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.latest', '', '', event);"><i
																	class="ico_sort _sort_option _param('recent')"></i>최신순</a></li>
															<li class="_betPoint"><a href="#"
																class="_sort_option _param('betPoint')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.point', '', '', event);"><i
																	class="ico_sort _sort_option _param('betPoint')"></i>내공높은순</a></li>
														</ul>
													</div>
												</div>
											</div>


											<div class="answer_list _noanswer_list type_title"
												style="display: block;">
												<div class="answer_box _noanswerItem no_tag first">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=4&amp;dirId=4010505&amp;docId=421202617&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '4010505_421202617', '1', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,4010505,421202617,'answerCntNew');">

															<span class="tit_txt">대출관련입니당</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=4010505" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '4010505', '1', event);">자영업자신용대출</a></span>
														<span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('4010505,421202617')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '4010505_421202617', '1', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=4&amp;dirId=4010505&amp;docId=421202617"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '4010505_421202617', '1', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,4010505,421202617,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">햇살론 장기연치 900, 만기된 신용대출 400
																연체중입니다. 사업자는 나온지 한달됐구요 혹시 대출 가능한 곳 있을까요?</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=7&amp;dirId=7011403&amp;docId=421202616&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '7011403_421202616', '2', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,7011403,421202616,'answerCntNew');">

															<span class="power_grade"><span class="blind">내공</span>100</span>

															<span class="tit_txt">생리유도약을 9알 먹었는데 생리를 안해요</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=7011403" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '7011403', '2', event);">생리,
																피임</a></span> <span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('7011403,421202616')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '7011403_421202616', '2', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=7&amp;dirId=7011403&amp;docId=421202616"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '7011403_421202616', '2', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,7011403,421202616,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">아직 2주가 지난 건 아닌데 생리통은 있는데 생리를
																안합니다.. 사후피임약을 먹었는데 먹어서 그런걸까요? 약간의 분홍빛 피 조금 나온거 말고는 피가
																안나왔어요..</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem">
													<div class="tit_wrap icon">
														<a
															href="/qna/detail.naver?d1id=11&amp;dirId=1118&amp;docId=421202615&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '1118_421202615', '3', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1118,421202615,'answerCntNew');">

															<span class="tit_txt">좌우 미닫이 자동문...</span> <span
															class="ico_picture sp_common">사진첨부</span>





														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=1118"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '1118', '3', event);">전기,
																전자 공학</a></span> <span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('1118,421202615')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '1118_421202615', '3', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=1118&amp;docId=421202615"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '1118_421202615', '3', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1118,421202615,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">좌우 미닫이 자동문 상부 밸트 타입 아닌 상부 레일
																기어 와 원 기어 타입 하부 바닥 받침 레일 수리 용이 상부 원 기어 및 모터 해체 조립 용이 하부
																는 창문 미닫이 구조 있읍니까</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap icon">
														<a
															href="/qna/detail.naver?d1id=3&amp;dirId=3010201&amp;docId=421202613&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '3010201_421202613', '4', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,3010201,421202613,'answerCntNew');">

															<span class="tit_txt">앞머리내릴까요?</span> <span
															class="ico_picture sp_common">사진첨부</span>





														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=3010201" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '3010201', '4', event);">음악프로그램</a></span>
														<span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('3010201,421202613')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '3010201_421202613', '4', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=3&amp;dirId=3010201&amp;docId=421202613"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '3010201_421202613', '4', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,3010201,421202613,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">초5초5초5 질문 채택되면 삭제부탁드랴요! (얼굴 불펌
																막을려공)</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=11&amp;dirId=1111&amp;docId=421202614&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '1111_421202614', '5', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1111,421202614,'answerCntNew');">

															<span class="power_grade"><span class="blind">내공</span>100</span>

															<span class="tit_txt">남자들이좋아하는여자에게</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=1111"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '1111', '5', event);">철학,
																심리철학</a></span> <span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('1111,421202614')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '1111_421202614', '5', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=1111&amp;docId=421202614"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '1111_421202614', '5', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1111,421202614,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">방구뿡뿡뀌고 정액뿌리고할수있나요? 좋아하면 다참고
																결혼하고보여주는모습이죠</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=8&amp;dirId=814&amp;docId=421202612&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '814_421202612', '6', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,814,421202612,'answerCntNew');">

															<span class="tit_txt">님들은 ㅈㅇ할때</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=814"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '814', '6', event);">기타</a></span>
														<span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('814,421202612')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '814_421202612', '6', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=8&amp;dirId=814&amp;docId=421202612"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '814_421202612', '6', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,814,421202612,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">야1동,야설,야한만화같은걸 보면서 하나요 아니면 그냥
																야한상상만 하나요</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=11&amp;dirId=1111&amp;docId=421202610&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '1111_421202610', '7', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1111,421202610,'answerCntNew');">

															<span class="tit_txt">ISTP가 전번따간거 의미부여 가능?</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=1111"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '1111', '7', event);">철학,
																심리철학</a></span> <span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('1111,421202610')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '1111_421202610', '7', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=1111&amp;docId=421202610"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '1111_421202610', '7', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1111,421202610,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">안녕하세요 고1인데요 작년에 같은 학교 같은 반이였던
																남사친이랑 다른 애들이랑 요즘들어 갑자기 친해져서 같이 놀기도 그룹콜도 하고 그랬는데 남사친이
																스토리에 전번 구한다는 질문스토리? 그걸 올렸는데 전 그 스토리를 넘겼거든요. 그래서 그런건지는
																모르겠는데 남사친이 애들 다 있는 단디엠에서 저한테 전번을 달라고 말해서 일단 줬는데 이거
																의미부여해도 될까요? ISTP가 표현 잘 안한다길래 궁금해서 올려봐요 제가 어휘력이 딸려서 이해
																안될수도 있어요^^</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=11&amp;dirId=11080304&amp;docId=421202608&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '11080304_421202608', '8', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11080304,421202608,'answerCntNew');">

															<span class="tit_txt">Language reactor</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=11080304" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '11080304', '8', event);">영어
																독해, 읽기</a></span> <span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('11080304,421202608')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '11080304_421202608', '8', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=11080304&amp;docId=421202608"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '11080304_421202608', '8', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11080304,421202608,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">안녕하세요 Language reactor을 설치했는데
																유튜브는 설정이 뜨는데 넷플릭스는 설정이 안떠요 혹시 아시는분 방법 알려주시면 감사하겠습니다</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=1&amp;dirId=10201&amp;docId=421202609&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '10201_421202609', '9', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,10201,421202609,'answerCntNew');">

															<span class="tit_txt">크롬 즐겨찾기 질문</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=10201"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '10201', '9', event);">웹브라우저</a></span>
														<span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('10201,421202609')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '10201_421202609', '9', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=1&amp;dirId=10201&amp;docId=421202609"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '10201_421202609', '9', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,10201,421202609,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">랩탑을 한대 새로 구입했습니다. 예전에 쓰던 pc
																크롬에 즐겨찾기에 저장된 사이트들을 불러 올려면 어떻게 해야 하는지 알려주세요.</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=4&amp;dirId=4010502&amp;docId=421202607&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '4010502_421202607', '10', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,4010502,421202607,'answerCntNew');">

															<span class="tit_txt">대출관련 문의</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=4010502" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '4010502', '10', event);">금융상품담보대출</a></span>
														<span class="info">방금</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('4010502,421202607')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '4010502_421202607', '10', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=4&amp;dirId=4010502&amp;docId=421202607"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '4010502_421202607', '10', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,4010502,421202607,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">현재 외제차 리스중인데요 1억안되는거같은데 외제차
																리스중일땐 sh 나 lh 가망없나요? 혹시 집담보대출시 대출에 지장이 잇을까요?</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=6&amp;dirId=61303&amp;docId=421202605&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '61303_421202605', '11', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,61303,421202605,'answerCntNew');">

															<span class="power_grade"><span class="blind">내공</span>50</span>

															<span class="tit_txt">길거리에 예쁜 젊은 여자나, 예쁜 유...</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=61303"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '61303', '11', event);">사람과
																그룹</a></span> <span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('61303,421202605')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '61303_421202605', '11', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=6&amp;dirId=61303&amp;docId=421202605"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '61303_421202605', '11', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,61303,421202605,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">길거리에 예쁜 젊은 여자나, 예쁜 유부녀를 보고 제가
																집에서 너무 예뻐서 생각이 나길래 자위를 했거든요. 제가 길거리에서 본 예쁜 젊은 여자, 예쁜
																유부녀를 성추행, 성폭행 한건가요?</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=10&amp;dirId=1001020201&amp;docId=421202602&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '1001020201_421202602', '12', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1001020201,421202602,'answerCntNew');">

															<span class="tit_txt">2022 프로야구 경기중리본</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=1001020201" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '1001020201', '12', event);">국내프로야구</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('1001020201,421202602')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '1001020201_421202602', '12', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=10&amp;dirId=1001020201&amp;docId=421202602"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '1001020201_421202602', '12', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1001020201,421202602,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">2022 프로야구 경기중리본</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=1&amp;dirId=102020101&amp;docId=421202604&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '102020101_421202604', '13', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,102020101,421202604,'answerCntNew');">

															<span class="tit_txt">엑셀 함수 질문</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=102020101" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '102020101', '13', event);">MS엑셀</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('102020101,421202604')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '102020101_421202604', '13', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=1&amp;dirId=102020101&amp;docId=421202604"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '102020101_421202604', '13', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,102020101,421202604,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">비율계산 관련해서 질문드립니다. 심리검사 1 심리검사
																2 심리검사 3 ..... A B C D E 비율 이런식으로 각 심리검사를 5사례에서 몇퍼센트 비율로
																시행했는지 알아보고 싶은데 이거에대한 계산식 알려주시면 감사하겠습니다</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem">
													<div class="tit_wrap icon">
														<a
															href="/qna/detail.naver?d1id=11&amp;dirId=11030301&amp;docId=421202603&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '11030301_421202603', '14', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11030301,421202603,'answerCntNew');">

															<span class="tit_txt">중1 문제가요</span> <span
															class="ico_picture sp_common">사진첨부</span>





														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=11030301" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '11030301', '14', event);">중1수학</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('11030301,421202603')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '11030301_421202603', '14', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=11030301&amp;docId=421202603"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '11030301_421202603', '14', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,11030301,421202603,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">중1 문제가요</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=13&amp;dirId=130307&amp;docId=421202601&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '130307_421202601', '15', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,130307,421202601,'answerCntNew');">

															<span class="power_grade"><span class="blind">내공</span>50</span>

															<span class="tit_txt">쿠킹덤 카드팩 2탄 망고5성</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=130307" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '130307', '15', event);">모바일게임</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('130307,421202601')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '130307_421202601', '15', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=13&amp;dirId=130307&amp;docId=421202601"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '130307_421202601', '15', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,130307,421202601,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">쿠킹덤 카드팩 2탄에도 망고맛 5성 나오나요? 망고맛
																뽑고싶은데 1탄에만 나오나해서 질문 올려요</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap icon">
														<a
															href="/qna/detail.naver?d1id=8&amp;dirId=811&amp;docId=421202598&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '811_421202598', '16', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,811,421202598,'answerCntNew');">

															<span class="power_grade"><span class="blind">내공</span>100</span>

															<span class="tit_txt">이거 타이어 교환해야되나요? 사진 첨부</span> <span
															class="ico_picture sp_common">사진첨부</span>





														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=811"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '811', '16', event);">자동차</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('811,421202598')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '811_421202598', '16', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=8&amp;dirId=811&amp;docId=421202598"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '811_421202598', '16', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,811,421202598,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">사이드쪽은 찢기면 빨리 바꿔야하는건 아는데 가운데쪽은
																처음 찢겨봐서요 많이 위험한가요? 바꾼지 8개월 됫는데ㅠㅠ 5천도 안탓는데...</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=7&amp;dirId=70701&amp;docId=421202597&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '70701_421202597', '17', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70701,421202597,'answerCntNew');">

															<span class="tit_txt">런닝머신 질문이요!</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=70701"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '70701', '17', event);">헬스,
																웨이트트레...</a></span> <span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('70701,421202597')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '70701_421202597', '17', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=7&amp;dirId=70701&amp;docId=421202597"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '70701_421202597', '17', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,70701,421202597,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">헬스장 런닝머신으로 10속도로 20km뛰면 얼마나
																걸리나요??</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap icon">
														<a
															href="/qna/detail.naver?d1id=11&amp;dirId=1113&amp;docId=421202596&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '1113_421202596', '18', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1113,421202596,'answerCntNew');">

															<span class="tit_txt">수학 문제</span> <span
															class="ico_picture sp_common">사진첨부</span>





														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a href="/qna/list.naver?dirId=1113"
															target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '1113', '18', event);">수학</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('1113,421202596')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '1113_421202596', '18', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=11&amp;dirId=1113&amp;docId=421202596"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '1113_421202596', '18', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,1113,421202596,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">어떻게 풀어야 하나요?ㅠㅠㅠㅠㅠ답만 알려주지 마시고 꼭
																풀는 방법도 부탁드릴게요</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag">
													<div class="tit_wrap ">
														<a
															href="/qna/detail.naver?d1id=4&amp;dirId=4020201&amp;docId=421202594&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '4020201_421202594', '19', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,4020201,421202594,'answerCntNew');">

															<span class="power_grade"><span class="blind">내공</span>100</span>

															<span class="tit_txt">신혼부부 전세집마련 관련 문의 드립니다. 내공100</span>






														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=4020201" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '4020201', '19', event);">전세</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('4020201,421202594')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '4020201_421202594', '19', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=4&amp;dirId=4020201&amp;docId=421202594"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '4020201_421202594', '19', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,4020201,421202594,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">제가 이번에 결혼을 하게되서 대출이나 이것저것을
																알아보고있는데 마땅한 대책이 없어 여기다 올립니다. 이번에 이직하면서 직장재직기간이 짧아서 지금
																4개월째 다니고 있고 4대보험 가입되어있습니다. 연봉 3000이고 1호선라인으로 수원이나 병점 화서
																쪽 방 알아보고 있습니다. 어떤 대출 상품이 가능할지 금액은 어느정도 나올지 궁금해서 올립니다. 제가
																LH신혼부부전세대출 신청해서 당첨되었는데 이건 집구하지 말라는 소리 같더라구요ㅜㅜ 집이 너무
																없어서.,.. 혹시 팁 있으신 분들은 답변해주시면 감사하겠습니다. 내공100겁...</p>
														</div>
													</div>

												</div>
												<div class="answer_box _noanswerItem no_tag last">
													<div class="tit_wrap icon">
														<a
															href="/qna/detail.naver?d1id=8&amp;dirId=8030104&amp;docId=421202592&amp;mode=answer"
															rel="KIN" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qtit', '8030104_421202592', '20', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,8030104,421202592,'answerCntNew');">

															<span class="tit_txt">맞나요???</span> <span
															class="ico_picture sp_common">사진첨부</span>





														</a>
													</div>



													<div class="update_info">
														<span class="num_answer">답변 <em>0</em></span> <span
															class="info"><a
															href="/qna/list.naver?dirId=8030104" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.qdir', '8030104', '20', event);">피부미백</a></span>
														<span class="info">1분 전</span>
													</div>

													<div class="lnk_wrap">

														<a href="#"
															class="lnk_wonder _metooWonderBtn _param('8030104,421202592')"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.metoo', '8030104_421202592', '20', event);">나도궁금해요
															<em class="_metooWonderCount">0</em>
														</a><span class="dv"></span> <a
															href="/qna/answer.nhn?serviceId=kin&amp;d1id=8&amp;dirId=8030104&amp;docId=421202592"
															rel="KIN" class="lnk_answer" target="_blank"
															onclick="nhn.Kin.Utility.nClicks('nql_nlg.quicka', '8030104_421202592', '20', event);nhn.Kin.Utility.saveListInfo('LIST_NOANSWER_HOME',1,8030104,421202592,'answerCntNew');">답변하기
															<span class="sp_common ico_arr"></span>
														</a>
													</div>


													<div class="preview_box">
														<div class="inner">


															<p class="preview_txt">맞나요???</p>
														</div>
													</div>

												</div>
											</div>


											<div class="answer_list _dir_content_noanswer_noresult"
												style="display: none;">
												<div class="no_data">
													<p>선택하신 분야에 등록된 답변을 기다리는 질문이 없습니다.</p>
												</div>
											</div>


											<div id="pagingArea0"
												class="paging_area paging_control_type1 _pagingArea"
												style="display: block;">


												<a href="#" class="number _page _param('1') on" title="선택됨"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '1', event);">1</a>

												<a href="#" class="number _page _param('2')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '2', event);">2</a>

												<a href="#" class="number _page _param('3')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '3', event);">3</a>

												<a href="#" class="number _page _param('4')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '4', event);">4</a>

												<a href="#" class="number _page _param('5')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '5', event);">5</a>

												<a href="#" class="number _page _param('6')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '6', event);">6</a>

												<a href="#" class="number _page _param('7')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '7', event);">7</a>

												<a href="#" class="number _page _param('8')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '8', event);">8</a>

												<a href="#" class="number _page _param('9')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '9', event);">9</a>

												<a href="#" class="number _page _param('10')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.page', '', '10', event);">10</a>


												<a href="#" class="next _nextPage _param('11')"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.next', '', '11', event);">다음</a>

											</div>
										</div>


										<div class="content_area _dir_content_error"
											style="display: none;">
											<div>
												<div
													class="_dir_content_noanswer_noresult view_all_question view_all_question2">
													<div class="cont"></div>
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
												<a href="#" class="btn_setting _interest_setting_btn"
													onclick="nhn.Kin.Utility.nClicks('ldl_lgd.setmy', '', '', event);"><span><i
														class="sp_common ico_set"></i>관심설정</span></a>
												<div class="help_wrap">
													<a href="#" class="ico_help _interest_setting_help_btn"><img
														src="https://ssl.pstatic.net/static/kin/09renewal/new_master/ico_help_v2.gif"
														width="12" height="12" alt="도움말"> </a>
													<div class="tooltip _interest_setting_help_layer"
														style="display: none">
														<span class="sp_common arrow"></span>
														<div class="inner">
															<p class="tit">관심설정을 하면?</p>
															<p>내가 설정한 관심분야/지역/키워드에 답변을 기다리는 질문이 등록되면 알림을 받을 수
																있습니다.</p>
															<p>
																최초 관심설정 시 <strong class="point">내공 30점</strong>도 드려요! 지금
																바로 관심설정 해보세요.
															</p>
															<a href="#"
																class="sp_common btn_close _interest_setting_help_layer_close">닫기</a>
														</div>
													</div>
												</div>
											</div>

											<div class="directory_box _list_area _interest_list_area">
												<h5>관심분야</h5>
												<ul class="directory_list _interest_list"
													style="display: none;">

												</ul>
												<ul class="directory_list _no_interest_list">
													<li>관심분야가 없습니다.</li>
												</ul>
											</div>

											<div class="directory_box _list_area _local_list_area">
												<h5>관심지역</h5>
												<ul class="directory_list _local_list"
													style="display: none;">

												</ul>
												<ul class="directory_list _no_local_list">
													<li>관심지역이 없습니다.</li>
												</ul>
											</div>

											<div class="directory_box _list_area _keyword_list_area">
												<h5>관심키워드</h5>
												<ul class="directory_list _keyword_list"
													style="display: none;">

												</ul>
												<ul class="directory_list _no_keyword_list">
													<li>관심키워드가 없습니다.</li>
												</ul>
											</div>
										</div>
										<span class="border"></span>
										<div class="content_area _dir_content" style="display: none;">


											<div class="heading_area _dir_content_title">

												<h5 class="tit ellipsis _heading_title">
													<a href="/myinfo/interest.naver"
														onclick="nhn.Kin.Utility.nClicks('nql_nlg.dirn', '', '', event);"><strong>내
															관심분야</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
												</h5>


												<div class="set_recommend _tag_recommend"
													style="display: none;"></div>


												<div class="search_area _heading_search"
													onclick="nhn.Kin.Utility.nClicks('nql_nlg.search', '', '', event);">
													<input type="text" class="search_input _search_input"
														title="검색어 입력"> <a href="#"
														class="ico_search sp_common _search_button">검색</a>
												</div>









												<div class="_map_area map_area" style="display: none">
												</div>

												<script type="text/javascript">
													try {
														document
																.execCommand(
																		'BackgroundImageCache',
																		false,
																		true);
													} catch (e) {
													}
												</script>
												<link rel="stylesheet" type="text/css"
													href="https://ssl.pstatic.net/static/maps/openapi_map/maps_openapi.css">


												<div class="sort_list_group _option">
													<div class="sort_list_group_left">

														<ul class="sort_tab _keyword_tag_tab"
															style="display: none">
															<li class="on _keyword_tab"><a href="#"
																class="_keyword_tab"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.iktext', '', '', event);">제목+본문</a></li>
															<li class="_tag_tab"><a href="#" class="_tag_tab"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.iktag', '', '', event);">태그</a></li>
														</ul>
														<div class="view_type_wrap">

															<ul class="view_type_list _view_type_list">
																<p class="blind">보기옵션 선택</p>
																<li class="_preview"><a href="#"
																	class="type_preview _previewTypeBtn"
																	onclick="nhn.Kin.Utility.nClicks('nql_nlg.preview', '', '', event);">미리보기형</a></li>
																<li class="_onlyTitle"><a href="#"
																	class="type_title _onlyTitleTypeBtn on"
																	onclick="nhn.Kin.Utility.nClicks('nql_nlg.title', '', '', event);">제목형</a>
																	<div class="tooltip _previewTypeTooltipLayer"
																		style="display: none;">
																		<span class="sp_common arrow"></span>
																		<div class="inner">
																			<p class="blind">안내</p>
																			제목만 모아서 많은 질문을<br> 한 번에 볼 수 있어요! <a href="#"
																				class="sp_common btn_close _previewTypeTooltipLayerClose">닫기</a>
																		</div>
																	</div></li>
															</ul>


															<div class="select_area _countPerPageSelectBox">
																<a href="#"
																	class="btn_select _selectedCountPerPageValue">20개
																	보기 <span class="ico_arrow sp_common"></span>
																</a>
																<p class="blind">보기 개수 선택</p>
																<ul class="select_list _countPerPageListArea">
																	<li class="_countPerPage _param('5')"><a href="#"
																		class="_countPerPageValue _param('5')">5개 보기</a></li>
																	<li class="_countPerPage _param('10')"><a href="#"
																		class="_countPerPageValue _param('10')">10개 보기</a></li>
																	<li class="_countPerPage _param('15')"><a href="#"
																		class="_countPerPageValue _param('15')">15개 보기</a></li>
																	<li class="_countPerPage _param('20') on"><a
																		href="#"
																		class="_countPerPageValue _param('20') default">20개
																			보기</a></li>
																	<li class="_countPerPage _param('25')"><a href="#"
																		class="_countPerPageValue _param('25')">25개 보기</a></li>
																	<li class="_countPerPage _param('30')"><a href="#"
																		class="_countPerPageValue _param('30')">30개 보기</a></li>
																	<li class="_countPerPage _param('50')"><a href="#"
																		class="_countPerPageValue _param('50')">50개 보기</a></li>
																</ul>
															</div>
														</div>
													</div>


													<div class="sort_list_group_right">
														<p class="blind">정렬 옵션 선택</p>
														<ul class="sort_list_module _sortOptionList">
															<li class="is_active _answer"><a href="#"
																class="_sort_option _param('answer')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.answer', '', '', event);"><i
																	class="ico_sort _sort_option _param('answer')"></i>답변적은순</a></li>
															<li class="_firstFlag"><a href="#"
																class="_sort_option _param('firstFlag')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.newask', '', '', event);"><i
																	class="ico_sort _sort_option _param('firstFlag')"></i>첫질문</a></li>
															<li class="_recent"><a href="#"
																class="_sort_option _param('recent')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.latest', '', '', event);"><i
																	class="ico_sort _sort_option _param('recent')"></i>최신순</a></li>
															<li class="_betPoint"><a href="#"
																class="_sort_option _param('betPoint')"
																onclick="nhn.Kin.Utility.nClicks('nql_nlg.point', '', '', event);"><i
																	class="ico_sort _sort_option _param('betPoint')"></i>내공높은순</a></li>
														</ul>
													</div>
												</div>
											</div>


											<div class="heading_area _dir_content_title_recommend"
												style="display: none">
												<h5 class="tit ellipsis">
													<strong>추천 관심분야</strong>
												</h5>
												<span class="tit_desc">관심분야, 관심지역, 관심키워드를 설정하면 홈과
													프로필에서 관심있는 분야의 질문을 바로 확인할 수 있습니다.<br>관심분야의 답변 활동을 통해
													관심분야의 전문가로 활동해 보세요.
												</span>
											</div>


											<div class="answer_list _noanswer_list"
												style="display: none;"></div>


											<div class="answer_list _dir_content_noanswer_noresult"
												style="display: none;">



												<div class="no_data">
													<p>선택하신 분야에 등록된 답변을 기다리는 질문이 없습니다.</p>
												</div>

											</div>


											<div id="pagingArea1"
												class="paging_area paging_control_type1 _pagingArea"
												style="display: none;"></div>
										</div>


										<div class="content_area _dir_content_error"
											style="display: none;">
											<div>
												<div
													class="_dir_content_noanswer_noresult view_all_question view_all_question2">
													<div class="cont">
														<p class="tit">
															<strong>요청하신 정보를 일시적으로 불러올 수 없습니다. <br>잠시 후
																다시 시도해 주세요.
															</strong>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- {{{ -->

					<script id="titleAreaTpl" type="text/template">
	{if type == 'local'}
		<a href="/qna/list.naver?dirId={=dirId}" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.dirn', '{=dirId}', '', event);"><strong>{=title}</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
	{elseif type == 'keyword' || type == 'tag'}
		{if dirId == null || title == '내 관심키워드'}
			<a href="/myinfo/interestKeyword.naver?query=" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.dirn', '', '', event);"><strong>내 관심키워드</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
		{else}
			<a href="/search/noAnswerList.naver?query={=title}" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.dirn', '', '', event);"><strong>{=encodedTitle}</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
		{/if}
	{elseif type == 'interest'}
		{if dirId == null || dirId == 0 || title == '내 관심분야'}		
			<a href="/myinfo/interest.naver" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.dirn', '{=dirId}', '', event);"><strong>내 관심분야</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
		{else}
			<a href="/qna/list.naver?dirId={=dirId}" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.dirn', '{=dirId}', '', event);"><strong>{=title}</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
		{/if}
	{else}
		{if dirId == null || dirId == 0 || title == '전체'}
			<a href="/qna/list.naver" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.dirn', '0', '', event);"><strong>전체</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
		{else}
			<a href="/qna/list.naver?dirId={=dirId}" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.dirn', '{=dirId}', '', event);"><strong>{=title}</strong> <span class="blind">의 답변을 기다리는 질문 바로가기</span></a>
		{/if}
	{/if}
</script>


					<script id="leftMenuDirTpl" type="text/template">
	{if parentDirName}
	<li dirid="{=dirId}" poiid="{=poiId}" {if isClassOn} class="on"{/if}><a href="#" class="depth1" {if sClickName.length > 0} onclick="nhn.Kin.Utility.nClicks('{=sClickName}', '{=dirId}', '{=order}', event);"{/if}>{if extraInfo != null}{=extraInfo}({/if}{=parentDirName}{if extraInfo != null}){/if}</a><a href="#" class="depth2" {if sClickName.length > 0} onclick="nhn.Kin.Utility.nClicks('{=sClickName}', '{=dirId}', '{=order}', event);"{/if}>{if extraInfo != null}{=extraInfo}({/if}{=dirName}{if extraInfo != null}){/if}{if isClassOn}<span class="blind _selected">질문 목록 선택됨</span>{/if}</a></li>
	{else}
	<li dirid="{=dirId}" poiid="{=poiId}" {if isClassOn} class="on"{/if}><a href="#" {if sClickName.length > 0} onclick="nhn.Kin.Utility.nClicks('{=sClickName}', '{=dirId}', '{=order}', event);"{/if}>{if extraInfo != null}{=extraInfo}({/if}{=dirName}{if extraInfo != null}){/if}{if isClassOn}<span class="blind _selected">질문 목록 선택됨</span>{/if}</a></li>
	{/if}
</script>


					<script id="mapAreaTpl" type="text/template">
	<div class="map_spot">
		<div class="map" id="kinMap{=index}"></div>
	</div>
</script>


					<script id="mapQLayerTpl" type="text/template">
	<div class="ly_pin _map_qlayer">
		<div class="cont">
			<div class="spot">
				<em>{if dirFullName}{=dirFullName}{else}지역&amp;플레이스{/if}</em>
			</div>
			<div class="q">
				<strong><a href="{=detailUrl}" target="_blank" class="_goUrl" onclick="nhn.Kin.Utility.nClicks('{=sClickArea}*{=sClickPrefix}.title', '{=docId}', '', event);">{=title}</a></strong>
			</div>
		</div>
		<div class="cont2">
			<div class="info">
				<span class="writer">{=userId}</span>
				<span class="bar">|</span>
				<span class="time">{=writeTimeStr}</span>
			</div>
			<div class="pagnate">
			{if count > 1}
				<span class="num"><em>{=dataIndex+1}</em>/{=count}</span>
				<span class="btn"><a href="#" class="prev _prev _param('{=index}')" onclick="nhn.Kin.Utility.nClicks('{=sClickArea}*{=sClickPrefix}.prev', '', '', event);"></a><a href="#" class="next _next _param('{=index}')" onclick="nhn.Kin.Utility.nClicks('{=sClickArea}*{=sClickPrefix}.next', '', '', event);"></a></span>
			{/if}
			</div>
		</div>
		<a href="#" class="clse _close" onclick="nhn.Kin.Utility.nClicks('{=sClickArea}*{=sClickPrefix}.close', '', '', event);">닫기</a>
	</div>
</script>


					<script id="mapQCountTpl" type="text/template">
	<div class="ic_pin{if count<10} one{/if}"><strong class="q_num"{if count<2} style="display:none"{/if}><em>{=count}</em></strong></div>
</script>


					<script id="noanswerListTpl" type="text/template">
	<div class="answer_box _noanswerItem{if viewType != 'onlyTitle' && thumbnail != null} img_box{/if}{if encodedTagList == null} no_tag{/if}{if isFirst} first{/if}{if isLast} last{/if}">
		<div class="tit_wrap {if viewType == 'onlyTitle' && ((((mediaFlag % 2) == 1) && (viewType == 'onlyTitle' || thumbnail == null)) ||  (_divided16 % 2) == 1 || adultFlag == 'Y')}icon{/if}">
			<a href="{=detailUrl}" rel="KIN" target="_blank" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.qtit', '{if gdid != null}{=gdid}{else}{=dirId}_{=docId}{/if}', '{=count}', event);{if loggingType != null}nhn.Kin.Utility.saveListInfo('{=loggingType}',{=page},{=dirId},{=docId},'{=sort}');{/if}">
				{if betPoint > 0}
					<span class="power_grade"><span class="blind">내공</span>{if betPoint > 999}999+{else}{=betPoint}{/if}</span>
				{/if}
				<span class="tit_txt">{=cutTitle}</span>
				
				{if ((mediaFlag % 2) == 1) && (viewType == 'onlyTitle' || thumbnail == null)}
					<span class="ico_picture sp_common">사진첨부</span>
				{/if}
				{if (_divided16 % 2) == 1}
					<span class="ico_file sp_common">파일첨부</span>
				{/if}
				{if adultFlag == 'Y'}				
					<span class="ico_nsfu sp_common">19세 이상 열람 가능</span>
				{/if}

				{if viewType != 'onlyTitle'}
					{if isTitleSameWithContents && thumbnail != null}
						<p class="txt">&nbsp;</p>
					{elseif !isTitleSameWithContents}
						<p class="txt">{=content}</p>
					{/if}
				{/if}
			</a>
		</div>



		<div class="update_info">
			<span class="num_answer">답변 <em>{if answerCnt >= 100}99+{elseif answerCnt < 0}0{else}{=answerCnt}{/if}</em></span>
			<span class="info"><a href="/qna/list.naver?dirId={=dirId}" target="_blank" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.qdir', '{=dirId}', '{=count}', event);">{=cutDirName}</a></span>
			<span class="info">{=writeTime}</span>
		</div>

		<div class="lnk_wrap">
			{if showMetooWonder}
				<a href="#" class="lnk_wonder _metooWonderBtn _param('{=dirId},{=docId}')" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.metoo', '{if gdid != null}{=gdid}{else}{=dirId}_{=docId}{/if}', '{=count}', event);">나도궁금해요 <em class="_metooWonderCount">{=metooWonderCnt}</em></a><span class="dv"></span>
			{/if}
			<a href="{=answerFormUrl}" rel="KIN" class="lnk_answer" target="_blank" onclick="nhn.Kin.Utility.nClicks('{=sClickAreaName}.quicka', '{if gdid != null}{=gdid}{else}{=dirId}_{=docId}{/if}', '{=count}', event);{if loggingType != null}nhn.Kin.Utility.saveListInfo('{=loggingType}',{=page},{=dirId},{=docId},'{=sort}');{/if}">답변하기 <span class="sp_common ico_arr"></span></a>
		</div>
		
		{if viewType == 'onlyTitle'}
			<div class="preview_box{if thumbnail != null} thumb_box{/if}">
				<div class="inner">
					{if thumbnail != null}
						<span class="preview_thumb"><img src="{=thumbnail}" width="70" height="70" alt="{=title}"></span>
					{/if}

					<p class="preview_txt">
						{=content}
					</p>
				</div>
			</div>
		{/if}
	</div>
</script>


					<script id="noresultTpl" type="text/template">
	{if type == "interestAll"}
		{if recommendDirGroupList != null}
			<div class="interest_wrap">
				{for recommendDirGroup in recommendDirGroupList}
					{if recommendDirGroup != null}		
						<h6>{=recommendDirGroup.recText}</h6>
						<ul class="interest_area{if recommendDirGroup.isOdd} type_even{/if}">
							{for recommendDir in recommendDirGroup.recList}
								<li>
									<div class="inner">
									<p class="directory">{=recommendDir.dirName}</p>
									<p class="detail">{=recommendDir.path}</p>
									<a href="#" class="btn_check _recommendDir _param('{=recommendDir.dirId},{=recommendDirGroup.recFrom}')" onclick="nhn.Kin.Utility.nClicks('{if recommendDirGroup.recFrom == "EDIT_NOANSWER_PC"}nql_lgd*e.edit{elseif recommendDirGroup.recFrom == "ANSWER_NOANSWER_PC"}nql_lgd*e.answer{elseif recommendDirGroup.recFrom == "AGE_GENDER_NOANSWER_PC"}nql_lgd*e.demo{/if}', '', '', event);"><span class="ico_check on"></span></a>
									</div>
								</li>
							{/for}
						</ul>
					{/if}
				{/for}
				<div class="btn_wrap">
					<a href="#" class="btn_interest _ros _addRecommendDirs" onclick="nhn.Kin.Utility.nClicks('nql_lgd*e.add', '', '', event);">관심분야 추가</a>
				</div>
			</div>
		{/if}
	{elseif type == "interest"}
		<div class="no_data">
			<p>선택하신 분야에 등록된 답변을 기다리는 질문이 없습니다.</p>
		</div>
	{elseif type == "keyword"}
		<div class="no_data">
			<p>선택하신 키워드에 등록된 답변을 기다리는 질문이 없습니다.</p>
		</div>
	{elseif type == "local"}
		<div class="no_data">
			<p>선택하신 지역에 등록된 답변을 기다리는 질문이 없습니다.</p>
		</div>
	{elseif type == "tag"}
		<div class="no_data">
			<p>선택하신 태그로 등록된 답변을 기다리는 질문이 없습니다.</p>
		</div>
	{else}
		<div class="no_data">
			<p>선택하신 분야에 등록된 답변을 기다리는 질문이 없습니다.</p>
		</div>
	{/if}
</script>





					<script type="text/template" id="pageTemplate">
	{if pageInfo.isSearch}
			{if pageInfo.hasPre == "Y"}<a href="#" class="prev _prevPage _param('{=pageInfo.prePage},{=pageInfo.prevPageOffset},true')" onClick="nhn.Kin.Utility.nClicks('{=nclickCode}.prev', '', '{=pageInfo.prePage}', event);">이전</a>{/if}{if pageInfo.hasNext == "Y"}	<a href="#" class="next _nextPage _param('{=pageInfo.nextPage},{=pageInfo.nextPageOffset},false')" onClick="nhn.Kin.Utility.nClicks('{=nclickCode}.next', '', '{=pageInfo.nextPage}', event);">다음</a>{/if}
	{else}
		{if pageInfo.hasPre == "Y"}
			<a href="#" class="prev _prevPage _param('{=pageInfo.prePage}')" onClick="nhn.Kin.Utility.nClicks('{=nclickCode}.prev', '', '{=pageInfo.prePage}', event);">이전</a>
		{/if}
		{for p in pageInfo.pageList}
			<a href="#" class="number _page _param('{=p}'){if pageInfo.page == p} on{/if}"{if pageInfo.page == p} title="선택됨"{/if} onClick="nhn.Kin.Utility.nClicks('{=nclickCode}.page', '', '{=p}', event);">{=p}</a>
		{/for}
		{if pageInfo.hasNext == "Y"}
			<a href="#" class="next _nextPage _param('{=pageInfo.nextPage}')" onClick="nhn.Kin.Utility.nClicks('{=nclickCode}.next', '', '{=pageInfo.nextPage}', event);">다음</a>
		{/if}
	{/if}
</script>
					<!-- }}} -->

					<script type="text/javascript">
						// 관심분야
						var aDirDataList = [

						];

						// 관심지역
						var aLocalDataList = [

						];

						// 관심키워드
						var aKeywordDataList = [

						];

						$Fn(
								function() {
									if (naver.kin.questionList
											&& naver.kin.questionList.Tab) {
										var oQuestionListTab = new naver.kin.questionList.Tab(
												{
													'sSelTab' : 'qna',
													'sSelSubTab' : '',
													'nDefaultDirId' : 0,
													'aDirData' : aDirDataList,
													'aLocalData' : aLocalDataList,
													'aKeywordData' : aKeywordDataList,
													'sQueryTime' : '2022-06-07 17:28:21',
													'sImageServerUrl' : 'https://kin-phinf.pstatic.net',
													'sortType' : ''
												});
									}
								}).attach(window, "load");
					</script>

					<div class="container-fluid-content__right">
						<div id="aside_content" class="aside" style="height: 1093px;">












							<script type="text/javascript">
								var rosAlertMessage = "";
								var isRosActionInterest = "false";
							</script>

							<div id="aside_login" class="aside_myinfo">
								<h2 class="blind">
									NAVER <em>로그인</em> 영역
								</h2>










								<div class="Ugc_login">
									<p class="top_text">질문과 답변을 하고 싶다면,</p>
									<a
										href="https://nid.naver.com/nidlogin.login?url=https%3A%2F%2Fkin.naver.com%2Fqna%2FquestionList.naver"
										class="login_button"> <span
										class="login_common UGC_login_text">NAVER <em>로그인</em></span>
									</a>
									<div class="sign_area">
										<div class="info_find">
											<a href="https://nid.naver.com/user/help.nhn?todo=idinquiry"
												class="" target="_blank">아이디 찾기</a> <span class="bar"></span>
											<a href="https://nid.naver.com/nidreminder.form"
												target="_blank">비밀번호 찾기</a>
										</div>

										<div class="sign_in">
											<a
												href="https://nid.naver.com/nidregister.form?url=https%3A%2F%2Fkin.naver.com%2Fqna%2FquestionList.naver"
												target="_blank">회원가입</a>
										</div>
									</div>
								</div>

							</div>


							<script type="text/javascript">
								$Fn(function() {
									new naver.kin.RNB.LoginMyArea({
										'nCurrentLevelMinPoint' : 0,
										'nCurrentLevelMaxPoint' : 500,
										'nTotalPoint' : 0,
										'isMaxLevel' : false
									});
								}).attach(window, 'load');
							</script>








							<div class="aside_tag">
								<h4>지식iN 인기태그</h4>
								<div class="tag_wrap">

									<a
										href="/tag/tagDetail.naver?tag=%EB%A3%A8%EC%9D%B4%EB%B9%84%ED%86%B5&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#루이비통</a> <a
										href="/tag/tagDetail.naver?tag=%EC%A0%84%EC%84%B8%EA%B8%88%EB%B0%98%ED%99%98&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#전세금반환</a> <a
										href="/tag/tagDetail.naver?tag=%EC%9E%90%EC%BC%93&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#자켓</a> <a
										href="/tag/tagDetail.naver?tag=%EA%B0%80%EB%B0%A9%EC%A0%95%EB%B3%B4&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#가방정보</a> <a
										href="/tag/tagDetail.naver?tag=%EB%B2%94%EC%A3%84%EB%8F%84%EC%8B%9C2&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#범죄도시2</a> <a
										href="/tag/tagDetail.naver?tag=%EA%B8%80%EB%9F%AC%EB%B8%8C&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#글러브</a> <a
										href="/tag/tagDetail.naver?tag=%EC%A7%88%EB%AC%B8%EB%82%98%EB%88%84%EA%B8%B0&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#질문나누기</a> <a
										href="/tag/tagDetail.naver?tag=%EB%AC%BC%EB%A6%AC%ED%95%99%EB%AC%B8%EC%A0%9C%ED%92%80%EC%9D%B4&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#물리학문제풀이</a> <a
										href="/tag/tagDetail.naver?tag=%EC%BF%A0%ED%82%A4%EB%9F%B0&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#쿠키런</a> <a
										href="/tag/tagDetail.naver?tag=%EC%A4%91%EA%B8%B0%EC%B2%AD%EB%85%84%EC%A0%84%EC%84%B8%EB%8C%80%EC%B6%9C&amp;listType=answer"
										class="tag _nclicks:sbn.btn">#중기청년전세대출</a>

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="footer_wrap">
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




	</div>


</body>
</html>