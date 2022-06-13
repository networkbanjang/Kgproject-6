<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/project_6/images/tab_icon.png" rel="icon" type="icon" />
<%@ include file="../header.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	ArrayList<MemberDTO> eliteMember;
	MemberDAO memberDao = new MemberDAO();
	eliteMember = memberDao.selectElite();
	
%>
<html lang="ko">
<head>
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/hall.css">
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	명예의 전당 : 지식iN
</title>

<script type="text/javascript">

if ( typeof window.nhn  == "undefined" ) window.nhn = {};
if ( typeof window.naver  == "undefined" ) window.naver = {};
nhn.isLogin = false;
nhn.isJunior = ("N"=="Y");
nhn.isKinUser = false;
nhn.isPortableDevice = false;
nhn.jsDir = 'https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min';

var g_ssc = ("kin.hof" == "") ? "kin.temp" : "kin.hof";
var ccsrv="cc.naver.com";


var kinRos = {
	bIsNoticeDisplay : ("false" == "" || "false" == "false") ? false : true,
	bIsActionNoticeDisplay : ("false" == "" || "false" == "false") ? false : true

};

var standardReportPopupUrl = "https://srp2.naver.com/report";
</script>

<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.hall.LNB.js"></script><script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.SocialPlugIn.js"></script><script src="https://ssl.pstatic.net/static.gn/js/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script><script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.js?20220603"></script><link id="naver-splugin-css" rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/spi/css/20210531/spi_standard_https.css">
</head>
<body>
<div id="wrap" class="wrap wrap_hall"> 
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

<script> /* 버튼 onclick -> 좋아요 수가 1 증가 but 같은 id는 하나만 누를 수 있게 구현해야함 그리고 db에 저장 */
	var count = 0;
	function increaseBtn(){
		count += 1;
		document.querySelector("#countBtn").innerText=count;
	}
</script>

<div id="container" class="container-fluid">
	<div class="container-fluid-content hall_home">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">명예의전당 영역</h3>
			






<!-- ----- 날짜별로 정보 가져오기 ----- --> 
<!-- <div class="Nlnb">
	<div class="Nlnb_submenu">
		<div class="Nlnb_submenu_inner">
			<ul id="subMenuOfHall" class="Nlnb_menu_sublist">	
	
		<li class="Nsublist_item">
			<a href="index.naver?year=2022&amp;month=4" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.04</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item is_active">
			<a href="index.naver?year=2022&amp;month=3" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.03</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="index.naver?year=2022&amp;month=2" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.02</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="index.naver?year=2022&amp;month=1" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.01</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="index.naver?year=2021&amp;month=0" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2021</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="index.naver?year=2020&amp;month=0" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2020</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="index.naver?year=2019&amp;month=0" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2019</span>
			</a>
			
		</li>
	
</ul>
		</div>
		<div class="nav_area">
			<a id="prevActiveDateButton" href="#" class="prev sp_hall is_inactive" onclick="nhn.Kin.Utility.nClicks('LNB.hofymore', '', '', event);">이전</a>
			<a id="nextActiveDateButton" href="#" class="next sp_hall" onclick="nhn.Kin.Utility.nClicks('LNB.hofymore', '', '', event);">다음</a>
		</div>
	</div>
</div> -->
<div class="hall_coverwrap" id="contentsOfHall">
	<div class="Nlnb">
		<div class="Nlnb_menu" data-type="scroll-x">
			<div id="lnbMenu" class="Nlnb_menu_inner">
				<ul class="Nlnb_menu_list"> 
					<li class="Nlist_item is_active">
						<a href="index.jsp" class="Nitem_link _nclicks:hfm.home"><span class="Nitem_link_menu">전당홈</span></a>
					</li>
					<li class="Nlist_item">
						<a href="topic.jsp" class="Nitem_link _nclicks:hfm.keyword"><span class="Nitem_link_menu">질문키워드</span></a>
					</li>
					<li class="Nlist_item">
						<a href="eliteUser.jsp" class="Nitem_link _nclicks:hfm.king"><span class="Nitem_link_menu">채택왕</span></a>
					</li>
					<li class="Nlist_item">
						<a href="kinupQna.jsp" class="Nitem_link _nclicks:hfm.qa"><span class="Nitem_link_menu">추천Q&amp;A</span></a>
					</li>
					<li class="Nlist_item">
						<a href="commentList.jsp" class="Nitem_link _nclicks:hfm.talk"><span class="Nitem_link_menu">TALK</span><em class="Nitem_link_count _commentCount" style="visibility: visible;">talk 수</em></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
		
	
	<div class="info story_cover__info">
		
			<h3 class="title blind">전당홈</h3>
			
			
				<em class="story_cover__slogan">커버스토리</em>
				
				<a href="#" class="story_cover__title" id="coverStoryTitle" onclick="nhn.Kin.Utility.nClicks('hfh.hcard', '', '', event);">왠지 모르게 설레이던 여름</a>
			
			
		
		
		
		
		
	</div>
	<a href="#" id="spiButton" class="hall_share naver-splugin _nclicks:hfh.share _spi" data-style="type_a" data-oninitialize="initializeSocialPlugin();" data-option="{align:'right'}" title="보내기" splugin-id="4146825337"><span class="naver-splugin-c social_share type_round"></span></a>
	<div class="cover" style="background-image:url(https://kin-phinf.pstatic.net/hall/2022_4/pc_cover_2022_4_1652073094082.jpg)"></div>
	<span class="bg_transparent"></span>
