<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
%>
<html lang="ko"><head>

<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/profile.css">

<script>
	
	var pcDomain = "kin.naver.com";
	var pcDomainWithProtocol = "https://kin.naver.com";
	var pcKinServiceProtocol = "https";

	var mobileDomain = "m.kin.naver.com";
	var mobileDomainWithProtocol = "https://m.kin.naver.com";
	var mobileKinServiceProtocol = "https";

	var uploadDomain = "upload.kin.naver.com";
	var uploadDomainWithProtocol = "https://upload.kin.naver.com";
	var uploadKinServiceProtocol = "https";
</script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	<%=id %> 프로필 : 지식iN
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

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/kin-web-pc/20220511163235/js/min/message/MessageManager.js"></script>

<script>
	
	Array.prototype.forEach||(Array.prototype.forEach=function(r,o){if(null==this)throw new TypeError("Array.prototype.forEach called on null or undefined");var t,n,e=Object(this),a=e.length>>>0;if("function"!=typeof r)throw new TypeError(r+" is not a function");for(arguments.length>1&&(t=o),n=0;n<a;){var f;n in e&&(f=e[n],r.call(t,f,n,e)),n++}});
	Array.from||(Array.from=function(){var r;try{r=Symbol.iterator?Symbol.iterator:"Symbol(Symbol.iterator)"}catch(t){r="Symbol(Symbol.iterator)"}var t=Object.prototype.toString,n=function(r){return"function"==typeof r||"[object Function]"===t.call(r)},o=Math.pow(2,53)-1,e=function(r){var t=function(r){var t=Number(r);return isNaN(t)?0:0!==t&&isFinite(t)?(t>0?1:-1)*Math.floor(Math.abs(t)):t}(r);return Math.min(Math.max(t,0),o)};return function(t){var o=Object(t),a=n(o[r]);if(null==t&&!a)throw new TypeError("Array.from requires an array-like object or iterator - not null or undefined");var i,u=arguments.length>1?arguments[1]:void 0;if(void 0!==u){if(!n(u))throw new TypeError("Array.from: when provided, the second argument must be a function");arguments.length>2&&(i=arguments[2])}var f=e(o.length);return function(r,t,n,o,e,a){for(var i=0;i<n||e;){var u=o(i),f=e?u.value:u;if(e&&u.done)return t;t[i]=a?void 0===r?a(f,i):a.call(r,f,i):f,i+=1}if(e)throw new TypeError("Array.from: provided arrayLike or iterator has length more then 2 ** 52 - 1");return t.length=n,t}(i,n(this)?Object(new this(f)):new Array(f),f,function(t,n){var o=t&&n[r]();return function(r){return t?o.next():n[r]}}(a,o),a,u)}}());
	Object.defineProperty(Element.prototype,"dataset",{get:function(){for(var t=this.attributes,e={},r=0;r<t.length;r++){var n=t[r];if(n&&n.name&&/^data-\w[\w-]*$/.test(n.name)){var a=n.name,i=n.value,u=a.substr(5).replace(/-./g,function(t){return t.charAt(1).toUpperCase()});Object.defineProperty(e,u,{enumerable:!0,get:function(){return this.value}.bind({value:i||""}),set:function(t,e){void 0!==e?this.setAttribute(t,e):this.removeAttribute(t)}.bind(this,a)})}}return e}});

	
	Element.prototype.matches||(Element.prototype.matches=Element.prototype.msMatchesSelector||Element.prototype.webkitMatchesSelector);
	Element.prototype.closest||(Element.prototype.closest=function(e){var t=this;do{if(Element.prototype.matches.call(t,e))return t;t=t.parentElement||t.parentNode}while(null!==t&&1===t.nodeType);return null});
</script>

<script language="javascript">
	var popupX = (document.body.offsetWidth / 2) - (786 / 2);
	//&nbsp;만들 팝업창 좌우 크기의 1/2 만큼 보정값으로 빼주었음
	
	var popupY= (window.screen.height / 2) - (1013 / 2);
	//&nbsp;만들 팝업창 상하 크기의 1/2 만큼 보정값으로 빼주었음

	function showPopup(){
		window.open("activityCert.jsp","지식iN 활동 증명서 : 지식iN","status=no, width=783, height=1013, left="+ popupX + ", top="+ popupY);
	}
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
	<li class="last">
		
		
			<a href="/myinfo/index.naver">프로필</a>
		
	</li>
	
