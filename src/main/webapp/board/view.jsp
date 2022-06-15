<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="Page.PageService"%>
<%@page import="Board.replyDTO"%>
<%@page import="Board.replyDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Board.answerDTO"%>
<%@page import="Board.answerDAO"%>
<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지식IN</title>
<link href="/KG-naver/css/naver_sub.css" type="text/css"
	rel="stylesheet">

</head>
<body>
	<%@include file="../header.jsp"%>
	<%if(id == null){
		response.sendRedirect("/KG-naver/member/loginForm.jsp");
	}
	String originalnum = request.getParameter("num");
	int num = Integer.parseInt(originalnum);
	BoardDAO boardDao = new BoardDAO();
	BoardDTO board = boardDao.selectNum(num);
	String hitcheck = request.getParameter("answernum");
	MemberDTO member;
	MemberDAO memberDao= new MemberDAO();
	String savefolder = "/KG-naver/up/"+board.getId()+"/"+board.getPhoto();

	if (hitcheck == null || hitcheck.equals("null")) {
		int hit = board.getHit() + 1;
		boardDao.hitUP(num, hit);
	}
	String content;
	int i = 0;
	%>

	<%
	answerDAO answerDao = new answerDAO();
	ArrayList<answerDTO> answer = answerDao.answer_list(num);
	ArrayList<BoardDTO> hitDesc = answerDao.hitDesc(1,4);
	ArrayList<answerDTO> count;
	%>

	<%
	replyDAO replyDao = new replyDAO();
	ArrayList<replyDTO> reply;
	ArrayList<replyDTO> reply_count;
	int replynumber = 0;
	try {
		replynumber = Integer.parseInt(request.getParameter("replynumber"));
	} catch (Exception e) {
		replynumber = 1;
	}

	if (replynumber < 1)
		replynumber = 1;

	int end = replynumber * 10;
	int begin = end + 1 - 10;
	%>

	<div class=all>
		<div class="qustion_sector">
			<table class="question_table">
				<tr>
					<td><sapn class="aha">아하</sapn></td>
					<td class="question_subject" colspan="2"><%=board.getTitle()%></td>
					<%if (id.equals(board.getId())) {%>
					<td class="question_demo"><a href="delete.jsp?num=<%=board.getNum()%>"><span class="question_delete">질문삭제</span> </a>
					
					<a href="modify.jsp?num=<%=board.getNum()%>"><span class="question_modify"> 질문수정</span></td></a>
					<%} %>
				</tr>
									<% if (board.getPhoto() != null) { %>
					<tr>
					<td class="question_content" colspan="3"><img src=<%=savefolder %>></td>
					</tr>
					<%} %>
				<tr>

					<td class="question_content" colspan="3"><%=board.getContent()%></td>
				</tr>

				<tr>
					<td class="question_cate"><%=board.getCategory()%></td>
				</tr>
				<tr>
					<td class="question_etc"><%=board.getNick()%></td>
					<td class="question_etc"><%=board.getTime()%></td>
					<td class="question_etc">조회수: <%=board.getHit()%></td>
				</tr>
			</table>
		</div>
		<div class="middle_sector">
			<label>A </label>
			<%=answer.size()%>개 <a href="../question_list.jsp"><div
					class="answer_reg">목록으로</div></a> <a href="answer.jsp?num=<%=num%>"><div
					class="answer_reg">답변하기</div></a>
		</div>
		<div class="answer_sector">
						<%
				for (answerDTO a : answer) {
					member=memberDao.selectId(a.getId());
				%>
			<table class="answer_title">

				<tr>
					<td rowspan="2" class="profile">
					<%if(member.getPic() == null) { %>
						<a href="/KG-naver/main/profile.jsp?id=<%=a.getId()%>"><img class="profile" src="/KG-naver/images/default.png"></a>
					<%} else{%>
							<a href="/KG-naver/main/profile.jsp?id=<%=a.getId()%>"><img class="profile" src="/KG-naver/up/<%=a.getId() %>/<%=member.getPic() %>"></a>
					<%} %>
					</td>
					<td class="answer_subject">
					<%if (a.getRecommend()==1){ %> <img src="/KG-naver/images/check.png"><%} %>
				<%=a.getId() %>님의 답변</td>
				</tr>
		
				<tr>
					<%
					if (a.getPubl().equals("pri")) {
					%>
					<td class="answer_score">익명</td>
					<%
					} else {
					%>
					<td class="answer_score"><%=a.getId()%></td>
				
					<td >채택된 답변 수:<%=member.getS_question() %></td>
				</tr>
			</table>
				<%
					}
					%>
			<table class="answer_conetent">
				<%if (a.getFile_root() != null) {
					String fileroot=a.getFile_root();
					%> 
				<tr>
					 <a class="filefile" href="fileDown.jsp?filename=<%=fileroot%>&writeid=<%=a.getId()%>">첨부파일: <%=a.getFile_root() %></a></td>
				</tr>
				<%} %>
				<tr>
					<td class="content_main" colspan="3"><span><%=a.getContent()%></span></td>
				</tr>

				<tr>
					<td class="content_etc"><%=a.getTime()%></td>
					<%if (a.getRecommend() ==0 && id.equals(board.getId())) {%>
					<td class="content_etc"><a href="recommend.jsp?num=<%=a.getNum()%>&recommend=<%=a.getRecommend()%>&check=<%=board.getId()%>&tmp=<%=num%>&user=<%=a.getId()%>">♡채택하기</a></td><%} 
					else if (a.getRecommend() ==1 && id.equals(board.getId())){%>
					<td class="content_etc"><a href="recommend.jsp?num=<%=a.getNum()%>&recommend=<%=a.getRecommend()%>&check=<%=board.getId()%>&tmp=<%=num%>&user=<%=a.getId()%>">♥채택취소</a></td><%} %>
					<td class="content_etc"><a
						href="view.jsp?num=<%=num%>&answernum=<%=a.getNum()%>"> <%
 reply_count = replyDao.listselect(a.getNum());
 %>
							댓글보기(<%=reply_count.size()%>)
					</a></td>
				</tr>

				<br>
				<%if (id.equals(a.getId())) { %>
				<a href="answerDelete.jsp?num=<%=num%>&answernum=<%=a.getNum()%>"><span class="delete_sector">삭제하기</span></a>
				<a href="answerModify.jsp?num=<%=num%>&answernum=<%=a.getNum()%>"><span class="modify_sector">수정하기</span></a>
				<%} %>
			</table>
			<br>
			<%
			if (request.getParameter("answernum") != null) {
				String originalanswernum = request.getParameter("answernum");
				int answernum = Integer.parseInt(originalanswernum);
				if (a.getNum() == answernum) {	 %>		
			<div class="reple">
				댓글
				<form name="form" id="form" action="replyService.jsp">
					<input type="hidden" name="num" value="<%=num%>"> <input
						type="hidden" name="answernum" value="<%=answernum%>">
					<table class="re_content">
						<tr>


							<td><input type="text" class="re_textbar" name="reply"
								id="reply" placeholder="개인정보를 공유 및 요청하거나, 명예훼손,무단광고 불법정보 유포시 모니터링 후 삭제될 수있으며 이에대한 민형사상 책임은 게시자에게 있습니다."></td>
							<td><input class="res" type="image"
								src="/KG-naver/images/ok2.png"></td>

						</tr>

					</table>
				</form>
			</div>
			<%
			reply = replyDao.listselect(answernum, begin, end);
			int totalCount = reply_count.size();
			String url = "view.jsp?num=" + num + "&answernum=" + answernum + "&replynumber=";
			String result = PageService.getNavi(url, replynumber, 10, totalCount);
			for (replyDTO re : reply) {
			%>
			<div class="c-opinion__item">
				<span class="List-nick"><%=re.getId()%> </span> 
				<%if (id.equals(re.getId())){ %>
				<a
					href="replydelete.jsp?num=<%=num%>&answernum=<%=answernum%>&replynum=<%=re.getNum()%>"
					class="_deleteBtn"><img height="9" width="9"
					src="https://ssl.pstatic.net/static/kin/09renewal/btn_delete_list2.gif"
					class="del"></a>
<%} %>
				<div class="list-text">
					<p><%=re.getContent()%></p>
				</div>
				<p class="c-opinion__list-date"><%=re.getWritedate()%></p>
				<div class="button_more"></div>
				<%
				}
				%>
				<%
				out.print(result + "<br>");
				}
				}
				%>

				<%
				}
				%>
			</div>
		</div>
		<br>
		<div class="container-fluid-content-etc _bounceAnimationBoundary">
			<div class="personal-data">
				<div class="personal-data__inner">

					<div id="detailQnaListTabTitleArea"
						class="_detailQnaListComponent c-tab c-tab--title">
						<div class="c-tab__list" role="tablist">


							<a href="#" role="tab" aria-controls="reactRankQnaListTabPanel"
								aria-selected="true"
								class="_detailQnaListTabTitle c-tab__item is_active"
								onclick="naver.kin.pc.common.nClicks('end*s.see', '', '', event);return false;">많이
								본 Q&amp;A </a>

						</div>
					</div>


					<div id="reactRankQnaListTabPanel" role="tabpanel"
						aria-expanded="true" aria-labelledby="tab2" aria-selected="true"
						class="_detailQnaListComponent" style="margin-top: 34px;">

						<div id="detailArticleReactRankListArea" class="carousel-slide"
							style="">
							<div class="carousel-slide-inner">
								<div class="_detailQnaListArea c-qna c-qna-lot">
									<h2 id="relatedRankQnaListTitle" class="blind">많이 본
										Q&amp;A</h2>




									<div class="_detailQnaList c-qna__list" role="region"
										aria-labelledby="relatedRankQnaListTitle">

										<%
										for (BoardDTO h : hitDesc) {
											count = answerDao.answer_list(h.getNum());
											i += 1;
										%>
										<a href="view.jsp?num=<%=h.getNum()%>"
											class="_detailQnaListItem c-qna__item c-qna__item--clamp1">
											<div class="c-heading">
												<div class="c-heading__title">
													<div class="c-heading__title-inner">
														<div class="c-heading__number"><%=i%></div>
														<div class="title"><%=h.getTitle()%></div>
													</div>
												</div>
												<div class="c-heading__content"><%=h.getContent()%></div>
												<div class="c-qna__userinfo">
													<span class="c-qna__userinfo--item text-color--primary">조회수
														<em><%=h.getHit()%></em>
													</span> <span class="c-qna__userinfo--item">답변수 <em><%=count.size()%></em></span>
												</div>
											</div>
										</a>
										<%
										}
										%>
									</div>


								</div>
							</div>

						</div>

					</div>



				</div>
			</div>
		</div>
		<%
		answerDao.close();
		boardDao.close();
		replyDao.close();
		memberDao.close();
		%>
		<%@
	include file="../footer.jsp"%>
</body>
</html>