</div>

<script type="text/template" id="activeDateTpl">
{if activeDateList != null}	
	{for activeDate in activeDateList}
		<li class="Nsublist_item{if activeDate.isNotOpen} is_inactive{/if}{if activeDate.isActive} is_active{/if}">
			<a{if !activeDate.isNotOpen} href="/hall/index.naver?year={=activeDate.year}&month={=activeDate.month}"{/if} class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">{=activeDate.yearMonth}</span>
			</a>
			{if activeDate.isNotOpen}<span class="tooltip_open"><em><i class="sp_hall bg_tooltip_open"></i>오픈예정</em></span>{/if}
		</li>
	{/for}
{/if}
</script>

<script type="text/javascript">
jindo.$Fn(function() {
	jindo.LazyLoading.load("https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.hall.LNB.js", function() {
		if (typeof naver.kin.hall.LNB !== "undefined") {
			var oLnb = new naver.kin.hall.LNB({
				"activeDateList" : [
					
						{"year" : 2022,
						"month" : 4,
						"isActive" : false}
						,
					
						{"year" : 2022,
						"month" : 3,
						"isActive" : true}
						,
					
						{"year" : 2022,
						"month" : 2,
						"isActive" : false}
						,
					
						{"year" : 2022,
						"month" : 1,
						"isActive" : false}
						,
					
						{"year" : 2021,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2020,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2019,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2018,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2017,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2016,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2015,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2014,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2013,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2012,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2011,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2010,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2009,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2008,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2007,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2006,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2005,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2004,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2003,
						"month" : 0,
						"isActive" : false}
						,
					
						{"year" : 2002,
						"month" : 0,
						"isActive" : false}
						
					
				],
				"year" : 2022,
				"month" : 3
			});
		}
	});
}, this).attach(document, "domready");


jindo.$Fn(function() {
	(function lazyLoadingSocialPlugInScript() {
		jindo.LazyLoading.load("https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.SocialPlugIn.js", function() {
			if (typeof SocialPlugIn === "undefined") {
				return;
			}
			
			window.oSocialPlugIn = new SocialPlugIn({
				
				socialPlugInDomain : "https://ssl.pstatic.net/spi", 
				
				
				
				
				linkUrl : "https" + "://" + location.host + "/hall/index.naver?year=2022&month=3",
				
				title : "2022\uB144 3\uC6D4 \uC9C0\uC2DDiN\uC758 \uC5ED\uC0AC\uC640 \uB808\uC804\uB4DC\uB97C \uB9CC\uB098\uBCF4\uC138\uC694.",
				sourceTitle : "2022\uB144 3\uC6D4 \uBA85\uC608\uC758 \uC804\uB2F9",
				
				
				serviceSetting : {
					"calendar" : "off"
				}
			});
		});
	})();
}, this).attach(window, "load");
</script>

			







<!--banner-->
<!-- <div class="section_banner">
	<div class="inner">
		<h4 class="tit"><span>숫자로 보는 지식iN 2022.03.<i class="tit_bar"></i></span></h4>
		<div class="content">
			<ul class="hall_banner_list">
				
				<li class="_inFigure">
					
						<a href="https://blog.naver.com/kin_friend/222676378716" class="_nclicks:hfh.fig" target="_blank">
							<p class="desc ellipsis">열심답변자 챌린지에 도전하세요!<span class="num">2512</span></p>
						</a>
					
					
				</li>
				
			</ul>
		</div>
		
	</div>
</div> -->
<!--//banner-->