</ul>
<!-- 프로모션 배너 -->








<style type="text/css">
.banner_kincommon {position:relative; float:right; width:190px; margin:-40px 0 0 0; z-index:23;}
.banner_kincommon img {vertical-align:top;}
</style>


			








<script>
function photoView(uri){
	var url = "/popup/photoView.naver?photoUrl=" + encodeURIComponent(uri);
	nhn.Kin.Utility.popup(url, 'photoView', {width:100,height:100,status:0});
}
</script>

<!-- Personal_Info  -->
<h2 class="blind">프로필</h2>


<div class="my_personal" id="au_main_profile_box" style="">

	<div class="my_personal_top"></div>
	<div class="my_personal_inner">
		
		<div class="profile_section">
			<div class="profile_group">
				
					
					
					
						<a href="/people/levelup/index.naver" class="profile_animate profile_default">
							<span class="thumbnail">
								<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200/4_3d.png" width="100%" height="100%" alt="1 님의 프로필">
							</span>
							<span class="mask_bdr"></span>
						</a>
					
				
				
				
					<a href="#" onclick="nhn.Kin.Utility.nClicks('prf.imgedit', '', '', event);nhn.Kin.checkRosAndGoUrl(event, '/myinfo/namecardProfileForm.naver?openProfilePopup=Y', '');return false;" class="edit_photo _ros" target="_blank">
						<span class="photo_edit_button">
							<span class="blind">프로필 사진 변경</span>
						</span>
					</a>
				
				
			</div>
			<div class="profile_info">
				<div class="profile_name">
					<strong class="profile_user"><%=id %></strong>
					
				</div>
				
				
				
				
					<div class="profile_answer_date">최초답변일 <span>2007.12.07.</span></div>
				
				
			</div>
			
                <div class="btn_info cert"> <!-- 활동증명서 보기 버튼 팝업창  -->
					<a href="#" class="btn_cert" onclick="showPopup()" target="_blank"><span>활동증명서 보기<em class="sp_cert ico_arrow"></em></span></a>
				</div>
			
			
			









<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.EditorHistory.js"></script>
		</div>
		<div class="profile_section2">
			<div class="my_intro no_my_intro">
				<div class="my_title">
					
					
					
					<%if(member.getIntro() == null) {%>
						<p class="sum">작성된 소개글이 없습니다.</p>
						
						<p class="no_action">
							본인을 알릴 수 있는 짤막한 소개글을 남겨 주세요.<br>
							소개글이 있으면 질문하신 분이 답변을 확인하고 채택하는데 <br>
							많은 도움이 됩니다.
						</p>
					<%}else { %>
						<p class="sum"><%=member.getIntro() %></p>
					<%} %>
					
				</div>
				<dl class="my_site">
					
				</dl>
				
				
					<p class="btn_report">
						<a href="profileForm.jsp" onclick="nhn.Kin.Utility.nClicks('prf.prfedit', '', '', event);nhn.Kin.checkRosAndGoUrl(event, '/myinfo/namecardProfileForm.naver', '');" class="_ros"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_intro_edit_130927.gif" width="27" height="16" alt="수정"></a>
					</p>
				
			</div>
			
			
				
				
				<div class="my_main no_my_main _licenseList">
					<div class="tit">
						<img class="myinfo_qual_title" src="https://ssl.pstatic.net/static/kin/09renewal/h_my_qual.png" width="39" height="11" alt="취득자격">
						<button class="tooltip_help_button _licenseHelpLayerOpenBtn" onclick="nhn.Kin.Utility.nClicks('prf.lcntip', '', '', event);"><img src="https://ssl.pstatic.net/static/kin/09renewal/ico_help.png" width="16" height="16" alt="도움말"></button>
						<a href="/myinfo/licenseSettingForm.naver" class="qual_admin" onclick="nhn.Kin.Utility.nClicks('prf.lcnedit', '', '', event);nhn.Kin.checkRosAndGoUrl(event, '/myinfo/licenseSettingForm.naver', '');"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_info_qual_161124.png" alt="취득자격관리"></a>

						
						
						
						






