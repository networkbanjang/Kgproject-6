<%@page import="member.MemberDAO" %>
<%@page import="member.MemberDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>분야별 지식인 : 지식iN</title>
<link rel="stylesheet" href="peopleMainForm.css" type="text/css">
</head>
<body>
<% 
	MemberDAO memberDao = new MemberDAO();
	
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
					<a href="/KG-naver/people/peopleMainForm.jsp" class="_nclicks:drb.depth1">분야별 지식인</a> 
					<a href="#" class="more"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" alt="더보기" width="12" height="12" class="_nclicks:drb.depth1open"></a>
					<div class="sub">
						<ul id="goodByeDirectoryLocation"> 
						<li><a href="/KG-naver/people/peopleMainForm.jsp" class="_nclicks:drb.depth1layer,r:0">분야별 지식인</a></li>
						<li><a href="/KG-naver/people/peopleMasterForm.jsp" class="_nclicks:drb.depth1layer,r:4">전문가답변</a></li>
						<li><a href="/KG-naver/people/peoplePartnerForm.jsp" class="_nclicks:drb.depth1layer,r:5">지식파트너</a></li>
						<li><a href="/KG-naver/people/peopleRankForm.jsp" class="_nclicks:drb.depth1layer,r:7">지식iN 랭킹</a></li>
						<li><a href="/KG-naver/people/peopleGuideForm.jsp" class="_nclicks:drb.depth1layer,r:8">등급업 가이드</a></li>
						</ul>
					</div>
				</li> 
			</ul>
			<div class="container-fluid-content__left" id="subMenuOfPeople">
				<div class="snb snb_bordered">
					<h2 class="snb_title">지식iN 사람들</h2>
					<ul class="snb_list">
						<li id="kinEliteMenuBtn" class="is_active"><a href="/KG-naver/people/peopleMainForm.jsp" class="_nclicks:lmm.category">분야별 지식인</a></li>
						<li><a href="/KG-naver/people/peopleMasterForm.jsp" class="_nclicks:lmm.expert">전문가답변</a></li>
						<li><a href="/KG-naver/people/peoplePartnerForm.jsp">지식파트너</a></li>
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
					<h3 class="sub_header_title">분야별 지식인</h3>
				</div>
				<!-- 탭 -->
				<div class="tab_module" role="tablist">
					<a href="/KG-naver/people/peopleMainForm.jsp" id="menu1" class="tab_module__item is_active  _nclicks:cat.list" role="tab" aria-selected="true">분야별 지식인</a>
					<a href="/KG-naver/people/peopleIntroduceForm.jsp" id="menu2" class="tab_module__item _nclicks:cat.faq" role="tab" aria-selected="false">분야별 지식인 소개</a>
					<a href="/KG-naver/people/peopleVoteForm.jsp" id="menu3" class="tab_module__item  _nclicks:cat.vote" role="tab" aria-selected="false">분야별 지식인 투표</a>
				</div>
			
				<div class="category_kin_top5">
							<div class="category_dropdown _dropDownDiv">
								<a href="#" class="category_dropdown__menu _dropDownMenu" aira-haspopup="true"><strong>교육, 학문</strong></a>
									
								<ul class="category_dropdown__list is_hidden _dropDownList">
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=11" class="category_dropdown__anchor">교육,학문</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=1" class="category_dropdown__anchor">컴퓨터통신</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=2" class="category_dropdown__anchor">게임</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=3" class="category_dropdown__anchor">엔터테인먼트,예술</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=8" class="category_dropdown__anchor">생활</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=7" class="category_dropdown__anchor">건강</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=6" class="category_dropdown__anchor">사회,정치</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=4" class="category_dropdown__anchor">경제</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=9" class="category_dropdown__anchor">여행</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=10" class="category_dropdown__anchor">스포츠,레저</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=5" class="category_dropdown__anchor">쇼핑</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=13" class="category_dropdown__anchor">쥬니버Q&amp;A</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=12" class="category_dropdown__anchor">지역&amp;플레이스</a></li>
									
										
										
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=99" class="category_dropdown__anchor">사용자참여</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=98" class="category_dropdown__anchor">전문가</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=97" class="category_dropdown__anchor">비즈니스</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=96" class="category_dropdown__anchor">지식파트너</a></li>
										
									
								</ul>
							</div>

							<ol class="category_kin_list">
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=4br7JganAk5%2Fzj9PPyxveqXL6dRODOI3lchkKAm05ew%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20210117_228/16108853844262Ceci_JPEG/%BF%C0%B5%E5%B8%AE%C7%DD%B9%F81.jpg?type=f130_130" alt="오햅번님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=4br7JganAk5%2Fzj9PPyxveqXL6dRODOI3lchkKAm05ew%3D" class="category_kin_list__usernick" target="_blank"><strong>오햅번</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=11030303" target="_blank">중3수학</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">24,126</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">16,125</span>
															</div>
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=pTMfrLv3oR66xfhFoQopMjitFIUMCKgqhFoLzd80eFE%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20130605_118/1370390290400L0t5Q_JPEG/%BF%B5%C4%DA%BA%F1.jpg?type=f130_130" alt="2진법영어님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=pTMfrLv3oR66xfhFoQopMjitFIUMCKgqhFoLzd80eFE%3D" class="category_kin_list__usernick" target="_blank"><strong>2진법영어</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=11080302" target="_blank">영어문법</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">19,615</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">19,615</span>
															</div>

														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=U71EA1Ar4SSj6Tj4vwuPn74JjUL9tqk3VcVZwA3DEbg%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/18_3d.png?type=f130_130" alt="진로매니아님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=U71EA1Ar4SSj6Tj4vwuPn74JjUL9tqk3VcVZwA3DEbg%3D" class="category_kin_list__usernick" target="_blank"><strong>진로매니아</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=110408" target="_blank">대학 입시, 진학</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">10,416</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">10,045</span>
															</div>
															
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=dDetUwRhhIThr5AN9nOopguHj7sz%2BGwPNJqAZzGqDrw%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20181220_145/1545307055390KEQ7Q_JPEG/Lighthouse.jpg?type=f130_130" alt="지식 나눔이님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=dDetUwRhhIThr5AN9nOopguHj7sz%2BGwPNJqAZzGqDrw%3D" class="category_kin_list__usernick" target="_blank"><strong>지식 나눔이</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=11080302" target="_blank">영어문법</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">13,171</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">13,151</span>
															</div>
															
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=4ivWRIrMoVIUUjtnL2LH01JsyEkhb1UNMavfEk7nkAQ%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20210207_249/16126550694611d9PE_JPEG/20210206_205803.jpg?type=f130_130" alt="대독님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=4ivWRIrMoVIUUjtnL2LH01JsyEkhb1UNMavfEk7nkAQ%3D" class="category_kin_list__usernick" target="_blank"><strong>대독</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1118" target="_blank">전기, 전자 공학</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">6,657</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">6,318</span>
															</div>
															
													
												</div>
											</li>
										
										
									
								
							</ol>
						</div>
						<div class="category_kin_top5">
							<div class="category_dropdown _dropDownDiv">
								<a href="#" class="category_dropdown__menu _dropDownMenu" aira-haspopup="true"><strong>컴퓨터통신</strong></a>
									
								<ul class="category_dropdown__list is_hidden _dropDownList">
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=11" class="category_dropdown__anchor">교육,학문</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=1" class="category_dropdown__anchor">컴퓨터통신</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=2" class="category_dropdown__anchor">게임</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=3" class="category_dropdown__anchor">엔터테인먼트,예술</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=8" class="category_dropdown__anchor">생활</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=7" class="category_dropdown__anchor">건강</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=6" class="category_dropdown__anchor">사회,정치</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=4" class="category_dropdown__anchor">경제</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=9" class="category_dropdown__anchor">여행</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=10" class="category_dropdown__anchor">스포츠,레저</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=5" class="category_dropdown__anchor">쇼핑</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=13" class="category_dropdown__anchor">쥬니버Q&amp;A</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=12" class="category_dropdown__anchor">지역&amp;플레이스</a></li>
									
										
										
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=99" class="category_dropdown__anchor">사용자참여</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=98" class="category_dropdown__anchor">전문가</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=97" class="category_dropdown__anchor">비즈니스</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=96" class="category_dropdown__anchor">지식파트너</a></li>
										
									
								</ul>
							</div>

							<ol class="category_kin_list">
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=t2ec0D0Ry%2F7Ar1lsWbywVCb%2FwuO5E9Xtxr2QOpmxM1k%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20220529_152/1653805437618lO201_GIF/1653805437532.gif?type=f130_130" alt="고양이인스타님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=t2ec0D0Ry%2F7Ar1lsWbywVCb%2FwuO5E9Xtxr2QOpmxM1k%3D" class="category_kin_list__usernick" target="_blank"><strong>고양이인스타</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1061203" target="_blank">인스타그램</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">41,282</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">41,232</span>
															</div>
														
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=w6lLUADsTiE2WDOrNVtf1Qxgc3ft9bDXpkXY1Mua2f4%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20150407_82/1428417137552scgvD_PNG/%C0%DA%B0%DD%C1%F5.png?type=f130_130" alt="자격증 따기님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=w6lLUADsTiE2WDOrNVtf1Qxgc3ft9bDXpkXY1Mua2f4%3D" class="category_kin_list__usernick" target="_blank"><strong>자격증 따기</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=102020101" target="_blank">MS엑셀</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">28,977</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">26,568</span>
															</div>
															
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=YavWW3muve9vw4j1Z58cmzKi4un9rhdwndukQspt%2BDY%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20181224_268/1545609774640hjgt1_JPEG/%B3%D7%C0%CC%B9%F6%C7%C1%B7%CE%C7%CA.jpg?type=f130_130" alt="컴잘알님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=YavWW3muve9vw4j1Z58cmzKi4un9rhdwndukQspt%2BDY%3D" class="category_kin_list__usernick" target="_blank"><strong>컴잘알</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1010401" target="_blank">모니터</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">9,681</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">6,817</span>
															</div>
															
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=Tr%2FYVMjDdwG%2F1koY%2FQENI1Ply3muVZS7yt4rgOVlsAI%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20201226_163/16089107411725U1f9_JPEG/KakaoTalk_20201226_003828239.jpg?type=f130_130" alt="세아이님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=Tr%2FYVMjDdwG%2F1koY%2FQENI1Ply3muVZS7yt4rgOVlsAI%3D" class="category_kin_list__usernick" target="_blank"><strong>세아이</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1060801" target="_blank">카카오톡</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">26,734</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">26,617</span>
															</div>
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=5CkHw%2FmgGJcwjsopKh6adHI1F36QRl4xp2AXPGMNWb8%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20220402_69/1648858715337QyyW9_PNG/2022-04-02_09-16-58.png?type=f130_130" alt="Excel nara님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=5CkHw%2FmgGJcwjsopKh6adHI1F36QRl4xp2AXPGMNWb8%3D" class="category_kin_list__usernick" target="_blank"><strong>Excel nara</strong><span class="category_kin_list__userlevel">우주신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=102020101" target="_blank">MS엑셀</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">5,152</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">5,061</span>
															</div>
														
													
												</div>
											</li>
										
										
									
								
							</ol>
						</div>
						<div class="category_kin_top5">
							<div class="category_dropdown _dropDownDiv">
								<a href="#" class="category_dropdown__menu _dropDownMenu" aira-haspopup="true"><strong>지역&amp;플레이스</strong></a>
									
								<ul class="category_dropdown__list is_hidden _dropDownList">
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=11" class="category_dropdown__anchor">교육,학문</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=1" class="category_dropdown__anchor">컴퓨터통신</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=2" class="category_dropdown__anchor">게임</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=3" class="category_dropdown__anchor">엔터테인먼트,예술</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=8" class="category_dropdown__anchor">생활</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=7" class="category_dropdown__anchor">건강</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=6" class="category_dropdown__anchor">사회,정치</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=4" class="category_dropdown__anchor">경제</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=9" class="category_dropdown__anchor">여행</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=10" class="category_dropdown__anchor">스포츠,레저</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=5" class="category_dropdown__anchor">쇼핑</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=13" class="category_dropdown__anchor">쥬니버Q&amp;A</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=12" class="category_dropdown__anchor">지역&amp;플레이스</a></li>
									
										
										
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=99" class="category_dropdown__anchor">사용자참여</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=98" class="category_dropdown__anchor">전문가</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=97" class="category_dropdown__anchor">비즈니스</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=96" class="category_dropdown__anchor">지식파트너</a></li>
										
									
								</ul>
							</div>

							<ol class="category_kin_list">
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=1AyBBkFXajgJaPePn1uuWbgXZekzRl76guXMqE7GlXs%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/17_3d.png?type=f130_130" alt="산  신령님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=1AyBBkFXajgJaPePn1uuWbgXZekzRl76guXMqE7GlXs%3D" class="category_kin_list__usernick" target="_blank"><strong>산  신령</strong><span class="category_kin_list__userlevel">우주신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1201" target="_blank">서울특별시</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">3,654</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">1,049</span>
															</div>
														
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=8UugfoRzgR6inV6qAI9l8%2F7AupPeOBremFLbaejh8jI%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/16_3d.png?type=f130_130" alt="혀노신님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=8UugfoRzgR6inV6qAI9l8%2F7AupPeOBremFLbaejh8jI%3D" class="category_kin_list__usernick" target="_blank"><strong>혀노신</strong><span class="category_kin_list__userlevel">은하신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1204" target="_blank">인천광역시</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">2,965</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">2,674</span>
															</div>
							
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=sl%2F8xe4I9TVcXDDeMfuYZrQKMTkGVmPXRLPt%2BYQQMpM%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20200821_236/1597997542032K1tLj_JPEG/20200815_085928_2_%281%29.jpg?type=f130_130" alt="빛나라 대한민국님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=sl%2F8xe4I9TVcXDDeMfuYZrQKMTkGVmPXRLPt%2BYQQMpM%3D" class="category_kin_list__usernick" target="_blank"><strong>빛나라 대한민국</strong><span class="category_kin_list__userlevel">우주신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1202" target="_blank">부산광역시</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">2,577</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">1,002</span>
															</div>
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=Uzb9xq4%2BPhqy6K2CKU4AoTaEfv5h%2FDdTduqGFSge9s0%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/18_3d.png?type=f130_130" alt="정연득님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=Uzb9xq4%2BPhqy6K2CKU4AoTaEfv5h%2FDdTduqGFSge9s0%3D" class="category_kin_list__usernick" target="_blank"><strong>정연득</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1202" target="_blank">부산광역시</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">2,706</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">1,007</span>
															</div>
														
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=m5YEPQfCK86fXMPup9ug3WqeaHGNqD5fmg0oWMvhYTs%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20210614_270/16236554290452PzDT_JPEG/%B9%AB%C1%A6-1.jpg?type=f130_130" alt="TJ님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=m5YEPQfCK86fXMPup9ug3WqeaHGNqD5fmg0oWMvhYTs%3D" class="category_kin_list__usernick" target="_blank"><strong>TJ</strong><span class="category_kin_list__userlevel">은하신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=1207" target="_blank">울산광역시</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">2,175</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">1,365</span>
															</div>
													
													
												</div>
											</li>
										
										
									
								
							</ol>
						</div>
						<div class="category_kin_top5">
							<div class="category_dropdown _dropDownDiv">
								<a href="#" class="category_dropdown__menu _dropDownMenu" aira-haspopup="true"><strong>쇼핑</strong></a>
									
								<ul class="category_dropdown__list is_hidden _dropDownList">
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=11" class="category_dropdown__anchor">교육,학문</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=1" class="category_dropdown__anchor">컴퓨터통신</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=2" class="category_dropdown__anchor">게임</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=3" class="category_dropdown__anchor">엔터테인먼트,예술</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=8" class="category_dropdown__anchor">생활</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=7" class="category_dropdown__anchor">건강</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=6" class="category_dropdown__anchor">사회,정치</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=4" class="category_dropdown__anchor">경제</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=9" class="category_dropdown__anchor">여행</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=10" class="category_dropdown__anchor">스포츠,레저</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=5" class="category_dropdown__anchor">쇼핑</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=13" class="category_dropdown__anchor">쥬니버Q&amp;A</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=12" class="category_dropdown__anchor">지역&amp;플레이스</a></li>
									
										
										
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=99" class="category_dropdown__anchor">사용자참여</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=98" class="category_dropdown__anchor">전문가</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=97" class="category_dropdown__anchor">비즈니스</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=96" class="category_dropdown__anchor">지식파트너</a></li>
										
									
								</ul>
							</div>

							<ol class="category_kin_list">
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=QyKr7XbpMwR%2F%2FFx1cb7Gn9TM3MepPspYzYPnyI%2FPZWU%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20210916_81/1631751509427P114U_JPEG/1631751509010.jpg?type=f130_130" alt="사막여우님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=QyKr7XbpMwR%2F%2FFx1cb7Gn9TM3MepPspYzYPnyI%2FPZWU%3D" class="category_kin_list__usernick" target="_blank"><strong>사막여우</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=50803" target="_blank">다이어트, 운동기구</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">19,786</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">11,711</span>
															</div>
														
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=Ybk%2BbkWpnCI4Hsc3Y6KubYSnwGLCx999Lzi5JxeZbLo%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20190811_139/1565457089375e5zQ0_JPEG/1565457088922.jpg?type=f130_130" alt="은빛여우님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=Ybk%2BbkWpnCI4Hsc3Y6KubYSnwGLCx999Lzi5JxeZbLo%3D" class="category_kin_list__usernick" target="_blank"><strong>은빛여우</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=5040203" target="_blank">지갑, 벨트, 넥타이</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">4,502</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">3,150</span>
															</div>
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=zYCTW9VoR2Xk2izbnVxfau%2BjTvXN2o7h5UNStt3rBQY%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20171209_162/1512793135353SxqFQ_JPEG/%B4%F5%C5%B0%B7%AF%BA%EA.jpg?type=f130_130" alt="더키님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=zYCTW9VoR2Xk2izbnVxfau%2BjTvXN2o7h5UNStt3rBQY%3D" class="category_kin_list__usernick" target="_blank"><strong>더키</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=5040203" target="_blank">지갑, 벨트, 넥타이</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">8,086</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">7,342</span>
															</div>
														
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=mdhx9UaPxftmLmeEpb0nWzix1LiY7mFWY0LvWMzqGIU%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20170926_115/15063661929398kQ6t_JPEG/ken-treloar-369039.jpg?type=f130_130" alt="엄마똥마려워님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=mdhx9UaPxftmLmeEpb0nWzix1LiY7mFWY0LvWMzqGIU%3D" class="category_kin_list__usernick" target="_blank"><strong>엄마똥마려워</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=5010601" target="_blank">아이폰</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">8,532</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">4,000</span>
															</div>
														
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=I3RhM6JHZrpfH27hlGsbQFTRV9QSEgYYFfwHIe95Nqs%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20220518_212/1652858173936IGQVU_PNG/1652858173927.png?type=f130_130" alt="Audio911님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=I3RhM6JHZrpfH27hlGsbQFTRV9QSEgYYFfwHIe95Nqs%3D" class="category_kin_list__usernick" target="_blank"><strong>Audio911</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=5020303" target="_blank">메인메모리, RAM</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">10,173</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">3,652</span>
															</div>
														
												</div>
											</li>
										
										
									
								
							</ol>
						</div>
						<div class="category_kin_top5">
							<div class="category_dropdown _dropDownDiv">
								<a href="#" class="category_dropdown__menu _dropDownMenu" aira-haspopup="true"><strong>지식파트너</strong></a>
									
								<ul class="category_dropdown__list is_hidden _dropDownList">
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=11" class="category_dropdown__anchor">교육,학문</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=1" class="category_dropdown__anchor">컴퓨터통신</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=2" class="category_dropdown__anchor">게임</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=3" class="category_dropdown__anchor">엔터테인먼트,예술</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=8" class="category_dropdown__anchor">생활</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=7" class="category_dropdown__anchor">건강</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=6" class="category_dropdown__anchor">사회,정치</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=4" class="category_dropdown__anchor">경제</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=9" class="category_dropdown__anchor">여행</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=10" class="category_dropdown__anchor">스포츠,레저</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=5" class="category_dropdown__anchor">쇼핑</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=13" class="category_dropdown__anchor">쥬니버Q&amp;A</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=12" class="category_dropdown__anchor">지역&amp;플레이스</a></li>
									
										
										
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=99" class="category_dropdown__anchor">사용자참여</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=98" class="category_dropdown__anchor">전문가</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=97" class="category_dropdown__anchor">비즈니스</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=96" class="category_dropdown__anchor">지식파트너</a></li>
										
									
								</ul>
							</div>

							<ol class="category_kin_list">
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=Omf58hn1iA7wRX00koEK2RxMSM8LjV7PhU61%2FOt%2BGBg%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20181025_269/154043268041000oc2_PNG/%C1%A6%B8%F1_%BE%F8%C0%BD.png?type=f130_130" alt="국민신문고님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=Omf58hn1iA7wRX00koEK2RxMSM8LjV7PhU61%2FOt%2BGBg%3D" class="category_kin_list__usernick" target="_blank"><strong>국민신문고</strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">30,407</span>
															</div>
														
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=ijt4QJbLW%2FlKqoN429igkNsHx8S2keSEmh94VMIJQXQ%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20170228_162/1488242866537teufO_JPEG/800x800.jpg?type=f130_130" alt="한국장학재단님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=ijt4QJbLW%2FlKqoN429igkNsHx8S2keSEmh94VMIJQXQ%3D" class="category_kin_list__usernick" target="_blank"><strong>한국장학재단</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">12,445</span>
															</div>
														
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=nr9xaa2%2Fq1kWoJ7%2FHF4HiOgm5kmJJWqqYqv0851sKXc%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20170920_267/1505897049923J4tuL_JPEG/%28%C0%D3%BD%C3%29%C1%DF%BC%D2%BA%A5%C3%B3%B1%E2%BE%F7%BA%CE_%B1%B9%B9%AE%28%BB%F3%C7%CF%292.jpg?type=f130_130" alt="중소벤처기업부님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=nr9xaa2%2Fq1kWoJ7%2FHF4HiOgm5kmJJWqqYqv0851sKXc%3D" class="category_kin_list__usernick" target="_blank"><strong>중소벤처기업부</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">4,735</span>
															</div>
														
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=D6vwspK7vJp5mAXKCMia2NpiAb80QuRB%2FIJNMLtM6dM%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20160908_154/1473268501402XCnQe_PNG/442.png?type=f130_130" alt="국민건강보험공단 님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=D6vwspK7vJp5mAXKCMia2NpiAb80QuRB%2FIJNMLtM6dM%3D" class="category_kin_list__usernick" target="_blank"><strong>국민건강보험공단 </strong><span class="category_kin_list__userlevel">수호신</span></a>
													
														
														
														
														
														
														
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">5,553</span>
															</div>
														
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=tBzCEvJdZCZPwYVGTUlXcL%2Fs47ynA6lZ5LzonpmmrP4%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20220126_132/1643153399752ltnXo_JPEG/LG%B7%CE%B0%ED.jpg?type=f130_130" alt="LG전자 고객도우미님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=tBzCEvJdZCZPwYVGTUlXcL%2Fs47ynA6lZ5LzonpmmrP4%3D" class="category_kin_list__usernick" target="_blank"><strong>LG전자 고객도우미</strong><span class="category_kin_list__userlevel">태양신</span></a>
													
														
														
														
														
														
														
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">2,687</span>
															</div>
														
														
													
												</div>
											</li>
										
										
									
								
							</ol>
						</div>
						<div class="category_kin_top5">
							<div class="category_dropdown _dropDownDiv">
								<a href="#" class="category_dropdown__menu _dropDownMenu" aira-haspopup="true"><strong>건강</strong></a>
									
								<ul class="category_dropdown__list is_hidden _dropDownList">
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=11" class="category_dropdown__anchor">교육,학문</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=1" class="category_dropdown__anchor">컴퓨터통신</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=2" class="category_dropdown__anchor">게임</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=3" class="category_dropdown__anchor">엔터테인먼트,예술</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=8" class="category_dropdown__anchor">생활</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=7" class="category_dropdown__anchor">건강</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=6" class="category_dropdown__anchor">사회,정치</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=4" class="category_dropdown__anchor">경제</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=9" class="category_dropdown__anchor">여행</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=10" class="category_dropdown__anchor">스포츠,레저</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=5" class="category_dropdown__anchor">쇼핑</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=13" class="category_dropdown__anchor">쥬니버Q&amp;A</a></li>
									<li><a href="/people/elite/list.naver?year=2021&amp;dirId=12" class="category_dropdown__anchor">지역&amp;플레이스</a></li>
									
										
										
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=99" class="category_dropdown__anchor">사용자참여</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=98" class="category_dropdown__anchor">전문가</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=97" class="category_dropdown__anchor">비즈니스</a></li>
											<li><a href="/people/elite/list.naver?year=2021&amp;dirId=96" class="category_dropdown__anchor">지식파트너</a></li>
										
									
								</ul>
							</div>

							<ol class="category_kin_list">
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=B8qVQsNwpMu%2BMiqjNCF8zhxEVGH%2BZjb0AtExb34z9cM%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20190123_44/1548247167729TnXG0_JPEG/image.jpg?type=f130_130" alt="몸살림 할머니님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=B8qVQsNwpMu%2BMiqjNCF8zhxEVGH%2BZjb0AtExb34z9cM%3D" class="category_kin_list__usernick" target="_blank"><strong>몸살림 할머니</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=70102" target="_blank">이비인후과</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">7,707</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">7,685</span>
															</div>
															
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=IvMPOCMnHqoASG81sacv7%2FH%2BLj%2FbiHpH2jQ%2Bnf%2B%2FILE%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/19_3d.png?type=f130_130" alt="gots****님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=IvMPOCMnHqoASG81sacv7%2FH%2BLj%2FbiHpH2jQ%2Bnf%2B%2FILE%3D" class="category_kin_list__usernick" target="_blank"><strong>gots****</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=70111" target="_blank">피부과</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">35,524</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">19,951</span>
															</div>
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=Nz5XnogniyXqScPWCrcAlQaJ0BxHEm0%2BR%2BNh9RJ2vtM%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://kin-phinf.pstatic.net/20210928_95/1632832434606Uv8So_JPEG/1632832434509.jpg?type=f130_130" alt="홍원기 간호사님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=Nz5XnogniyXqScPWCrcAlQaJ0BxHEm0%2BR%2BNh9RJ2vtM%3D" class="category_kin_list__usernick" target="_blank"><strong>홍원기 간호사</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=70106" target="_blank">정형외과</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">29,688</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">27,992</span>
															</div>
														
													
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=0fhmU%2FwlebiGAwbBpAfYt5iNt3ADwT6PtfvSgkqa9xQ%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/19_3d.png?type=f130_130" alt="더블유여성병원님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=0fhmU%2FwlebiGAwbBpAfYt5iNt3ADwT6PtfvSgkqa9xQ%3D" class="category_kin_list__usernick" target="_blank"><strong>더블유여성병원</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=7011403" target="_blank">생리, 피임</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">8,590</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">8,582</span>
															</div>
														
												</div>
											</li>
										
										
									
								
									

									
										
											<li class="category_kin_list__item">
												<a href="/profile/index.naver?u=AEeaWZgNdyV7KQ7vS79vpfb%2B7%2FLRr9NGdTTp4j08T5E%3D" class="category_kin_list__thumbnail" target="_blank">
													<img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/200x200_m/19_3d.png?type=f130_130" alt="무등산님 프로필 사진" width="94" height="94">
												</a>
												<div class="category_kin_list__content">
													<a href="/profile/index.naver?u=AEeaWZgNdyV7KQ7vS79vpfb%2B7%2FLRr9NGdTTp4j08T5E%3D" class="category_kin_list__usernick" target="_blank"><strong>무등산</strong><span class="category_kin_list__userlevel">절대신</span></a>
													
														
														
														
														
														
														
														
															<div class="category_kin_list__category"><a href="/qna/list.naver?dirId=7010102" target="_blank">소화기내과</a></div>
															<div class="category_kin_list__stats">
																전체채택수 <span class="category_kin_stats__number">12,517</span>
																<span class="bar"></span>
																분야채택수 <span class="category_kin_stats__number">12,340</span>
															</div>
													
												</div>
											</li>
							</ol>
						</div>
			</div>
		</div>
	</div>
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>