<!-- 질문키워드 -->
<div class="section_keyword_qa grid_inner">
	<div class="uio_top">
		<h4 class="tit">질문키워드</h4>
	</div>
	<div class="article_list graph_data">
		
		<ul class="top_list">
			
			<li class="list_divide first">
				<a href="/project_6/search/list.jsp" class="list_item" onclick="nhn.Kin.Utility.nClicks('hfh.tpkw', '', '', event);">
					<div class="list_body">
						<span class="rank"><em>1</em></span>
						<div class="heading">
							<strong class="tit ellipsis">동아리</strong>
							<p class="text"><em class="num">2,298</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i></p>
						</div>
						<div class="content">
							<p class="key_text ellipsis">새로운 취미를 만들어요!</p>
						</div>
					</div>
					
					<div class="statistics_area _svgArea">
						<div class="graph_standard_h">
							<ul>
								<li><span class="blind">검색 수 최대값</span></li>
								<li><span class="blind">검색 수 중간값</span></li>
								<li><span class="blind">검색 수 최소값</span></li>
							</ul>
						</div>
						<div class="graph_standard_v">
							<ul>
								<li><span class="month">1<em class="blind">월</em></span></li>
								<li><span class="blind">2월</span></li>
								<li><span class="blind">3월</span></li>
								<li><span class="blind">4월</span></li>
								<li><span class="month">5<em class="blind">월</em></span></li>
								<li><span class="blind">6월</span></li>
								<li><span class="blind">7월</span></li>
								<li><span class="blind">8월</span></li>
								<li><span class="month">9<em class="blind">월</em></span></li>
								<li><span class="blind">10월</span></li>
								<li><span class="blind">11월</span></li>
								<li><span class="month">12<em class="blind">월</em></span></li>
							</ul>
						</div>
						<div class="statistics">
							<div class="point_value">
								<div class="point_value_inner" style="left:16.666666666666668%"><!-- [D] left : (100 / 12 * (n-1)% -->
									<i class="sp_hall tooltip_point_value"></i>
									<i class="sp_hall point_apex">가장 많이 검색된 달</i>
									<span><em>3</em>월</span>
								</div>
							</div>
							<div class="graph_line">
								
								<div style="height:100%;width:100%;overflow:hidden">
									<span class="line _keywordChart _top" style="display: none;"></span>
								</div>
							</div>
						</div>
					</div>
				</a>
			</li>
			
			<li class="list_divide ">
				<a href="/project_6/search/list.jsp" class="list_item" onclick="nhn.Kin.Utility.nClicks('hfh.tpkw', '', '', event);">
					<div class="list_body">
						<span class="rank"><em>2</em></span>
						<div class="heading">
							<strong class="tit ellipsis">도덕</strong>
							<p class="text"><em class="num">2,111</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i></p>
						</div>
						<div class="content">
							<p class="key_text ellipsis">사람이 지켜야할 도리!</p>
						</div>
					</div>
					
					<div class="statistics_area _svgArea">
						<div class="graph_standard_h">
							<ul>
								<li><span class="blind">검색 수 최대값</span></li>
								<li><span class="blind">검색 수 중간값</span></li>
								<li><span class="blind">검색 수 최소값</span></li>
							</ul>
						</div>
						<div class="graph_standard_v">
							<ul>
								<li><span class="month">1<em class="blind">월</em></span></li>
								<li><span class="blind">2월</span></li>
								<li><span class="blind">3월</span></li>
								<li><span class="blind">4월</span></li>
								<li><span class="month">5<em class="blind">월</em></span></li>
								<li><span class="blind">6월</span></li>
								<li><span class="blind">7월</span></li>
								<li><span class="blind">8월</span></li>
								<li><span class="month">9<em class="blind">월</em></span></li>
								<li><span class="blind">10월</span></li>
								<li><span class="blind">11월</span></li>
								<li><span class="month">12<em class="blind">월</em></span></li>
							</ul>
						</div>
						<div class="statistics">
							<div class="point_value">
								<div class="point_value_inner" style="left:16.666666666666668%"><!-- [D] left : (100 / 12 * (n-1)% -->
									<i class="sp_hall tooltip_point_value"></i>
									<i class="sp_hall point_apex">가장 많이 검색된 달</i>
									<span><em>3</em>월</span>
								</div>
							</div>
							<div class="graph_line">
								
								<div style="height:100%;width:100%;overflow:hidden">
									<span class="line _keywordChart _top" style="display: none;"></span>
								</div>
							</div>
						</div>
					</div>
				</a>
			</li>
			
			<li class="list_divide last">
				<a href="/project_6/search/list.jsp" class="list_item" onclick="nhn.Kin.Utility.nClicks('hfh.tpkw', '', '', event);">
					<div class="list_body">
						<span class="rank"><em>3</em></span>
						<div class="heading">
							<strong class="tit ellipsis">코로나 격리</strong>
							<p class="text"><em class="num">1,727</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i></p>
						</div>
						<div class="content">
							<p class="key_text ellipsis">다양한 수칙들이 있어요.</p>
						</div>
					</div>
					
					<div class="statistics_area _svgArea">
						<div class="graph_standard_h">
							<ul>
								<li><span class="blind">검색 수 최대값</span></li>
								<li><span class="blind">검색 수 중간값</span></li>
								<li><span class="blind">검색 수 최소값</span></li>
							</ul>
						</div>
						<div class="graph_standard_v">
							<ul>
								<li><span class="month">1<em class="blind">월</em></span></li>
								<li><span class="blind">2월</span></li>
								<li><span class="blind">3월</span></li>
								<li><span class="blind">4월</span></li>
								<li><span class="month">5<em class="blind">월</em></span></li>
								<li><span class="blind">6월</span></li>
								<li><span class="blind">7월</span></li>
								<li><span class="blind">8월</span></li>
								<li><span class="month">9<em class="blind">월</em></span></li>
								<li><span class="blind">10월</span></li>
								<li><span class="blind">11월</span></li>
								<li><span class="month">12<em class="blind">월</em></span></li>
							</ul>
						</div>
						<div class="statistics">
							<div class="point_value">
								<div class="point_value_inner" style="left:16.666666666666668%"><!-- [D] left : (100 / 12 * (n-1)% -->
									<i class="sp_hall tooltip_point_value"></i>
									<i class="sp_hall point_apex">가장 많이 검색된 달</i>
									<span><em>3</em>월</span>
								</div>
							</div>
							<div class="graph_line">
								
								<div style="height:100%;width:100%;overflow:hidden">
									<span class="line _keywordChart _top" style="display: none;"></span>
								</div>
							</div>
						</div>
					</div>
				</a>
			</li>
			
		</ul>
	</div>
	<!-- //cont -->
	<a href="/project_6/hall/topic.jsp" class="more_txt" onclick="nhn.Kin.Utility.nClicks('hfh.tpmore', '', '', event);">더보기<i class="sp_hall ico_arrow_r"></i></a>
</div>
<!-- //질문키워드 -->



<div class="section_ranking grid_inner _cheerUpArea">
	<div class="uio_top">
		
		<ul class="tab_area_sub" role="tablist">
			<li class="on" aria-selected="true"><a href="#" class="_eliteUserBtn" onclick="nhn.Kin.Utility.nClicks('hfh.kgtab', '', '', event);"><h4 class="tit"><span>채택왕</span></h4></a></li>
			
		</ul>
	</div>

	<!-- 채택왕 -->
	<div class="section_adoption _eliteUserArea">
		<h5 class="blind">연도별 채택왕 프로필</h5>
		<div class="article_list">
			<ul class="top_list">
			
				<% int count = 1;
				for(MemberDTO m : eliteMember) {
					if(m.getRank() < 4) {
					if(count == 1){ %>
				<li class="list_divide first">
					<div class="list_item top_item<%=count%>">
							<!-- 내 프로필이 아닌 선택한 아이디?의 프로필로 이동 ex)/project_6/main/profile.jsp?num= -->
							<a href="/project_6/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>1</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
											<img src="/project_6/images/cat.jpg" alt="프로필이미지"> 
										
										
										<span class="mask"></span>
									</div>
								</div>
								<div class="list_body">
									<div class="writer_sec">
										<%if(m.getNickname() == null) {%>
										<span class="writer no_badge"><em class="ellipsis"><%=m.getId() %></em></span>
										<%} else{ %>
										<span class="writer no_badge"><em class="ellipsis"><%=m.getNickname() %></em></span>
										<%} %>
									</div>
									<p class="desc ellipsis">###</p>
									<div class="information_section">
										<!-- <p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">인스타그램</span></span></p> -->
										<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis"><%=m.getS_question() %></span></span></p>
									</div>
								</div>
							</a>
						
						
					</div>
					<div class="list_side">
						
							
							<div class="recommend ">
								<button id="countBtn"  onclick="increaseBtn()">
									<i class="sp_hall sp_like">좋아요</i>
									<span class="num _count"><%=m.getLike_n() %></span> <!-- 클릭시 좋아요 수 올라감(update) -->
								</button>
							</div>
						
					</div>
				</li>
				<%} %>
				<%if(count == 2) {%>
				<li class="list_divide ">
					<div class="list_item top_item2">
						
							<a href="/project_6/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>2</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
											<img src="https://kin-phinf.pstatic.net/20130118_141/1358489816165888ua_JPEG/%B2%C9.jpg?type=w200" alt="프로필이미지">
										
										
										<span class="mask"></span>
									</div>
								</div>
								<div class="list_body">
									<div class="writer_sec">
										<%if(m.getNickname() == null) {%>
										<span class="writer no_badge"><em class="ellipsis"><%=m.getId() %></em></span>
										<%} else{ %>
										<span class="writer no_badge"><em class="ellipsis"><%=m.getNickname() %></em></span>
										<%} %>
									</div>
									<p class="desc ellipsis">##</p>
									<div class="information_section">
										<!-- <p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">택배</span></span></p> -->
										<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis"><%=m.getS_question() %></span></span></p>
									</div>
								</div>
							</a>
						
						
					</div>
					<div class="list_side">
						
							
							<div class="recommend ">
								<button class="_cheerUp _param('qFUiSGp7fyyZxgXlILzFjXFQFmUkxcgkEh4a4qoj3Pw=')" onclick="nhn.Kin.Utility.nClicks('hfh.kglike', '', '', event);">
									<i class="sp_hall sp_like">좋아요</i>
									<span class="num _count"><%=m.getLike_n() %></span>
								</button>
							</div>
						
					</div>
				</li>
				<%} %>
				<%if(count == 3) {%>
				<li class="list_divide last">
					<div class="list_item top_item3">
						
							<a href="/project_6/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>3</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
											<img src="https://kin-phinf.pstatic.net/20220502_101/1651474839476YzdRM_JPEG/image.jpg?type=w200" alt="프로필이미지">
										
										
										<span class="mask"></span>
									</div>
								</div>
								<div class="list_body">
									<div class="writer_sec">
										<%if(m.getNickname() == null) {%>
										<span class="writer no_badge"><em class="ellipsis"><%=m.getId() %></em></span>
										<%} else{ %>
										<span class="writer no_badge"><em class="ellipsis"><%=m.getNickname() %></em></span>
										<%} %>
									</div>
									<p class="desc ellipsis">##</p>
									<div class="information_section">
										<!-- <p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">기타</span></span></p> -->
										<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis"><%=m.getS_question() %></span></span></p>
									</div>
								</div>
							</a>
						
						
					</div>
					<div class="list_side">
						
							
							<div class="recommend ">
								<button class="_cheerUp _param('pE0/3ctgutBc4hZkxbGI2rgshqFQsf2aoECtqAkQYZ8=')" onclick="nhn.Kin.Utility.nClicks('hfh.kglike', '', '', event);">
									<i class="sp_hall sp_like">좋아요</i>
									<span class="num _count"><%=m.getLike_n() %></span>
								</button>
							</div>
						
					</div>
				</li>
				<%}
					}
					count++;
				} %>
			</ul>
		</div>
	</div>
	<!-- //채택왕 -->
	<!-- 기부왕 -->
	
	<a href="/project_6/hall/eliteUser.jsp" class="more_txt _eliteUserMoreBtn" onclick="nhn.Kin.Utility.nClicks('hfh.kgmore', '', '', event);">더보기<i class="sp_hall ico_arrow_r"></i></a>
</div>



<!-- 성지글 -->
<div class="section_shrine">
	<h4 class="blind">성지글</h4>
	<div class="content">
		
		<div class="slide _legendQna">
			<a href="#" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);"> <!-- 해당 게시글로 이동 -->
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">오오옷 띠로리 하는 전설의 노래!</span></p>
					<p class="desc"><span class="ellipsis">노래제목 찾아요ㅠ 오옷!!!오오오오오</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>189</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>161</em></span>
				</div>
			</a>
		</div>
		
		<div class="slide _legendQna">
			<a href="/qna/detail.naver?d1id=10&amp;dirId=100101&amp;docId=186776704" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">드록바님 말씀을 전합니다</span></p>
					<p class="desc"><span class="ellipsis">드록복음 말씀</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>162</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>541</em></span>
				</div>
			</a>
		</div>
		
		<div class="slide _legendQna">
			<a href="/qna/detail.naver?d1id=13&amp;dirId=130107&amp;docId=324283024" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">아니 그건 좀..</span></p>
					<p class="desc"><span class="ellipsis">저 지금 몰폰하고 있는데요 너무 배가</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>331</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>483</em></span>
				</div>
			</a>
		</div>
		
		<div class="slide _legendQna">
			<a href="/qna/detail.naver?d1id=10&amp;dirId=100409&amp;docId=60319061" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">댓글 8년 전쟁</span></p>
					<p class="desc"><span class="ellipsis">김두한의 싸움 실력</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>1,282</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>430</em></span>
				</div>
			</a>
		</div>
		
		<div class="slide _legendQna">
			<a href="/qna/detail.naver?d1id=7&amp;dirId=70109&amp;docId=184246779" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);">
				<div class="cont">
					<p class="sub_tit"><span class="ellipsis">허우적 허우적</span></p>
					<p class="desc"><span class="ellipsis">김우빈짜증나요</span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>315</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">표정</i><em>1,633</em></span>
				</div>
			</a>
		</div>
		
	</div>

	<div class="nav_area">
		<a href="#" class="prev sp_hall _legendPrevBtn" onclick="nhn.Kin.Utility.nClicks('hfh.mcpage', '', '', event);">이전</a>
		<a href="#" class="next sp_hall _legendNextBtn" onclick="nhn.Kin.Utility.nClicks('hfh.mcpage', '', '', event);">다음</a>
	</div>