<div class="layer_base layer_balloon _licenseHelpGuideLayer" style="width:289px; top: 17px; left: -95px; display:none;">
    <div class="layer_header border_none">
        <strong>취득자격이란?</strong>
    </div>

    <div class="layer_content">
        <p>취득 자격은 <em>오프라인에서 취득한 국가자격</em>으로, 실명인증을 통해 지식iN 서비스에 노출할 수 있습니다. 나의 답변에 신뢰를 줄 수 있도록 취득 자격을 설정해보세요.</p>
    </div>

    <button class="close _closeHelpGuide" onclick="nhn.Kin.Utility.nClicks('lct.x', '', '', event);"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer.gif" alt="레이어팝업 닫기"></button>
    <div class="edge_center"></div>
</div>
					</div>
					<p class="no_action_tit">설정된 취득 자격이 없습니다. </p>
					<p class="no_action">오프라인에서 취득한 국가기술자격이 있다면<br>프로필에 취득 자격을 노출해보세요.</p>
				</div>
				
				
				

				<div class="my_main no_my_main">
					
					<div class="tit">
						<img src="https://ssl.pstatic.net/static/kin/09renewal/h_my_main.gif" width="58" height="12" alt="주요활동분야"> <a href="#none" class="tooltip_help_button _help_major_active"><img src="https://ssl.pstatic.net/static/kin/09renewal/ico_help.gif" width="14" height="14" alt="도움말"></a>

						
						<div class="layer_base layer_balloon" style="width:288px; top:17px; left:-75px; display:none;" id="au_layer_help">
							<div class="layer_header border_none">
								<strong class="title">주요활동분야란?</strong>
							</div>

							<div class="layer_content">
								<p>주요활동분야는 <em>채택답변이 5개 이상 있는 2단계 이하<br>디렉토리 중에서</em> 최대 4개까지 선택할 수 있습니다.<br>자신을 대표할 수 있는 주로 답변하는 디렉토리로<br>설정해주세요.</p>
							</div>
							<button class="close _lookUpChildElement('img')">
								<img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer.gif" alt="레이어팝업 닫기" class="_close">
							</button>
							<div class="edge_center"></div>
						</div>
					</div>
					
					
						<p class="no_action_tit">주요활동분야가 없습니다.</p>
						<p class="no_action">
							주요활동분야는 <span>채택답변이 5개 이상 있는 2단계 이하 디렉토리 중<br>에서</span> 최대 4개까지 선택할 수 있습니다. 자신을 대표할 수 있는 주로<br>답변하는 디렉토리로 설정해주세요.
						</p>
					
				</div>
			
			
				
			
		</div>
		
		
			<div class="profile_section3">
				<div class="lv_area grd_lv4">
					<!-- ========== 레벨 바 ========== -->
					<div class="mylv">
						<div class="gauge" id="level_guage">
							
							<strong class="my_level"><span class="level_number">3</span>초수<a href="/people/levelup/index.naver" target="_blank" class="guide">안내</a></strong>
							<div class="grd_wrap">
								
								<div class="inner" style="width: 100%;">
									<div class="grd_bar"><span class="grd_action"></span></div>
									<div class="grd_detail">
										<div class="detail_box">
											<div class="detail_info" style="display: block;"><p class="tit">채택</p><p class="sum">50</p><span class="tip"></span></div>
										</div>
									</div>
								</div>
							</div>
							
							
							<span class="my_level_up"><span class="level_number">4</span>중수</span>
													
						</div>
					</div>
					

					<ul class="lv_cnt">
					<li><em class="tit">전체답변</em><p class="num" id="total_answer"><%=member.getAnswer() %></p></li>
					<li><em class="tit">채택답변</em><p class="num" id="total_best"><%=member.getS_question() %></p></li>
					<li><em class="tit">답변채택률</em><p class="num" id="best_rate">##%</p></li>
					</ul>

					
						<!-- if문으로 '중수'면 '고수'까지 남은 채택 답변 ##개
						'고수'면 '영웅'까지 남은 채택 답변 ##개 이런식으로 작성 -->
						<p class="lv_til"><em>중수</em><span>까지 남은 채택 답변</span><strong>12</strong></p>
						
					
				</div>
				<dl class="my_spec">
				
					<dt>내공순위</dt>
					<dd><strong>468,730</strong>위</dd>
				
				<dt>질문</dt>
				<dd>
					<span class="q_list">전체질문 <strong><%=member.getQuestion() %>건</strong></span>
					<!-- <span class="q_list rec_text">답변 받은 질문 <strong>##건</strong></span>
					<span class="q_list">전체마감률 <strong>93.9%</strong></span> -->
					<span class="q_list rec_text">답변채택률 <strong>84.9%</strong></span>
				</dd>
				<dt>받은추천</dt>
				<dd>
					<span class="q_list">좋아요 <strong><%=member.getLike_n() %></strong></span>
				</dd>


