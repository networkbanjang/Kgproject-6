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
	
	<div id="wrap" class="wrap wrap_qna"> 
	
<div id="container" class="container-fluid">
	
	
		<div class="container-fluid-content">
			<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">Q&amp;A 영역</h3>
				
				<div id="content" class="container-fluid-content__left">
					
<div class="spot_area">
	<div class="spot_area_inner">
		<div class="s_header">
			<h2>Q&amp;A</h2>
			<div class="ques_cnt">
				<dl>
				<dt class="itm">오늘의 새 질문</dt>
				<dd id="todayQuestion">48,178</dd>
				<dt class="itm2">모바일 질문</dt>
				<dd id="todayMobileQuestion">36,506</dd>
				<dt class="itm3">오늘의 답변</dt>
				<dd id="todayAnswer">97,178</dd>
				</dl>
			</div>
		</div>
		
			
				<div class="s_body">
					<div class="spot_directory">
						<ul>
												
									<li>
										<a href="/qna/list.naver?dirId=11" id="subMenuOfQna" class="_nclicks:dmp.sdir,r:1,i:11">교육, 학문</a>
										<span>49,669,365</span>
										
									</li>
									<li>
									
										<a href="/qna/list.naver?dirId=1" class="_nclicks:dmp.sdir,r:2,i:1">컴퓨터통신</a>
										<span>35,223,217</span>
									</li>
												
									<li>
										<a href="/qna/list.naver?dirId=2" class="_nclicks:dmp.sdir,r:3,i:2">게임</a>
										<span>20,826,152</span>
									</li>
													
									<li>
										<a href="/qna/list.naver?dirId=3" class="_nclicks:dmp.sdir,r:4,i:3">엔터테인먼트, 예술</a>
										<span>29,505,342</span>
									</li>					
									<li>
									
										<a href="/qna/list.naver?dirId=8" class="_nclicks:dmp.sdir,r:5,i:8">생활</a>
										<span>42,725,406</span>
									
									</li>
									<li>
									
										<a href="/qna/list.naver?dirId=7" class="_nclicks:dmp.sdir,r:6,i:7">건강</a>
										<span>27,421,027</span>
									</li>
								
									<li>
										<a href="/qna/list.naver?dirId=6" class="_nclicks:dmp.sdir,r:7,i:6">사회, 정치</a>
										<span>22,909,118</span>
										
									</li>	
									<li>
									
										<a href="/qna/list.naver?dirId=4" class="_nclicks:dmp.sdir,r:8,i:4">경제</a>
										<span>20,345,515</span>
										
									</li>
									
									<li>
										<a href="/qna/list.naver?dirId=9" class="_nclicks:dmp.sdir,r:9,i:9">여행</a>
										<span>5,117,790</span>
									</li>
											
									<li>
									
										<a href="/qna/list.naver?dirId=10" class="_nclicks:dmp.sdir,r:10,i:10">스포츠, 레저</a>
										<span>4,696,550</span>
									</li>
									<li>
										<a href="/qna/list.naver?dirId=5" class="_nclicks:dmp.sdir,r:11,i:5">쇼핑</a>
										<span>21,810,903</span>
										
									</li>
									<li>
									
										<a href="/qna/list.naver?dirId=13" class="_nclicks:dmp.sdir,r:12,i:13">쥬니버Q&amp;A</a>
									</li>
												
									<li>
										<a href="/qna/list.naver?dirId=12" class="_nclicks:dmp.sdir,r:13,i:12">지역&amp;플레이스</a>
									
									
									</li>
												
									<li>
									
										<a href="/qna/list.naver?dirId=20" class="_nclicks:dmp.sdir,r:14,i:20">고민Q&amp;A</a>
									
									</li>
							<li><a href="/opendic/index.naver" class="nclicks:dmp.sdir,r:15">오픈사전</a></li>
						</ul>
					</div>
				</div>
			
	</div>