</div>
<!-- //성지글 -->



<!-- 추천Q&A -->
<div class="section_recommend_qa grid_inner">
	<div class="uio_top">
		<h4 class="tit">추천Q&amp;A</h4>
	</div>
	<div class="article_list">
		<ul>
			<!-- 실시간 추천순으로 6block으로 for문 -->
			<li class="list_divide  first">
				
					<a href="#" onclick="nhn.Kin.Utility.nClicks('hfh.rcqa', '', '', event);" class="list_item">
						<div class="list_body">
							<div class="heading">
								<span class="mark"><em><i class="sp_hall ico_q">질문</i></em></span> <!-- 질문 아이콘 -->
								<strong class="tit ellipsis">질문 제목</strong>
							</div>
							
								<div class="content">
									<i class="sp_hall ico_q_detail">질문내용</i> <!-- ㄴ 아이콘 -->
									<p class="text ellipsis">질문 내용</p>
								</div>
							
							<div class="info">
								<span class="text_primary">추천수 <em class="num">105</em></span><i class="line_bar"></i><span class="text_default">답변수 <em class="num">7</em></span>
							</div>
						</div>
					</a>
				
				
			</li>			
		</ul>
	</div>
	<a href="/project_6/hall/kinupQna.jsp" class="more_txt" onclick="nhn.Kin.Utility.nClicks('hfh.rcmore', '', '', event);">더보기<i class="sp_hall ico_arrow_r"></i></a>
