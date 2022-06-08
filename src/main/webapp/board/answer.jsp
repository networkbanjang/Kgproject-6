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

</script>
</head>
<body>
	<%@include file="../header.jsp"%>
	<div class="question">
		<form method="post" action="writeService.jsp">
		<br>
			<div class="container">
				<textarea class="summernote" name="editordata"></textarea>
			</div>
			<div id="config">
				<table class="config_table">
					<tr>
						<th>파일첨부 :</th>
						<td class="plus">
							<input type="file">
						</td>
					</tr>
					<tr>
						<th class="pub">아이디 :</th>
						<td><select name="id">
								<option id="pub" value="pub">공개</option>
								<option id="pri" value="pri">비공개</option>
						</select></td>

					</tr>
				</table>
				<div id="center_button">
					<input type="image" src="/KG-naver/images/answer.png">
				</div>
			</div>

		</form>
	</div>







	<script>
		$('.summernote').summernote(
				{ // 에디터 높이
					height : 450,

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