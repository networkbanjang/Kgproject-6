<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
<%@page import="hall.PageService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<%	
	String p_id = request.getParameter("id");
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	BoardDAO boardDao = new BoardDAO();
	ArrayList<answerDTO> answers;
	ArrayList<answerDTO> answer; // 이건 답변 페이지 리스트
	answerDAO answerDao = new answerDAO();
	answers = answerDao.answerList(id);
	int totalanswer = answerDao.count(p_id);
	int totalquestion = boardDao.totalquestion(p_id);
	//현재 페이지 번호
		int currentPage = 1;
			try{
				currentPage = Integer.parseInt(request.getParameter("pageNumber"));
			}catch(Exception e){
				currentPage = 1;
			}
			
			if(currentPage < 1)
				currentPage = 1;
			
			//한 페이지에 출력할 페이지의 수
			int pageBlock = 20;
			
			//데이터베이스에서 게시글 범위
			int end = currentPage * pageBlock;
			int begin = end + 1 - pageBlock;
			
			String data = request.getParameter("data");
			String mode = request.getParameter("mode");
			
			ArrayList<answerDTO> list;
			// 총 게시글의 수 : list.size()안됨.
			int totalCount = 0;
			if(mode != null && mode.equals("search")){
				if(data == null || data == ""){
					out.print("<script>alert('검색어를 입력하세요.');history.back();</script>");
					return;
				}
				list = answerDao.answerList(begin, end, data);		
				totalCount = answerDao.answerCount(data);
			}else{
				list = answerDao.answerListAll(begin, end);
				totalCount = answerDao.count();
			}

			String url = "/KG-naver/main/answerList.jsp?mode=" + mode + "&id=" + p_id + "&data="+data+"&pageNumber=";
			String result = PageService.getNavi(url, currentPage, pageBlock, totalCount);
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
	<%=id %> 님의 나의 답변, 프로필 : 지식iN
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
	
		
		
			<li class="last">나의 답변</li>
		
	
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
					<% double s_percent = ((double)member.getS_question()) / totalanswer; %>
					<strong><%=totalanswer %></strong> (채택답변
					<%=member.getS_question() %><span class="bar">|</span>답변채택률
					<%=String.format("%.2f", s_percent*100)%>%)
				</dd>
				<dt>질문</dt>
				<dd>
					<strong><%=totalquestion %></strong>
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
		<% if(id.equals(p_id)){ %>
		<li class="is_active">
			<a href="/KG-naver/main/answerList.jsp?id=<%=p_id %>" class="" id="subMenuOfMykin">나의 답변 <span class="num">(<%=totalanswer %>)</span></a>
		</li>
		<li><a href="/KG-naver/main/questionList.jsp?id=<%=p_id %>">나의 질문 <span class="num">(<%=totalquestion %>)</span></a></li>
		<%}else { %>
		<li>
			<a href="/KG-naver/main/answerList.jsp?id=<%=p_id %>" class="" id="subMenuOfMykin">답변 보기<span class="num">(<%=totalanswer %>)</span></a>
		</li>
		<%} %>
	</ul>
</div>
			</div>

			<div id="content" class="container-fluid-content__right">
				

	<ul class="tab1 _mykin_qna" role="tablist">
	<li role="tab" class="on" aria-selected="true"><a href="/myinfo/answerList.naver?isWorry=false" class="item">Q&amp;A<span></span></a></li>
	<!-- <li role="tab" aria-selected="false"><a href="/myinfo/answerList.naver?isWorry=true" class="item">고민Q&amp;A<span></span></a></li>
	<li role="tab" aria-selected="false"><a href="/myinfo/answerList.naver?section=mobileqna" class="item">SMS Q&amp;A<span></span></a></li>
	<li role="tab" aria-selected="false"><a href="/myinfo/answerList.naver?onlyChoice=true" class="item">CHOiCE<span></span></a></li> -->
	</ul>
	
	<h3 class="blind">Q&amp;A</h3>
	
	
	


<dl class="mykin_num mykin_answer">
		
		
		<dt>
			<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_all_answer.gif" width="50" height="13" alt="총 답변수">
			
		</dt>
		<dd class="sub">
			
			
			
				<%=totalanswer %>

		</dd>
		
			<dt>
				<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_my_answer2.gif" width="58" height="13" alt="채택된 답변">
				
			</dt>
			<dd>
				<%=member.getS_question() %>
			</dd>

			<dt>
				<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_my_answer4.gif" width="55" height="13" alt="답변채택률">
				
			</dt>
			<dd><div class="mykin_gage">
				<p class="bar">
				<span class="bar_in" style="width:<%=s_percent*100.0%>%;"></span></p>
				<span class="value"><%=s_percent*100.0%>%</span></div>
			</dd>
		
	