<div class="layer_base layer_type1 layer_editor" id="editorActivityHistory" style="display:none;">
</div>

<script type="text/template" id="editorHistryTemplate">
	<h1>활동히스토리</h1>
	<div class="history" >
		<table cellspacing="0" class="boardtype2" summary="에디터 활동히스토리" width="100%"> 
		<colgroup>
		<col width="110">
		<col width="136">
		<col width="184"> 
		<col width="17">
		</colgroup>
		<thead>
		<tr> 
		<th scope="col">활동분야</th>
		<th scope="col">활동기간</th>
		<th scope="col">우수에디터</th>
		<th scope="col"><span class="blind">상세</span></th>
		</tr>
		</thead>
		<tbody>
		{for listNo:list in result.activityHistoryList}
		<tr id="list{=listNo}">
		<td class="title">{=list.dirName}</td>
		<td class="period">{=list.startDate} ~ {=list.endDate}</td>
		<td class="hst">
			<div class="hslst">
				<ul>
				{for bestNo:best in list.bestHistory}
				
				<li class="it{=bestNo}">
					
					<a class="bd bd{=best.bestMonth}" onMouseOver="$Element('list{=listNo}').addClass('on');$Element('tooltip{=listNo}{=bestNo}').show();return false;" onMouseOut="$Element('list{=listNo}').removeClass('on');$Element('tooltip{=listNo}{=bestNo}').hide();return false;">
						<span class="bd_ly" id="tooltip{=listNo}{=bestNo}">
							{if list.isOldHistory == "N"}
							<span>{=best.bestYear}년 {=best.bestMonth}월</span> 우수활동에디터
							{else}
							<span>총 {=list.bestHitoryCount}회</span> 우수 활동 에디터로 선정되셨습니다.
							{/if}
							<em></em>
						</span>
					</a>
				</li>
				{/for}
				<span class="ttl">{if list.bestHitoryCount > 0}총{=list.bestHitoryCount}회{/if}</span>
				</ul>				
			</div>
		</td>
		{if isMyPage ==  "Y"}
		<td class="hst_b">
			
			<button type="button" onclick="nhn.Kin.Userinfo.EditorHistory.openBox('{=listNo}');"><span class="blind">상세보기</span></button>
		</td>
		{else}
		<td></td>
		{/if}
		</tr>
		{if isMyPage ==  "Y"}
		{if list.isOldHistory == "N"}
		<!-- 활동 상세정보 행 type1 -->
		<tr class="hsdtl" id="editorHistory{=listNo}" style="display:none">
		<td colspan="3">
			<div class="hsdtl_wp">
				<div class="hsdtl_wp2 _history_detail">
					<dl class="hsdtl_t">
					<dt><span class="blind">히스토리 상세</span></dt>
					<dd class="drp">
						<span>답변 (채택수)</span>
						<strong>{=list.detailHistory.totalAnswer} ({=list.detailHistory.totalAnswerSelect})</strong>
					</dd>
					<dd>
					<span>신고</span>
						<strong>{=list.detailHistory.reportCount}</strong>
					</dd>
					<dd>
						<span>디렉토리 이동</span>
						<strong>{=list.detailHistory.dirmoveCount}</strong>
					</dd>
					<dd>
						<span>댓글삭제</span>
						<strong>{=list.detailHistory.delCommentDo}</strong>
					</dd>
					</dl>
				</div>
			</div>
		</td>
		</tr>
		{else}
		<!-- 활동 상세정보 행 type2-->
		<tr class="hsdtl" id="editorHistory{=listNo}" style="display:none">
		<td colspan="3">
			<div class="hsdtl_wp">
				<div class="hsdtl_wp2 _history_detail">
					<dl class="hsdtl_t hsdtl_t_v2">
					<dt><span class="blind">히스토리 상세</span></dt>
					<dd>
						<span>에디터 추천</span>
						<strong>{=list.detailHistory.recommendCount}</strong>
					</dd>
					<dd>
						<span>답변 추천</span>
						<strong>{=list.detailHistory.evaluateCount}</strong>
					</dd>
					<dd>
						<span>신고</span>
						<strong>{=list.detailHistory.reportCount}</strong>
					</dd>
					<dd>
						<span>ID신고</span>
						<strong>{=list.detailHistory.idReportCount}</strong>
					</dd>
					<dd>
						<span>이동</span>
						<strong>{=list.detailHistory.dirmoveCount}</strong>
					</dd>
					<dd>
						<span>댓글삭제</span>
						<strong>{=list.detailHistory.delCommentCount}</strong>
					</dd>
					</dl>
				</div>
			</div>
		</td>
		</tr>
		{/if} 
		{/if} 
		{/for}
		</tbody>
		</table>
		
		<p class="hs_info">상세내역은 각 활동별 총 활동 건수만 제공합니다.</p>
	</div>
	{if pageInfo.lastPage > 1}
	<div class="paginate">
		{if pageInfo.hasPre == "Y"}
		<a href="#" onclick="nhn.Kin.Userinfo.EditorHistory.getEditorHistoryAjax('{=u}','{=pageInfo.prePage}','{=isMyPage}');">이전</a>
		{/if}
		{for p in pageInfo.pageList}
			<a href="#" onclick="nhn.Kin.Userinfo.EditorHistory.getEditorHistoryAjax('{=u}','{=p}','{=isMyPage}');"{if pageInfo.page == p} class="on" title="선택됨"{/if}>{=p}</a>
		{/for}
		{if pageInfo.hasNext == "Y"}
		<a href="#" onclick="nhn.Kin.Userinfo.EditorHistory.getEditorHistoryAjax('{=u}','{=pageInfo.nextPage}','{=isMyPage}');">다음</a>
		{/if}
	</div>
	{/if}

	<div class="btn">
		<a href="#" onclick="$Element('editorActivityHistory').hide();return false;"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_confirm3.gif" width="45" height="26" alt="확인"></a>
	</div>
	<a class="close2" href="#" onclick="$Element('editorActivityHistory').hide();return false;"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer3.gif" width="19" height="19" alt="닫기"></a>