</div>
<!-- //추천Q&A -->



<!-- ---------- 도넛 남녀 통계 ---------- -->
<div class="section_statistic grid_inner _svgArea">
	<div class="uio_top">
		<h4 class="tit">데이터로 알아본 지식iN 관심사</h4>
		<ul class="tab_area_sub" role="tablist">
			<li role="tab" aria-selected="false"><a href="#" class="_maleBtn" onclick="nhn.Kin.Utility.nClicks('hfh.stmale', '', '', event);"><span>남자</span></a></li>
			<li role="tab" class="last on" aria-selected="true"><a href="#" class="_femaleBtn" onclick="nhn.Kin.Utility.nClicks('hfh.stfemale', '', '', event);"><span>여자</span></a></li>
		</ul>
	</div>
	<!--남자-->
	<div class="tab_cont">
		<h5 class="blind _genderStr">여자</h5>
		<ul class="tab_standard_list" role="tablist">
			
			<li role="tab" aria-selected="false" class="first"><a href="#" class="_ageGroupBtn _param('0')" onclick="nhn.Kin.Utility.nClicks('hfh.stagegroup', '', '', event);">10대 미만</a></li>
			<li role="tab" aria-selected="true" class="on"><a href="#" class="_ageGroupBtn _param('1')" onclick="nhn.Kin.Utility.nClicks('hfh.stagegroup', '', '', event);">10~19세</a></li>
			<li role="tab" aria-selected="false"><a href="#" class="_ageGroupBtn _param('2')" onclick="nhn.Kin.Utility.nClicks('hfh.stagegroup', '', '', event);">20세 이상</a></li>
			<li role="tab" aria-selected="false"><a href="#" class="_ageGroupBtn _param('3')" onclick="nhn.Kin.Utility.nClicks('hfh.stagegroup', '', '', event);">30세 이상</a></li>
			<li role="tab" aria-selected="false"><a href="#" class="_ageGroupBtn _param('4')" onclick="nhn.Kin.Utility.nClicks('hfh.stagegroup', '', '', event);">40세 이상</a></li>
			<li role="tab" aria-selected="false"><a href="#" class="_ageGroupBtn _param('5')" onclick="nhn.Kin.Utility.nClicks('hfh.stagegroup', '', '', event);">50세 이상</a></li>
			<li role="tab" aria-selected="false"><a href="#" class="_ageGroupBtn _param('6')" onclick="nhn.Kin.Utility.nClicks('hfh.stagegroup', '', '', event);">60세 이상</a></li>
		</ul>
		
		
		<div class="statistic_area _malePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>10대 미만 남자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">택배</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_male_simple">남자</i><em class="ellipsis">10대 미만</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">44,20,18,17</span> <!-- -> 이걸로 도넛 그래프 가져옴 -->
							</div>
						</div>
						
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">택배</span><em class="value">44%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">의료기관, 의료인</span><em class="value">20%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">이비인후과</span><em class="value">18%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">피부과</span><em class="value">17%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="statistic_area _malePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>10대 남자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">택배</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_male_simple">남자</i><em class="ellipsis">10대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">36,24,22,16</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">택배</span><em class="value">36%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">24%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">대학 입시, 진학</span><em class="value">22%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">학교생활</span><em class="value">16%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="statistic_area _malePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>20대 남자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">연애, 결혼</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_male_simple">남자</i><em class="ellipsis">20대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">46,28,13,11</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">46%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">택배</span><em class="value">28%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">전기, 전자 공학</span><em class="value">13%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">피부과</span><em class="value">11%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="statistic_area _malePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>30대 남자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">연애, 결혼</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_male_simple">남자</i><em class="ellipsis">30대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">35,22,21,20</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">35%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">택배</span><em class="value">22%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">MS엑셀</span><em class="value">21%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">분양, 청약</span><em class="value">20%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="statistic_area _malePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>40대 남자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">형사사건</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_male_simple">남자</i><em class="ellipsis">40대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">28,25,23,22</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">형사사건</span><em class="value">28%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">한방신경정신과</span><em class="value">25%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">한방재활의학과</span><em class="value">23%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">한방피부과</span><em class="value">22%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="statistic_area _malePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>50대 남자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">연애, 결혼</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_male_simple">남자</i><em class="ellipsis">50대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">29,28,24,17</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">29%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">택배</span><em class="value">28%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">국내가수</span><em class="value">24%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">대학 입시, 진학</span><em class="value">17%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="statistic_area _malePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>60대 이상 남자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">택배</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_male_simple">남자</i><em class="ellipsis">60대 이상</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">29,25,22,22</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">택배</span><em class="value">29%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">조지아어</span><em class="value">25%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">원예</span><em class="value">22%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">대통령선거</span><em class="value">22%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		<div class="statistic_area _femalePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>10대 미만 여자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">택배</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_female_simple">여자</i><em class="ellipsis">10대 미만</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">49,17,17,15</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">택배</span><em class="value">49%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">이비인후과</span><em class="value">17%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">17%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">대수학</span><em class="value">15%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="statistic_area _femalePanel" style="display:block;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>10대 여자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">연애, 결혼</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_female_simple">여자</i><em class="ellipsis">10대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">32,30,19,17</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">32%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">택배</span><em class="value">30%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">학교생활</span><em class="value">19%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">대학 입시, 진학</span><em class="value">17%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="statistic_area _femalePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>20대 여자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">택배</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_female_simple">여자</i><em class="ellipsis">20대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">34,31,16,16</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">택배</span><em class="value">34%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">31%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">근로기준</span><em class="value">16%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">사주, 궁합</span><em class="value">16%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="statistic_area _femalePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>30대 여자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">연애, 결혼</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_female_simple">여자</i><em class="ellipsis">30대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">33,27,20,18</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">33%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">사주, 궁합</span><em class="value">27%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">꿈, 해몽</span><em class="value">20%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">근로기준</span><em class="value">18%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="statistic_area _femalePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>40대 여자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">택배</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_female_simple">여자</i><em class="ellipsis">40대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">28,24,24,22</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">택배</span><em class="value">28%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">24%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">꿈, 해몽</span><em class="value">24%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">사주, 궁합</span><em class="value">22%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="statistic_area _femalePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>50대 여자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">연애, 결혼</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_female_simple">여자</i><em class="ellipsis">50대</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">33,25,24,16</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">33%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">택배</span><em class="value">25%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">꿈, 해몽</span><em class="value">24%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">의료기관, 의료인</span><em class="value">16%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="statistic_area _femalePanel" style="display: none;">
			<div class="statchart">
				<div class="heading">
					<p class="tit"><i class="sp_hall ico_quotes_s">"</i><em>60대 이상 여자</em>들의<br> 지식iN 궁금증 1위는<br><em class="top_category">연애, 결혼</em> 입니다.<i class="sp_hall ico_quotes_e">"</i></p>
					<p class="alert_text"><i class="sp_hall ico_alert_gray"></i>상위4개 분야를 100%로 표기한 그래프입니다.</p>
				</div>
				<div class="content">
					<div class="contnet_inner">
						<div class="statistic">
							<div class="graph_inner">
								<p><i class="sp_hall ico_female_simple">여자</i><em class="ellipsis">60대 이상</em></p>
							</div>
							<div class="graph_diagram">
								
								<span class="_donut" style="display:none">37,25,22,14</span>
