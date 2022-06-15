<%@page import="Board.answerDAO"%>
<%@page import="member.MemberDAO" %>
<%@page import="member.MemberDTO" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지식iN 랭킹 : 지식iN</title>
<link rel="stylesheet" href="peopleRankForm.css" type="text/css">
<style> 
.banner_kincommon {position:relative; float:right; width:190px; margin:-40px 0 0 0; z-index:23;}
.banner_kincommon img {vertical-align:top;}
.c-vote {margin-top:100px;}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<%
MemberDAO memberDao = new MemberDAO();
ArrayList<MemberDTO> rank = null;
answerDAO answerDao = new answerDAO();
int cnt;
%>
<div id="wrap" class="wrap wrap_people"> 
<div id="container" class="container-fluid">
	<div class="container-fluid-content">
		<div class="container-fluid-content-inner _containerFluidContentInner"><h3 class="blind">지식iN 랭킹</h3>
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
					<a href="/people/expert/index.naver?type=DOCTOR" class="_nclicks:drb.depth1">지식iN 랭킹</a>
					<a href="#" class="more"><img src="https://ssl.pstatic.net/static/kin/09renewal/blank.gif" alt="더보기" width="12" height="12" class="_nclicks:drb.depth1open"></a>
					<div class="sub">
						<ul id="goodByeDirectoryLocation">
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

						<li><a href="/KG-naver/people/peoplePartnerForm.jsp">지식파트너</a></li>
						<li class="is_active" id="kinRankMenuBtn"><a href="/KG-naver/people/peopleRankForm.jsp" class="_nclicks:lmm.rank">지식iN 랭킹</a></li>
						<li><a href="/KG-naver/people/peopleGuideForm.jsp" class="_nclicks:lmm.levelup">등급업 가이드</a></li>
					</ul>
				
					<div class="snb_banner_list snb_banner_list__type">
						<a href="http://blog.naver.com/kin_friend" target="_blank" class="snb_banner_item"><span class="font_point">지식iN</span> 공식 블로그</a>
					</div>
				</div>
			</div>
			<div class="container-fluid-content__right" id="content">
            	<div id="app"> 
                    <h3 class="title--dh21k">
						<img src="https://ssl.pstatic.net/static/kin/09renewal/h_kin_ranking_160620.gif" width="85" height="17" alt="지식iN 랭킹">
							<span class="subtitle--eXFAA">4천만 지식iN 사용자 중 best of best</span>
					</h3>
	
					<table cellspacing="0" class="table--32Ucw" summary="급상승순위">
						<colgroup>
							<col width="79">
							<col width="414">
							<col width="86">
							<col><col>
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="head--1FF04">순위</th>
								<th scope="col" class="head--1FF04 title--W7geH">아이디</th>
								<th scope="col" class="head--1FF04">등급</th>
								<th scope="col" class="head--1FF04">총 답변수</th>
								<th scope="col" class="head--1FF04">총 채택수</th>
							</tr>
						</thead>
						<tbody>
							<%
								int i=1;
							for(MemberDTO people : memberDao.selectRank()) {
								cnt=answerDao.count(people.getId());
							%>
								<tr>
									<td class="cell--9Q7bj rank_num--1SarQ"><%=i++%></td>
									<td class="cell--9Q7bj title--W7geH"><a href="" class="nickname--3hDTP" target="_new"><%if (people.getNickname()!=null){%><%=people.getNickname()%><%} %><span class="user_id--3E3Du">(<%=people.getId() %>)</span></a></td>
									<td class="cell--9Q7bj"><%=people.getGrade() %></td>
									<td class="cell--9Q7bj num--19C4U"><%=cnt %></td>
									<td class="cell--9Q7bj num--19C4U"><%=people.getS_question() %></td>
								</tr>
							<%
								}
							%>
                    	</tbody>
                    	</table>
                    	</div>
                    	</div>
                    	</div>
                    	</div>
                    	</div>
                    	</div>
</body>
<%@include file="../footer.jsp" %>
</html>	