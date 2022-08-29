<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 지식IN</title>
<meta charset="utf-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>




<script src="/KG-naver/css/summernote/summernote-lite.js"></script>
<script src="/KG-naver/css/summernote/lang/summernote-ko-KR.js"></script>
<link href="/KG-naver/css/naver_sub.css" type="text/css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/KG-naver/css/summernote/summernote-lite.css">



</head>
<body>
	<%@include file="../header.jsp"%>
<div id="allques">
		<div class="question_sec">
			<form method="post" action="writeService.jsp"
				enctype="multipart/form-data" name="f" class="question_se">
				<table class="write_table">
					<tr id="write_row2">
						<td class="col1"><img src="../images/question.png"></td>
						<td class="col2"><input type="text" name="subject"
							class="col2_input"></td>
					</tr>
					<tr id="write_row3">
						<td class="col1"></td>
						<td class="col3">카테고리 선택 <select name="category">
								<option id="study" value="교육,학문">교육,학문</option>
								<option id="computer" value="컴퓨터 통신">컴퓨터 통신</option>
								<option id="game" value="게임">게임</option>
								<option id="art" value="엔터테이먼트,예술">엔터테이먼트,예술</option>
								<option id="life" value="생활">생활</option>
								<option id="health" value="건강">건강</option>
								<option id="social" value="사회,정치">사회,정치</option>
								<option id="economy" value="경제">경제</option>
								<option id="taravel" value="여행">여행</option>
								<option id="sports" value="스포츠.레져">스포츠.레져</option>
								<option id="shoping" value="쇼핑">쇼핑</option>
								<option id="junior" value="쥬니버">쥬니버 Q&A</option>
								<option id="place" value="지역,플레이스">지역&플레이스</option>
								<option id="worry" value="고민">고민Q&A</option>
						</select>
						</td>
					</tr>
				</table>
				<br>
				<div class="write_container">
					<textarea class="summernote" name="editordata"></textarea>
				</div>
				<div class="file_upload">
					<table>
						<tr>
							<th>이미지 첨부 :</th>
							<td><input type="file" accept=".gif, .jpg, .png"
								name="upimage"></td>
						</tr>
					</table>
				</div>
				<div id="config">
					<table class="config_table">
						<tr>
							<th class="pub">별명 :</th>
							<td><select name="nick">
									<option id="pub" value="pub">공개</option>
									<option id="pri" value="pri">비공개</option>
							</select></td>
							<th class="pub">미성년자열람 :</th>
							<td><select name="children">
									<option id="children" value="children">허용</option>
									<option id="adult" value="adult">비허용</option>
							</select></td>
							<th class="pub">만 14세미만 답변 :</th>
							<td><select name="children_answer">
									<option id="children_answer" value="children_answer">허용</option>
									<option id="adult_answer" value="adult_answer">비허용</option>
							</select></td>

						</tr>

					</table>
					<div class="center_button">
						<input type="image" src="/KG-naver/images/ok.png">
					</div>
				</div>

			</form>
		</div>
</div>
	<script>
		$('.summernote').summernote(
				{ // 에디터 높이
					height : 450,
					width : 900,
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
							// 코드보기, 확대해서보기, 도움말
							[ 'view', [ 'codeview', 'fullscreen', 'help' ] ] ],
					// 추가한 글꼴
					fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS',
							'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋음체',
							'바탕체' ],
					// 추가한 폰트사이즈
					fontSizes : [ '8', '9', '10', '11', '12', '14', '16', '18',
							'20', '22', '24', '28', '30', '36', '50', '72' ],

				});
	</script>
	<%@include file="../footer.jsp"%>
</body>
</html>