<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>분야별 지식인 : 지식iN</title>
<style> 
.banner_kincommon {position:relative; float:right; width:190px; margin:-40px 0 0 0; z-index:23;}
.banner_kincommon img {vertical-align:top;}
.c-vote {margin-top:100px;}
</style>
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
					<a href="peopleForm.jsp" class="_nclicks:drb.depth1">분야별 지식인</a> 
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
						<li><a href="" class="/KG-naver/people/peopleGuideForm.jsp">등급업 가이드</a></li>
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
					<a href="/KG-naver/people/peopleIntroduceForm.jsp" id="menu2" class="tab_module__item _nclicks:cat.faq" role="tab" aria-selected="false">분야별 지식인 소개</a>
					<a href="/KG-naver/people/peopleVoteForm.jsp" id="menu3" class="tab_module__item is_active  _nclicks:cat.vote" role="tab" aria-selected="false">분야별 지식인 투표</a>
				</div>
			</div>
			<div class="c-nodata c-nodata--large">
				<div class="c-vote">
					<i class="icon-square icon-square--exclamation" aria-hidden="true"></i>
					<p class="c-nodata__title">올해 분야별 지식인 선발을 위한 투표가 종료되었습니다.</p>
					<p class="c-nodata__desc">많은 관심 주심에 감사드리며,<br> 내년 선발때 만나뵙기를 기대하겠습니다.</p>
				</div>
			</div>
		</div>
	</div>
	</div>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>