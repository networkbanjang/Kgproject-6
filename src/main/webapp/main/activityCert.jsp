<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../header.jsp" %>
<%

	MemberDAO memberDao = new MemberDAO();
	MemberDTO member = memberDao.selectId(id);
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd.");
	
	String today = sdf.format(date);
%>
<html lang="ko"><head>

<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/common.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/components.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/other.css">

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>

<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<title>
	지식iN 활동 증명서 : 지식iN
</title>

<script type="text/javascript">

if ( typeof window.nhn  == "undefined" ) window.nhn = {};
if ( typeof window.naver  == "undefined" ) window.naver = {};
nhn.isLogin = true;
nhn.isJunior = ("N"=="Y");
nhn.isKinUser = true;
nhn.isPortableDevice = false;
nhn.jsDir = 'https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min';

var g_ssc = ("kin.my" == "") ? "kin.temp" : "kin.my";
var ccsrv="cc.naver.com";


var kinRos = {
	bIsNoticeDisplay : ("false" == "" || "false" == "false") ? false : true,
	bIsActionNoticeDisplay : ("false" == "" || "false" == "false") ? false : true

};





var standardReportPopupUrl = "https://srp2.naver.com/report";
</script>

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/nhn.Kin.MyInfo.ActivityCert.js"></script><script type="text/javascript" charset="utf-8" src="https://ssl.pstatic.net/spi/js/release/ko_KR/splugin.js?20220607"></script><link id="naver-splugin-css" rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/spi/css/20210531/spi_standard_https.css"></head>






<!-- //지식인 등급 증명서 -->
<!-- 지식인 활동 증명서 -->
    <body><div class="cert_layer">
        <div class="heading">
            <span class="sp_cert logo_kin">지식iN</span>
        </div>
        <div class="cont">
            
            
                
                
                    <div class="frame">
                
            
                <div class="inner">
                    <h3>지식iN 활동증명서</h3>
                    <p class="cert_info"><strong><%=id %></strong>님이<br>아래와 같이 지식iN에서 활동하고 있음을 증명합니다.</p>
                    <div class="grade_info">
                        <!-- 기본정보 -->
                        <dl class="list_spec">
                            
                                <dt class="title">등급</dt>
                                <dt class="detail"><%=member.getGrade() %></dt>
                            
                            
                                <dt class="title">시작일</dt>
                                <dt class="detail">2006.05.07.</dt>
                            
                            
                                <dt class="title">순위</dt>
                                <dt class="detail">##<!-- 상위 50만명 (0.7385%) 이내 --></dt>
                            
                            
                            
                                <dt class="title">답변수</dt>
                                <dt class="detail"><%=member.getAnswer() %>개 (답변 채택률 ##%) </dt>
                            
                        </dl>
                        <!-- 주요경력 -->
                        <dl class="list_spec added_info">
                            
                        </dl>
                    </div>
                    <div class="super_info">
                        <span class="sp_cert logo_naver">네이버</span>
                        <p class="issue_date"><%=today %> 네이버 주식회사</p>
                    </div>
                    <!-- 배경 아바타 이미지 -->
                    <span class="bg_character">
                        
                        
						
                        
                            <img src="https://ssl.pstatic.net/static/kin/09renewal/avatar/400x400/4_3d.png" alt="초수 아바타" class="img_character" width="300" height="300">
                        
                        
                    </span>
                </div>
            </div>

            <!-- 소셜플러그인 -->
            <div class="kin_spi _socialPluginArea">
                <div class="kin_sns">
                    <div class="print_type"><a href="#" target="_blank" class="btn_print3 _btn_print" onclick="nhn.Kin.Utility.nClicks('crf.print', '', '', event);"><span class="pri_ico"></span>인쇄<em></em></a></div>
                    <a href="#" id="spiButton" class="naver-splugin spi_one_share _spi" data-style="type_a" data-oninitialize="initializeActivityCert();" data-option="{align:'left',layerPosition:'outside-top'}" title="보내기" splugin-id="760714366"><span class="naver-splugin-c spi_one_share_icon"><span class="blind">공유하기</span></span></a>
                </div>
            </div>
            <!--// 소셜플러그인 -->
        </div>
        <div class="btns">
            <a href="#" class="btn_close sp_cert _btn_print" onclick="nhn.Kin.Utility.nClicks('crf.print', '', '', event);">닫기</a>
            <a href="#" class="btn_print sp_cert _btn_close">인쇄</a>
        </div>
    </div>
<!-- //지식인 활동 증명서 -->

<script type="text/javascript">
	var activityCert = new ActivityCert({
		linkUrl : "",
		title : "지식iN 활동 증명서",
		sourceTitle : "지식iN"
	});

	function initializeActivityCert() {
		return (activityCert !== "undefined" ? activityCert._oInitializeData : null);
	}

	lcs_do();
</script>


</body>
</html>