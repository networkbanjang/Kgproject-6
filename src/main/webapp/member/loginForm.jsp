<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="LoginForm.css" type="text/css">
<script src="js/check.js"></script>
<title>네이버 : 로그인</title>
</head>
<body>
<div id="wrap" class="wrap">
    <header class="header" role="banner">
        <div class="header_inner">
            <a href="https://www.naver.com" class="logo" style="margin-left:30px;">
                <h1 class="blind">NAVER</h1>
            </a>
        </div>
    </header>

    <div id="container" class="container">
        <!-- content -->
        <div class="content">
            <div class="login_wrap">
                <form id="frmNIDLogin" name="frmNIDLogin" target="_top" autocomplete="off" action="loginService.jsp" method="post">
                    <ul class="panel_wrap">
                        <li class="panel_item" style="display: block;">
                            <div class="panel_inner" role="tabpanel" aria-controls="loinid">
                                <div class="id_pw_wrap">
                                    <div class="input_row" id="id_line">
                                        <div class="icon_cell" id="id_cell">
                                            <span class="icon_id">
                                                <span class="blind">아이디</span>
                                            </span>
                                        </div>
                                        <input type="text" id="id" name="id" placeholder="아이디" title="아이디" class="input_text" maxlength="41">
                                        <span role="button" class="btn_delete" id="id_clear" style="display: none;">
                                            <span class="icon_delete">
												<span class="blind">삭제</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="input_row" id="pw_line">
                                        <div class="icon_cell" id="pw_cell">
                                            <span class="icon_pw">
                                                <span class="blind">비밀번호</span>
                                            </span>
                                        </div>
                                        <input type="password" id="pw" name="pw" placeholder="비밀번호" title="비밀번호" class="input_text" maxlength="16">
                                        <span role="button" class="btn_delete" id="pw_clear" style="display: none;">
                                            <span class="icon_delete">
                                                <span class="blind">삭제</span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="login_keep_wrap" id="login_keep_wrap">
                                    <div class="keep_check">
                                        <input type="checkbox" id="keep" name="nvlong" class="input_keep" value="off">
                                        <label for="keep" class="keep_text">로그인 상태 유지</label>
                                    </div>
                            
                                </div>                            
                                <div class="btn_login_wrap">
                                    <button type="submit" class="btn_login" id="log.login">
                                        <span class="btn_text">로그인</span>
                                    </button>

                                </div>
                            </div>
                        </li>
                    </ul>
                </form>
                </form>
            </div>
            <ul class="find_wrap" id="find_wrap">

                <li><a target="_blank" href="https://nid.naver.com/user2/api/route?m=routePwInquiry&amp;lang=ko_KR" class="find_text">비밀번호 찾기</a></li>
                <li><a target="_blank" href="https://nid.naver.com/user2/api/route?m=routeIdInquiry&amp;lang=ko_KR" class="find_text">아이디 찾기</a></li>
                <li><a target="_blank" href="/KG-naver/member/agreeForm.jsp" class="find_text">회원가입</a>
                </li>

            </ul>
    </div>

    <!-- footer -->
    <div class="footer">
        <div class="footer_inner">
            <ul class="footer_link" id="footer_link">
                <li><a target="_blank" class="footer_item" href="http://www.naver.com/rules/service.html" id="fot.agreement"><span class="text">이용약관</span></a></li>
                <li><a target="_blank" class="footer_item" href="http://www.naver.com/rules/privacy.html" id="fot.privacy"><span class="text"><strong>개인정보처리방침</strong></span></a></li>
                <li><a target="_blank" class="footer_item" href="http://www.naver.com/rules/disclaimer.html" id="fot.disclaimer"><span class="text">책임의 한계와 법적고지</span></a></li>
                <li><a target="_blank" class="footer_item" href="https://help.naver.com/support/service/main.nhn?serviceNo=532" id="fot.help"><span class="text">회원정보 고객센터</span></a></li>
            </ul>
            <div class="footer_copy">
                <a id="fot.naver" target="_blank" href="https://www.navercorp.com">
                    <span class="footer_logo"><span class="blind">네이버</span></span>
                </a>
                <span class="text">Copyright</span>
                <span class="corp">© NAVER Corp.</span>
                <span class="text">All Rights Reserved.</span>
            </div>
        </div>
    </div>

</div>
</div>

</body>
</html>