</div>
						</div>
						<div class="statistics_legend">
							<ul>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank1">1위</i>
										<span class="category ellipsis">연애, 결혼</span><em class="value">37%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank2">2위</i>
										<span class="category ellipsis">전기, 전자 공학</span><em class="value">25%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank3">3위</i>
										<span class="category ellipsis">택배</span><em class="value">22%</em>
									</div>
								</li>
								
								<li>
									<div class="legend_item">
										<i class="sp_hall ico_chart_rank4">4위</i>
										<span class="category ellipsis">기계공학</span><em class="value">14%</em>
									</div>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</div>
	<!--//여자-->
</div>
<!-- //통계 -->




<!-- 지표 -->
<div class="section_indicator">
	<div class="heading">
		<h4 class="tit ellipsis"><span>2022년 03월  지표<i class="tit_bar"></i></span></h4>
	</div>
	<div class="content">
		<ul class="list_indicator">
			<li class="indicator">
				<p class="tit">전체 질문수</p>
				<p class="value"><em>2,326,413</em></p>
			</li>
			<li class="indicator">
				<p class="tit">전체 답변수</p>
				<p class="value"><em>4,209,756</em></p>
			</li>
			<li class="indicator">
				<p class="tit">답변자 수</p>
				<p class="value"><em>196,120</em></p>
			</li>
		</ul>
	</div>
