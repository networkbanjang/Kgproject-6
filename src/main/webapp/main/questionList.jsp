<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>   
<%
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
%> 
<html lang="ko">
<head>

<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/common.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/components.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/other.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/profile.css">

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	<%=id %> 님의 나의 질문, 프로필 : 지식iN
</title>

<script type="text/javascript">

if ( typeof window.nhn  == "undefined" ) window.nhn = {};
if ( typeof window.naver  == "undefined" ) window.naver = {};
nhn.isLogin = true;
nhn.isJunior = ("N"=="Y");
nhn.isKinUser = true;
nhn.isPortableDevice = false;
nhn.jsDir = 'https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min';

var g_ssc = ("kin.my" == "") ? "kin.temp" : "kin.my";
var ccsrv="cc.naver.com";


var kinRos = {
	bIsNoticeDisplay : ("false" == "" || "false" == "false") ? false : true,
	bIsActionNoticeDisplay : ("false" == "" || "false" == "false") ? false : true

};





var standardReportPopupUrl = "https://srp2.naver.com/report";
</script>

<script src="https://ssl.pstatic.net/static.gn/js/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script>
</head>


<body>
<div id="wrap" class="wrap wrap_my"> 

<script type="text/javascript">
	
	$Fn(function() {
		new naver.kin.LNB({
			'questionType' : ''
		});
	}).attach(window, 'load');

	var GNB_BRIGHTNESS_VALUE = {
		DARK_ICON : 0,
		DARK_ICON_AND_TRANSPARENCY : 1,
		BRIGHT_ICON_AND_TRANSPARENCY : 2,
		BRIGHT_ICON : 3
	};
	
	var GNB_ITEM_HIDE_OPTION_BIT_VALUE = {
		DEFAULT : 0,
		HIDE_LOGIN_BTN : 1,
		HIDE_USER_LAYER : 2,
		HIDE_NAVER_ME_AREA : 4,
		HIDE_MAIL_ALARM_AREA : 8,
		HIDE_PROFILE_IMAGE : 16,
		SHOW_BENEFIT_FOR_STAFF_MEMBER : 32
	};

	
	var smartSearch = "";
	
	var gnb_service = "kin";
	
	var gnb_logout = encodeURIComponent("https://nid.naver.com/nidlogin.logout");
	
	var gnb_login = encodeURIComponent(location.href || 'https://kin.naver.com');
	
	var gnb_template = "gnb_utf8";
	
	var gnb_item_hide_option = GNB_ITEM_HIDE_OPTION_BIT_VALUE.DEFAULT;
	
	
	
	

	$Fn(function() {
		
		getGNB();
		
		var bIsGnbClicked = false;
		
		
		$Fn(function (we) {
			if (!bIsGnbClicked) {
				gnbAllLayerClose();
			}
			
			bIsGnbClicked = false;
		}, this).attach(document.body, 'click');
		
		$Fn(function(we) {
			bIsGnbClicked = true;
		}, this).attach($('gnb'), 'click');
		
		
		try {
			$('autoFrame').src = '/static/reatcmp.html?v=4.1';
		} catch(e) {
		}
		
		smartSearch = new nhn.AjaxSuggestUS('nx_query', 'autoFrame', {
			url : 'https://ac.search.naver.com/nx/ac',
			cookieName : 'NaverSuggestUse',
			listbox : '_resultBox',
			sFromName : 'topSearch',
			triangleBtn : 'triangleBtn',
			sListMaxLength : 55,
			listMaxCount : 15,
			request_type : 'jsonp',
			request_data : {
				q : '{query}',
				st : '100',
				r_format : 'json',
				t_koreng : '1',
				q_enc : 'UTF-8',
				r_enc : 'UTF-8',
				r_unicode : '0',
				r_escape : '1',
				frm : 'kin'
			},
			sTriangleUpOn : 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_up.gif',
			sTriangleUpOff : 'https://ssl.pstatic.net/sstatic/search/mypocket/v3/btn_atcmp_off_op2.gif',
			sTriangleDownOn : 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_down.gif',
			sTriangleDownOff : 'https://ssl.pstatic.net/static/common/snb/090513/bu_arrow_down3.gif'
		}).attach({
			actSubmit : function() {
				try {
					top.selectAction(this._elForm);
				} catch(e) {
					try {
						selectAction(this._elForm);
					} catch(e) {
					}
				}

				this._elForm.submit();
			}
		});
		
		var expertEntryBanner = $$.getSingle("div.gnb_eXpertLogo div.banner");
		if (!!expertEntryBanner) {
			var cookie = new $Cookie();

			$Fn(function () {
				$Element(expertEntryBanner).hide();

				var newDisabledUntil = new Date().getTime() + (3 * 1000 * 24 * 60 * 60);
				cookie.set("kin_expert_entry_banner_disabled_until", newDisabledUntil, 5);
			}).attach($$.getSingle("div.gnb_eXpertLogo div.banner button.buttonCancel"), 'click');

			var disabledUntilTimestamp = new Number(cookie.get("kin_expert_entry_banner_disabled_until"));
			if (!isNaN(disabledUntilTimestamp)) {
				if (new Date().getTime() > disabledUntilTimestamp) {
					cookie.remove("kin_expert_entry_banner_disabled_until");
					$Element(expertEntryBanner).show();
				}
			} else {
				$Element(expertEntryBanner).show();
			}
		}
		

		if (typeof nhn.Kin.ChatMenu !== "undefined") {
			window.oChatMenu = new nhn.Kin.ChatMenu();
		}
	}).attach(window, 'load');