</script>
				</dl>
				
				
				
					<div class="helper_area">
					    <div class="inner">
					        <div class="icon_area">
					            <i class="sp_common ico_helper"></i>
					        </div>
					        <div class="content_area">
					            <em class="tit">도움을 준 사람 수 <a href="#" class="_helperLayerOpenBtn" onclick="nhn.Kin.Utility.nClicks('prf.helptip', '', '', event);"><img src="https://ssl.pstatic.net/static/kin/09renewal/ico_help.png" width="16" height="16" alt="도움말"></a></em>
					            <div class="layer_base layer_balloon" style="width:160px; top:16px; left:9px; display:none;" id="helperLayer">
					                <p><em><%=id %>님</em>의 답변으로 도움을 받은 질문자 수 입니다.</p>
									<button class="close _lookUpChildElement('img') _helperLayerCloseBtn">
										<img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer.gif" alt="레이어팝업 닫기">
									</button>
					                <div class="edge_center"></div>
					            </div>
					            <div class="count">
					                <span class="num"><%=member.getS_question() %></span>
					            </div>
					        </div>
					    </div>
						
						
						
					</div>
				
				
				
				
				
			</div>	
			
	</div>	
</div>
<!-- {{{ -->
<script id="tplBadgeList" type="text/template">
	{if acquiredBadgeList != null}
		{for badge in acquiredBadgeList}
		<li class="_badge">
			<a href="#"><img src="https://ssl.pstatic.net/static/common/blank.gif" width="54" height="54" alt="배지설명" style="background:url({=badge.badgeImageUrl}) no-repeat 0 0;_background:none;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src='{=badge.badgeImageUrl}',sizingMethod='crop')"></a>
			<div class="badge_bl {if badge.bingoId}extend{/if}">
			{if badge.bingoId}
				<div class="badge_bl_top"></div>
			{/if}
			<div class="badge_bl_inner">
				<dl>
				<dt><strong>{=badge.eventName}</strong></dt>
				<dd>{=badge.eventDesc}</dd>
				{if badge.acquireTimeMap}
					<dd class="date">배지 획득일 : <em>{=badge.acquireTimeMap.year}년 {=badge.acquireTimeMap.month}월 {=badge.acquireTimeMap.day}일</em></dd>
				{/if}
				{if badge.bingoId}
					<dd class="button"><a href="/bingo/bingoHome.naver?bingoId={=badge.bingoId}">빙고 바로가기</a></dd>
				{/if}
				</dl>
			</div>
			{if badge.bingoId}
				<div class="badge_bl_bottom"></div>
			{/if}
			<a href="#" class="badge_bl_clse">닫기</a>
		</li>
		{/for}
	{/if}
</script>
<!-- }}} -->
<script type="text/javascript">

