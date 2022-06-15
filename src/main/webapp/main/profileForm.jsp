<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>    
<%
	if(id == null || id == ""){
		response.sendRedirect("/KG-naver/index.jsp");
		return;
	}
	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	
%>
<html lang="ko">
<head>
<!-- <script src="//code.jquery.com/jquery-3.3.1.min.js"></script> 라디오 비활성화를 위해 jquery사용 -->
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/common.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/components.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/other.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/profile.css">

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	기본정보,프로필 : 지식iN
</title>

<script src="https://ssl.pstatic.net/static.gn/js/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script>
<!-- <script>
	$(document).ready(function(){
		 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=useNickname]").click(function(){
	 
	        if($("input[name=useNickname]:checked").val() == "true"){
	            $("input:text[name=nickname]").attr("disabled",false);
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else if($("input[name=useNickname]:checked").val() == "false"){
	              $("input:text[name=nickname]").attr("disabled",true);
	            // radio 버튼의 value 값이 0이라면 비활성화
	        }
	    });
	});
</script> -->
</head>
<body>
<div id="wrap" class="wrap wrap_my"> 

<div id="container" class="container-fluid">
	<div class="container-fluid-content">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">프로필 영역</h3>


<strong class="blind">현재 페이지 경로</strong>
<ul class="location" id="au_location">
	<li><a href="/index.naver">홈</a></li>
	<li>
		<a href="/myinfo/index.naver">프로필</a>
	</li>
	<li class="last">기본정보</li>	
</ul>


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
					
					
						<a href="/myinfo/namecardProfileForm.naver" onclick="nhn.Kin.Utility.nClicks('prf.infoedit', '', '', event);"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_info_edit.gif" width="61" height="18" alt="정보관리"></a>
					
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
		<li><a href="questionList.jsp">나의 질문 <span class="num">(<%=member.getQuestion() %>)</span></a></li>

	</ul>
</div>
			</div>

			<div id="content" class="container-fluid-content__right">

<div class="sp_common_tab myinfo_tab">
	<ul>
		<li><a href="#" class="on" onclick="nhn.Kin.Utility.nClicks('.profile', '', '', event);">프로필 관리</a></li>
	</ul>
</div>







<form name="f" action="/KG-naver/main/profileFormService.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="photoUrl" id="photoUrl" value="">
<input type="hidden" name="cropPhotoUrl" id="cropPhotoUrl" value="">
<input type="hidden" name="photoType" id="photoType" value="avatar">
<input type="hidden" name="ext" id="ext" value="">
<input type="hidden" name="isOrgPhotoChange" id="isOrgPhotoChange" value="false">
<input type="hidden" name="isCropPhotoChange" id="isCropPhotoChange" value="false">
<input type="hidden" name="isPartner" id="isPartner" value="false">
<input type="hidden" name="isPhotoRemove" id="isPhotoRemove" value="false">
<input type="hidden" name="profileRobotsFlag" id="profileRobotsFlag" value="Y">
<input type="hidden" name="photoInfraCrossOrigin" id="photoInfraCrossOrigin" value="https://public2.upphoto.naver.com">


