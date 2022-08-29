<%@page import="Page.PageService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Board.BoardDAO"%>
<%@page import="Board.BoardDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../header.jsp" %>
<html lang="ko">
<head>


<title>
	'검색어' 검색결과 : 지식iN
</title>


</head>


<body>
<%int pagenumber = 0;
try{
	pagenumber = Integer.parseInt(request.getParameter("pageNumber"));
}catch(Exception e){
	pagenumber = 1;
}

if(pagenumber < 1)
	pagenumber = 1;

//한 페이지에 출력할 페이지의 수
int pageBlock = 5;

//데이터베이스에서 게시글 범위
int end = pagenumber * pageBlock;
int begin = end + 1 - pageBlock;

int totalCount = 0;


 %>

<%String keyword=request.getParameter("keyword");
BoardDAO boardDao=new BoardDAO();
ArrayList<BoardDTO> board = boardDao.keyword(keyword,begin,end);
totalCount=boardDao.keyowrdcount(keyword);
String content="";
String url = "list.jsp?keyword=" + keyword +"&pageNumber=";
String result=PageService.getNavi(url, pagenumber, pageBlock, totalCount);
%>
<div id="wrap" class="wrap wrap_search"> 




<div id="container" class="container-fluid">
	<div class="container-fluid-content">
		<div class="container-fluid-content-inner">
			


<div id="search_result">
	
	
		
		<strong><%=keyword %></strong> 에 대한 검색결과입니다.
	
	
	
</div>

			<div id="content" class="container-fluid-content__left">
				

<div id="s_content">
	
	
	<div class="section">
		<h2>
			<img src="https://ssl.pstatic.net/static/kin/09renewal/h_search_kin_all.gif" alt="전체 지식iN" width="67" height="15">

			<span class="number">(<em><%=begin %>-<%=end %>/<%=totalCount %></em>)</span>
		</h2>
										
		<div class="option_search">

			<form name="date_search">
				<input type="hidden" name="sort" value="none">
				<input type="hidden" name="section" value="kin">
				
				
			</form>
			
		</div>
						
		
			<strong class="blind">검색결과</strong>
			<ul class="basic1">
				<%for (BoardDTO b : board){ %>
					<li>
						
						<dl>
							<dt>
								<a href="/KG-naver/board/view.jsp?num=<%=b.getNum()%>"><%=b.getTitle() %></a>
								
								
								
								
							</dt>
							<dd class="txt_inline"><%=b.getTime() %></dd>
							<%if (b.getContent().length() >= 50){ 
								content=b.getContent().substring(0,30);
								
							} else {
							content=b.getContent();
							}%>
							
							<dd><%=content %> </dd>
							
							<dd class="tag_area">
								
							</dd>
							
						</dl>
					</li>
					<%} boardDao.close();  %>
			</ul>
			
			
				
			
		
	
		
			
		





<!-- 페이지 서비스 -->
<%=result %>
			
			
				
		
	</div>

</div>
			</div>

			<div class="container-fluid-content__right">
				<div id="aside">
					







<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.Search.RelatedKeyword.js"></script>

			

</body>
</html>