$Fn(function() {
	nhn.Kin.Utility.startGradeGraph($('level_guage'), 1501, 3000, 7870, false);
	nhn.Kin.Utility.startGradeGraphNumberChange($('total_answer'), 25, $('total_best'), 8, $('best_rate'), 50.0);
}, this).attach(document, 'domready');


var elNumbers = null;
var elSpotDetail = $("profile_section3");
if (elSpotDetail) {
	elNumbers = cssquery("._numberToImage", elSpotDetail);
}

if (elNumbers){
	for (var i = 0; i < elNumbers.length; i++) {
		aParam = nhn.Kin.Utility.extractParam(elNumbers[i].className);
		elNumbers[i].innerHTML = nhn.Kin.Utility.getTagNumberString(aParam[0], aParam[1]) + elNumbers[i].innerHTML;
	}
}


$Fn(function () {
	new naver.kin.FriendAndBlockMenu({
		elRoot : $('container'),
		isProfile : true
	});
}, this).attach(document, 'domready');
</script>

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.ProfileAnimation.js"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.EditorHistory.js"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.MainProfileBox.js"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.FriendAndBlockMenu.js"></script>

			




			<div class="container-fluid-content__left">
				








<!--// Personal_Info  -->

<div class="snb snb_bordered snb_mykin">
	<h2 class="snb_title blind">프로필</h2>
	<ul class="snb_list">
		
		
		
		<li>
			<a href="answerList.jsp" class="" id="subMenuOfMykin">나의 답변 <span class="num">(<%=member.getAnswer() %>)</span></a>
			
			
		</li>
		<li><a href="questionList.jsp">나의 질문 <span class="num">(<%=member.getQuestion() %>)</span></a></li>
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
				<div id="myinfoIndex_1" class="my_home">
					






<div class="interest_area">
	<div class="interest_section _interest_section">
		<h4><img src="https://ssl.pstatic.net/static/kin/09renewal/h_interest_area.gif" width="42" height="11" alt="관심분야"> <span>1개</span>
		<a href="#" class="btn_manage _ros" id="contentsOfMykin" onclick="nhn.Kin.Utility.nClicks('myh.dir', '', '', event);" target="_blank"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_manage.gif" width="28" height="16" alt="관리"></a>
		</h4>
		<ul class="tag_cloud">
	
			<li><a href="/qna/list.naver?dirId=202" target="_blank">게임</a>
				<!-- <span class="bar">|</span> --> <!-- 태그가 1개면 bar가 없어도됨 -->
				<span class="layer_base layer_prorank _layer_expert" style="top:15px; display:none;">전문가 순위
				<em> 0위</em></span>
			</li>

		</ul>
		
	</div>

	<div class="interest_section interest_keyword _interest_keyword">
		<h4><img src="https://ssl.pstatic.net/static/kin/09renewal/h_interest_keyword.gif" width="51" height="11" alt="관심키워드"> <span>0개</span>
		<a href="#" class="btn_manage _ros _btn_interestKeyword" isreload="true" onclick="nhn.Kin.Utility.nClicks('myh.key', '', '', event);"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_manage.gif" width="28" height="16" alt="관리"></a>
		</h4>
		<ul class="tag_cloud">
		
		
			<li class="no_interest">관심키워드가 없습니다. 관심키워드를 <a href="#" id="au_register_interest_keyword">등록</a>해 주세요.</li>
		
		
		</ul>
	</div>
