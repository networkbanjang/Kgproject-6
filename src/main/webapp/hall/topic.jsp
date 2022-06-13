<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/project_6/images/tab_icon.png" rel="icon" type="image/x-icon" />
<%@ include file="../header.jsp" %>    
<html lang="ko"><head>

<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/hall.css">

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	2022년 4월 명예의 전당 질문키워드 : 지식iN
</title>

<script type="text/javascript">

if ( typeof window.nhn  == "undefined" ) window.nhn = {};
if ( typeof window.naver  == "undefined" ) window.naver = {};
nhn.isLogin = true;
nhn.isJunior = ("N"=="Y");
nhn.isKinUser = true;
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

<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.hall.LNB.js"></script>
<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.SocialPlugIn.js"></script><script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.js?20220607"></script>
<link id="naver-splugin-css" rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/spi/css/20210531/spi_standard_https.css"><script src="https://ssl.pstatic.net/static.gn/js/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script>
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



<div id="container" class="container-fluid">
	<div class="container-fluid-content hall_end">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">명예의전당 영역</h3>
			

<!-- <div class="Nlnb">
	<div class="Nlnb_submenu">
		<div class="Nlnb_submenu_inner">
			<ul id="subMenuOfHall" class="Nlnb_menu_sublist">	
	
		<li class="Nsublist_item is_active">
			<a href="/hall/index.naver?year=2022&amp;month=4" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.04</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="/hall/index.naver?year=2022&amp;month=3" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.03</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="/hall/index.naver?year=2022&amp;month=2" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.02</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="/hall/index.naver?year=2022&amp;month=1" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2022.01</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="/hall/index.naver?year=2021&amp;month=0" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2021</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="/hall/index.naver?year=2020&amp;month=0" class="Nitem_link _nclicks:LNB.hofy">
				<span class="Nitem_link_menu">2020</span>
			</a>
			
		</li>
	
		<li class="Nsublist_item">
			<a href="/hall/index.naver?year=2019&amp;month=0" class="Nitem_link _nclicks:LNB.hofy">
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
					<li class="Nlist_item">
						<a href="index.jsp" class="Nitem_link _nclicks:hfm.home"><span class="Nitem_link_menu">전당홈</span></a>
					</li>
					<li class="Nlist_item is_active">
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
	
	<div class="info">
		
		
			<h3 class="tit"><span class="sp_hall_tit tit_keyword_qa">질문키워드</span></h3>
			<p class="desc ellipsis">사람들이 가장 궁금해 한 질문 1위는?</p>
			
		
		
		
		
	</div>
	<a href="#" id="spiButton" class="hall_share naver-splugin _nclicks:hft.share _spi" data-style="type_a" data-oninitialize="initializeSocialPlugin();" data-option="{align:'right'}" title="보내기" splugin-id="1788680085"><span class="naver-splugin-c social_share type_round"></span></a>
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
						"isActive" : true}
						,
					
						{"year" : 2022,
						"month" : 3,
						"isActive" : false}
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
				"month" : 4
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
				
				
				
				
				linkUrl : "https" + "://" + location.host + "/hall/topic.naver?year=2022&month=4",
				
				title : "2022\uB144 4\uC6D4 \uC9C0\uC2DDiN\uC5D0\uC11C \uAC00\uC7A5 \uB9CE\uC774 \uC9C8\uBB38\uD55C \uD0A4\uC6CC\uB4DC\uB97C \uD655\uC778\uD574 \uBCF4\uC138\uC694.",
				sourceTitle : "2022\uB144 4\uC6D4 \uBA85\uC608\uC758 \uC804\uB2F9 \uC9C8\uBB38\uD0A4\uC6CC\uB4DC",
				
				
				serviceSetting : {
					"calendar" : "off"
				}
			});
		});
	})();
}, this).attach(window, "load");
</script>

			<div id="contentsOfHall" class="section_keyword_qa">
				<div class="article_list grid_inner">
					<ul class="top_list _listArea">
						
							<li class="list_divide first">
								<a href="/project_6/search/list.jsp" class="list_item" onclick="nhn.Kin.Utility.nClicks('hft.title', '', '', event);">
									<div class="list_body">
										<span class="rank"><em>1</em></span>
										<div class="heading">
											<strong class="tit ellipsis">놀이공원</strong>
											<p class="text">
												<em class="num">3,049</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i>
											</p>
										</div>
										
											<div class="content">
												<p class="key_text ellipsis">즐거운 시간을 보내요!</p>
											</div>
										
									</div>
									
								</a>
							</li>
						
							<li class="list_divide">
								<a href="/project_6/search/list.jsp" class="list_item" onclick="nhn.Kin.Utility.nClicks('hft.title', '', '', event);">
									<div class="list_body">
										<span class="rank"><em>2</em></span>
										<div class="heading">
											<strong class="tit ellipsis">워터파크</strong>
											<p class="text">
												<em class="num">2,958</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i>
											</p>
										</div>
										
											<div class="content">
												<p class="key_text ellipsis">미리미리 준비하세요~</p>
											</div>
										
									</div>
									
								</a>
							</li>
						
							<li class="list_divide last">
								<a href="/project_6/search/list.jsp" class="list_item" onclick="nhn.Kin.Utility.nClicks('hft.title', '', '', event);">
									<div class="list_body">
										<span class="rank"><em>3</em></span>
										<div class="heading">
											<strong class="tit ellipsis">중간고사</strong>
											<p class="text">
												<em class="num">1,820</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i>
											</p>
										</div>
										
											<div class="content">
												<p class="key_text ellipsis">다시 찾아온 그 녀석!</p>
											</div>
										
									</div>
									
								</a>
							</li>
						
					</ul>
				</div>
				<div id="lowListArea" class="article_list section_low graph_data">
					<div class="section_low_inner">
						<ul class="lower_list _listArea">
								<!-- for 문으로 키워드 인기순으로 정렬할 수 있나? TOP 100 -->
								<li class="list_divide first">
									<a href="/project_6/search/list.jsp" class="list_item" onclick="nhn.Kin.Utility.nClicks('hft.title', '', '', event);">
										<div class="list_body">
											<span class="rank"><em>4</em></span>
											<div class="heading">
												<strong class="tit ellipsis">롯데월드</strong>
												<p class="text">
													<em class="num">1,321</em>개의 질문<i class="sp_hall ico_arrow_rl">더보기</i>
												</p>
											</div>
										</div>
										
									</a>
								</li>
						</ul>
						<span class="bg_line bg_top"></span>
						<span class="bg_line bg_right"></span>
						<span class="bg_line bg_bottom"></span>
						<span class="bg_line bg_left"></span>
					</div>	
				</div>
			</div>
		</div>
	</div>
</div>

<script id="keywordPolyLineTpl" type="text/template">
<svg xmlns="http://www.w3.org/2000/svg" class="" width="100%" height="100%">
	<polyline fill="{=fillColor}" stroke-linecap="square" stroke-width="2" points="{=polyLine}" />
</svg>
</script>

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.hall.Chart.js"></script>
<script type="text/javascript">
$Fn(function() {
	var oHallChart = new naver.kin.hall.Chart();
}).attach(window, "load");
</script>

</div> 

<%@ include file="../footer.jsp" %>
</body>
</html>