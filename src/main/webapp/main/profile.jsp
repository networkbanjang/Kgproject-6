<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%	
	String p_id = request.getParameter("id");
	
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(p_id);
	ArrayList<MemberDTO> rank;
	rank = memberDao.selectElite();
	
	ArrayList<BoardDTO> board;
	BoardDAO boardDao = new BoardDAO();
	board = boardDao.listAll();
	
	ArrayList<answerDTO> answers;
	ArrayList<answerDTO> s_answer;
	answerDAO answerDao = new answerDAO();
	answers = answerDao.answerList(p_id);
	
	int totalanswer=answerDao.count(p_id) ;
	int totalquestion=boardDao.totalquestion(p_id);
//	s_answer = answerDao.selectedAnswer();
ArrayList<MemberDTO> first;
first = memberDao.firstAnswer(p_id);
%>
<html lang="ko"><head>

<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/profile.css">

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	<%=p_id %> 프로필 : 지식iN
</title>

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/kin-web-pc/20220511163235/js/min/message/MessageManager.js"></script>

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

<!-- Personal_Info  -->
<h2 class="blind">프로필</h2>


<div class="my_personal" id="au_main_profile_box" style="">

	<div class="my_personal_top"></div>
	<div class="my_personal_inner">
		
		<div class="profile_section">
			<div class="profile_group">
				
					
					
					
						<a href="/KG-naver/people/peopleGuideForm.jsp" class="profile_animate profile_default">
						<%if (member.getPic() != null) {%>
							<span class="thumbnail">
								<img src="/KG-naver/up/<%=p_id %>/<%=member.getPic() %>" width="100%" height="100%" alt="1 님의 프로필">
							</span>
							<%} else{ %>
							<span class="thumbnail">
								<img src="/KG-naver/images/default.png" width="100%" height="100%" alt="1 님의 프로필">
							</span>
							<%} %>
							<span class="mask_bdr"></span>
						</a>
					
				
				
					
					<a href="/KG-naver/main/profileForm.jsp?id=<%=id %>" class="edit_photo _ros" target="_blank">
					
						<span class="photo_edit_button">
							<span class="blind">프로필 사진 변경</span>
						</span>
					</a>
				
				
			</div>
			<div class="profile_info">
				<div class="profile_name">
					<strong class="profile_user"><%=p_id %></strong>
					
				</div>
				
				
				
				<%for(MemberDTO m : first){ %>
				<div class="profile_answer_date">최초답변일 <span><%=m.getFirstdate() %></span></div>
				<%} %> 
				
				
			</div>
				
				<%if(id == p_id) {%>
                <div class="btn_info cert"> <!-- 활동증명서 보기 버튼 팝업창  -->
					<a href="#" class="btn_cert" onclick="showPopup()" target="_blank"><span>활동증명서 보기<em class="sp_cert ico_arrow"></em></span></a>
				</div>
				<%} %>
			

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
				
				<%if (id.equals(member.getId())) {%>
					<p class="btn_report">
						<a href="profileForm.jsp" onclick="nhn.Kin.Utility.nClicks('prf.prfedit', '', '', event);nhn.Kin.checkRosAndGoUrl(event, '/myinfo/namecardProfileForm.naver', '');" class="_ros"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_intro_edit_130927.gif" width="27" height="16" alt="수정"></a>
					</p>
				<%} %>
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
							<%if(member.getS_question() == 0){ %>
							<strong class="my_level"><span class="level_number">1</span>하수<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() == 1){ %>
							<strong class="my_level"><span class="level_number">2</span>평민<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() == 2){ %>
							<strong class="my_level"><span class="level_number">3</span>시민<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() == 3){ %>
							<strong class="my_level"><span class="level_number">4</span>초수<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 20 && member.getS_question() < 40){ %>
							<strong class="my_level"><span class="level_number">5</span>중수<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 40 && member.getS_question() < 80){ %>
							<strong class="my_level"><span class="level_number">6</span>고수<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 80 && member.getS_question() < 200){ %>
							<strong class="my_level"><span class="level_number">7</span>영웅<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 200 && member.getS_question() < 400){ %>
							<strong class="my_level"><span class="level_number">8</span>지존<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 400 && member.getS_question() < 1000){ %>
							<strong class="my_level"><span class="level_number">9</span>초인<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 1000 && member.getS_question() < 1300){ %>
							<strong class="my_level"><span class="level_number">10</span>식물신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 1300 && member.getS_question() < 1700){ %>
							<strong class="my_level"><span class="level_number">11</span>바람신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 1700 && member.getS_question() < 2300){ %>
							<strong class="my_level"><span class="level_number">12</span>물신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 2300 && member.getS_question() < 3000){ %>
							<strong class="my_level"><span class="level_number">13</span>달신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 3000 && member.getS_question() < 4000){ %>
							<strong class="my_level"><span class="level_number">14</span>별신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 4000 && member.getS_question() < 6000){ %>
							<strong class="my_level"><span class="level_number">15</span>태양신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 6000 && member.getS_question() < 10000){ %>
							<strong class="my_level"><span class="level_number">16</span>은하신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 10000 && member.getS_question() < 20000){ %>
							<strong class="my_level"><span class="level_number">17</span>우주신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 20000 && member.getS_question() < 50000){ %>
							<strong class="my_level"><span class="level_number">18</span>수호신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%}else if(member.getS_question() >= 50000){ %>
							<strong class="my_level"><span class="level_number">19</span>절대신<a href="/KG-naver/people/peopleGuideForm.jsp" target="_blank" class="guide">안내</a></strong>
							<%} %>
							
							
							<%if(member.getS_question() == 0){ %>
							<span class="my_level_up"><span class="level_number">2</span>평민</span>
							<%}else if(member.getS_question() == 1){ %>
							<span class="my_level_up"><span class="level_number">3</span>시민</span>
							<%}else if(member.getS_question() == 2){ %>
							<span class="my_level_up"><span class="level_number">4</span>초수</span>
							<%}else if(member.getS_question() == 3){ %>
							<span class="my_level_up"><span class="level_number">5</span>중수</span>
							<%}else if(member.getS_question() >= 3 && member.getS_question() < 40){ %>
							<span class="my_level_up"><span class="level_number">6</span>고수</span>
							<%}else if(member.getS_question() >= 40 && member.getS_question() < 80){ %>
							<span class="my_level_up"><span class="level_number">7</span>영웅</span>
							<%}else if(member.getS_question() >= 80 && member.getS_question() < 200){ %>
							<span class="my_level_up"><span class="level_number">8</span>지존</span>
							<%}else if(member.getS_question() >= 200 && member.getS_question() < 400){ %>
							<span class="my_level_up"><span class="level_number">9</span>초인</span>
							<%}else if(member.getS_question() >= 400 && member.getS_question() < 1000){ %>
							<span class="my_level_up"><span class="level_number">10</span>식물신</span>
							<%}else if(member.getS_question() >= 1000 && member.getS_question() < 1300){ %>
							<span class="my_level_up"><span class="level_number">11</span>바람신</span>
							<%}else if(member.getS_question() >= 1300 && member.getS_question() < 1700){ %>
							<span class="my_level_up"><span class="level_number">12</span>물신</span>
							<%}else if(member.getS_question() >= 1700 && member.getS_question() < 2300){ %>
							<span class="my_level_up"><span class="level_number">13</span>달신</span>
							<%}else if(member.getS_question() >= 2300 && member.getS_question() < 3000){ %>
							<span class="my_level_up"><span class="level_number">14</span>별신</span>
							<%}else if(member.getS_question() >= 3000 && member.getS_question() < 4000){ %>
							<span class="my_level_up"><span class="level_number">15</span>태양신</span>
							<%}else if(member.getS_question() >= 4000 && member.getS_question() < 6000){ %>
							<span class="my_level_up"><span class="level_number">16</span>은하신</span>
							<%}else if(member.getS_question() >= 6000 && member.getS_question() < 10000){ %>
							<span class="my_level_up"><span class="level_number">17</span>우주신</span>
							<%}else if(member.getS_question() >= 10000 && member.getS_question() < 20000){ %>
							<span class="my_level_up"><span class="level_number">18</span>수호신</span>
							<%}else if(member.getS_question() >= 20000 && member.getS_question() < 50000){ %>
							<span class="my_level_up"><span class="level_number">19</span>절대신</span>
							<%-- <%}else if(member.getS_question() > 50000) {%> --%>
							<%} %>
									
						</div>
					</div>
					
		
					<ul class="lv_cnt">

					<li><em class="tit">전체답변</em><p class="num"><%=totalanswer %></p></li>
					<li><em class="tit">채택답변</em><p class="num"><%=member.getS_question() %></p></li>
					<% double s_percent = ((double)member.getS_question()) / totalanswer; %>
					<li><em class="tit">답변채택률</em><p class="num"><%=String.format("%.2f", s_percent*100)%>%</p></li>
					</ul>

					
						<!-- if문으로 '중수'면 '고수'까지 남은 채택 답변 ##개
						'고수'면 '영웅'까지 남은 채택 답변 ##개 이런식으로 작성 -->
						<p class="lv_til">
							<%if(member.getGrade().equals("하수")) { %>
							<em>평민</em>
							<%}else if(member.getGrade().equals("평민")) { %>
							<em>시민</em>
							<%}else if(member.getGrade().equals("시민")) { %>
							<em>초수</em>
							<%}else if(member.getGrade().equals("초수")) { %>
							<em>중수</em>
							<%}else if(member.getGrade().equals("중수")) { %>
							<em>고수</em>
							<%//}else if(member.getGrade().equals("고수")) { %>
							<!-- <em>영웅</em> -->
							<%}else if(member.getGrade().equals("영웅")) { %>
							<em>지존</em>
							<%}else if(member.getGrade().equals("지존")) { %>
							<em>초인</em>
							<%}else if(member.getGrade().equals("초인")) { %>
							<em>식물신</em>
							<%}else if(member.getGrade().equals("식물신")) { %>
							<em>바람신</em>
							<%}else if(member.getGrade().equals("바람신")) { %>
							<em>물신</em>
							<%}else if(member.getGrade().equals("물신")) { %>
							<em>달신</em>
							<%}else if(member.getGrade().equals("달신")) { %>
							<em>별신</em>
							<%}else if(member.getGrade().equals("별신")) { %>
							<em>태양신</em>
							<%}else if(member.getGrade().equals("태양신")) { %>
							<em>은하신</em>
							<%}else if(member.getGrade().equals("은하신")) { %>
							<em>우주신</em>
							<%}else if(member.getGrade().equals("우주신")) { %>
							<em>수호신</em>
							<%}else if(member.getGrade().equals("수호신")) { %>
							<em>절대신</em>
							<%} %>
							
							<span>까지 남은 채택 답변</span>
							
							<%if(member.getGrade().equals("하수")) {%>
							<strong>1</strong>
							<%}else if(member.getGrade().equals("평민")) { %>
							<strong>1</strong>
							<%}else if(member.getGrade().equals("시민")) { %>
							<strong>1</strong>
							<%}else if(member.getGrade().equals("초수")) { %>
							<strong><%=20-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("중수")) { %>
							<strong><%=40-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("고수")) { %>
							<strong><%=80-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("영웅")) { %>
							<strong><%=200-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("지존")) { %>
							<strong><%=400-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("초인")) { %>
							<strong><%=1000-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("식물신")) { %>
							<strong><%=1300-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("바람신")) { %>
							<strong><%=1700-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("물신")) { %>
							<strong><%=2300-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("달신")) { %>
							<strong><%=3000-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("별신")) { %>
							<strong><%=4000-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("태양신")) { %>
							<strong><%=6000-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("은하신")) { %>
							<strong><%=10000-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("우주신")) { %>
							<strong><%=20000-member.getS_question() %></strong>
							<%}else if(member.getGrade().equals("수호신")) { %>
							<strong><%=50000-member.getS_question() %></strong>
							<%} %>
							
						</p>
						
					
				</div>
				<dl class="my_spec">
				
					<dt>채택순위</dt>
					<dd>
					<%for(MemberDTO m : rank){ 
						if(m.getId().equals(p_id)){%>
					<strong><%=m.getRank() %></strong>
					<%}
					}%>
					위</dd>
				
				<dt>질문</dt>
				<dd>
					<span class="q_list">전체질문 <strong><%=totalquestion %>건</strong></span>
					<!-- <span class="q_list rec_text">답변 받은 질문 <strong>##건</strong></span>
					<span class="q_list">전체마감률 <strong>93.9%</strong></span> -->
					<span class="q_list rec_text">답변채택률 <strong>
					<%=String.format("%.2f", s_percent*100)%>%</strong></span>
				</dd>
				<dt>받은추천</dt>
				<dd>
					<span class="q_list">좋아요 <strong><%=member.getLike_n() %></strong></span>
				</dd>


