<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="/project_6/images/tab_icon.png" rel="icon" type="image/x-icon" />
<%@ include file="../header.jsp" %>
<%
String id = (String)session.getAttribute("id");
MemberDTO member=new MemberDTO();
%>
<html lang="ko">
<head>
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/hall.css">
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.hall.LNB.js"></script>
<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.SocialPlugIn.js"></script>
<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/static.cbox/js/cbox.core.js?v=1378836"></script>
<script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.js?20220607"></script>
<link id="naver-splugin-css" rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/spi/css/20210531/spi_standard_https.css">
<style type="text/css" id="_cbox_default_style_"></style>
<link type="text/css" rel="stylesheet" href="https://ssl.pstatic.net/static.cbox/20220602145633/css/comment_kin.css" charset="utf-8">
<script type="text/javascript" src="https://ssl.pstatic.net/static.cbox/20220602145633/js/cbox.all.js" charset="utf-8"></script>
<script src="https://ssl.pstatic.net/static.gn/js/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script>

<title>
	명예의 전당 TALK : 지식iN
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



</head>
<body>
<div id="wrap" class="wrap wrap_hall"> 

<script>
	function textlength(el, max){
		if(el.value.length > max){
			el.value = el.value.substr(0, max)
		}
	}
</script>

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




<!-- ct -->
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
					<li class="Nlist_item">
						<a href="eliteUser.jsp" class="Nitem_link _nclicks:hfm.king"><span class="Nitem_link_menu">채택왕</span></a>
					</li>
					<li class="Nlist_item">
						<a href="kinupQna.jsp" class="Nitem_link _nclicks:hfm.qa"><span class="Nitem_link_menu">추천Q&amp;A</span></a>
					</li>
					<li class="Nlist_item is_active">
						<a href="commentList.jsp" class="Nitem_link _nclicks:hfm.talk"><span class="Nitem_link_menu">TALK</span><em class="Nitem_link_count _commentCount" style="visibility: visible;">talk 수</em></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="info">
		
		
		
		
		
			<h3 class="tit"><span class="sp_hall_tit tit_comment">TALK</span></h3>
			<p class="desc ellipsis">명예의 전당에 대한 여러분들의 생각을 나누어 보세요!</p>
			
		
	</div>
	<a href="#" id="spiButton" class="hall_share naver-splugin _nclicks:RPC.share _spi" data-style="type_a" data-oninitialize="initializeSocialPlugin();" data-option="{align:'right'}" title="보내기" splugin-id="730510305"><span class="naver-splugin-c social_share type_round"></span></a>
	<div class="cover" style="background-image:url(https://kin-phinf.pstatic.net/hall/2022_4/pc_cover_2022_4_1652073094082.jpg)"></div>
	<span class="bg_transparent"></span>
</div>

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
				
				
				
				
				linkUrl : "https" + "://" + location.host + "/hall/commentList.naver?year=2022&month=4",
				
				title : "2022\uB144 4\uC6D4 \uBA85\uC608\uC758 \uC804\uB2F9\uAD00\uB828 \uC5EC\uB7EC\uBD84\uB4E4\uC758 \uC0DD\uAC01\uC744 \uB0A8\uACA8\uC8FC\uC138\uC694.",
				sourceTitle : "2022\uB144 4\uC6D4 \uBA85\uC608\uC758 \uC804\uB2F9 TALK",
				
				
				serviceSetting : {
					"calendar" : "off"
				}
			});
		});
	})();
}, this).attach(window, "load");
</script>