</div>

<!-- 관심키워드 추가 레이어 -->




<div class="layer_base layer_type1 _keywordLayer" style="width:277px; display:none;">
	<h1><label for="interestKeywordInput_mykin">관심키워드 설정</label></h1>
	<div class="find_keyword">
		<input type="text" id="interestKeywordInput_mykin" class="input_txt _keywordInput" style="width:220px" maxlength="20">
		<a href="#" class="_lookUpChildElement('img') _keywordAddBtn"><img class="_keywordAddBtn" src="https://ssl.pstatic.net/static/kin/09renewal/btn_add.gif" width="46" height="23" alt="추가"></a>
	</div>
	<p class="_defaultMsg desc">관심 키워드는 20개까지 등록할 수 있습니다.</p>
	<p class="_overMsg desc" style="display:none"><em><strong>최대 키워드 개수(20개)를 초과하였습니다.</strong></em><br>기존에 등록한 관심키워드를 삭제하시면, 다시<br>다른 키워드를 추가하실 수 있습니다.</p>
	<p class="_errorMsg desc" style="display:none;"></p>

	<ul class="keyword _keywordList"></ul>
	
	<div class="btn">
		<a href="#" class="_lookUpChildElement('img') _closeLayer"><img class="_closeLayer" src="https://ssl.pstatic.net/static/kin/09renewal/btn_close5.gif" width="48" height="28" alt="닫기"></a>
	</div>
	<a href="#" class="close2 _lookUpChildElement('img') _closeLayer _keywordLayerLastButton"><img class="_closeLayer" src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer3.gif" width="19" height="19" alt="닫기"></a>
</div>
<script id="errorMsgTpl" type="text/template">
<em><strong>{=errorMsg}</strong></em>							
</script>
<!-- //관심키워드 추가 레이어 -->

					







<div id="profile-message-container" class="my_kin_activity _my_kin_activity">
	<h3>내소식</h3>
	<ul id="message-list" class="pr-content"><span class="tit">최근 이틀 간 지식iN 활동소식이 없습니다.</span></ul>

	
	<div id="message-list-paging" class="nav" style="display:none;">
		<a href="#" class="pr-prev" onclick="nhn.Kin.Utility.nClicks('myh.actprev','','',event);">
			<img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav2_prev.gif" width="17" height="17" alt="이전">
		</a>
		<a href="#" class="pr-next" onclick="nhn.Kin.Utility.nClicks('myh.actnext','','',event);">
			<img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav2_next.gif" width="17" height="17" alt="다음">
		</a>
	</div>
</div>

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Myinfo.MyKinActivity.js"></script>
<script type="text/javascript">
    $Fn(function() {
        nhn.Kin.Myinfo.MyKinActivity.initialize();
    }).attach(window, 'load');
</script>
					






