<%@page import="people.PartnerDAO" %>
<%@page import="people.PartnerDTO" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지식파트너 : 지식iN</title>
<link rel="stylesheet" href="peoplePartnerForm.css" type="text/css">
<style> 
.banner_kincommon {position:relative; float:right; width:190px; margin:-40px 0 0 0; z-index:23;}
.banner_kincommon img {vertical-align:top;}
.c-vote {margin-top:100px;}
</style>
</head>
<body>
<%
PartnerDAO partnerDao = new PartnerDAO();
ArrayList<PartnerDTO> partners = null;
%>
<%@include file="../header.jsp" %>
<div id="wrap" class="wrap wrap_people"> 
<div id="container" class="container-fluid">
	<div class="container-fluid-content">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">사람들 영역</h3>
			<strong class="blind">현재 페이지 경로</strong>
			<ul class="location" id="au_location">
				<li><a href="" class="_nclicks:drb.home">홈</a></li>
				<li>
					<a href="/people/elite/index.naver?from=lnb" class="_nclicks:drb.people">사람들</a> <a href="#" class="more"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" alt="더보기" width="12" height="12" class="_nclicks:drb.peopleopen"></a>
					<div class="sub">
						<ul>
						<li><a href="/KG-naver/people/peopleMainForm.jsp" class="_nclicks:drb.peoplelayer,r:1">사람들</a></li>
						<li><a href="/KG-naver/people/peopleBestForm.jsp" class="_nclicks:drb.peoplelayer,r:2">베스트</a></li>
						</ul>
					</div>	
				</li>
		
				<li class="last">
					<a href="/people/expert/index.naver?type=DOCTOR" class="_nclicks:drb.depth1">지식파트너</a>
					<a href="#" class="more"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" alt="더보기" width="12" height="12" class="_nclicks:drb.depth1open"></a>
					<div class="sub">
						<ul id="goodByeDirectoryLocation">
						<li><a href="/KG-naver/people/peopleMainForm.jsp" class="_nclicks:drb.depth1layer,r:0">분야별 지식인</a></li>
						<li><a href="/KG-naver/people/peoplePartnerForm.jsp" class="_nclicks:drb.depth1layer,r:5">지식파트너</a></li>
						<li><a href="/KG-naver/people/peopleRankForm.jsp" class="_nclicks:drb.depth1layer,r:7">지식iN 랭킹</a></li>
						<li><a href="/KG-naver/people/peopleGuideForm.jsp" class="_nclicks:drb.depth1layer,r:8">등급업 가이드</a></li>
						</ul>
					</div>
				</li>
			</ul>
			<div class="container-fluid-content__left">
				<div class="snb snb_bordered" id="subMenuOfPeople">
					<h2 class="snb_title">지식iN 사람들</h2>
					<ul class="snb_list">
						<li id="kinEliteMenuBtn"><a href="/KG-naver/people/peopleMainForm.jsp" class="_nclicks:lmm.category">분야별 지식인</a></li>
						<li class="is_active"><a href="/KG-naver/people/peoplePartnerForm.jsp">지식파트너</a></li>
						<li id="kinRankMenuBtn"><a href="/KG-naver/people/peopleRankForm.jsp" class="_nclicks:lmm.rank">지식iN 랭킹</a></li>
						<li><a href="/KG-naver/people/peopleGuideForm.jsp" class="_nclicks:lmm.levelup">등급업 가이드</a></li>
					</ul>
				
					<div class="snb_banner_list snb_banner_list__type">
						<a href="http://blog.naver.com/kin_friend" target="_blank" class="snb_banner_item"><span class="font_point">지식iN</span> 공식 블로그</a>
					</div>
				</div>
			</div>
			<div id="content" class="container-fluid-content__right">
				
				






<div class="sub_header">
	<h3 class="sub_header_title">지식파트너<span class="sub_header_text">대한민국 대표기업, 기관, 단체가 직접 답변합니다.</span></h3>
	<hr class="sub_header_line">