</dl>





<div id="help_represent_answer" class="layer_base layer_balloon" style="width:209px; top:353px; _top:352px; left:159px; _left:161px; _border-bottom:none; display:none;">
	<div class="layer_boxin">
		<strong>대표답변이란?</strong>
		<p>대표답변은 회원님이 작성한 답변 중 <br>유용하고 정성스러운 답변을 의미합니다.<br>대표답변으로 사용하시면, 프로필에 <br>해당 답변을 노출할 수 있습니다. 공개된<br>답변만 대표답변으로 설정할 수 있습니다.</p>
		<a href="#" class="close" id="au_close_help"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer.gif" width="19" height="19" alt="닫기"></a>
		<div class="edge_center"></div>
	</div>
</div>


<div id="help_bookmark_top" class="layer_base layer_balloon" style="width: 235px; top: 199px; left: 476px; display: none;"> 
	<div class="layer_boxin"> 
		<strong>즐겨찾는 답변이란?</strong> 
		<p>회원님이 작성하신 답변 중 자주 사용하는 내용의<br>답변을 쉽게 찾을 수 있도록 별을 클릭하여<br>즐겨찾기를 하실 수 있습니다.<br>즐겨찾는 답변은 최대 30개까지 설정 가능합니다.</p> 
		<a href="#" class="close _top"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer.gif" width="19" height="19" alt="닫기"></a>
		<div class="edge_center"></div> 
	</div> 
</div>  
<div id="help_bookmark_left" class="layer_base layer_balloon" style="width: 191px; top: 232px; left: -70px; display: none;"> 
	<div class="layer_boxin"> 
		<p>별을 클릭하시면 즐겨찾는 답변만 <br>답변리스트에서 보실 수 있습니다. </p> 
		<a href="#" class="close _left"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer.gif" width="19" height="19" alt="닫기"></a>
		<div class="edge_center"></div> 
	</div> 
</div> 

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Myinfo.RepresentAnswerHelp.js"></script>


				









	







	
		
	
	



<script type="text/javascript">
function selectOrder(order, bestFlagType, isBookmarkList){
	
		var sUrl = "?isWorry=false&dirId=0&order="+order ;

		if (typeof bestFlagType != "undefined") {
			sUrl += "&bestFlagType=" + bestFlagType;
		}
		
		if(isBookmarkList){
			sUrl += "&favoriteFlag=Y";
		}
		
		location.href = sUrl;
	
	
}
</script>


	<script type="text/template" id="yearListTpl">
	<ul>
		{for sequence:item in yearList}
			<li><a href="{=item.linkUrl}"{if item.year == currentYear} class="on"{/if}>{=item.year}</a></li>
		{/for}
	</ul>
	</script>
	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.DirectorySortingLayer.js"></script>



<div class="txt_choice">
	
		<a href="#" class="help _top">
			<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_bookmark.gif" width="92" height="13" class="help" alt="즐겨찾는 답변">
		</a>
	
	<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_questione.gif" width="63" height="12" class="help _top" alt="질문자 채택">
	<img src="https://ssl.pstatic.net/static/kin/09renewal/tx_kin.gif" width="63" height="12" alt="지식iN">
</div>