<!-- 답변 -->

    
    <div class="my_info_area">
        
        <h4 class="h_my_title type_default ">
            
                <img src="https://ssl.pstatic.net/static/kin/09renewal/h_my_answer.gif" width="54" height="13" alt="나의 답변">
                <span class="eng">(<%=member.getAnswer() %>)</span>
            
            
        </h4>
        <table cellspacing="0" class="boardtype2 th_border my_table" width="100%">
            <caption><span class="blind">나의 답변 목록으로 제목, 디렉토리, 채택, 표정, 작성</span></caption>
            <colgroup>
                <col>
                <col width="105">
                <col width="54">
                <col width="54">
                <col width="90">
            </colgroup>
            <thead>
            <tr>
                <th scope="col" class="title">제목</th>
                <th scope="col">디렉토리</th>
                <th scope="col">채택</th>
                <th scope="col">표정</th>
                <th scope="col" class="title">작성</th>
            </tr>
            <tr>
                <td colspan="5" class="blank2">&nbsp;
                
            </td></tr>
            </thead>
            <tbody>
            
                
                    <tr>
                        <td class="qna">
                            <dl class="dlist_qna">
                                <dt>
                                    <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                                    <a href="/qna/mydetail.naver?dirId=130405&amp;docId=392740384&amp;answerNo=1" onclick="nhn.Kin.Utility.nClicks('myh.', '130405_392740384', '1', event);">질문 제목</a>
                                    
                                </dt>
                                <dd>
                                    <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>답변 내용(일부분 몇자이내)
                                </dd>
                            </dl>
                        </td>
                        <td class="field"><a href="/qna/list.naver?dirId=130405">카테고리</a></td>
                        <td class="field">
                            	<!-- if 채택을 받았다면 이미지 띄워주기 -->
                                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">
                            
                            
                            
                        </td>
                        <td class="t_num"><span class="recomm">좋아요 수</span></td>
                        <td class="t_num tc">작성 일자</td>
                    </tr>

            </tbody>
        </table>
        
            <span class="more"><a href="/myinfo/answerList.naver" onclick="nhn.Kin.Utility.nClicks('myh.amore', '', '', event);">더보기</a></span>
        
        
    </div>



					






<!-- 질문 -->


    
    <div class="my_info_area">
        <h4 class="h_my_title type_default">
            <img src="https://ssl.pstatic.net/static/kin/09renewal/h_my_question.gif" width="55" height="13" alt="나의 질문">
            <span class="eng">(<%=member.getQuestion() %>)</span>
            
                <!-- <span class="highlight">답변채택을 기다리는 질문이 <strong>2</strong>개 있습니다.</span> -->
                <!-- <a class="go_check" href="/myinfo/questionList.naver?isWorry=false&amp;dirId=0&amp;order=noBestFlag" onclick="nhn.Kin.Utility.nClicks('myh.qpick', '', '', event);">채택하러 가기</a> -->
            
        </h4>
        <table cellspacing="0" class="boardtype2 th_border my_table" width="100%">
            <caption><span class="blind">나의 질문 목록으로 제목, 디렉토리, 채택, 답변, 표정, 작성</span></caption>
            <colgroup>
                <col>
                <col width="105">
                <col width="54">
                <col width="54">
                <col width="54">
                <col width="90">
            </colgroup>
            <thead>
            <tr>
                <th scope="col" class="title">제목</th>
                <th scope="col">디렉토리</th>
                <th scope="col">채택</th>
                <th scope="col">답변</th>
                <th scope="col">표정</th>
                <th scope="col" class="title">작성</th>
            </tr>
            <tr>
                <td colspan="6" class="blank">&nbsp;</td>
            </tr>
            </thead>
            <tbody id="au_board_list_1">
            
                <tr>
                    <td class="title">
                        
                        
                        <a href="/qna/detail.naver?d1id=8&amp;dirId=8040202&amp;docId=392745933" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '8040202_392745933', '1', event);">나이키 신발 이름</a>
                        
                        
                            <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">
                        
                        
                        
                    </td>
                    <td class="field"><a href="/qna/list.naver?dirId=8040202">신발</a></td>
                    <td class="field">
                        
                        
                            <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">
                        
                    </td>
                    <td class="t_num">1</td>
                    <td class="t_num"><span class="recomm">0</span></td>
                    <td class="t_num tc">2021.06.20.</td>
                </tr>            
            
            </tbody>
        </table>
        <span class="more"><a href="/myinfo/questionList.naver" onclick="nhn.Kin.Utility.nClicks('myh.qmore', '', '', event);">더보기</a></span>
    </div>
</div>
</div>
</div>
</div>
</div>
</div>



<%@ include file="../footer.jsp" %>
</body>
</html>