</div>

	<div class="spot_partner">
		<h4 class="spot_partner__title"><em class="spot_partner__highlight">이달의</em> 지식파트너</h4>
						<ul class="spot_partner__list">
							
								
									
										<li class="spot_partner__item _monthly_partner">
											<div class="spot_partner__thumbnail">
												<div class="spot_partner__mask">
													<a href="/profile/index.naver?u=mH3cmryFz%2Fy9yNgwX%2Bpemj2FzFPVoW%2FRsC9%2FEhMmEEc%3D">
														<img src="https://kin-phinf.pstatic.net/20220414_173/1649914397009BHPzP_JPEG/symbol01.jpg?type=m100" width="110" height="110" alt="종근당건강">
													</a>
												</div>
											</div>
											<div class="spot_partner__content">
												<a href="/profile/index.naver?u=mH3cmryFz%2Fy9yNgwX%2Bpemj2FzFPVoW%2FRsC9%2FEhMmEEc%3D" class="spot_partner__name ellipsis">종근당건강</a>
												<a href="/profile/index.naver?u=mH3cmryFz%2Fy9yNgwX%2Bpemj2FzFPVoW%2FRsC9%2FEhMmEEc%3D" class="spot_partner__sub_category ellipsis" target="_new">
													
												</a>
												<div class="spot_partner__category">활동분야: <a href="/profile/index.naver?u=mH3cmryFz%2Fy9yNgwX%2Bpemj2FzFPVoW%2FRsC9%2FEhMmEEc%3D">건강</a></div>
												<div class="spot_partner__category">전체 답변수: 309</div>
												
												<a href="/qna/detail.naver?d1id=5&amp;dirId=50801&amp;docId=418554517" class="spot_partner__answer ellipsis">영양제와 커피 질문</a>
												
											</div>
										</li>
									
									
								
							
								
									
										<li class="spot_partner__item _monthly_partner">
											<div class="spot_partner__thumbnail">
												<div class="spot_partner__mask">
													<a href="/profile/index.naver?u=5cG0UEJi2RJAE0XuSm%2BsBynd%2F62h%2BzuiU75lyh%2FZEmM%3D">
														<img src="https://kin-phinf.pstatic.net/storage/userfiles/28/32/ekapepia_1316407963244.crop.jpg?type=m100" width="110" height="110" alt="축산물품질평가원">
													</a>
												</div>
											</div>
											<div class="spot_partner__content">
												<a href="/profile/index.naver?u=5cG0UEJi2RJAE0XuSm%2BsBynd%2F62h%2BzuiU75lyh%2FZEmM%3D" class="spot_partner__name ellipsis">축산물품질평가원</a>
												<a href="/profile/index.naver?u=5cG0UEJi2RJAE0XuSm%2BsBynd%2F62h%2BzuiU75lyh%2FZEmM%3D" class="spot_partner__sub_category ellipsis" target="_new">
													
												</a>
												<div class="spot_partner__category">활동분야: <a href="/profile/index.naver?u=5cG0UEJi2RJAE0XuSm%2BsBynd%2F62h%2BzuiU75lyh%2FZEmM%3D">교육, 학문</a></div>
												<div class="spot_partner__category">전체 답변수: 13141</div>
												
												<a href="/qna/detail.naver?d1id=8&amp;dirId=8020606&amp;docId=229493145" class="spot_partner__answer ellipsis">아빠가 달걀후라이를 너무 많이...</a>
												
											</div>
										</li>
									
									
										<li class="spot_partner__item _monthly_partner" style="display:none;">
											<div class="spot_partner__thumbnail">
												<div class="spot_partner__mask">
													<a href="/profile/index.naver?u=dBiYT5Htx9zr1P1W4Hz2CxkHcLTPBfn7Xa7J0Trithg%3D">
														<img src="https://kin-phinf.pstatic.net/20211215_87/1639526039358pOOoL_JPEG/%BC%F6%B9%DA%BE%BEbi_2022.jpg?type=m100" width="110" height="110" alt="수박씨닷컴">
													</a>
												</div>
											</div>
											<div class="spot_partner__content">
												<a href="/profile/index.naver?u=dBiYT5Htx9zr1P1W4Hz2CxkHcLTPBfn7Xa7J0Trithg%3D" class="spot_partner__name ellipsis">수박씨닷컴</a>
												<a href="/profile/index.naver?u=dBiYT5Htx9zr1P1W4Hz2CxkHcLTPBfn7Xa7J0Trithg%3D" class="spot_partner__sub_category ellipsis" target="_new">
													
												</a>
												<div class="spot_partner__category">활동분야: <a href="/profile/index.naver?u=dBiYT5Htx9zr1P1W4Hz2CxkHcLTPBfn7Xa7J0Trithg%3D">교육, 학문</a></div>
												<div class="spot_partner__category">전체 답변수: 46508</div>
												
												<a href="/qna/detail.naver?d1id=11&amp;dirId=110413&amp;docId=287952657" class="spot_partner__answer ellipsis">한국사 능력검정시험</a>
												
											</div>
										</li>
									
									
								
							
								
									
										<li class="spot_partner__item _monthly_partner" style="display:none;">
											<div class="spot_partner__thumbnail">
												<div class="spot_partner__mask">
													<a href="/profile/index.naver?u=tBzCEvJdZCZPwYVGTUlXcL%2Fs47ynA6lZ5LzonpmmrP4%3D">
														<img src="https://kin-phinf.pstatic.net/20220126_132/1643153399752ltnXo_JPEG/LG%B7%CE%B0%ED.jpg?type=m100" width="110" height="110" alt="LG전자 고객도우미">
													</a>
												</div>
											</div>
											<div class="spot_partner__content">
												<a href="/profile/index.naver?u=tBzCEvJdZCZPwYVGTUlXcL%2Fs47ynA6lZ5LzonpmmrP4%3D" class="spot_partner__name ellipsis">LG전자 고객도우미</a>
												<a href="/profile/index.naver?u=tBzCEvJdZCZPwYVGTUlXcL%2Fs47ynA6lZ5LzonpmmrP4%3D" class="spot_partner__sub_category ellipsis" target="_new">
													
												</a>
												<div class="spot_partner__category">활동분야: <a href="/profile/index.naver?u=tBzCEvJdZCZPwYVGTUlXcL%2Fs47ynA6lZ5LzonpmmrP4%3D">쇼핑</a></div>
												<div class="spot_partner__category">전체 답변수: 11722</div>
												
												<a href="/qna/detail.naver?d1id=1&amp;dirId=107040202&amp;docId=392494448" class="spot_partner__answer ellipsis">Lg이동식에어컨 나무창</a>
												
											</div>
										</li>
									
									
								
							
								
									
										<li class="spot_partner__item _monthly_partner" style="display:none;">
											<div class="spot_partner__thumbnail">
												<div class="spot_partner__mask">
													<a href="/profile/index.naver?u=KscVsjw2%2F7wkvHF%2FM7sAFW0Vdmkfulrw0QaEaYRodm4%3D">
														<img src="https://kin-phinf.pstatic.net/20180223_49/1519368038839TSjv0_PNG/HP_logo_630x630_white.png?type=m100" width="110" height="110" alt="HP 코리아">
													</a>
												</div>
											</div>
											<div class="spot_partner__content">
												<a href="/profile/index.naver?u=KscVsjw2%2F7wkvHF%2FM7sAFW0Vdmkfulrw0QaEaYRodm4%3D" class="spot_partner__name ellipsis">HP 코리아</a>
												<a href="/profile/index.naver?u=KscVsjw2%2F7wkvHF%2FM7sAFW0Vdmkfulrw0QaEaYRodm4%3D" class="spot_partner__sub_category ellipsis" target="_new"></a>
										<div class="spot_partner__category">활동분야: <a href="/profile/index.naver?u=KscVsjw2%2F7wkvHF%2FM7sAFW0Vdmkfulrw0QaEaYRodm4%3D">컴퓨터통신</a></div>
										<div class="spot_partner__category">전체 답변수: 27177</div>												
									<a href="/qna/detail.naver?d1id=1&amp;dirId=10102&amp;docId=306328059" class="spot_partner__answer ellipsis">노트북 화면이 안나와요 전원은...</a>		
								</div>
							</li>
						</ul>	
				</div>


				<!-- 지식파트너 제안배너 -->
				<div class="banner_static">
					<a href="/partnercenter/partnerApplication.naver" target="_blank"><img src="https://ssl.pstatic.net/static/kin/section/partner/banner_cooperate.png" width="800" height="90" alt="지식파트너 제휴 제안은 파트너센터를 통해 등록해주세요! 지식파트너 제휴는 해당 기업,기관,단체 소속 담당자와 직접 진행합니다. 파트너센터 바로가기"></a>
				</div>
				
					<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.People.MonthlyPartnerPaging.js"></script>
				
								
				
					<ul class="kinpartner_list">
						<%
							for(PartnerDTO partner : partnerDao.partnerAll()) {
								int per = partner.getS_question()*100/partner.getQuestion();
						%>
							<li class="kinpartner_list__item">
								<div class="kinpartner_list__thumbnail">
									<div class="kinpartner_list__mask">
										<img src=<%=partner.getImg() %> width="90" height="90">
									</div>
								</div>
								<div class="kinpartner_list__content">
									<a href="" class="spot_partner__name ellipsis"><%=partner.getName() %></a>
									<a href="" class="spot_partner__sub_category ellipsis" target="_new"><%=partner.getCategory() %></a>
									<div class="spot_partner__category">채택답변: <%=partner.getS_question()%>(<%=per%>%)</div>  
								</div>	
							</li>
						<%
							}
						%>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<%@include file="../footer.jsp" %>
</html>