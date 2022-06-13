<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/project_6/images/tab_icon.png" rel="icon" type="image/x-icon" />
<%@ include file="../header.jsp" %>
<%
	ArrayList<MemberDTO> eliteMember;
	MemberDAO memberDao = new MemberDAO();
	eliteMember = memberDao.selectElite();
//	MemberDTO member = memberDao.selectPoint(); /* -> SELECT s_question from member WHERE id=? ORDER BY DESC */
/* 	id가 고유값이라... 먼저 id를 가져와서......
	포인트를 가져와서  */
/* 	for(int i = 0; i < point.length; i ++){
		int rank = 1;
		for(int j = 0; j < point.length; j++){
			if(point[i] < point[j]){
				rank++;
			}
		}
			
	} */
%>
<html lang="ko"><head>

<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/hall.css">

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	명예의 전당 채택왕 : 지식iN
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

<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.hall.LNB.js"></script><script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.SocialPlugIn.js"></script>
<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.js?20220607"></script>
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
					<li class="Nlist_item">
						<a href="topic.jsp" class="Nitem_link _nclicks:hfm.keyword"><span class="Nitem_link_menu">질문키워드</span></a>
					</li>
					<li class="Nlist_item is_active">
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
		
		
		
			<h3 class="tit"><span class="sp_hall_tit tit_adoption">채택왕</span></h3>
			<p class="desc ellipsis">지식iN 채택왕은 누구일까?</p>
			
		
		
		
	</div>
	<a href="#" id="spiButton" class="hall_share naver-splugin _nclicks:hfk.share _spi" data-style="type_a" data-oninitialize="initializeSocialPlugin();" data-option="{align:'right'}" title="보내기" splugin-id="9591280409"><span class="naver-splugin-c social_share type_round"></span></a>
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
				
				
				
				
				linkUrl : "https" + "://" + location.host + "/hall/eliteUser.naver?year=2022&month=4",
				
				title : "2022\uB144 4\uC6D4 \uC9C0\uC2DDiN\uC5D0\uC11C \uB2F5\uBCC0 \uCC44\uD0DD\uC744 \uAC00\uC7A5 \uB9CE\uC774 \uBC1B\uC740 \uCC44\uD0DD\uC655\uC744 \uB9CC\uB098\uBCF4\uC138\uC694.",
				sourceTitle : "2022\uB144 4\uC6D4 \uBA85\uC608\uC758 \uC804\uB2F9 \uCC44\uD0DD\uC655",
				
				
				serviceSetting : {
					"calendar" : "off"
				}
			});
		});
	})();
}, this).attach(window, "load");
</script>

			







			<div id="contentsOfHall" class="section_ranking section_adoption _cheerUpArea">
				<h5 class="blind">연도별 채택왕 프로필</h5>
				<div class="article_list grid_inner">
								<ul class="top_list">
			
				<% int count = 1;
				for(MemberDTO m : eliteMember) {
					if(count == 1){ %>
				<li class="list_divide first">
					<div class="list_item top_item<%=count%>">
							<!-- 내 프로필이 아닌 선택한 아이디?의 프로필로 이동 ex)/project_6/main/profile.jsp?num= -->
							<a href="/project_6/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>1</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
											<img src="#" alt="프로필이미지"> 
										
										
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
					count++;
				} %>
			</ul>
				</div>
				
				
				<!-- ----- 4위부터 100위까지 ----- -->
				<div class="article_list">
					<ul id="lowListArea" class="lower_list">
					
						<!-- for 문으로 작성하기 -->
					<% int count_four = 1;
					for(MemberDTO m : eliteMember) {
						if(m.getRank() > 3) {
							if(count_four % 3 == 1) {%>
						<%-- <%for(int i = 4; i <= 100; i+=3){ %> --%>
							<li class="list_divide  first ">
								<div class="list_item">
									
										<a href="/project_6/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfk.name', '', '', event);">
											<span class="rank"><em><%=count_four %></em></span>
											<div class="thmb_profile">
												<div class="thmb">
													
														<img src="https://kin-phinf.pstatic.net/20210916_81/1631751509427P114U_JPEG/1631751509010.jpg?type=w200" alt="프로필이미지">
													
													
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
												<div class="information_section">
													<!-- <p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">다이어트, 운동기구</span></span></p> -->
													<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis"><%=m.getS_question() %></span></span></p>
												</div>
											</div>
										</a>
									
									
								</div>
								<div class="list_side">
									
										<div class="recommend">
											<button class="_cheerUp _param('QyKr7XbpMwR//Fx1cb7Gn9TM3MepPspYzYPnyI/PZWU=')" onclick="nhn.Kin.Utility.nClicks('hfk.like', '', '', event);">
												<i class="sp_hall sp_like">대단해요</i>
											<span class="num _count">
												
												<%=m.getLike_n() %>
											</span>
											</button>
										</div>
									
								</div>
							</li>
							<%} 
							if(count_four < 100) {
								if(count_four % 3 == 2){ %>
							<li class="list_divide  ">
								<div class="list_item">
									
										<a href="/profile/index.naver?u=k%2F1EzpqqLYWZi5OiY9ypFPliv0idPEy5mOPXKKQRwLQ%3D" class="inner" onclick="nhn.Kin.Utility.nClicks('hfk.name', '', '', event);">
											<span class="rank"><em><%=count_four %></em></span>
											<div class="thmb_profile">
												<div class="thmb">
													
														<img src="https://kin-phinf.pstatic.net/20220310_227/1646858415389UAETd_JPEG/1646858415207.jpeg?type=w200" alt="프로필이미지">
													
													
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
												<div class="information_section">
													<!-- <p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">영어문법</span></span></p> -->
													<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis"><%=m.getS_question() %></span></span></p>
												</div>
											</div>
										</a>
									
									
								</div>
								<div class="list_side">
									
										<div class="recommend">
											<button class="_cheerUp _param('k/1EzpqqLYWZi5OiY9ypFPliv0idPEy5mOPXKKQRwLQ=')" onclick="nhn.Kin.Utility.nClicks('hfk.like', '', '', event);">
												<i class="sp_hall sp_like">대단해요</i>
											<span class="num _count">
												
												<%=m.getLike_n() %>
											</span>
											</button>
										</div>
									
								</div>
							</li>
							<%}
								if(count_four % 3 == 0) {%>
							<li class="list_divide  last ">
								<div class="list_item">
									
										<a href="/profile/index.naver?u=Nz5XnogniyXqScPWCrcAlQaJ0BxHEm0%2BR%2BNh9RJ2vtM%3D" class="inner" onclick="nhn.Kin.Utility.nClicks('hfk.name', '', '', event);">
											<span class="rank"><em><%=count_four %></em></span>
											<div class="thmb_profile">
												<div class="thmb">
													
														<img src="https://kin-phinf.pstatic.net/20210928_95/1632832434606Uv8So_JPEG/1632832434509.jpg?type=w200" alt="프로필이미지">
													
													
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
												<div class="information_section">
													<!-- <p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">정형외과</span></span></p> -->
													<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis"><%=m.getS_question() %></span></span></p>
												</div>
											</div>
										</a>
									
									
								</div>
								<div class="list_side">
									
										<div class="recommend">
											<button class="_cheerUp _param('Nz5XnogniyXqScPWCrcAlQaJ0BxHEm0+R+Nh9RJ2vtM=')" onclick="nhn.Kin.Utility.nClicks('hfk.like', '', '', event);">
												<i class="sp_hall sp_like">대단해요</i>
											<span class="num _count">
												
												<%=m.getLike_n() %>
											</span>
											</button>
										</div>
									
								</div>
							</li>
							<%}
							}
							}
							count_four++;
						} %>
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
	
<script id="eliteUserListTpl" type="text/template">
{if eliteUserList != null}	
	{for eliteUser in eliteUserList}
		<li class="list_divide {if (eliteUser.rank % 3) == 1}first{/if} {if (eliteUser.rank % 3) == 0}last{/if} {if eliteUser.isMore}_more{/if}">
			<div class="list_item">
				{if eliteUser.displayYn == 'Y'}
					<a href="/profile/index.naver?u={=eliteUser.encodedU}" class="inner" onclick="nhn.Kin.Utility.nClicks('hfk.name', '', '', event);">
						<span class="rank"><em>{=eliteUser.rank}</em></span>
						<div class="thmb_profile">
							<div class="thmb">
								{if eliteUser.profilePhotoUrl}
									<img src="{=eliteUser.profilePhotoUrl}" width="100" height="100" alt="프로필이미지">
								{else}
									<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m_gray/profilePlaceholder_191121.png" alt="프로필이미지">
								{/if}
								<span class="mask"></span>
							</div>
						</div>
						<div class="list_body">
							<div class="writer_sec">
								<span class="writer no_badge"><em class="ellipsis">{=eliteUser.viewId}</em></span>
							</div>
							<div class="information_section">
								<p class="information_section_item"><strong class="category_title">분야</strong><span class="category_content"><span class="ellipsis">{=eliteUser.activeDirName}</span></span></p>
								<p class="information_section_item"><strong class="category_title value">채택</strong><span class="category_content type_number"><span class="ellipsis">{=eliteUser.selectBestCnt}</span></span></p>
							</div>
						</div>
					</a>
				{else}
					<div class="inner">
						<span class="rank"><em>{=eliteUser.rank}</em></span>
						<p class="withdraw_user">
							<img src="https://ssl.pstatic.net/static/kin/09renewal/hall/exclamation_mark_gray.gif" alt="" width="33" height="32">{=eliteUser.description}
						</p>
					</div>
				{/if}
			</div>
			<div class="list_side">
				{if eliteUser.displayYn == 'Y'}
					<div class="recommend{if eliteUser.cheered} on{/if}">
						<button class="_cheerUp _param('{=eliteUser.u}')" onclick="nhn.Kin.Utility.nClicks('hfk.like', '', '', event);">
							<i class="sp_hall sp_like">대단해요</i>
							<span class="num _count">
								{if eliteUser.cheerCnt > 999}
								999+
								{else}
								{=eliteUser.cheerCnt}
								{/if}
							</span>
						</button>
					</div>
				{/if}
			</div>
		</li>
	{/for}
{/if}
</script>


	
		<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.hall.elite_user_list.js"></script>

</div> 

<%@ include file="../footer.jsp" %>
</body>
</html>