</script>

<div id="container" class="container-fluid">
	<div class="container-fluid-content">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">프로필 영역</h3>

<strong class="blind">현재 페이지 경로</strong>
<ul class="location" id="au_location">
	<li><a href="/index.naver">홈</a></li>
	<li>
		
		
			<a href="/myinfo/index.naver">프로필</a>
		
	</li>
	
		
		
			<li class="last">나의 질문</li>
		
	
</ul>
<!-- 프로모션 배너 -->

<style type="text/css">
.banner_kincommon {position:relative; float:right; width:190px; margin:-40px 0 0 0; z-index:23;}
.banner_kincommon img {vertical-align:top;}
</style>

<h2 class="blind">프로필</h2>



	
	
		<div class="my_personal" id="au_main_profile_box" style="z-index:111;">
	
	<div class="my_personal_top"></div>
	<div class="my_personal_inner my_personal_simple">
		<div class="profile_section _profile_section">
			<div class="profile_info">
				<div class="profile_name">
					<a href="/profile/index.naver?u=%2BfOAdRVnRFqhn3BYvJIhXW6aA4yJLUU7JxpNv%2FsRBbM%3D">
						<strong class="profile_user"><%=id %></strong>
					</a>
					
				</div>
				
			</div>

			
				<div class="btn_info">
					<a href="profileForm.jsp" onclick="nhn.Kin.Utility.nClicks('prf.infoedit', '', '', event);"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_info_edit.gif" width="61" height="18" alt="정보관리"></a>
				</div>
			
		</div>

		<div class="profile_section2">
			
			
				<div class="my_main no_my_main">
					<div class="tit _tit">
						<img src="https://ssl.pstatic.net/static/kin/09renewal/h_my_main.gif" width="58" height="12" alt="주요활동분야"> <a href="#none" class="tooltip_help_button _help_major_active"><img src="https://ssl.pstatic.net/static/kin/09renewal/ico_help.gif" width="14" height="14" alt="도움말"></a>
						<!-- 주요활동분야 레이어 팝업 -->
						<div class="layer_base layer_balloon" style="width: 269px; top: 15px; left: -67px; display:none;" id="au_layer_help">
							<strong>주요활동분야란?</strong>
							<p>주요활동분야는 <em>채택답변이 5개 이상 있는 2단계 이하<br>디렉토리 중에서</em> 최대 4개까지 선택할 수 있습니다.<br>자신을 대표할 수 있는 주로 답변하는 디렉토리로<br>설정해주세요.</p><a class="close _lookUpChildElement('img')" href="#"><img alt="닫기" src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer.gif" width="19" height="19" class="_close"></a>
							<div class="edge_center"></div>
						</div>
						<!-- //주요활동분야 레이어 팝업 -->
					</div>

					
					
						<p class="no_action_tit">주요활동분야가 없습니다.</p>
						<p class="no_action">주요활동분야는 <span>채택답변이 5개 이상 있는 2단계 이하 디렉토리 중<br>에서</span> 최대 4개까지 선택할 수 있습니다. 자신을 대표할 수 있는 주로<br>답변하는 디렉토리로
							설정해주세요.</p>
					
				</div>
			
		</div>
		<div class="profile_section3">
			<dl class="my_spec">
				<dt>등급</dt>
				<dd>
					<strong class="grade4"><%=member.getGrade() %></strong>
					<!-- (내공 <strong>7,870</strong>) -->
				</dd> <!-- 등급에 따라 strong의 class가 변경됩니다. grade1~15 -->
				<dt>답변</dt>
				<dd>
					<strong><%=member.getAnswer() %></strong> (채택답변
					<%=member.getS_question() %><span class="bar">|</span>답변채택률
					##%)
				</dd>
				<dt>질문</dt>
				<dd>
					<strong><%=member.getQuestion() %></strong> (채택질문
					##<span class="bar">|</span>질문채택률
					##%)
				</dd>
			</dl>
		</div>
	</div>
	</div>
	<br>
	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.MainProfileBox.js"></script>

<!--// Personal_Info -->
			<div class="container-fluid-content__left">
				








<!--// Personal_Info  -->

<div class="snb snb_bordered snb_mykin">
	<h2 class="snb_title blind">프로필</h2>
	<ul class="snb_list">
		
		
		
		<li>
			<a href="answerList.jsp" class="" id="subMenuOfMykin">나의 답변 <span class="num">(<%=member.getAnswer() %>)</span></a>
			
			
		</li>
		<li class="is_active"><a href="questionList.jsp">나의 질문 <span class="num">(<%=member.getQuestion() %>)</span></a></li>
		<!-- <li><a href="/myinfo/userFriendList.naver">나의 친구 <span class="num">(0)</span></a></li>
		<li><a href="/myinfo/gift/point/history.naver">포인트로 감사 내역<em class="new"><span class="blind">NEW</span></em></a></li>
		<li><a href="/myinfo/opendicList.naver">나의 오픈사전 <span class="num">(0)</span></a></li>
		
			<li><a href="/myinfo/happybeanListAccumulation.naver">해피빈 기부함</a></li>
		
		<li class="">
			<a href="/myinfo/directQuestionList.naver">1:1질문</a>
			<ul class="sub">
				<li><a href="/myinfo/directQuestionList.naver">받은 질문 <span class="num">(0)</span></a></li>
				<li><a href="/myinfo/directQuestionSendList.naver">보낸 질문 <span class="num">(0)</span></a></li>
			</ul>
		</li>
		<li><a href="/myinfo/likeList.naver">나의 표정/궁금/보관지식</a></li>
		<li><a href="/myinfo/interest.naver">나의 관심질문</a></li>
		<li><a href="/myinfo/deletedArticleList.naver">나의 삭제 지식 <span class="num">(0)</span></a></li>
		<li class="">
			<a href="/myinfo/namecardProfileForm.naver">관리</a>
			<ul class="sub">
				<li><a href="/myinfo/namecardProfileForm.naver">기본정보</a></li>
				<li><a href="/myinfo/tempsaveList.naver">임시저장 <span class="num">(13)</span></a></li>
				<li><a href="/myinfo/pointHistory.naver" onclick="nhn.Kin.Utility.nClicks('edt*point', '', '', event);">내공</a></li>
			</ul>
		</li> -->
	</ul>
</div>
			</div>

			<div id="content" class="container-fluid-content__right">
				










	









<h3 class="blind">나의 질문</h3>
<ul class="tab1 _mykin_qna" role="tablist">
<li role="tab" class="on" aria-selected="true"><a href="/myinfo/questionList.naver" class="item" id="contentsOfMykin" title="선택됨">Q&amp;A</a></li>
<!-- <li role="tab" aria-selected="false"><a href="/myinfo/questionList.naver?isWorry=true" class="item">고민Q&amp;A</a></li>
<li role="tab" aria-selected="false"><a href="/myinfo/questionList.naver?section=mobileqna" class="item">SMS Q&amp;A</a></li>
<li role="tab" aria-selected="false"><a href="/myinfo/questionList.naver?onlyChoice=true" class="item">CHOiCE</a></li> -->

<!-- <li class="addlink">답변채택을 기다리는 질문이 <strong>2</strong>개 있습니다.
	<a href="#" class="btn_no_question _btn_no_question _param('false,0')">채택하지 않은 질문보기</a>
</li> -->

</ul>

<dl class="mykin_num">



	<dt>
		<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_all_question.gif" width="50" height="13" alt="총 질문수">
	</dt>
	<dd class="sub">
		<em><%=member.getQuestion() %></em>
	</dd>
	<dt><img src="https://ssl.pstatic.net/static/kin/09renewal/tx_my_question2.gif" width="59" height="12" alt="받은 답변수">
	</dt>
	<dd>##</dd>
	<dt>
		<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_my_question7.png" width="56" height="12" alt="질문 채택률">
	</dt>
	<dd>
	<div class="mykin_gage"><p class="bar">
		
		<span class="bar_in" style="width:84.4%;"></span></p>
		<span class="value"> 84.4%</span>
	</div></dd>


</dl>




	
	
		







	




<!-- <div id="au_directory_sorting_dir" class="sel_dir _param('KIN,QUESTION,,0,KIN,false,DIRECTORY,false,,,')">
	<div>
		<a href="#" class="sel_show">
			
			
				디렉토리별 보기
			
			
		</a>
		<div class="sel_list"></div>
		<iframe style="display:none;position:absolute;z-index:-1;top:17px;left:0;" frameborder="0" title="내용없음"></iframe>
	</div>
</div> -->




	<script type="text/template" id="yearListTpl">
	<ul>
		{for sequence:item in yearList}
			<li><a href="{=item.linkUrl}"{if item.year == currentYear} class="on"{/if}>{=item.year}</a></li>
		{/for}
	</ul>
	</script>
	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.DirectorySortingLayer.js"></script>

		






<script type="text/javascript">
	function selectOrder(order){
		location.href="/myinfo/questionList.nhn?isWorry=false&dirId=0&order="+order;
	}
</script>
<!-- <p class="pv_info">질문 목록은 질문자 본인만 확인할 수 있으며, 타인에게 공개되지 않습니다. 답변 있는 질문인 경우, 목록에서 제외 기능이 제공됩니다.</p> -->

<div class="txt_choice"><img src="https://ssl.pstatic.net/static/kin/09renewal/tx_questione.gif" width="63" height="12" class="mgr" alt="질문자 채택"><img src="https://ssl.pstatic.net/static/kin/09renewal/tx_kin.gif" width="63" height="12" alt="지식iN 채택"></div>

<table cellspacing="0" class="boardtype2 th_border" width="100%">



<caption><span class="blind">Q&amp;A 목록</span></caption>

<colgroup>
<col>



	<col width="80">
	<col width="117">
	<col width="87">
	<col width="62">
	<col width="87">
	<col width="51">
	<col width="61">

</colgroup>
<thead>
<tr>
<th scope="col" class="title">제목</th>

	<th scope="col">구분</th>

<th scope="col">디렉토리</th>
	
		<th scope="col" class="_best_flag_link ">상태<span class="down"><a href="#"><img height="12" width="12" alt="정렬" src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"></a></span>
			<div class="option_layer _best_flag_layer" style="display:none;">
				<ul>
					<li><a href="#" onclick="javascript:selectOrder('bestFlag');">전체</a></li>
					
					
						<li><a href="#" onclick="javascript:selectOrder('noBestFlag');">채택전</a></li>
						<li><a href="#" onclick="javascript:selectOrder('onlyBest')">채택완료</a></li>
					
				</ul>
			</div>
		</th>
	
<th scope="col">답변</th>
<th scope="col">표정</th>
<th scope="col" class="title pdl_5 on">작성일<span class="down"><a href="javascript:selectOrder('writeTime')"><img height="12" width="12" alt="정렬" src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"></a></span></th>
</tr>


<tr><td colspan="7" class="blank"></td></tr>

</thead>
<tbody id="au_board_list">
	<tr>
		<td class="title">
			<a href="#" rel="KIN">질문 제목</a> <%-- question.jsp?num=<%= %> --%>
			<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">
			<div class="btn_exclusion">
				<a href="#" class="link _btn_list_exclusion _ros _param('8040202,392745933,false,writeTime')">목록에서 제외</a>
			</div>
		</td>
		<td class="field ls0">
			<a href="/qna/list.naver">Q&amp;A</a>
	    </td>
		<td class="field"><a href="/qna/list.naver?dirId=8040202">카테고리</a></td>
		<td class="field2">
			<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">
		</td>
		<td class="t_num">답변 수</td>
		<td class="t_num"><span class="recomm">좋아요 수</span></td>
		<td class="t_num tc">작성 일자</td>
		</tr>
</tbody>
</table>

<form id="au_question_list_Out" method="post" action="/myinfo/questionListOutAction.naver">
	<input type="hidden" name="isWorry" value="">
	<input type="hidden" name="order" value="">
	<input type="hidden" name="dirId" value="">
	<input type="hidden" name="docId" value="">
	<input type="hidden" name="answerNo" value="0">
</form>

<div class="layer_base layer_type1" style="width:277px; top:15px; left:0; display:none;" id="au_except_list">
	<h1>이 질문을 목록에서 제외하시겠습니까?</h1>
	<dl class="desc3">

	<dt><strong>제외하기 전에 잠깐!</strong></dt>
	<dd><span></span>질문 목록에서만 제외되고 게시물은 삭제되지 않습니다.</dd>
	<dd><span></span>게시물에서는 질문자 아이디가 비공개로 처리됩니다.</dd>
	<dd><span></span>게시물이 채택이나 마감 상태가 아닌 경우, 마감 상태로 변경됩니다.</dd>
	<dd><span></span>해당 질문에 대한 알림이나 메일은 발송되지 않습니다.</dd>
	<dd><span></span>목록에서 제외하더라도 프로필 상단에 표시된 질문수는 변경되지 않습니다.</dd>
	<dd><span></span>1:1질문의 경우 1:1 보낸질문 목록에서도 사라집니다.</dd>
	</dl>
	<div class="btn">
		<a href="#" class="_lookUpChildElement('img')"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_confirm3.gif" width="45" height="26" alt="확인" class="_submit"></a>

		<a href="#" class="_lookUpChildElement('img')"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_cancel2.gif" width="45" height="26" alt="취소" class="_close_layer"></a>
	</div>
	<a href="#" class="close2 _lookUpChildElement('img')"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer3.gif" width="19" height="19" alt="닫기" class="_close_layer"></a>
</div>
<!-- //레이어 -->


<div class="paging space _tag_pager" style="display: none;">
	<div class="nav" style="display:block;"> <p class="btn"><a href="#" class="pr-prev _pre"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_prev.gif" width="23" height="23" alt="이전" title="이전"></a><a href="#" class="pr-next _next"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_next.gif" width="22" height="23" alt="다음" title="다음"></a></p></div>
</div>
<div class="paginate _default_pager">
	<a href="/myinfo/questionList.naver?page=1" class="on" title="선택됨">1</a>	<!-- 페이지 컨트롤 -->
</div>

	<div class="search">
	<fieldset>
		<legend>검색영역</legend>
		<form name="f" action="questionList.naver" method="get" id="frmSearch">
			<input type="hidden" name="isSearch" value="true">
			<input type="hidden" name="isWorry" value="false">
			<input type="hidden" name="section" value="qna">
			<input type="hidden" name="sd" value="question">
			<input type="text" name="query" title="검색어" class="keyword" value="키워드를 입력해주세요." id="au_search_bar" maxlength="200">
			<input type="image" alt="검색" title="키워드 검색" src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif">
		</form>
	</fieldset>
	<div class="btn_array_r">
		<a href="#" class="_clickcode:myq.question"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_question.gif" width="92" height="30" alt="질문하기"></a>
	</div>
	</div>
	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.SearchBar.js"></script>


			</div>
		</div>
	</div>
</div>
	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Myinfo.QuestionList.js"></script>
	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Myinfo.QuestionListExcept.js"></script>


</div> 






</body>
</html>