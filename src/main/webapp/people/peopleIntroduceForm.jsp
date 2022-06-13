<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분야별 지식인 : 지식iN</title>
<link rel="stylesheet" href="PeopleIntroduceForm.css" type="text/css">
</head>
<body> 
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
						<li><a href="/people/partner/index.naver" class="_nclicks:drb.depth1layer,r:5">지식파트너</a></li>
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
						<li><a href="">지식파트너</a></li>
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
					<a href="/KG-naver/people/peopleMainForm.jsp" id="menu1" class="tab_module__item  _nclicks:cat.list" role="tab" aria-selected="true">분야별 지식인</a>
					<a href="/KG-naver/people/peopleIntroduceForm.jsp" id="menu2" class="tab_module__item is_active _nclicks:cat.faq" role="tab" aria-selected="false">분야별 지식인 소개</a>
					<a href="/KG-naver/people/peopleVoteForm.jsp" id="menu3" class="tab_module__item _nclicks:cat.vote" role="tab" aria-selected="false">분야별 지식인 투표</a>
				</div>
				<dl class="category_kin_qna">
					<dt class="category_kin_question">분야별 지식인은 무엇인가요?</dt>
					<dd class="category_kin_answer">
						<p>성실하고 모범이 되는 답변활동으로 많은 분들의 궁금증과 어려움을 해결해주신 분들을 분야별로 선정하여 보상해드리는 제도입니다.</p>
					</dd>
					<dt class="category_kin_question">분야별 지식인은 어떻게 선발하나요?</dt>
					<dd class="category_kin_answer">
						<p>분야별 지식인은 지식iN 사용자분들의 투표를 받아 선정됩니다.</p>
						<ol class="list_wrap">
							<li>1. 후보자 선발 - 선발년도1년 동안의 채택수, 답변 품질 또는 운영원칙 위반 이력 등을 지식iN에서 심사하여 선발</li>
							<li>2. 투표 – 선발된 후보자를 발표하여 공개투표 진행</li>
							<li>3. 발표 – 투표 종료 후 득표수 집계하여, 상위 5위까지 랭킹된 사용자를 분야별 지식인으로 선정</li>
						</ol>
					</dd>
					<dt class="category_kin_question">분야별 지식인 후보자와 최종 선정자는 몇명인가요?</dt>
					<dd class="category_kin_answer">
						<p>후보자와 최종 선정자 모두 고민 Q&amp;A를 제외한 13개의 Q&amp;A 분야와 사용자 추천, 비즈니스, 전문가, 지식파트너 분야에서 선정됩니다.<br><em class="highlight">후보자는 분야별로 10명씩, 총 170명이 선발되며, 최종 선정자는 분야별로 5명씩 총 85명</em>이 선정됩니다.</p>
					</dd>
					<dt class="category_kin_question">사용자참여 후보는 무엇인가요?</dt>
					<dd class="category_kin_answer">
						<p>분야별 지식인 후보자 기준에 아깝게 미치지 못하여 후보자에는 선정되지 못하였지만 1년간 성실히 <br>활동해오신 분들을 대상으로 지식iN 유저분들의 추천을 받아 분야별 지식인 후보로 선정되신 분들입니다.<br>투표를 통해 최종 선정되신 분은 다른 분야 분야별 지식인 후보자와 동일한 혜택을 드립니다.</p>
					</dd>
					<dt class="category_kin_question">분야별 지식인은 언제 선발하나요?</dt>
					<dd class="category_kin_answer">
						<p>분야별 지식인은1년에 1번 선정되며, 매년 상반기에 전년도 활동정보를 근거로 선발하게 됩니다.<br>자세한 선정일정은 공식블로그를 통해 안내해드리니 참고 부탁드립니다.</p>
					</dd>
					<dt class="category_kin_question">일반 사용자가 투표를 할 수 있다고 하는데, 아무나 할 수 있나요?</dt>
					<dd class="category_kin_answer">
						<p>
							투표는 아래 기준을 충족하시는 사용자에 한해 가능합니다.<br>
							지식iN 등급 중, <em class="highlight">초수등급 이상이면서, 최근 3개월 내 질문 또는 답변을 3건 이상 등록한 사용자</em><br>
							운영원칙에 위배된 질문/답변 활동을 하신 분들은 위 기준을 충족하더라도 투표를 하실 수 없으며,<br>
							그 외 투표권한을 남용한것으로 판단되는 정황이 확인된 경우 , 권한을 상실하게 되니 주의 부탁드립니다.
						</p>
					</dd>
					<dt class="category_kin_question">분야별 지식인에게는 어떤 혜택이 있나요?</dt>
					<dd class="category_kin_answer">
						<p>분야별 지식인으로 선정되면 <em class="highlight">네이버페이 50만원, 기념패</em>가 제공됨과 동시에 프로필에 분야별 지식인 이력이 추가됩니다.</p>
						<img src="https://ssl.pstatic.net/static/kin/people/category_kin_benefits_190218.png" alt="네이버페이 50만원, 기념패, 자격이력추가" width="800" height="178">
					</dd>
				</dl>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
<%@include file="../footer.jsp" %>
</html>
						