</div>
<!-- //지표 -->

<script id="keywordPolyLineTpl" type="text/template">
<svg xmlns="http://www.w3.org/2000/svg" class="" width="100%" height="100%">
	<polyline fill="{=fillColor}" stroke-linecap="square" stroke-width="2" points="{=polyLine}" />
</svg>
</script>

<script id="donutTpl" type="text/template">
<svg xmlns="http://www.w3.org/2000/svg" class="" width="176" height="176" style="position:relative">
	<path fill="#00c73c" d="{=donut[0]}" />
	<path fill="#3963ea" d="{=donut[1]}" />
	<path fill="#aa63e7" d="{=donut[2]}" />
	<path fill="#d2d6ef" d="{=donut[3]}" />
</svg>
</script>


	
		<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.hall.home.js"></script>
	
	


<script type="text/javascript">

$Fn(function() {
	if (typeof naver.kin.hall.Chart !== "undefined") {
		var oHallChart = new naver.kin.hall.Chart();
	}
	if (typeof naver.kin.hall.Home !== "undefined") {
		var oHallMain = new naver.kin.hall.Home({
			ageGroupNo : 1,
			gender : 'F'
		});
	}
	if (typeof naver.kin.hall.CheerUp !== "undefined") {
		var oHallCheerUp = new naver.kin.hall.CheerUp();
	}
}).attach(window, 'load');