<input type="hidden" name="imageDomain" id="imageDomain" value="https://kin-phinf.pstatic.net">
<fieldset>
	<legend>프로필 관리</legend>
	<div class="tb_tit">
		<h3>프로필 관리</h3>
	</div>
	<table class="tb_myinfo" cellpadding="0" cellspacing="0" summary="프로필 관리" id="au_my_intro" role="presentation">
		<tbody><tr role="presentation">
			<th role="presentation" scope="row">별명</th>
			<td role="presentation">
				<ul class="set_name">
					<li>
						<!-- 별명 입력하는 곳 -->
						<input type="radio" name="useNickname" value="false" checked>
						<label for="set_nick1">별명 사용 안함</label>
					</li>
					<li>
						<input type="radio" name="useNickname" value="true">
						<label for="set_nick2">별명 사용</label><span class="name_desc2">답변할 때 별명과 아이디가 함께 표시됩니다. 예) 지식도령 (gil_dong_hong)</span>
					</li>
				</ul>
				<div class="nick">
					
						<%if(member.getNickname() == null){ %>
						<input type="text" name="nickname" class="input_text _input_nickname" style="width:229px;" title="별명 입력" placeholder="별명 입력" aria-disabled="false">
						<%}else { %>
						<input type="text" name="nickname" class="input_text _input_nickname" style="width:229px;" title="별명 입력" value="<%=member.getNickname() %>" aria-disabled="false">
						<%} %>
					<span class="byte _byte">0/20 byte</span>
					<p class="paragraph">한글 1~10자, 영문 대소문자 2~20자, 숫자를 사용할 수 있습니다. (혼용가능)</p>
				</div>
			</td>
		</tr>
		<tr role="presentation">
		<td role="presentation" colspan="2" class="line"></td>
		</tr>
		<tr role="presentation">
			<th role="presentation" scope="row">프로필사진</th>
			<td role="presentation">
				<div>
					<input type="file" name="upfile" class="upfile">
					<!-- <img src="https://ssl.pstatic.net/static/kin/09renewal/btn_upload_profilephoto2.gif" width="100" height="22" alt="프로필 사진 올리기" class="btn _upload_popup_btn"> -->
					
					<p class="paragraph"><span >프로필 사진을 올려보세요 :)</span></p>
				</div>
				<ul class="set_photo _set_photo" id="photo" style="display:none">
					<li>
						<p class="thumb">
							<a href="#" class="_view_crop_image">
								
								
								
									
								
								<img src="" ""="" id="photoUrlThumb" width="33" height="33" alt="">
							</a>
						</p>
						<p class="state">
							현재사진 :&nbsp;<span class="filename" id="photoName"></span><a href="#" class="del _del"><img src="https://ssl.pstatic.net/static/kin/09renewal/btn_delete_list2.gif" width="9" height="9" alt="">삭제</a>
							<span class="desc">현재 적용된 프로필 사진을 삭제하시면, 등급 아바타로 표시됩니다.</span>
						</p>
					</li>
				</ul>
			</td>
		</tr>
		<tr role="presentation"><td role="presentation" colspan="2" class="line"></td></tr>
		<tr role="presentation">
			<th role="presentation" scope="row">내소개</th>
			<td role="presentation">
					<div class="introduce_area">
						<p class="paragraph3">본인의 전문성을 표현할 수 있는 정보를 입력해보세요. (필수아님)</p>
						<p class="paragraph">이용자가 정보를 열람할 때 참고 할 수 있습니다.</p>
					</div>
					<div class="introduce_area">
						<p class="tit2"><label for="introduction">상세 소개</label></p>
						<%if(member.getIntro() == null){ %>
						<textarea cols="75" rows="5" class="my_intro _my_intro" style="width:574px; height:86px;" name="introduction" id="introduction" aria-disabled="false" placeholder="200자 이내로 작성해 주세요"></textarea>
						<%}else{ %>
						<textarea cols="75" rows="5" class="my_intro _my_intro" style="width:574px; height:86px;" name="introduction" id="introduction" aria-disabled="false"><%=member.getIntro()%></textarea>
						<%} %>
						<p class="byte _byte">0/200</p>
					</div>
					<ul class="introduce_info_area">
						<li class="introduce_info">근무이력, 학업, 전공, 수상이력등 더 자세히 본인을 소개하고 싶은 정보를 입력해주세요.</li>
						<li class="introduce_info">의료기관 정보는 허용되지 않습니다.</li>
						<li class="introduce_info">자격증 정보는 취득자격관리에서 등록해주세요! <a class="introduce_reg_link" href="/myinfo/licenseSettingForm.naver">등록하기 &gt;</a></li>
					</ul>
				
			</td>
		</tr>
		<tr role="presentation"><td role="presentation" colspan="2" class="line"></td></tr>
		<tr role="presentation">
			<th role="presentation" scope="row">외부검색허용</th>
			<td role="presentation">
				<div>
					<p class="set_input_chk_list"><input type="radio" class="input_chk _profile_robots_flag" id="input_outside1" name="input_outside" value="Y" checked=""><label for="input_outside1">허용</label></p>
					<p class="set_input_chk_list"><input type="radio" class="input_chk _profile_robots_flag" id="input_outside2" name="input_outside" value="N"><label for="input_outside2">비허용</label></p>
				</div>
				<p class="answer_txt">외부 검색 엔진에 나의 프로필 검색을 허용합니다.</p>
			</td>
		</tr>
	</tbody></table>

	<div class="tb_tit">
		<h3>프로필 만들기</h3>
	</div>

	<table class="tb_myinfo" cellpadding="0" cellspacing="0" summary="프로필 만들기" id="au_my_intro2" role="presentation">
		<tbody><tr role="presentation">
			<th role="presentation" scope="row">
				<div class="layer_me">

					대표 URL
				</div>
			</th>
			<td role="presentation" id="au_major_url">
				

				
					
						<div class="input_mb" style="z-index:90">
							<input type="text" name="urlDesc" id="urlDesc0" class="input_text _input_text" maxlength="8" style="width:130px;" value="업체명(스마트플레이스)" title="업체명(스마트플레이스)"> :
							<input type="text" name="url" id="url0" class="input_text2 _input_url" style="width:413px;" value="http://" title="업체(스마트플레이스) URL">
							<!-- url 형식 체크 레이어 -->
							<div class="layer_base layer_balloon _layer_ballon" id="layer1" style="width:189px; top:19px; left:138px; display:none;">
								<p>잘못된 형식의 URL입니다.</p>
								<div class="edge_center"></div>
							</div>
							<!--// url 형식 체크 레이어 -->
						</div>
					
						<div class="input_mb" style="z-index:80">
							<input type="text" name="urlDesc" id="urlDesc1" class="input_text _input_text" maxlength="8" style="width:130px;" value="블로그 또는 카페" title="블로그명 또는 카페명"> :
							<input type="text" name="url" id="url1" class="input_text2 _input_url" style="width:413px;" value="http://" title="블로그 또는 카페 URL 입력">
							<!-- url 형식 체크 레이어 -->
							<div class="layer_base layer_balloon _layer_ballon" id="layer2" style="width:189px; top:19px; left:138px; display:none;">
								<p>잘못된 형식의 URL입니다.</p>
								<div class="edge_center"></div>
							</div>
							<!--// url 형식 체크 레이어 -->
						</div>
					
						<div class="input_mb" style="z-index:70">
							<input type="text" name="urlDesc" id="urlDesc2" class="input_text _input_text" maxlength="8" style="width:130px;" value="서비스명" title="서비스명"> :
							<input type="text" name="url" id="url2" class="input_text2 _input_url" style="width:413px;" value="http://" title="서비스 URL">
							<!-- url 형식 체크 레이어 -->
							<div class="layer_base layer_balloon _layer_ballon" id="layer3" style="width:189px; top:19px; left:138px; display:none;">
								<p>잘못된 형식의 URL입니다.</p>
								<div class="edge_center"></div>
							</div>
							<!--// url 형식 체크 레이어 -->
						</div>
					
				

				<ul class="list_url_txt">
					
					
						<li class="item">운영하시는 네이버 스마트 플레이스, 블로그, 카페, 개별홈페이지 주소 등을 입력하세요. <a href="https://smartplace.naver.com/businesses/new" target="_blank" class="link">스마트 플레이스 등록하기 <span>&gt;</span></a> </li>
						<li class="item">관련법에 따라 병원 홈페이지는 허용되지 않습니다.</li>
						<li class="item">URL은 3개까지 입력할 수 있으며, Q&amp;A &gt; 프로필에서는 첫번째 URL만 표시됩니다.</li>
					
				</ul>
			</td>
		</tr>
		
		
		
		<tr role="presentation"><td role="presentation" colspan="2" class="line"></td></tr>
		<tr role="presentation">
			<th role="presentation" scope="row">
				<div class="layer_me">
					네이버 플레이스<br>URL
				</div>
			</th>
			<td role="presentation" id="au_place_url">
				<div class="input_mb">
					<input type="text" name="placeUrl" id="placeUrl" class="input_text input_place_url _input_place_url" value="ex) http://store.naver.com/accommodations/detail?id=12345678" title="네이버 플레이스 URL">
					<!-- url 형식 체크 레이어 -->
					<div class="layer_base layer_balloon _layer_ballon" id="layer4" style="width:189px; top:19px; left:138px; display:none;">
						<p>잘못된 형식의 URL입니다.</p>
						<div class="edge_center"></div>
					</div>
					<!--// url 형식 체크 레이어 -->
					<button class="check_place_url _check_place_url">링크확인</button>
				</div>
				<div class="input_mb">
					<input type="radio" name="linkType" class="place_radio" id="set_place_radio1" value="TALK" checked="">
					<label for="set_place_radio1" class="place_radio_label">톡톡</label>
					<input type="radio" name="linkType" class="place_radio" id="set_place_radio2" value="RESERVE">
					<label for="set_place_radio2" class="place_radio_label">예약</label>
				</div>
				<p class="place_url_info">운영하시는 네이버 플레이스 업체 URL 입력 및 톡톡, 예약 중 노출대상을 선택해 주세요.<br>열심 업체 답변자이면서 플레이스 URL이 입력된 경우에 지식인카드가 노출됩니다.
			</p></td>
		</tr>
		
		
			<tr role="presentation"><td role="presentation" colspan="2" class="line"></td></tr>
			
			
				<tr role="presentation">
					<th role="presentation" scope="row">주요활동분야 설정</th>
					<td role="presentation">
						<p class="paragraph">채택 답변이 5개 이상 있는 디렉토리가 없어 주요활동분야 설정이 불가합니다.</p>
					</td>
				</tr>
			
		
		<tr role="presentation"><td role="presentation" colspan="2" class="line"></td></tr>
	</tbody></table>

	
		<p class="agree_info_text">입력하신 별명, 사진, 소속(근무처), 직업, 주요경력은 지식iN 및 네이버 서비스 내  프로필 공개를 목적으로 하며, <br><strong class="text_bold">언제든지 직접 삭제할 수 있고, 탈퇴 시에는 바로 파기됩니다.</strong></p>
		<div class="agree_box">
			<label><input type="checkbox" id="agreeCheck" name="agreeCheck"><strong class="agree_text _agree">동의합니다.</strong></label>
		 </div>
	

	<div class="sub_qna_btn_area _sub_qna_btn_area">
		<button type="submit" class="question_wrap__button type_primary btn_namecard_submit _submit">확인</button>
	</div>
</fieldset>
</form>

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/jindo_component.all.js"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Userinfo.NameCardProfilePm.js"></script>

			</div>
		</div>
	</div>
</div>

</div> 



<%@ include file="../footer.jsp" %>
</body>
</html>