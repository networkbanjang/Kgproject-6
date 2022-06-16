<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지식IN</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



<script src="/KG-naver/css/summernote/summernote-lite.js"></script>
<script src="/KG-naver/css/summernote/lang/summernote-ko-KR.js"></script>
<link href="/KG-naver/css/naver_sub.css" type="text/css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/KG-naver/css/summernote/summernote-lite.css">


<script>
	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			url : "/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			success : function(data) {
				//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', data.url);
			}
		});
	}
</script>
</head>
<body>
	<%@include file="../header.jsp"%>
	<%
	request.setCharacterEncoding("utf-8");
	String originalnum = request.getParameter("num");
	int num = Integer.parseInt(originalnum);

	BoardDAO boardDao = new BoardDAO();
	BoardDTO board = boardDao.selectNum(num);
	%>
	<div class="question_sector">
		<form method="post" action="modifyService.jsp?num=<%=num%>"
			enctype="multipart/form-data" name="f">
			<div class="modisub">
				<table>
					<tr id="write_row2">
						<td class="col1"><img src="../images/question.png"></td>
						<td class="col2"><input type="text" name="subject"
							value="<%=board.getTitle()%>" class="col2_input"></td>
					</tr>

				</table>
			</div>
			<br>
			<div class="container">
				<textarea class="summernote" name="editordata"><%=board.getContent()%></textarea>
			</div>
			<div class="modi_upload">
				<table>
					<tr>
						<th>이미지 첨부 :</th>
						<td><input type="file" accept=".gif, .jpg, .png"
							name="upimage"></td>
					</tr>
				</table>
			</div>
			<div id="center_button">
				<input type="image" src="/KG-naver/images/ok.png">
			</div>

		</form>
	</div>



	<script>
		$('.summernote').summernote(
				{ // 에디터 높이
					height : 450,
					width : 800,
					lang : "ko-KR",
					toolbar : [
							// 글꼴 설정
							[ 'fontname', [ 'fontname' ] ],
							// 글자 크기 설정
							[ 'fontsize', [ 'fontsize' ] ],
							// 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
							[
									'style',
									[ 'bold', 'italic', 'underline',
											'strikethrough', 'clear' ] ],
							// 글자색
							[ 'color', [ 'forecolor', 'color' ] ],
							// 표만들기
							[ 'table', [ 'table' ] ],
							// 글머리 기호, 번호매기기, 문단정렬
							[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
							// 줄간격
							[ 'height', [ 'height' ] ],
							// 그림
							[ 'insert', [ 'picture' ] ],
							// 코드보기, 확대해서보기, 도움말
							[ 'view', [ 'codeview', 'fullscreen', 'help' ] ] ],
					// 추가한 글꼴
					fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS',
							'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체',
							'바탕체' ],
					// 추가한 폰트사이즈
					fontSizes : [ '8', '9', '10', '11', '12', '14', '16', '18',
							'20', '22', '24', '28', '30', '36', '50', '72' ]

				});
	</script>
	<%@include file="../footer.jsp"%>
</body>
</html>