<div class="layer_base layer_type1 layer_editor" id="editorActivityHistory" style="display:none;">
</div>
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


<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.ProfileAnimation.js"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.EditorHistory.js"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.MainProfileBox.js"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/naver.kin.FriendAndBlockMenu.js"></script>

			




			<div class="container-fluid-content__left">
				








<!--// Personal_Info  -->

<div class="snb snb_bordered snb_mykin">
	<h2 class="snb_title blind">프로필</h2>
	<ul class="snb_list">
		<%if(id.equals(p_id)) {%>
		<li>
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
			<%if(id.equals(p_id)){ %>
			<div id="content" class="container-fluid-content__right">
				<div id="myinfoIndex_1" class="my_home">
					

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
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Myinfo.MyKinActivity.js"></script>


<!-- 답변 -->

    
    <div class="my_info_area">
        
        <h4 class="h_my_title type_default ">
            
                <img src="https://ssl.pstatic.net/static/kin/09renewal/h_my_answer.gif" width="54" height="13" alt="나의 답변">
                <span class="eng">(<%=totalanswer %>)</span>
            
            
        </h4>
        <table cellspacing="0" class="boardtype2 th_border my_table" width="100%">
            <caption><span class="blind">나의 답변 목록으로 제목, 카테고리, 채택, 좋아요, 작성</span></caption>
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
                <th scope="col">카테고리</th>
                <th scope="col">채택</th>
                <th scope="col">좋아요</th>
                <th scope="col" class="title">작성</th>
            </tr>
            <tr>
                <td colspan="5" class="blank2">&nbsp;
                
            </td></tr>
            </thead>
            <tbody>
            
                	<%int count = 1;
                	for(answerDTO a : answers){ 
                		if(count <= 10){%>
                    <tr>
                        <td class="qna">
                            <dl class="dlist_qna">
                                <dt>
                                    <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                                    <a href="/KG-naver/board/view.jsp?num=<%=a.getSlave() %>" onclick="nhn.Kin.Utility.nClicks('myh.', '130405_392740384', '1', event);"><%=a.getTitle() %></a>
                                    
                                </dt>
                                <dd>
                                    <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span><%=a.getContent() %><!-- (일부분 몇자이내) -->
                                </dd>
                            </dl>
                        </td>
                        <td class="field"><%=a.getCategory() %></td>
                        <td class="field">
                            	<!-- if 채택을 받았다면 이미지 띄워주기 -->
                                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">
                            
                            
                            
                        </td>
                        <td class="t_num"><span>좋아요 수</span></td>
                        <td class="t_num tc"><%=a.getTime() %></td>
                    </tr>
					<%}
                		count++;
                		}%>
            </tbody>
        </table>
        
            <span class="more"><a href="/KG-naver/main/answerList.jsp?id=<%=p_id%>" onclick="nhn.Kin.Utility.nClicks('myh.amore', '', '', event);">더보기</a></span>
        
        
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
            <caption><span class="blind">나의 질문 목록으로 제목, 카테고리, 채택, 답변, 표정, 작성</span></caption>
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
                <th scope="col">카테고리</th>
                <th scope="col">채택</th>
                <th scope="col">답변</th>
                <th scope="col">좋아요</th>
                <th scope="col" class="title">작성</th>
            </tr>
            <tr>
                <td colspan="6" class="blank">&nbsp;</td>
            </tr>
            </thead>
            <tbody id="au_board_list_1">
            	
               	<%count = 1;
               	for(BoardDTO b : board) {
               		if(count <= 10){
             		String b_id = String.valueOf(b.getId());
	            	if(b_id.equals(p_id)) {%>
		                <tr>
		                    <td class="title">
		                        <a href="/KG-naver/board/view.jsp?num=<%=b.getNum() %>" rel="KIN" onclick="nhn.Kin.Utility.nClicks('myh.qlist', '8040202_392745933', '1', event);"><%=b.getTitle() %></a>
		                        <%if(b.getPhoto() != null){ %>
		                        <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="13" height="14" alt="이미지첨부" class="pic2 is_img">
		 						<%} %>
		                    </td>
		                    <td class="field"><a href="/qna/list.naver?dirId=8040202"><%=b.getCategory() %></a></td>
		                    <td class="field">
		                    <%//for(answerDTO a : s_answer) {%>
		                        <%//if(a.getRecommend() == 1 ){ %> <!-- 내가 답변자에게 채택을 했나 안했나 -->
		                    	<img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">
		                        <%//} 
		                        //}%>
		                    </td>
		                    
		                    <td class="t_num">답변수</td>
		                    
		                    <td class="t_num"><span>좋아요 수</span></td>
		                    <td class="t_num tc"><%=b.getTime() %></td>
		                </tr> 
	                <%}
            	  } 
               		count++;
            	  }%>
            	  
            	  
            </tbody>
        </table>
        <span class="more"><a href="/KG-naver/main/questionList.jsp?id=<%=p_id%>" onclick="nhn.Kin.Utility.nClicks('myh.qmore', '', '', event);">더보기</a></span>
    </div>
</div>
</div>
			<%}else{ %>
			<div id="content" class="container-fluid-content__right my_home">
				






<!-- 답변 -->

    
    <div class="my_info_area">
        
        <h4 class="h_my_title type_default type1">
            
            
                <img src="https://ssl.pstatic.net/static/kin/09renewal/h_write_answer.gif" width="67" height="14" alt="작성한 답변">
                <span class="eng">(<%=totalanswer %>)</span>
                <p class="desc">목록에는 공개된 Q&amp;A 답변만 노출됩니다.</p>
            
        </h4>
        <table cellspacing="0" class="boardtype2 th_border my_table" width="100%">
            <caption><span class="blind">작성한 답변 목록으로 제목, 디렉토리, 채택, 표정, 작성</span></caption>
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
            
                <% int count = 1;
                	answers = answerDao.answerList(p_id);
                	for(answerDTO a : answers) {
                		if(count <= 10){%>
                    <tr>
                        <td class="qna">
                            <dl class="dlist_qna">
                                <dt>
                                    <span class="ico_q"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="질문"></span>
                                    <a href="/KG-naver/board/view.jsp?num=<%=a.getSlave() %>" onclick="nhn.Kin.Utility.nClicks('myh.', '1061203_421628983', '1', event);"><%=a.getTitle() %></a>
                                    
                                </dt>
                                <dd>
                                    <span class="ico_a"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="18" height="14" alt="답변"></span>
                                    <%=a.getContent() %>
                                </dd>
                            </dl>
                        </td>
                        <td class="field"><a href="/qna/list.naver?dirId=1061203"><%=a.getCategory() %></a></td>
                        <td class="field">
                            
                                <img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" width="16" height="20" class="medal_1" title="질문자 채택" alt="질문자 채택">
                            
                            
                            
                        </td>
                        <td class="t_num"><span class="recomm">0</span></td>
                        <td class="t_num tc"><%=a.getTime() %></td>
                    </tr>
              	<%} 
              	count++;
              	}%>
            </tbody>
        </table>
        
        
            <span class="more"><a href="/KG-naver/main/answerList.jsp?id=<%=p_id%>">더보기</a></span>
        
    </div>
			</div>
			<%} memberDao.close();%>
</div>
</div>
</div>
</div>



<%@ include file="../footer.jsp" %>
</body>
</html>