<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="registForm.css" type="text/css">
<link rel="stylesheet" href="message.css" type="text/css">
<script src="/project/js/check.js"></script>
<script type="text/javascript" src="/project/js/regist.js"></script>
<title>네이버 : 회원가입</title>
</head>
<body>
<div id="wrap">
	<div class="header" id="header">
		<img src="/KG-naver/images/naver_logo.png">
	</div>
	<form id="join_form" action="registService.jsp" method="post" id="f">
		<div id="content"> 
			<div class="id_row">
				<h3 class="join_title">아이디</h3>
				 <span class="ps_box int_id">
							<input type="text" id="id" name="id" class="int" title="ID" maxlength="20">
                            <span class="step_url">@naver.com</span>
                 </span>
            </div>

			<div class="join_row">
				<h3 class="join_title">비밀번호</h3>
				<span class="ps_box int_pass" id="pswd1Img">
					<input type="password" name="pw" id="pswd1" class="int" title="비밀번호 입력" aria-describedby="pswd1Msg" maxlength="20">
				</span>
				<h3 class=join_title>비밀번호 재확인</h3>
				<span class="ps_box int_pass_check" id="pswd2Img">
					<input type="password" id="pswd2" name="confirmPw" class="int" title="비밀번호 재확인 입력" aria-describedby="pswd2Blind" maxlength="20">
				</span>
			</div>
			<div class="row_group">
				<div class="join_row">
					<h3 class="join_title">이름</h3>
					<span class="ps_box box_right_space">
						<input type="text" id="name" name="name" class="int" title="이름" maxlength="40">
					</span>
				</div>
				
				<div class="join_row join_birthday">
					<h3 class="join_title">생년월일</h3>
					<div class="bir_wrap">
						<div class="bir_yy">
							<span class="ps_box">
								<input type="text" name="yy" id="yy" placeholder="년(4자)" class="int" maxlength="4">
							</span>
						</div>
						<div class="bir_mm">
							<span class="ps_box">
								<select name="mm" id="mm" class="sel" aria-label="월">
									<option value="">월</option>
									<option value="01">1월</option>
									<option value="02">2월</option>
									<option value="03">3월</option>
									<option value="04">4월</option>
									<option value="05">5월</option>
									<option value="06">6월</option>
									<option value="07">7월</option>
									<option value="08">8월</option>
									<option value="09">9월</option>
									<option value="10">10월</option>
									<option value="11">11월</option>
									<option value="12">12월</option>
								</select>
							</span>
						</div>
						<div class="bir_dd">
							<span class="ps_box">
								<input type="text" name="dd" id="dd" placeholder="일" aria-label="일" class="int" maxlength="2">
								<label for="dd" class="lbl"></label>
							</span>
						</div>
					</div>
				</div>
				<div class="join_row join_sex">
					<h3 class="join_title">성별</h3>
					<div class="ps_box gender_code">
						<select id="gender" name="gender" class="sel" aria-label="성별">
		                	<option value="" selected="">성별</option>
		                    <option value="M">남자</option>
		                    <option value="F">여자</option>
		                    <option value="U">선택 안함</option>
		                </select>
					</div>		
				</div>
				<div class="join_row join_email">
		        	<h3 class="join_title"><label for="email">본인 확인 이메일<span class="terms_choice">(선택)</span></label></h3>
		                   <span class="ps_box int_email box_right_space">
								<input type="text" id="email" name="email" placeholder="선택입력" aria-label="선택입력" class="int" maxlength="100">
							</span>
		        </div>
	        	<div class="join_row join_mobile" id="mobDiv">
	            	<h3 class="join_title"><label for="phoneNo">휴대전화</label></h3>
	                    <div class="ps_box country_code">
	                        <select id="nationNo" name="nationNo" class="sel" aria-label="전화번호 입력">
	                        	<option value="233">가나 +233</option>
	                            <option value="241">가봉 +241</option>
	                            <option value="592">가이아나 +592</option>
	                            <option value="220">감비아 +220</option>
	                            <option value="502">과테말라 +502</option>
	                            <option value="1671">괌 +1 671</option>
	                            <option value="1473">그레나다 +1 473</option>
	                            <option value="30">그리스 +30</option>
	                            <option value="224">기니 +224</option>
	                            <option value="245">기니비사우 +245</option>
	                            <option value="264">나미비아 +264</option>
	                            <option value="674">나우루 +674</option>
	                            <option value="234">나이지리아 +234</option>
	                            <option value="672">남극,오스트레일리아의외 +672</option>
	                            <option value="27">남아프리카공화국 +27</option>
	                            <option value="31">네덜란드 +31</option>
	                            <option value="599">네덜란드령보네르 +599</option>
	                            <option value="297">네덜란드령아루바 +297</option>
	                            <option value="977">네팔 +977</option>
	                            <option value="47">노르웨이 +47</option>
	                            <option value="64">뉴질랜드 +64</option>
	                            <option value="82" selected="">대한민국 +82</option>
	                            <option value="45">덴마크 +45</option>
	                            <option value="299">덴마크령그린란드 +299</option>
	                            <option value="298">덴마크령페로제도 +298</option>
	                            <option value="1809">도미니카공화국 +1 809</option>
	                            <option value="49">독일 +49</option>
	                        </select>
	                    </div>
	                    <div class="int_mobile_area" style="margin-top:10px;">
							<span class="ps_box int_mobile">
								<input type="tel" id="phoneNo" name="phoneNo" placeholder="전화번호 입력" aria-label="전화번호 입력" class="int" maxlength="16">
								<label for="phoneNo" class="lbl"></label>
							</span>        
	                    </div>
	                
	                    <div class="btn_area">
	                    	<button type="submit" id="btonJoin" class="btn_type btn_primary">
	                    		<span>가입하기</span>
	                    	</button>	
	                   	</div>
	                  </div>
	                </div>
				</div>
				</form>
				<div id="footer" role="contentinfo">
					<ul>
						<li><a href="http://policy.naver.com/rules/service.html">이용약관</a></li>
						<li><strong><a href="http://policy.naver.com/policy/privacy.html">개인정보처리방침</a></strong></li>
						<li><a href="http://policy.naver.com/rules/disclaimer.html">책임의 한계와 법적고지</a></li>
						<li><a href="https://help.naver.com/support/alias/membership/p.membership/p.membership_26.naver" target="_blank">회원정보 고객센터 </a></li>
					</ul>
					<address>
						<em><a href="https://www.navercorp.com/" target="_blank" class="logo"><span class="blind">naver</span></a></em>
						<em class="copy">Copyright</em>
						<em class="u_cri">©</em>
						<a href="https://www.navercorp.com/" target="_blank" class="u_cra">NAVER Corp.</a>
						<span class="all_r">All Rights Reserved.</span>
					</address>
				</div>
			</div>
		
</body>
</html>
