<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/KG-naver/images/tab_icon.png" rel="icon" type="icon" />
<%@ include file="/header.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String p_id = request.getParameter("id");

	MemberDAO memberDao=new MemberDAO();
	ArrayList<	MemberDTO> eliteMember;
	eliteMember = memberDao.selectElite();
	
	ArrayList<BoardDTO> board;
	BoardDAO boardDao = new BoardDAO();
	board = boardDao.listAll();
%>
<html lang="ko">
<head>
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/hall.css">
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	명예의 전당 : 지식iN
</title>

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

<div class="hall_coverwrap" id="contentsOfHall">
	<div class="Nlnb">
		<div class="Nlnb_menu" data-type="scroll-x">
			<div id="lnbMenu" class="Nlnb_menu_inner">
				<ul class="Nlnb_menu_list"> 
					<li class="Nlist_item is_active">
						<a href="index.jsp" class="Nitem_link _nclicks:hfm.home"><span class="Nitem_link_menu">전당홈</span></a>
					</li>
					<li class="Nlist_item">
						<a href="eliteUser.jsp" class="Nitem_link _nclicks:hfm.king"><span class="Nitem_link_menu">채택왕</span></a>
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
							<a href="/KG-naver/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>1</em></span>
								<div class="thmb_profile">
									<div class="thmb">
											<%if (m.getPic()!=null) {%>
											<img src="/KG-naver/up/<%=m.getId() %>/<%=m.getPic() %>" alt="프로필이미지"> 
										<%} else{ %>
										<img src="/KG-naver/images/default.png" alt="프로필이미지"> 
										<%} %>
										
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
									<!-- <p class="desc ellipsis">###</p> -->
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
						
							<a href="/KG-naver/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>2</em></span>
								<div class="thmb_profile">
									<div class="thmb">
										
										<%if (m.getPic()!=null) {%>
											<img src="/KG-naver/up/<%=m.getId() %>/<%=m.getPic() %>" alt="프로필이미지"> 
										<%} else{ %>
										<img src="/KG-naver/images/default.png" alt="프로필이미지"> 
										<%} %>
										
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
									<!-- <p class="desc ellipsis">##</p> -->
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
						
							<a href="/KG-naver/main/profile.jsp?id=<%=m.getId() %>" class="inner" onclick="nhn.Kin.Utility.nClicks('hfh.kgname', '', '', event);">
								<span class="rank"><em>3</em></span>
								<div class="thmb_profile">
									<div class="thmb">
											<%if (m.getPic()!=null) {%>
											<img src="/KG-naver/up/<%=m.getId() %>/<%=m.getPic() %>" alt="프로필이미지"> 
										<%} else{ %>
										<img src="/KG-naver/images/default.png" alt="프로필이미지"> 
										<%} %>
										
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
									<!-- <p class="desc ellipsis">##</p> -->
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
	
	<a href="/KG-naver/hall/eliteUser.jsp" class="more_txt _eliteUserMoreBtn" onclick="nhn.Kin.Utility.nClicks('hfh.kgmore', '', '', event);">더보기<i class="sp_hall ico_arrow_r"></i></a>
</div>



<!-- 성지글 --> <!-- -> 조회수 순으로 TOP5 -->
<div class="section_shrine">
	<h4 class="blind">성지글</h4>
	<div class="content">
		<%
		int cnt_block = 1;
		for(BoardDTO b : board) {
			if(cnt_block >= 5){%>
		<div class="slide _legendQna">
			<a href="/KG-naver/board/view.jsp?num=<%=b.getNum() %>" onclick="nhn.Kin.Utility.nClicks('hfh.mctit', '', '', event);"> <!-- 해당 게시글로 이동 -->
				<div class="cont">
					<!-- <p class="sub_tit"><span class="ellipsis">오오옷 띠로리 하는 전설의 노래!</span></p> -->
					<p class="desc"><span class="ellipsis"><%=b.getTitle() %></span></p>
				</div>
				<div class="util_wrap">
					<span class="reply_simple"><i class="sp_hall ico_reply">댓글</i><em>##</em></span>
					<span class="like_simple"><i class="sp_hall ico_like">조회수</i><em><%=b.getHit() %></em></span>
				</div>
			</a>
		</div>
		<%}
		cnt_block++;
		} %>
	</div>

	<div class="nav_area">
		<a href="#" class="prev sp_hall _legendPrevBtn" onclick="nhn.Kin.Utility.nClicks('hfh.mcpage', '', '', event);">이전</a>
		<a href="#" class="next sp_hall _legendNextBtn" onclick="nhn.Kin.Utility.nClicks('hfh.mcpage', '', '', event);">다음</a>
	</div>
</div>
<!-- //성지글 -->



<!-- 추천Q&A --> <!-- 답변순으로 순서대로 -->
<div class="section_recommend_qa grid_inner">
	<div class="uio_top">
		<h4 class="tit">추천Q&amp;A</h4>
	</div>
	<div class="article_list">
		<ul>
			
			<%
			cnt_block = 1;
			for(BoardDTO b : board){
				if(cnt_block <= 6){%>
			<li class="list_divide  first">
				
					<a href="/KG-naver/board/view.jsp?num=<%=b.getNum() %>" onclick="nhn.Kin.Utility.nClicks('hfh.rcqa', '', '', event);" class="list_item">
						<div class="list_body">
							<div class="heading">
								<span class="mark"><em><i class="sp_hall ico_q">질문</i></em></span> <!-- 질문 아이콘 -->
								<strong class="tit ellipsis"><%=b.getTitle() %></strong>
							</div>
							
								<div class="content">
									<i class="sp_hall ico_q_detail">질문내용</i> <!-- ㄴ 아이콘 -->
									<p class="text ellipsis"><%=b.getContent()%></p>
								</div>
							
						</div>
					</a>
			</li>			
			<%}
			cnt_block++;
			} %>
		</ul>
	</div>
	<a href="/KG-naver/hall/kinupQna.jsp" class="more_txt" onclick="nhn.Kin.Utility.nClicks('hfh.rcmore', '', '', event);">더보기<i class="sp_hall ico_arrow_r"></i></a>
</div>
<!-- //추천Q&A -->



		

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



<%@ include file="/footer.jsp" %>
</body>
</html>