/**
 * ie8 이하에서 svg영역은 안보여준다.
 */
$Fn(function() {
	var oAgent = $Agent().navigator();
	if (oAgent.ie && (oAgent.version >= 6 && oAgent.version < 9)) {
		var aElList = $$('._svgArea');
		if (aElList) {
			var nLength = aElList.length;
			for (var i = 0; i < nLength; i++) {
				var wel = $Element(aElList[i]);
				wel.hide();
			}
		}
	}
}, this).attach(document, 'domready');
</script>

		</div>
	</div>
</div>









<div class="section_layer" id="coverStoryLayer" style="display:none;">
    <div class="layer_scroll _coverStoryScroll">
        
        <div class="layer_image_cover _coverStoryImageCover">
            <div class="layer_image_cover__header" style="background-image:url('https://kin-phinf.pstatic.net/hall/2022_3/pc_cover_2022_3_1649060981485.jpg')">
                <span class="layer_image_cover_bg"></span>
                <strong class="layer_image_cover__title">2022년 3월 커버스토리</strong>
            </div>
            <div class="layer_image_cover__content">
                
                <p class="layer_image_cover__text">바쁘게 지나간 3월 속에서</p>
                
                <p class="layer_image_cover__sub_text">지식iN에 어떤 이야기가 있었을 지 확인해보세요!</p>
                <button class="layer_image_cover__btn" type="button" onclick="nhn.Kin.Utility.nClicks('hfh.coverkeyword', '', '', event);location.href='/hall/topic.naver?year=2022&amp;month=3';">질문 키워드 보기</button>
            </div>
            <button class="layer_image_cover__btn_close _coverStoryClose" onclick="nhn.Kin.Utility.nClicks('hfh.coverx', '', '', event);" type="button"><img width="15" height="17" alt="레이어닫기" src="https://ssl.pstatic.net/static/kin/09renewal/hall/btn_coverstory_layer_close_170317.png"></button>
        </div>
        
    </div>
    <div class="dimmed"></div>
</div>


</div> 



<%@ include file="../footer.jsp" %>
</body>
</html>