<table cellspacing="0" class="boardtype2 th_border" width="100%">
    
	
	
	<caption><span class="blind">Q&amp;A 목록</span></caption>
	
    <colgroup>
		
		
    		
    			<col width="22">
    		
        	<col>
        	
        		
        			<col width="67">
        		
        		
        			
        			
        				<col width="80">
						<col width="117">
        			
        		
        	

        	
			
        	
        		<col width="87">
        	
        	<col width="51">
        	<col width="61">
        	
		
    </colgroup>
    <thead>
        <tr>
        	
            	<th colspan="2" scope="col" class="title">
            	<!-- <p class="tit_icon">
            	<a href="#" class="book mark" id="_filter_bookmark"><span></span></a> 
            	<a href="#" class="help _left"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="14" height="14" class="help" alt="도움말"></a>
            	</p> -->제목</th>
            
            
            
            	
	        		<th scope="col">대표답변</th>
	        	
	        	
	        		
		       		
                		<th scope="col">구분</th>
                	
                
            
            
            	<th scope="col">디렉토리</th>
            
			
				<th scope="col" class="on">상태
					
						<span class="down"><a href="#" id="best_flag_link"><img height="12" width="12" alt="상태" src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"></a></span>
						<div class="option_layer">
							<ul class="sel_sort4">
							
							
								<li><a href="#all" class="on">전체</a></li>
								<li><a href="#best">채택</a></li>
								<li><a href="#ing">진행중</a></li>
								<li><a href="#close">완료</a></li>
							
							</ul>
						</div>
					
					
				</th>
			
            <th scope="col">좋아요</th>
            <th scope="col" class="title pdl_5 on">작성일<span class="down"><a href="javascript:selectOrder('writeTime')"><img height="12" width="12" alt="정렬" src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif"></a></span></th>
            
        </tr>
		<tr><td colspan="7" class="blank"></td></tr>
    </thead>
    <tbody id="au_board_list">
    	<%for(answerDTO a : answers){ %>
    	<tr>             	
    		<td><!-- <a href="#" class="book _param('130405,392740384,1')"><span></span></a> --></td>
            <td class="title">
            	<a href="/KG-naver/board/view.jsp?num=<%=a.getSlave() %>" rel="KIN"><%=a.getTitle() %></a>
            </td>
            <td>
                <a href="#" class="_reg_button _lookUpChildElement('img')"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_reg.gif" width="43" height="18" alt="등록" class="_reg _param('1,false,writeTime,130405,392740384,1,2')"></a>
            </td>
            <td class="field ls0">
				<a href="/qna/list.naver">Q&amp;A</a>
			</td>
	        <td class="field"><a href="/qna/list.naver?dirId=130405"><%=a.getCategory() %></a></td>
            <td class="field2">
				<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">
			</td>
			<td class="t_num"><span class="recomm">0</span></td>
            <td class="t_num tc"><%=a.getTime() %></td>
         </tr>
         <%} %>
    </tbody>
</table>


<!-- 대표답변 설정 레이어 -->
<div class="layer_base layer_type1" style="width:257px; display:none;" id="au_reg_allow">
	<h1>대표답변 설정하기</h1>
	<p class="desc">대표답변으로 설정하시겠습니까?</p>
	<div class="btn">
		<a href="#"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_confirm3.gif" width="45" height="26" alt="확인" class="_submit"></a>
		<a href="#"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_cancel2.gif" width="45" height="26" alt="취소" class="_close"></a>
	</div>
	<a href="#" class="close2"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer3.gif" width="19" height="19" alt="닫기" class="_close"></a>
</div>
<!-- //대표답변 설정 레이어 -->
<!-- 대표답변 설정 레이어 -->
<div class="layer_base layer_type1" style="width:257px; display:none;" id="au_reg_alert">
	<h1>대표답변 설정하기</h1>
	<p class="desc">대표답변은 3개까지 설정가능합니다.<br>이미 대표답변으로 설정된 값이 3개가 있어<br>다른 답변으로 변경을 원하시면, 기존<br>대표답변을 해제하셔야 합니다.</p>
	<div class="btn">
		<a href="#"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_confirm3.gif" width="45" height="26" alt="확인"></a>
	</div>
	<a href="#" class="close2"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_close_layer3.gif" width="19" height="19" alt="닫기"></a>
</div>
<!-- //대표답변 설정 레이어 -->


	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Myinfo.AnswerList.js"></script>


<ww:if test="false">
	
</ww:if>
<ww:else>
	
</ww:else>

<div class="paging space _tag_pager" style="display: none;">
	<div class="nav" style="display:block;"> <p class="btn"><a href="#" class="pr-prev _pre"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_prev.gif" width="23" height="23" alt="이전" title="이전"></a><a href="#" class="pr-next _next"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_nav3_next.gif" width="22" height="23" alt="다음" title="다음"></a></p></div>
</div>
<!-- <div class="paginate _default_pager">
		<a href="/myinfo/answerList.naver?page=1" class="on" title="선택됨">1</a>	 페이지 컨트롤 service 생성해서 리스트 페이지 관리하기
</div> -->
<div id="page_control" style="text-decoration: none; text-align: center;" >
			<%=result%>
</div>

	<div class="search">
	<fieldset>
		<legend>검색영역</legend>
		<form name="f" action="/KG-naver/main/answerList.jsp?mode=search" method="get" id="frmSearch">
			<input type="hidden" name="isSearch" value="true">
			<input type="hidden" name="isWorry" value="false">
			
			<input type="hidden" name="section" value="qna">
			
			<input type="hidden" name="sd" value="answer">
			<input type="text" name="data" title="검색어" class="keyword" placeholder="제목을 검색해주세요." maxlength="200">
			<input type="image" src="https://ssl.pstatic.net/static/kin/09renewal/btn_search.gif">
		</form>
	</fieldset>
	</div>
	<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.SearchBar.js"></script>


			</div>
		</div>
	</div>
</div>

</div> 

<%@ include file="../footer.jsp" %>
</body>
<html>