</div>
<script type="text/javascript">
$Fn(function() {
	nhn.Kin.Utility.startRollingCount($("todayQuestion"), 48178, $("todayMobileQuestion"), 36506, $("todayAnswer"), 97178);
}).attach(document, "domready");
</script>
					
	
	<div class="kinqna_wp _kinqna_wp">
		<ul class="tab1 tab1_box" role="tablist">
			
			
				
				
					<li role="presentation" class="on">
						<a href="/qna/list.naver" class="item _nclicks:kls.new" id="contentsOfQna" tabindex="0" aria-selected="true" role="tab">질문</a>
					</li>
				
				<!-- [KINSUS-31195] Q&A나 전문가답변 질문목록 Tab은 목록이 비어있는지 체크하지 않고 항상 노출한다. (성능 이슈) -->
				<li role="presentation">
					
						<a href="/qna/kinupList.naver" class="item _nclicks:kls.best" tabindex="-1" aria-selected="false" role="tab">Q&amp;A</a>
					
				</li>
				
					<li role="presentation">
						<a role="tab" href="/qna/directoryExpertList.naver" tabindex="-1" class="item _nclicks:kls.expert" aria-selected="false">랭킹</a>
					</li>
				
			
		</ul>
	</div>

<div id="list_noanswer" class="qna_list_noanswer">
	
	
		<div class="board_box">
	
		<div class="opt_wp">
			<div class="qs_opt">
				<ul class="sort_lst">
	                <li class="on"><a href="/qna/list.naver?view=list&amp;page=1&amp;queryTime=2022-06-07%2018%3A57%3A47" class="_nclicks:kls_new.listview"><i class="sp_lstico ic_lst"></i><span>목록뷰</span><span class="blind">선택됨</span></a></li>
	                <li class=""><a href="/qna/list.naver?view=card&amp;page=1&amp;queryTime=2022-06-07%2018%3A57%3A47" class="_nclicks:kls_new.cardview"><i class="sp_lstico ic_card"></i><span>카드뷰</span></a></li>
                </ul>
			</div>
			
		</div>
		
		<div class="ly_tp_qnalst" id="answerCntLayer" style="display:none">
			<div class="ly_cont">
				<p class="blind">답변수를 클릭하시면 답변을 애타게 <br>기다리는 답변수 0건 질문을 <br>우선적으로 확인하실 수 있습니다.</p>
			</div>
			<a href="#" class="clse" onclick="setAnswerCntLayerCookie('listanswer', 'listanswer', 1); $Element('answerCntLayer').hide();">레이어 닫기</a>
		</div>
		
		<h3 class="blind">새 질문 게시판</h3>
		
			
			<table cellspacing="0" class="boardtype2" width="100%">
			<caption><span class="blind">새 질문 게시글 1페이지 목록</span></caption>
			<colgroup>
			<col>
			<col width="94">
			<col width="47">
			<col width="66">
			</colgroup>
	
			<thead>
			<tr>
			<th scope="col" class="title "><a href="/qna/list.naver?sort=betPoint&amp;queryTime=2022-06-07%2018%3A57%3A47" class="option_grade _nclicks:kls_new.bybest">내공<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a>제목</th>
			<th scope="col">분야</th>
			<th scope="col" class="" id="listAnswerField"><a href="/qna/list.naver?sort=answerCnt&amp;queryTime=2022-06-07%2018%3A57%3A47" class="_nclicks:kls_new.byanswer">답변<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a></th>
			<th scope="col" class="on"><a href="/qna/list.naver?sort=writeTime&amp;queryTime=2022-06-07%2018%3A57%3A47" class="_nclicks:kls_new.bydate">작성<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="12" height="12" alt="정렬"></a></th>
			</tr>
			</thead>
				
			<tbody id="au_board_list">
			
			
			
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=3&amp;dirId=302140101&amp;docId=421209169" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:1,i:302140101_421209169">노래 잘하시는분 기프티콘 드립니다 방탄이모티콘이나 기프티...</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=302140101" class="_nclicks:kls_new.dir,r:0,i:302140101_421209169">국내가수</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>80</span>
					
					
					
					<a href="/qna/detail.naver?d1id=1&amp;dirId=107020101&amp;docId=421209168" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:2,i:107020101_421209168">Skt 나밍 셋팅 하는법.....</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=107020101" class="_nclicks:kls_new.dir,r:1,i:107020101_421209168">SKT</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=7&amp;dirId=7010104&amp;docId=421209170" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:3,i:7010104_421209170">발목혈관튀어나옴</a>
					
					
						<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=7010104" class="_nclicks:kls_new.dir,r:2,i:7010104_421209170">혈액종양내과</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>50</span>
					
					
					
					<a href="/qna/detail.naver?d1id=2&amp;dirId=211&amp;docId=421209171" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:4,i:211_421209171">넥슨 홈페이지 오류인가요 해킹일까요</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=211" class="_nclicks:kls_new.dir,r:3,i:211_421209171">게임사, 게임사이<span class="ls0">...</span></a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>10</span>
					
					
					
					<a href="/qna/detail.naver?d1id=3&amp;dirId=304&amp;docId=421209167" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:5,i:304_421209167">이름 좀 지어주세요</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=304" class="_nclicks:kls_new.dir,r:4,i:304_421209167">애니메이션</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=9&amp;dirId=9020105&amp;docId=421209166" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:6,i:9020105_421209166">인도 39미리 담배</a>
					
					
						<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=9020105" class="_nclicks:kls_new.dir,r:5,i:9020105_421209166">인도</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>70</span>
					
					
					
					<a href="/qna/detail.naver?d1id=5&amp;dirId=5010603&amp;docId=421209165" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:7,i:5010603_421209165">스마트폰 업무 계정 삭제</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=5010603" class="_nclicks:kls_new.dir,r:6,i:5010603_421209165">윈도우모바일폰</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=7&amp;dirId=70111&amp;docId=421209164" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:8,i:70111_421209164">건성 지성 복합성</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=70111" class="_nclicks:kls_new.dir,r:7,i:70111_421209164">피부과</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>90</span>
					
					
					
					<a href="/qna/detail.naver?d1id=2&amp;dirId=2010604&amp;docId=421209163" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:9,i:2010604_421209163">스틱파이터 버그</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=2010604" class="_nclicks:kls_new.dir,r:8,i:2010604_421209163">지역</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=5&amp;dirId=5030104&amp;docId=421209162" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:10,i:5030104_421209162">향수이름 알려주세요!</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=5030104" class="_nclicks:kls_new.dir,r:9,i:5030104_421209162">향수</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>100</span>
					
					
					
					<a href="/qna/detail.naver?d1id=1&amp;dirId=111&amp;docId=421209161" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:11,i:111_421209161">사무자동화 실기 엑세스 질문이요!!</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=111" class="_nclicks:kls_new.dir,r:10,i:111_421209161">컴퓨터 자격증,<span class="ls0">...</span></a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=8&amp;dirId=80101&amp;docId=421209159" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:12,i:80101_421209159">줄리어드 음대에서 바이올린 학위랑 콜롬비아 대학(아이비리...</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=80101" class="_nclicks:kls_new.dir,r:11,i:80101_421209159">연애, 결혼</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>50</span>
					
					
					
					<a href="/qna/detail.naver?d1id=7&amp;dirId=70113&amp;docId=421209160" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:13,i:70113_421209160">남자 클라미디아 완치 후 라이터증후군(반응성관절염) 원형귀...</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=70113" class="_nclicks:kls_new.dir,r:12,i:70113_421209160">비뇨의학과</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=4&amp;dirId=406&amp;docId=421209158" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:14,i:406_421209158">카페 회사에서 저는 사무보조고 주로...</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=406" class="_nclicks:kls_new.dir,r:13,i:406_421209158">직업, 취업</a></td>
				<td class="t_num">0</td>
				<td class="t_num">방금</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>100</span>
					
					
					
					<a href="/qna/detail.naver?d1id=7&amp;dirId=7011401&amp;docId=421209155" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:15,i:7011401_421209155">관계중 사정은 하지 않았는데 따듯한 무언가가 느껴졌어요</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=7011401" class="_nclicks:kls_new.dir,r:14,i:7011401_421209155">임신</a></td>
				<td class="t_num">0</td>
				<td class="t_num">1분 전</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>100</span>
					
					
					
					<a href="/qna/detail.naver?d1id=4&amp;dirId=4010302&amp;docId=421209156" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:16,i:4010302_421209156">보험 보상금</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=4010302" class="_nclicks:kls_new.dir,r:15,i:4010302_421209156">보장성보험</a></td>
				<td class="t_num">1</td>
				<td class="t_num">1분 전</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>50</span>
					
					
					
					<a href="/qna/detail.naver?d1id=1&amp;dirId=10610&amp;docId=421209154" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:17,i:10610_421209154">트위치 멘션 질문</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=10610" class="_nclicks:kls_new.dir,r:16,i:10610_421209154">인터넷개인방송</a></td>
				<td class="t_num">0</td>
				<td class="t_num">1분 전</td>
				</tr>
			
				<tr>
				<td class="title">
					
						<span class="power_grade type_small"><span class="blind">내공</span>50</span>
					
					
					
					<a href="/qna/detail.naver?d1id=12&amp;dirId=12130429&amp;docId=421209153" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:18,i:12130429_421209153">익산 팔봉 기안아파트에서 영등제일2차 가는 버스 노선</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=12130429" class="_nclicks:kls_new.dir,r:17,i:12130429_421209153">팔봉동</a></td>
				<td class="t_num">0</td>
				<td class="t_num">1분 전</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=5&amp;dirId=5040301&amp;docId=421209152" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:19,i:5040301_421209152">귀 뚫기 질문</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=5040301" class="_nclicks:kls_new.dir,r:18,i:5040301_421209152">귀걸이, 피어싱</a></td>
				<td class="t_num">0</td>
				<td class="t_num">1분 전</td>
				</tr>
			
				<tr>
				<td class="title">
					
					
					
					<a href="/qna/detail.naver?d1id=8&amp;dirId=80501&amp;docId=421209151" rel="KIN" target="_blank" class="_nclicks:kls_new.list,r:20,i:80501_421209151">강아지가 아무거나 먹어요</a>
					
					
					
					
				</td>
				<td class="field"><a href="/qna/list.naver?dirId=80501" class="_nclicks:kls_new.dir,r:19,i:80501_421209151">개, 강아지</a></td>
				<td class="t_num">0</td>
				<td class="t_num">1분 전</td>
				</tr>
			
			
			
			</tbody>
			</table>	
		
		
<div class="paging space _tag_pager" style="display: none;">
	<div class="nav" style="display:block;"> <p class="btn"><a href="#" class="pr-prev _pre"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_prev.gif" width="23" height="23" alt="이전" title="이전"></a><a href="#" class="pr-next _next"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_next.gif" width="22" height="23" alt="다음" title="다음"></a></p></div>
</div>
<div class="paginate _default_pager">
	
		
		
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=1" class="on" title="선택됨" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','1',event);">1</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=2" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','2',event);">2</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=3" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','3',event);">3</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=4" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','4',event);">4</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=5" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','5',event);">5</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=6" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','6',event);">6</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=7" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','7',event);">7</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=8" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','8',event);">8</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=9" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','9',event);">9</a>	
			
					
			
				<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=10" onclick="nhn.Kin.Utility.nClicks('kls_new.page','','10',event);">10</a>	
			
		
		
		
			<a href="/qna/list.naver?queryTime=2022-06-07%2018%3A57%3A47&amp;page=11" class="next ">다음페이지</a>
			
		
	
</div>
		
<div class="search">
	<form name="bottom_search" id="bottom_search" method="get">
	<input type="hidden" name="cs" value="utf8">
	<fieldset>
		<legend>검색영역</legend>            
		
		
		<input type="text" accesskey="s" title="검색어" class="keyword" name="query" id="au_input_query">
		<input type="image" alt="검색" title="키워드 검색" src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif" id="au_search_submit">
	</fieldset>
	</form>
</div>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.QnaEnd.InputQuery.js"></script>
	</div>
</div>
						
						
						
						
						
						
					
					
	
	
	<div class="btn_area_shortcut" id="bottom_area">
		<div class="section">
			<p>먼저 질문에 맞는 분야를 선택하고 질문을 작성하면,<br>
				더 정확한 답변을 받을 수 있습니다.</p>
			<a href="#" role="button" class="button__type3 _clickcode:bbt.que btn" onclick="nhn.Kin.checkRosAndGoUrl(event, '/qna/question.naver?', '?');">
			   질문하러 가기<i class="sp_common ico_arrow_r" aria-hidden="true"></i>
			</a>
		</div>
	</div>
	
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.QnaList.MyInterest.js"></script>
				</div>
				<div class="container-fluid-content__right">
					<div class="aside" id="au_aside">
						

<div id="aside_login" class="aside_myinfo">
	<h2 class="blind">NAVER <em>로그인</em> 영역</h2>
	
	
	
	
		
		
			 
			 
			 
		
		<div class="Ugc_login">
			<p class="top_text">질문과 답변을 하고 싶다면,</p>
			<a href="https://nid.naver.com/nidlogin.login?url=https%3A%2F%2Fkin.naver.com%2Fqna%2Flist.naver" class="login_button">
				<span class="login_common UGC_login_text">NAVER <em>로그인</em></span>
			</a>
			<div class="sign_area">
				<div class="info_find">
					<a href="https://nid.naver.com/user/help.nhn?todo=idinquiry" class="" target="_blank">아이디 찾기</a>
					<span class="bar"></span>
					<a href="https://nid.naver.com/nidreminder.form" target="_blank">비밀번호 찾기</a>
				</div>
				<div class="sign_in">
					<a href="https://nid.naver.com/nidregister.form?url=https%3A%2F%2Fkin.naver.com%2Fqna%2Flist.naver" target="_blank">회원가입</a>
				</div>
			</div>
		</div>
			
	
	
</div>
<!-- {{{ -->


								<div id="aside_rightSection" class="qna_list_rightSection">
									
	
	<div class="aside_component1 tabcontrol _tab_people_area">
		<h3 class="blind">지식인 사람들</h3>
		<ul class="aside_tab_module" role="tablist">
			
			
			
			
			<li style="width:94px"><a href="#" role="tab" data-tab-type="elite" data-tab-index="0" aria-selected="false" class="aside_tab_module__item tc-tab" onclick="nclk_v2(event,'peo.category','','');">분야별지식인</a></li>
			<li style="width:64px"><a href="#" role="tab" data-tab-type="expert" data-tab-index="1" aria-selected="true" class="aside_tab_module__item tc-tab tc-selected is_active">전문가</a></li>
			<li style="width:82px"><a href="#" role="tab" data-tab-type="partner" data-tab-index="2" aria-selected="false" class="aside_tab_module__item tc-tab">지식파트너</a></li>
		</ul>
		<div class="panels">
			
			
				<div class="tc-panel"></div>
				<!-- 전문가 -->
				<div class="tc-panel tc-selected">	
					<h4>검증된 전문가의 믿을 수 있는 답변</h4>
					<p class="more"><a href="/people/expert/index.naver?type=DOCTOR" class="_nclicks:peo*x.more"><span class="blind">전문가</span>더보기</a></p>
					<div class="thumb"><a href="/profile/index.naver?u=suWLnZPfizjPvcP0%2BJfeIAb6Y6ySBXB%2FzYoSt%2F%2FbnbQ%3D" class="_nclicks:peo*x.who,i:suWLnZPfizjPvcP0+JfeIAb6Y6ySBXB/zYoSt//bnbQ=">
					<img src="https://kin-phinf.pstatic.net/exphoto/expert/52/master_tax_1439877735093.jpg?type=w100" width="100" height="100" alt="mast**** 님의 프로필">
					</a></div>
					<dl class="detail_exp">
					<dt><a href="/profile/index.naver?u=suWLnZPfizjPvcP0%2BJfeIAb6Y6ySBXB%2FzYoSt%2F%2FbnbQ%3D" class="_nclicks:peo*x.who,i:suWLnZPfizjPvcP0+JfeIAb6Y6ySBXB/zYoSt//bnbQ="><strong>정현석</strong> 님</a></dt>
					<dd>
						
						
						
						
						
						<a href="/profile/index.naver?u=suWLnZPfizjPvcP0%2BJfeIAb6Y6ySBXB%2FzYoSt%2F%2FbnbQ%3D" class="_nclicks:peo*x.who,i:suWLnZPfizjPvcP0+JfeIAb6Y6ySBXB/zYoSt//bnbQ=">세무사</a>
						
						
						
					</dd>
					</dl>
					<ul class="detail3">
						<li>- </li>
						
						
					</ul>
					<ul class="list_qna">
						
							<li><a href="/qna/detail.naver?d1id=4&amp;dirId=403&amp;docId=421195806" target="_blank" class="_nclicks:peo*x.qna,i:403_421195806,r:1">오늘 오전 11시 10분경 동화성세...</a></li>
						
							<li><a href="/qna/detail.naver?d1id=4&amp;dirId=40309&amp;docId=421195660" target="_blank" class="_nclicks:peo*x.qna,i:40309_421195660,r:2">근로장려금 현금수령</a></li>
						
							<li><a href="/qna/detail.naver?d1id=4&amp;dirId=40307&amp;docId=421195198" target="_blank" class="_nclicks:peo*x.qna,i:40307_421195198,r:3">금을 몇천만원 매입시 이것도 재...</a></li>
						
					</ul>
					<div class="btn_area2">
						<a href="/people/expert/index.naver?type=DOCTOR" class="btn_all _nclicks:peo*x.all">전문가 전체보기</a>
						
						
						
						
						
						
							<a href="#" onclick="nhn.Kin.checkRosAndGoUrl(event, '/qna/question.naver?expertType=taxacc', '/qna/question.naver?m=init');" class="btn_help _clickcode:peo*x.tax">세무사에게 질문하기</a>
						
						
						
					</div>
				</div>
				<div class="tc-panel"></div>
			
			
			
		</div>					
	</div>
	<script type="text/javascript">
	$Fn(function() {
		nhn.Kin.RNB.PeopleArea.initialize(0);
	},this).attach(window,"load");
	</script>
	<script type="text/template" id="tpl_elite_people_tab">
		 <h4>{=year}년도 분야별 지식인</h4>
		 <p class="more"><a href="/people/elite/list.naver?year={=year}&dirId={=dirId}" class="_nclicks:peo*c.more"><span class="blind">분야별 지식인</span>더보기</a></p>
		 <div class="thumb"><a href="/profile/index.naver?u={=encodedU}" class="_nclicks:peo*c.who"><img src="{=photo}?type=w100" width="100" height="100" alt="{=viewUserId} 님의 프로필"></a></div>
		 <dl>
			 <dt><a href="/profile/index.naver?u={=encodedU}" class="_nclicks:peo*c.who">{if useNickname}<strong>{=nickname}</strong><br>({=viewUserId}){else}{=viewUserId}{/if} 님</a></dt>
		 </dl>
		 <dl class="detail other2">
			 <dt>분야</dt>
			 <dd><a href="/profile/index.naver?u={=encodedU}">{=dirName}</a></dd>
			 <dt>답변수</dt>
			 <dd>{=yearAnswerCnt}</dd>
		 </dl>
		 <ul class="aside_list">
			 {for itemNo:item in qnaList}
			 <li><a href="{=item.url}" target="_blank">{=item.title}</a></li>
			 {/for}
		 </ul>
		 <div class="btn_area2">
			 <a href="/people/elite/list.naver?year={=year}&dirId={=dirId}" class="btn_all _nclicks:peo*c.all">분야별지식인 전체보기</a>
			 <a href="/people/elite/faq.naver" class="btn_help _nclicks:peo*c.faq">분야별지식인이란?</a>
		 </div>
	</script>
									
									
	
		<!-- 랭킹 -->
		<div class="aside_type1 _tab_point_ranking_area">
			<h4 class="h_side_title type_default">
				사람들 랭킹
			</h4>
			<ul class="aside_tab_module" role="tablist">
				<li class="tc-tab tc-selected"><a href="#" role="tab" class="aside_tab_module__item is_active" aria-selected="true" onclick="return false;" title="선택됨"><span class="blind">지식iN 랭킹</span>지식iN 랭킹</a></li>
				<li class="tc-tab"><a href="#" role="tab" class="aside_tab_module__item" aria-selected="false" onclick="return false;"><span class="blind">급상승 랭킹</span>급상승 랭킹</a></li>
			</ul> 
			<div class="panels">
				<h5 class="blind">지식iN 랭킹</h5>
				<ul class="aside_lank tc-panel tc-selected">
					
						<li class="first">
							<div class="lank num_top"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="10" height="15" alt="1"></div>
							<dl>
								<dt class="thumb _photo_profile"><a href="/profile/index.naver?u=oYoZZgd2w9rdeC7vOTZ9oU5jWzaowTz8tJNBE0AtmQI%3D" target="_blank"><img src="https://kin-phinf.pstatic.net/20180302_75/1519978640350rTILL_PNG/image.png?type=w33" width="33" height="33" alt="cast****님의 프로필"></a><a href="#" class="btn_play"><img class="_btn_profile _param('oYoZZgd2w9rdeC7vOTZ9oU5jWzaowTz8tJNBE0AtmQI=')" src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="9" height="9" alt="프로필 보기"></a></dt>
								<dd>
									<a href="/profile/index.naver?u=oYoZZgd2w9rdeC7vOTZ9oU5jWzaowTz8tJNBE0AtmQI%3D" target="_blank" class="_nclicks:rr1*a.user,r:1" title="택배답변만14년차 (cast****)">
										
											<strong>택배답변만14년차</strong><br>(cast****) 님
										
										
									</a>
								</dd>
								<dd class="info">
									<span class="if_t">내공</span>
									<span class="cate">38,037,972</span>
									<span class="if_t">관심분야</span>
									<span class="cate">
									
									
										
										
										
											
																					
											 
												<a href="/qna/list.naver?dirId=108" target="_blank" class="_nclicks:rr1*a.dir,r:1">통신 네트워크</a>
	
									</span>
								</dd>
							</dl>
						</li>
				
				</ul>
				<h5 class="blind">급상승 랭킹</h5>
				<ul class="aside_lank tc-panel">
					
						<li class="first">
							<div class="lank num_top"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="10" height="15" alt="1"></div>
							<dl>
							<dt class="thumb _photo_profile"><a href="/profile/index.naver?u=t2ec0D0Ry%2F7Ar1lsWbywVCb%2FwuO5E9Xtxr2QOpmxM1k%3D" target="_blank"><img src="https://kin-phinf.pstatic.net/20220529_152/1653805437618lO201_GIF/1653805437532.gif?type=w33" width="33" height="33" alt="arag****님의 프로필"></a><a href="#" class="btn_play"><img class="_btn_profile _param('t2ec0D0Ry/7Ar1lsWbywVCb/wuO5E9Xtxr2QOpmxM1k=')" src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="9" height="9" alt="프로필 보기"></a></dt>
							<dd>
								<a href="/profile/index.naver?u=t2ec0D0Ry%2F7Ar1lsWbywVCb%2FwuO5E9Xtxr2QOpmxM1k%3D" target="_blank" class="_nclicks:rr1*w.user,r:1" title="고양이인스타 (arag****)">
									
										<strong>고양이인스타</strong><br>(arag****) 님
									
									
								</a>
							</dd>
							<dd class="info">
								<span class="if_t">내공</span>
								<span class="cate">152,337</span>
								<span class="if_t">관심분야</span>
								<span class="cate">
								
											<a href="/qna/list.naver?dirId=106" target="_blank" class="_nclicks:rr1*w.dir,r:1">인터넷</a>
										
											<a href="/qna/list.naver?dirId=10612" target="_blank" class="_nclicks:rr1*w.dir,r:1">SNS</a>
										
									
								
							</span></dd>
							</dl>
						</li>
					
					
				</ul>
			</div>
			<span class="more _more"><a href="/people/rank/index.naver" class="_nclicks:rr1*a.more"><span class="blind">지식iN 랭킹</span> 더보기</a></span>
		</div>
		<div style="position:absolute; top:0; left:33px;display:block" class="_au_layer_profile_holder">
			<div class="layer_base layer_profile _au_layer_profile" style="display:none;top:1px;">
				<p class="id"><a href="#" class="_profile_id"><strong>별명orID</strong><br>(idi****)님</a></p>
				<dl>
				<dt><strong>등급</strong> (순위)</dt>
				<dd><strong>태양신</strong> (1위)</dd>
				<dt><strong>질문</strong> (마감률)</dt>
				<dd><strong>35</strong> (64.5%)</dd>
				<dt><strong>답변</strong> (채택률)</dt>
				<dd><strong>248</strong> (64.5%)</dd> 
				</dl>
				<ul class="etc_link">
				<li><a href="#">프로필</a></li>
				</ul>
				<a href="#" class="close2"><img class="_btn_profile_close" src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer3.gif" width="19" height="19" alt="닫기"></a>
			</div>
			<iframe frameborder="0" scrolling="no" class="profile_layer_fix _au_iframe_profile" style="display:none;" title="내용없음"></iframe>
		</div>	

	
									
									
<div style="position:absolute; top:0; left:33px;display:block" class="_au_layer_profile_holder">
	<div class="layer_base layer_profile _au_layer_profile" style="display:none;top:1px;">
		<p class="id"><a href="#" class="_profile_id">pear****</a> 중수 (847위)</p>
		<dl>
		<dt><strong>질문</strong> (마감률)</dt>
		<dd><strong>35</strong> (64.5%)</dd>
		<dt><strong>답변</strong> (채택률)</dt>
		<dd><strong>248</strong> (64.5%)</dd> 
		</dl>
		<ul class="etc_link">
		<li><a href="#">프로필</a></li>
		</ul>
		<a href="#" class="close2"><img class="_btn_profile_close" src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer3.gif" width="19" height="19" alt="닫기"></a>
	</div>
	<iframe frameborder="0" scrolling="no" class="profile_layer_fix _au_iframe_profile" style="display:none;" title="내용없음"></iframe>
</div>					
<script type="text/javascript">
	nhn.Kin.Utility.initializeProfileBySPS($("aside_rightSection"));
</script>
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