<div id="contentsOfHall" class="section_comment grid_inner">
	<div id="cbox_module" class="u_cbox">
		<div class="u_cbox_wrap u_cbox_ko u_cbox_type_sort_like">
			<div class="u_cbox_head">
				<h5 class="u_cbox_title">TALK</h5>
				<span class="u_cbox_count">1</span>
				<!-- <button type="button" class="u_cbox_btn_refresh" data-action="count#refresh" data-log="RPO.refresh">
				<span class="u_cbox_ico_refresh"></span>
				<span class="u_cbox_txt_refresh">새로고침</span>
				</button> -->
				<div class="u_cbox_head_tools"></div>
			</div>
			<div class="u_cbox_write_wrap">
				<div class="u_cbox_write_box u_cbox_type_logged_in">
					<form action="commentService.jsp" method="post">
						<fieldset>
							<legend class="u_vc">TALK 쓰기</legend>
							<div class="u_cbox_write">
								<div class="u_cbox_write_inner">
									<div class="u_cbox_profile_area">
										<div class="u_cbox_profile">
										<strong class="u_vc">로그인 정보</strong>
											<div class="u_cbox_box_name">
												<%if(id != null || id != "") {%>
												<span class="u_cbox_write_name"><%=id %></span>
												<%} %>
											</div>
										</div>
									</div>
									<%-- <%if(id.isEmpty() == false){ %> --%>
									<div class="u_cbox_write_area">
									<strong class="u_vc">TALK 입력</strong>
										<div class="u_cbox_inbox">
											<textarea title="TALK" class="u_cbox_text" rows="3" cols="30" name="content" placeholder="타인의 권리침해, 명예훼손, 욕설 또는 특정 계층/민족, 종교를 비하하는 표현을 하는 경우, 지식iN 활동에 제재를 받을 수 있습니다."></textarea>
										</div>
									</div>
									<%-- <%} else{ %>
									<div class="u_cbox_write_area">
									<strong class="u_vc">TALK 입력</strong>
										<div class="u_cbox_inbox">
											<textarea title="TALK" id="cbox_module__write_textarea" class="u_cbox_text" rows="3" cols="30" name="content" ></textarea>
											<label class="u_cbox_guide" >댓글을 작성하려면 <a href="/project_6/member/login.jsp" class="u_cbox_link">로그인</a> 해주세요</label>
										</div>
									</div>
									<%} %> --%>
									<div class="u_cbox_upload_image" style="display:none">
										<span class="u_cbox_upload_image_wrap fileButton browsebutton _cboxImageSelect">
											<span class="u-cbox-browse-box">
											<input class="u-cbox-browse-file-input" type="file" name="browse" accept="image/*" title="이미지 추가" style="top: -0.5em !important; height: 500px !important;"></span>
											<a href="#" class="u_cbox_upload_thumb_link u-cbox-browse-button u-cbox-browse-applied" data-log="RPP.add">
												<span class="u_cbox_upload_thumb_add">이미지 추가</span>
												<span class="u_cbox_upload_thumb_mask"></span>
											</a>
										</span>
									</div>
				
									<div class="u_cbox_upload_sticker" style="display:none"></div>
										<div class="u_cbox_write_count">
											<span class="u_vc">현재 입력한 글자수</span>
											<strong class="u_cbox_count_num">0</strong>/<span class="u_vc">전체 입력 가능한 글자수</span>
											<span class="u_cbox_write_total">300</span>
										</div>
										<div class="u_cbox_upload">
											<div class="u_cbox_addition">
												<button type="button" class="u_cbox_btn_upload_sticker" data-action="write#beforeToggleSticker" data-log="RPO.sticker">
													<span class="u_cbox_ico_upload_sticker"></span>
													<span class="u_cbox_txt_upload_sticker">스티커</span>
													<span class="u_cbox_ico_arrow"></span>
												</button>
												<span class="u_cbox_upload_photo_wrap fileButton browsebutton _cboxImageButton" data-action="write#beforeToggleImage" data-log="RPO.photo">
													<span class="u-cbox-browse-box">
														<input class="u-cbox-browse-file-input" type="file" name="browse" accept="image/*" title="이미지 추가" style="top: -0.5em !important; height: 500px !important;">
													</span>
													<span class="u_cbox_btn_upload_photo u-cbox-browse-button u-cbox-browse-applied">
														<span class="u_cbox_ico_upload_photo"></span>
														<span class="u_cbox_txt_upload_photo">사진</span>
													</span>
												</span>
											</div>
											<button type="submit" class="u_cbox_btn_upload">
												<span class="u_cbox_ico_upload"></span>
												<span class="u_cbox_txt_upload">등록</span>
											</button>
										</div>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
				<div class="u_cbox_sticker"></div>
			</div>
			<div class="u_cbox_notice u_cbox_notice_none" style="display: none;"></div>
				<div class="u_cbox_sort">
					<strong id="cbox_module_wai_u_cbox_sort_label" class="u_vc">TALK 정렬 옵션 선택</strong>
					<div class="u_cbox_sort_option">
						<div class="u_cbox_sort_scroller">
							<ul role="tablist" aria-labelledby="cbox_module_wai_u_cbox_sort_label" class="u_cbox_sort_option_list">
								<li role="presentation" class="u_cbox_sort_option_wrap u_cbox_sort_option_on">
									<a href="#" id="cbox_module_wai_u_cbox_sort_option_tab1" role="tab" aria-selected="true" aria-controls="cbox_module_wai_u_cbox_content_wrap_tabpanel" data-action="sort#request" data-param="like" data-log="RPS.sym" class="u_cbox_select">
										<span class="u_cbox_ico_select"></span>
										<span class="u_cbox_sort_label">공감순</span>
									</a>
								</li>
								<li role="presentation" class="u_cbox_sort_option_wrap">
									<a href="#" id="cbox_module_wai_u_cbox_sort_option_tab2" role="tab" aria-selected="false" aria-controls="cbox_module_wai_u_cbox_content_wrap_tabpanel" data-action="sort#request" data-param="new" data-log="RPS.new" class="u_cbox_select">
										<span class="u_cbox_ico_select"></span>
										<span class="u_cbox_sort_label">최신순</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="u_cbox_head_tools"></div>
				</div>
				<div id="cbox_module_wai_u_cbox_content_wrap_tabpanel" tabindex="0" class="u_cbox_content_wrap" style="outline: 0" role="tabpanel" aria-labelledby="cbox_module_wai_u_cbox_sort_option_tab1">
					<ul class="u_cbox_list">
						<li class="u_cbox_comment cbox_module__comment_758624685263946134 _user_id_no_cIKhi" data-info="commentNo:'758624685263946134',deleted:false,best:false,visible:true,secret:false,manager:false,mine:false,report:undefined,blindReport:false,objectId:'hall_year_2022',replyLevel:1,parentCommentNo:'758624685263946134',pick:false">
							<div class="u_cbox_comment_box u_cbox_type_profile">
								<div class="u_cbox_area">
									<div class="u_cbox_info">
										<div class="u_cbox_thumb u_cbox_kin">
											<span class="u_cbox_thumb_wrap">
												<img src="https://kin-phinf.pstatic.net/20220421_142/1650553118279fF5wE_PNG/avatar_profile.png?type=w200" alt="프로필 이미지" class="u_cbox_img_profile" onerror="cbox.Util.onImageError(this);">
												<span class="u_cbox_thumb_mask"></span>
											</span>
										</div>
										<span class="u_cbox_info_main">
											<span class="u_cbox_name">
												<span class="u_cbox_name_area">
													<span class="u_cbox_nick_area">
														<%if(member.getNickname() == null){ %>
														<span class="u_cbox_nick">아이디</span>
														<%} else { %>
														<span class="u_cbox_nick">닉네임</span>
														<%} %>
													</span>
												</span>
											</span>
										</span>
										<span class="u_cbox_info_sub"></span>
									</div>
									<div class="u_cbox_text_wrap">
										<span class="u_cbox_contents" data-lang="ko">내용</span>
									</div>
									<div class="u_cbox_info_base">
										<span class="u_cbox_date" data-value="2022-05-22T17:44:56+0900">작성일자</span>
										<span class="u_cbox_work_main">
											<a href="#" class="u_cbox_btn_report" data-action="report#request" data-param="commentNo:'758624685263946134',objectId:'hall_year_2022'" data-log="RPC.report" target="_blank">
												<span class="u_cbox_ico_bar"></span>
												<span class="u_cbox_ico_report"></span>
											</a>
										</span>
									</div>
									<span class="u_cbox_comment_frame">
										<span class="u_cbox_ico_tip"></span>
										<span class="u_cbox_comment_frame_top">
											<span class="u_cbox_comment_bg_r"></span>
											<span class="u_cbox_comment_bg_l"></span>
										</span>
										<span class="u_cbox_comment_frame_bottom">
											<span class="u_cbox_comment_bg_r"></span>
											<span class="u_cbox_comment_bg_l"></span>
										</span>
									</span>
								</div>
							</div>
							<div class="u_cbox_reply_area" style="display:none;"></div>
						</li>
					</ul>
				</div>
				
				<!-- block은 20으로 맞추기 -->
				<div class="u_cbox_paginate" style="">
					<div class="u_cbox_page_wrap">
						<span class="u_cbox_pre u_cbox_pre_end" title="첫 페이지 목록으로 이동하기">
							<span class="u_cbox_ico_page"></span>
							<span class="u_cbox_cnt_page">맨앞</span>
							<span class="u_vc">페이지 목록으로 이동하기</span>
						</span>
						<span class="u_cbox_pre" title="이전 페이지 목록으로 이동하기">
							<span class="u_cbox_ico_page"></span>
							<span class="u_cbox_cnt_page">이전</span>
							<span class="u_vc">페이지 목록으로 이동하기</span>
						</span>
						<strong class="u_cbox_page" data-param="1">
							<span class="u_cbox_num_page">1</span>
							<span class="u_vc">현재 선택된 페이지</span>
						</strong>
						<span class="u_cbox_next" title="다음 페이지 목록으로 이동하기">
							<span class="u_cbox_cnt_page">다음</span>
							<span class="u_cbox_ico_page"></span>
							<span class="u_vc">페이지 목록으로 이동하기</span>
						</span>
						<span class="u_cbox_next u_cbox_next_end" title="마지막 페이지 목록으로 이동하기">
							<span class="u_cbox_cnt_page">맨뒤</span>
							<span class="u_cbox_ico_page"></span>
							<span class="u_vc">페이지 목록으로 이동하기</span>
						</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

	</div>
</div>
<!-- //ct -->
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.hall.comment_list.js"></script>
	
	




<script type="text/javascript">
$Fn(function() {
	if (typeof naver.kin.hall.CommentList !== "undefined") {
		var oHallCommentList = new naver.kin.hall.CommentList({
			commonCommentOption : {
				sDomain : "https://ssl.pstatic.net/static.cbox",
				sApiDomain : "https://apis.naver.com/commentBox/cbox2",
				sTicket : "kin",
				sObjectId : "hall_year_2022",
				sCategoryId : "month_4",
				bLogin : true,
				bMobile : false
			}
		});
	}
}, this).attach(window, "load");;
</script>

</div> 



<%@ include file="../footer.jsp" %>
</body>
</html>