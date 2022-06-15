<%@page import="Page.PageService"%>
<%@page import="hall.TalkDTO"%>
<%@page import="hall.TalkDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<% 
id = (String)session.getAttribute("id");
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





<!-- ct -->
<div id="container" class="container-fluid">
	<div class="container-fluid-content hall_end">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">명예의전당 영역</h3>
			


<div class="hall_coverwrap" id="contentsOfHall">
	<div class="Nlnb">
		<div class="Nlnb_menu" data-type="scroll-x">
			<div id="lnbMenu" class="Nlnb_menu_inner">
				<ul class="Nlnb_menu_list">
					<li class="Nlist_item">
						<a href="index.jsp" class="Nitem_link _nclicks:hfm.home"><span class="Nitem_link_menu">전당홈</span></a>
					</li>

					<li class="Nlist_item">
						<a href="eliteUser.jsp" class="Nitem_link _nclicks:hfm.king"><span class="Nitem_link_menu">채택왕</span></a>
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


<%
int pagenumber = 0;
try{
	pagenumber = Integer.parseInt(request.getParameter("pageNumber"));
}catch(Exception e){
	pagenumber = 1;
}

if(pagenumber < 1)
	pagenumber = 1;

//한 페이지에 출력할 페이지의 수
int pageBlock = 20;

//데이터베이스에서 게시글 범위
int end = pagenumber * pageBlock;
int begin = end + 1 - pageBlock;

String sort=request.getParameter("sort");

if(sort == null){
	sort="recommend";
}

if(sort.equals("date")){
	sort="date";
}

ArrayList<TalkDTO> list;
TalkDAO talkDao = new TalkDAO();
int totalCount = 0;
String result="";
	list = talkDao.listdate(begin, end);
	totalCount=talkDao.count();
	String url = "commentList.jsp?pageNumber=";
	result = PageService.getNavi(url, pagenumber, pageBlock, totalCount);
%>

<div id="contentsOfHall" class="section_comment grid_inner">
	<div id="cbox_module" class="u_cbox">
		<div class="u_cbox_wrap u_cbox_ko u_cbox_type_sort_like">
			<div class="u_cbox_head">
				<h5 class="u_cbox_title">TALK</h5>
				<span class="u_cbox_count"><%=talkDao.count() %></span>
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

								
									<div class="u_cbox_upload_sticker" style="display:none"></div>
										<div class="u_cbox_write_count">
											<span class="u_vc">현재 입력한 글자수</span>
											<strong class="u_cbox_count_num">0</strong>/<span class="u_vc">전체 입력 가능한 글자수</span>
											<span class="u_cbox_write_total">300</span>
										</div>
										<div class="u_cbox_upload">
								
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
						
					</div>
					<div class="u_cbox_head_tools"></div>
				</div>
				<div id="cbox_module_wai_u_cbox_content_wrap_tabpanel" tabindex="0" class="u_cbox_content_wrap" style="outline: 0" role="tabpanel" aria-labelledby="cbox_module_wai_u_cbox_sort_option_tab1">
					<ul class="u_cbox_list">
					<%for (TalkDTO l : list) { %>
						<li class="u_cbox_comment cbox_module__comment_758624685263946134 _user_id_no_cIKhi" data-info="commentNo:'758624685263946134',deleted:false,best:false,visible:true,secret:false,manager:false,mine:false,report:undefined,blindReport:false,objectId:'hall_year_2022',replyLevel:1,parentCommentNo:'758624685263946134',pick:false">
							<div class="u_cbox_comment_box u_cbox_type_profile">
								<div class="u_cbox_area">
									<div class="u_cbox_info">
										<div class="u_cbox_thumb u_cbox_kin">
											<span class="u_cbox_thumb_wrap">
											<%if(l.getPic() == null) {%>
												<img src="/KG-naver/images/default.png" alt="프로필 이미지" class="u_cbox_img_profile" onerror="cbox.Util.onImageError(this);">
												<span class="u_cbox_thumb_mask"></span>
												<%} else{%>
													<img src="/KG-naver/images/default.png" alt="프로필 이미지" class="u_cbox_img_profile" onerror="cbox.Util.onImageError(this);">
													<span class="u_cbox_thumb_mask"></span>													
													
												<%}%>
												
											</span>
										</div>
										<span class="u_cbox_info_main">
											<span class="u_cbox_name">
												<span class="u_cbox_name_area">
													<span class="u_cbox_nick_area">
														<%if(member.getNickname() == null){ %>
														<span class="u_cbox_nick">	<a href="/KG-naver/main/profile.jsp?id=<%=l.getId()%>"><%=l.getId() %></a></span>
														<%}%> 
													</span>
													<span>
															<%if (id.equals(l.getId())){ %>
				<a
					href="commentDelete.jsp?num=<%=l.getNum() %>"
					class="_deleteBtn"><img height="9" width="9"
					src="https://ssl.pstatic.net/static/kin/09renewal/btn_delete_list2.gif"
					class="del"></a>
<%} %>
													</span>
												</span>
											</span>
										</span>
										<span class="u_cbox_info_sub"></span>
									</div>
									<div class="u_cbox_text_wrap">
										<span class="u_cbox_contents" data-lang="ko"><%=l.getContent() %></span>
									</div>
									<div class="u_cbox_info_base">
										<span class="u_cbox_date" "><%=l.getWritedate() %></span>
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
						<%}  talkDao.close();%>
					</ul>
				</div>
				
				<!-- block은 20으로 맞추기 -->
				<div class="u_cbox_paginate" style="">
					<%=result %>
				</div>
			</div>
		</div>
	</div>
</div>

	</div>
</div>
<!-- //ct -->
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.hall.comment_list.js"></script>
	
	




</div> 



<%@ include file="../footer.jsp" %>
</body>
</html>