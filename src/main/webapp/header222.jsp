<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<link href="/project_6/images/tab_icon.png" rel="icon" type="image/x-icon" />
<html lang="ko">
<head>
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/common.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/components.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/other.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/main.css">
<link rel="stylesheet" type="text/css" href="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/css/min/c3p.datalab.theme.css">

<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/pc/20220511141354/js/min/kin.js"></script>


<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico?v=2.2">
<style id="gnb_style" type="text/css">@charset "UTF-8";
/* NTS UIT Development Office YJH 140717 */
a.gnb_my, .gnb_icon, #gnb .gnb_my_interface, .gnb_my_li .gnb_my_content .gnb_membership, #gnb .gnb_my_membership, #gnb .gnb_ico_num .gnb_ico_new, #gnb .gnb_ico_num .gnb_ico_new .gnb_count, .gnb_lst .ico_arrow, a.gnb_my .filter_mask, .gnb_my_lyr, .gnb_my_li .gnb_my_content .gnb_mask, .gnb_my_li .gnb_my_content .gnb_change, .gnb_my_li .gnb_my_content .gnb_edit_lst li, .gnb_my_li .gnb_my_content .gnb_pay_check em, #gnb .gnb_my_li .gnb_my_community a.gnb_pay span, .gnb_notice_li .gnb_notice_lyr, .gnb_notice_li .svc_list .gnb_ico_mail, .gnb_notice_li .svc_list .gnb_btn_remove span, .gnb_notice_li .svc_list .gnb_btn_remove i, .gnb_notice_li .gnb_error .gnb_ico_error, .gnb_ly_alert .gnb_btn_close i, .gnb_first_visit, .gnb_search_box, .gnb_search_box .gnb_del_txt, .gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic_gnb_new, .gnb_svc_more .svc_btnwrp button { background: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_v14.png) no-repeat -999px -999px;		background: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_v15.png?v=2006) no-repeat -999px -999px; /* background: url(../img/sp_gnb_v15.png) no-repeat -999px -999px; */}
.gnb_favorite_area, .gnb_search_area, .gnb_banner, .gnb_linkwrp{background:url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr2_v2.png) no-repeat -999px -999px}
#gnb .gnb_my_li .gnb_my_community a, .gnb_notice_li .gnb_notice_all, a.gnb_service_all, .gnb_svc_more .svc_btns{display:block;height:38px;border-top:1px solid #ebebeb;background-color:#f8f8f8;text-align:center;font-weight:bold;text-decoration:none;letter-spacing:-1px;line-height:38px}
#gnb .gnb_my_li .gnb_my_community a:visited, .gnb_notice_li .gnb_notice_all:visited, a.gnb_service_all:visited, .gnb_svc_more .svc_btns:visited{color:#444}
.gnb_login_li, .gnb_my_li, .gnb_notice_li, .mail_li, .gnb_service_li{float:left;margin-right:2px;overflow:visible}
.gnb_login_li a, .gnb_my_li a, .gnb_notice_li a, .mail_li a, .gnb_service_li a{position:relative;z-index:100}
a.gnb_my, .gnb_icon{position:relative}
#gnb{position:relative;z-index:2147483646;font-family:'나눔고딕',NanumGothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,Sans-serif !important;color:#444;font-size:12px;letter-spacing:0 !important;line-height:normal !important;text-align:left !important}
#gnb div, #gnb p, #gnb span, #gnb em, #gnb strong, #gnb h1, #gnb h2, #gnb h3, #gnb h4, #gnb h5, #gnb h6, #gnb ul, #gnb ol, #gnb li, #gnb dl, #gnb dt, #gnb dd, #gnb table, #gnb th, #gnb td, #gnb form, #gnb fieldset, #gnb legend, #gnb input, #gnb textarea, #gnb button, #gnb label{font-family:'나눔고딕',NanumGothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,Sans-serif !important}
#gnb a, #gnb label, #gnb button{cursor:pointer}
#gnb a, #gnb a:visited, #gnb a:active, #gnb a:focus{color:#444}
#gnb a:hover{color:#444;text-decoration:underline}
#gnb input::-ms-clear{display:none}
#gnb em{font-style:normal}
#gnb ul{list-style:none}
#gnb .blind{display:block;overflow:hidden;position:absolute;top:-1000em;left:0;width:1px;height:1px;margin:0;padding:0;font-size:0;line-height:0}
#gnb .gnb_my_membership{padding: 0;display: block;width: 64px;height: 16px;background-position: -296px -359px;margin: 0;}
#gnb .gnb_my_interface{padding:5px;position:absolute;top:12px;right:8px;display:block;width:17px;height:16px;background-position:-90px 5px}
#gnb .gnb_my_interface:hover{background-position:-90px -20px}
#gnb .gnb_my_interface:focus{background-position:-90px -20px}
#gnb .gnb_pad_lyr{position:absolute}
#gnb .gnb_ico_num{display:block;position:absolute;top:1px;width:40px;text-align:center}
#gnb .gnb_ico_num .gnb_ico_new{height:15px;display:inline-block;background-position:-331px 0;zoom:1}
#gnb .gnb_ico_num .gnb_ico_new .gnb_count{position:relative;top:0;right:-5px;height:15px;margin:0;padding:0 4px 0 1px;display:inline-block;*display:inline;vertical-align:top;background-position:100% 0;text-indent:-2px;font-family:tahoma !important;font-weight:bold;color:#fff;zoom:1}
#gnb .gnb_ico_num .gnb_ico_new .plus{margin:1px -1px 0 2px;font-size:8px;display:inline-block;color:#fff;vertical-align:top}
:root #gnb .gnb_pad_lyr{opacity:1 !important;/* background:#fff */}
.gnb_lst{margin:0;padding:0;zoom:1}
.gnb_lst:after{display:block;clear:both;content:''}
.gnb_lst ul{margin:0;padding:0}
.gnb_lst .ico_arrow{display:none;position:absolute;left:50%;top:27px;width:10px;height:8px;margin-left:-5px;background-position:-175px -10px}
.gnb_lyr_opened .gnb_my_lyr, .gnb_lyr_opened .gnb_service_lyr, .gnb_lyr_opened .gnb_notice_lyr, .gnb_lyr_opened .ico_arrow{display:block !important}
.gnb_login_li{height:23px;padding:5px 7px 0 0}
.gnb_reg_li{height:23px;padding:5px 7px 0 0}
.gnb_btn_login, .gnb_bg, .gnb_bdr{display:inline-block;width:46px;height:20px;font-size:12px}
.gnb_btn_reg, .gnb_bg2, .gnb_bdr2{display:inline-block;width:46px;height:20px;font-size:12px}
.gnb_btn_login {position:relative}
.gnb_btn_reg {position:relative}
.gnb_bg{background-color: #fff;opacity: 0.05;filter: alpha(opacity=5);}
.gnb_bg2{background-color: #fff;opacity: 0.05;filter: alpha(opacity=5);}
.gnb_bdr{position:absolute;top: -1px;left: -1px;width: 46px;height: 20px;border: 1px solid #000;opacity: 0.12;filter: alpha(opacity=12);}
.gnb_bdr2{position:absolute;top: -1px;left: -3px;width: 55px;height: 20px;border: 1px solid #000;opacity: 0.12;filter: alpha(opacity=12);}
.gnb_txt{position:absolute;top:0;left:0;width:45px;height:20px;padding-left:1px;line-height:21px;color:#666;text-align:center}
.gnb_txt2{position:absolute;top:0;left:0;width:48px;height:20px;padding-left:1px;line-height:21px;color:#666;text-align:center}
.gnb_btn_login:hover{text-decoration:none !important}
.gnb_btn_reg:hover{text-decoration:none !important}
.gnb_account .gnb_btn_login{width:54px;margin:-1px 0 0 8px;vertical-align:top}
.gnb_account a.gnb_btn_login .gnb_txt {padding-left: 0;}
.gnb_account .gnb_bdr{width:52px}
.gnb_account .gnb_txt{width:53px}
.gnb_my_li{margin-right:7px}
.gnb_my_namebox{padding:2px 9px 0 0;background-repeat:no-repeat;background-position:100% 50%;zoom:1}
.gnb_my_namebox:after{display:block;clear:both;content:''}
a.gnb_my{float:left;display:block;font-size:12px;vertical-align:middle}
a.gnb_my .filter_mask {position: absolute; top: -1px; left: -1px; z-index: 1; width: 28px; height: 28px; background-position: -260px -60px;}
a.gnb_my img{vertical-align:top;border-radius:16px}
a.gnb_my .gnb_name{margin-right:-1px;padding-left:5px;display:inline-block;height:28px;line-height:28px;vertical-align:top;font-size:11px;color:#444}
a.gnb_my:visited{color:#444}
a.gnb_my:hover, a.gnb_my:active, a.gnb_my:visited, a.gnb_my:focus{text-decoration:none !important}
a.gnb_my:hover .gnb_name{text-decoration:underline}
a.gnb_my .ico_arrow{top:25px;margin-left:8px}
.gnb_my_namebox a.gnb_emp{float:left;display:inline-block;height:28px;margin-left:3px;line-height:28px;font-size:11px;color:#777 !important}
.gnb_my_lyr{display:none;position:absolute;top:26px;right:-8px;padding:9px 5px 4px 4px;width:316px;height:155px;background-position:-2px -1310px;z-index:10}
.gnb_my_lyr.gnb_groupid{height:144px;background-position:-2px -1500px}
.gnb_my_lyr.gnb_groupid .gnb_my_content{height:80px}
.gnb_my_lyr.gnb_groupid.gnb_longid1{height:144px;/*background-position:-2px -1664px*/}
.gnb_my_lyr.gnb_groupid.gnb_longid2{height:144px;background-position:-2px -1828px}
.gnb_my_lyr.gnb_longid1{/*width:318px;*/ /*background-position:-2px -1118px;*/}
.gnb_my_lyr.gnb_longid2{width:348px;background-position:-2px -926px}
.gnb_my_li .gnb_my_content{zoom:1;height:91px;padding:15px 0 10px 15px}
.gnb_my_li .gnb_my_content:after{display:block;clear:both;content:''}
.gnb_my_li .gnb_my_content .gnb_img_area{float:left;position:relative;display:block;width:80px;margin: 1px 0 0 1px;}
.gnb_my_li .gnb_my_content .gnb_img_area img{vertical-align:top}
.gnb_my_li .gnb_my_content .gnb_mask{position:absolute;top:0;left:0;display:block;width:80px;height:80px;background-position:-70px -60px}
.gnb_my_li .gnb_my_content .gnb_change{position:absolute;bottom:-2px;left:-2px;display:block;width:28px;height:28px;background-position:-140px 0px}
.gnb_my_li .gnb_my_content .gnb_change:hover{background-position:-140px -30px}
.gnb_my_li .gnb_my_content .gnb_txt_area{float:left;width:210px;margin:0 0 0 10px}
.gnb_longid1 .gnb_my_content .gnb_txt_area{/* width:210px; */}
.gnb_longid2 .gnb_my_content .gnb_txt_area{width:235px}
.gnb_my_li .gnb_my_content .gnb_account{margin-bottom:3px 0 1px;font-size:0}
.gnb_my_li .gnb_my_content .gnb_name{color:#666;font-size:14px}
.gnb_my_li .gnb_my_content .gnb_name a{display:inline-block;vertical-align:top;font-weight:bold;color:#222 !important}
.gnb_my_li .gnb_my_content a.gnb_mail_address{margin-left:1px;font-family:tahoma;color:#666 !important;font-size:12px}
.gnb_my_li .gnb_my_content .gnb_edit_lst{zoom:1;margin-top:7px !important}
.gnb_my_li .gnb_my_content .gnb_edit_lst:after{display:block;clear:both;content:''}
.gnb_my_li .gnb_my_content .gnb_edit_lst li{float:left;padding-left:6px;margin-left:5px;background-position:-290px -25px}
.gnb_my_li .gnb_my_content .gnb_edit_lst li.gnb_info{padding-left:0;margin-left:0;background:none}
.gnb_my_li .gnb_my_content .gnb_edit_lst a{color:#666 !important;letter-spacing:-1px}
.gnb_my_li .gnb_my_content .gnb_membership {display: inline-block;margin-right: 5px;margin-left: 1px;padding-right: 8px;background-position: -287px -403px;}
.gnb_my_li .gnb_my_content .gnb_pay_check{height:16px;margin:7px -4px 0 0 !important}
@media screen and (min-width: 0\0) { .gnb_my_li .gnb_my_content .gnb_pay_check{margin-top:17px} }
.gnb_my_li .gnb_my_content .gnb_pay_check em{display:inline-block;width:16px;height:16px;background-position:-300px -309px;margin:0 4px 0 0;overflow:hidden;font-size:0;line-height:0;vertical-align:top}
.gnb_my_li .gnb_my_content .gnb_pay_check a{font-size:14px;letter-spacing:-1px;line-height:16px;vertical-align:top}
.gnb_my_li .gnb_my_content .gnb_pay_check span{font-weight: bold;}
.gnb_my_li .gnb_my_content .gnb_pay_check strong{font-family:tahoma;letter-spacing:0;vertical-align:top;}
.gnb_my_li .gnb_my_content .gnb_pay_check a, .gnb_my_li .gnb_my_content .gnb_pay_check span, .gnb_my_li .gnb_my_content .gnb_pay_check strong{font-size:12px;color:#222 !important}
#gnb .gnb_my_li .gnb_my_community{clear:both;zoom:1}
#gnb .gnb_my_li .gnb_my_community:after{display:block;clear:both;content:''}
#gnb .gnb_my_li .gnb_my_community a{float:left;width:106px;margin-right: 0;border-right:1px solid #ebebeb}
#gnb .gnb_my_li .gnb_my_community a.gnb_pay{width:102px;border-right:0;line-height:0}
#gnb .gnb_my_li .gnb_my_community a.gnb_pay span{display:inline-block;width:41px;height:16px;background-position:-300px -334px;margin:11px auto 0;font-size:0;line-height:0}
#gnb .gnb_my_li .gnb_my_community a:active, #gnb .gnb_my_li .gnb_my_community a:focus, #gnb .gnb_my_li .gnb_my_community a:visited{text-decoration:none !important}
#gnb .gnb_my_li .gnb_my_community a:hover{text-decoration:underline !important}
#gnb .gnb_my_lyr.gnb_longid1 .gnb_my_community a{/*width:105px;*/}
#gnb .gnb_my_lyr.gnb_longid1 .gnb_my_community a.gnb_pay{/* width:106px;*/}
#gnb .gnb_my_lyr.gnb_longid2 .gnb_my_community a{width:115px}
#gnb .gnb_my_lyr.gnb_longid2 .gnb_my_community a.gnb_pay{width:116px}
#gnb.gnb_one .gnb_my_community a, #gnb.gnb_one_small .gnb_my_community a{margin-right: 0 !important;}
.gnb_notice_li a.gnb_notice{display:block;width:15px;height:17px;padding:7px 9px 4px;text-decoration:none !important}
.gnb_notice_li a.gnb_notice .gnb_ico_num{left:1px;top:0}
.gnb_notice_li a.gnb_notice .gnb_icon{display:block;width:15px;height:17px;background-position:-3px -60px}
.gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-38px -60px;text-decoration:none !important}
.gnb_notice_li .gnb_notice_lyr{display:none;position:absolute;top:26px;right:-7px;width:297px;height:330px;padding:9px 4px 4px;background-position:-2px -584px;z-index:10;overflow:hidden}
.gnb_notice_li .svc_scroll{height:291px;overflow:scroll;overflow-x:hidden;position:relative;zoom:1}
.gnb_notice_li .svc_panel{width:100%;height:330px;overflow:hidden}
.gnb_notice_li .svc_head{position:relative;height:36px;padding-left:15px;line-height:20px;border-bottom:1px solid #eaeaea;zoom:1}
.gnb_notice_li .svc_head .gnb_tit{color:#6b6d70;margin-right:1px;line-height:36px}
.gnb_notice_li .svc_head .task_right{position:absolute;right:8px;top:8px;font-size:0}
.gnb_notice_li .svc_head .task_right button{height:20px;padding:0 6px;margin-left:4px;border:1px solid #ddd;color:#888;background-color:#fff;font-family:'나눔고딕', NanumGothic;font-size:12px;letter-spacing:-1px;line-height:18px;*line-height:16px;overflow:visible}
.gnb_notice_li .svc_list .gnb_btn_remove i, .gnb_notice_li .svc_list .gnb_btn_remove span, .gnb_notice_li .svc_noti .gnb_ico_mail, .gnb_notice_li .svc_blank .svc_msg_box, .gnb_notice_li .svc_blank .gnb_v_guide{display:inline-block;*display:inline;*zoom:1}
.gnb_notice_li .svc_list{margin-top:-1px}
.gnb_notice_li .svc_list li{position:relative;padding:7px 34px 7px 15px;border-top:1px solid #eaeaea;line-height:18px}
.gnb_notice_li .svc_list .gnb_new{background:#ffffd8}
.gnb_notice_li .svc_list .gnb_unread .gnb_subject{color:#444}
.gnb_notice_li .svc_list .gnb_unread .d_cnt{color:#ff630e}
.gnb_notice_li .svc_list .gnb_unread a:hover .gnb_subject, .gnb_notice_li .svc_list .gnb_unread .gnb_unread a:hover .d_cnt{color:#390}
.gnb_notice_li .svc_list .gnb_unread .svc_name{color:#444}
.gnb_notice_li .svc_list a.gnb_list_cover{text-decoration:none !important;display:block;position:relative;zoom:1}
.gnb_notice_li .svc_list a:hover .gnb_subject{text-decoration:underline}
.gnb_notice_li .svc_list .gnb_subject{overflow:hidden;text-overflow:ellipsis;white-space:nowrap;width:100%;color:#adadad}
.gnb_notice_li .svc_list .d_cnt{font-family:tahoma;font-size:10px}
.gnb_notice_li .svc_list .gnb_info{color:#adadad}
.gnb_notice_li .svc_list .svc_name{margin-right:3px;color:#adadad}
.gnb_notice_li .svc_list .cchr{margin-right:3px}
.gnb_notice_li .svc_list .dona{position:absolute;top:8px;right:34px;text-decoration:underline}
.gnb_notice_li .svc_list .dona a{color:#adadad}
.gnb_notice_li .svc_list .dona a:hover{color:#390}
.gnb_notice_li .svc_list .gnb_ico_mail{width:14px;height:15px;font-size:0;line-height:0;color:#fff;vertical-align:top}
.gnb_notice_li .svc_list .gnb_ico_mail.gnb_yes{background-position:-245px -17px}
.gnb_notice_li .svc_list .gnb_ico_mail.gnb_no{background-position:-245px 4px}
.gnb_notice_li .svc_list .gnb_btn_remove{position:absolute;right:4px;top:50%;z-index:100;margin-top:-13px;padding:10px;line-height:6px;font-size:0;background:none !important;border:0 !important}
.gnb_notice_li .svc_list .gnb_btn_remove span, .gnb_notice_li .svc_list .gnb_btn_remove i{display:block !important;width:7px;height:7px;font-size:0;line-height:0;color:transparent;white-space:nowrap;overflow:hidden;vertical-align:top;background-position:-175px 0}
.gnb_notice_li .svc_blank{position:absolute;top:104px;left:0;width:100%;white-space:nowrap;height:100px;font-size:0;text-align:center}
.gnb_notice_li .svc_blank .svc_msg_box{white-space:normal;font-size:12px;width:100%}
.gnb_notice_li .svc_blank .gnb_tit{display:block;color:#2f3743;font-size:14px;margin:0 0 15px}
.gnb_notice_li .svc_blank .gnb_tit strong{font-weight:normal;color:#390}
.gnb_notice_li .svc_blank .gnb_desc{line-height:19px;color:#2f3743;margin-bottom:7px}
.gnb_notice_li .svc_blank .gnb_desc a, .gnb_notice_li .svc_blank .gnb_link{color:#390;text-decoration:underline}
.gnb_notice_li .svc_blank .gnb_v_guide{vertical-align:middle;height:100%;width:0}
.gnb_notice_li .svc_blank .gnb_link_wrap{text-align:center}
.gnb_notice_li .svc_blank .gnb_link_wrap .gnb_link{display:block;width:40px;margin:0 auto !important;text-align:center}
.gnb_notice_li .svc_loading{background:url(https://ssl.pstatic.net/static/www/2014/loading.gif) no-repeat #fff center center;position:absolute;top:33px;left:0;width:100%;height:245px}
.gnb_notice_li .gnb_error{position:absolute;top:81px;left:2px;width:100%;color:#444;text-align:center}
.gnb_notice_li .gnb_error .gnb_ico_error{display:inline-block;width:57px;height:57px;background-position:-280px -190px}
.gnb_notice_li .gnb_error .gnb_tit{font-size:14px;margin:15px 0 11px}
.gnb_notice_li .gnb_error .gnb_desc{margin-bottom:13px;line-height:18px}
.gnb_notice_li .gnb_error .gnb_link{text-decoration:underline}
.gnb_ly_alert{position:absolute;top:110px;left:13px;background-color:#fff;border:1px solid #b7b9bc;width:260px;padding:34px 0 20px;zoom:1;z-index:100}
.gnb_ly_alert .gnb_msg{text-align:center;line-height:17px;margin-bottom:14px;color:#2f3743}
.gnb_.ly_alert .gnb_btn_close{position:absolute;right:2px;top:0;*overflow:visible}
.gnb_ly_alert .gnb_btns{text-align:center}
.gnb_ly_alert .gnb_btns button{height:27px;line-height:27px;*line-height:22px;font-weight:bold;font-size:12px;padding:0 8px;color:#2f3743;border:1px solid #ddd;background-color:white}
.gnb_ly_alert .gnb_btns button:first-child{margin-right:4px}
.gnb_ly_alert .gnb_btn_close{position:absolute;right:2px;top:0;width:35px;border:0;background:none;cursor:pointer;border-radius:0;padding:10px}
.gnb_ly_alert .gnb_btn_close i{display:block;width:15px;height:15px;font:0/0 a;color:transparent;white-space:nowrap;overflow:hidden;vertical-align:top;background-position:-240px -60px}
.mail_li a.gnb_mail{display:block;width:20px;height:15px;padding:7px 9px 6px;text-decoration:none !important}
.mail_li a.gnb_mail .gnb_icon{display:block;width:20px;height:15px;background-position:0px -95px}
.mail_li a.gnb_mail:hover .gnb_icon{background-position:-35px -95px;text-decoration:none !important}
.mail_li .gnb_ico_num{left:6px;top:0}
.gnb_service_li{margin-right:0}
.gnb_service_li a.gnb_service{display:block;width:16px;height:16px;padding:7px 9px 5px}
.gnb_service_li a.gnb_service .gnb_icon{display:block;width:16px;height:16px;background-position:-2px -130px}
.gnb_service_li a.gnb_service:hover .gnb_icon{background-position:-37px -130px;text-decoration:none !important}
.gnb_service_li .gnb_service_lyr{display:none;position:absolute;top:27px;right:-7px;z-index:10}
.gnb_favorite_search{width:301px;letter-spacing:-1px}
.gnb_response .gnb_favorite_search{display:none}
.gnb_favorite_area{height:93px;padding:8px 4px 0;background-position:0 0}
.gnb_favorite_lstwrp{position:relative;padding:22px 1px 15px 15px;border-bottom:1px solid #ebebeb}
.gnb_favorite_lstwrp .gnb_my_interface{top:3px !important;right:3px !important}
.gnb_first_visit{position:absolute;top:0;left:0;width:293px;height:92px;background-position:0 -310px;z-index:200}
.gnb_first_visit .gnb_close{position:absolute;top:0;right:0;display:block;width:32px;height:32px}
.gnb_favorite_lst{zoom:1}
.gnb_favorite_lst:after{display:block;clear:both;content:''}
.gnb_favorite_lst li{float:left;width:65px;text-align:center;white-space:nowrap}
.gnb_favorite_lst a{display:inline-block;text-align:center;font-weight:bold}
.gnb_favorite_lst .gnb_add a{display:block;test-align:center;}
.gnb_favorite_lst .gnb_add a span.ic_add{display:block;width:36px;height:36px;margin:0 auto 4px;background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);background-position: 0px 0px;background-repeat: no-repeat;width: 36px;height: 36px;vertical-align: top;}
.gnb_favorite_lst .gnb_add a:hover span.ic_add{background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);background-position: -42px 0px;background-repeat: no-repeat;width: 36px;height: 36px;vertical-align: top;}
.gnb_favorite_lst img{display:block;margin:0 auto 4px;vertical-align:top}
.gnb_search_area{position:relative;z-index:200;padding:18px 4px 17px;background-position:-301px 0;background-repeat:repeat-y}
.gnb_search_box{position:relative;z-index:101;margin:0 12px 16px 0;padding-left:10px;display:block;width:270px;height:35px;background-position:10px -190px}
.gnb_search_box.over{background-position:10px -230px}
.gnb_search_box.fcs{background-position:10px -270px}
.gnb_search_box.fcs input{width:200px;font-size:16px;font-weight:bold;color:#444;outline:0}
.gnb_search_box input{float:left;display:block;width:210px;height:22px;margin-top:6px;padding-left:10px;font-family:'나눔고딕',NamumGothic;letter-spacing:-1px;color:#adadad;font-size:13px;border:0;line-height:22px;background:transparent}
.gnb_search_box .gnb_del_txt{position:absolute;top:8px;right:32px;display:block;width:17px;height:17px;background-position:-190px 0px}
.gnb_search_box .gnb_del_txt:hover{background-position:-190px -20px}
.gnb_search_box .gnb_pop_input{position:absolute;top:34px;left:10px;width:268px;height:170px;*height:172px;border:1px solid #cbc5c5;border-top:0;background:#fff;overflow-x:hidden;overflow-y:scroll;z-index:110}
.gnb_search_box .gnb_pop_lst{padding:4px 0 2px}
.gnb_search_box .gnb_pop_lst a{display:block;padding:6px 0 6px 10px;font-weight:bold}
.gnb_search_box .gnb_pop_lst .on{background-color:#f5f5f5}
.gnb_search_lstwrp{zoom:1;height:118px;padding-left:12px}
.gnb_search_lstwrp:after{display:block;clear:both;content:''}
.gnb_search_lstwrp .gnb_search_lst{float:left;width:69px;border-left:1px solid #eaeaea}
.gnb_search_lstwrp .gnb_search_lst.gnb_first{width:64px;border:0}
.gnb_search_lstwrp li{padding:12px 0 0 8px}
.gnb_search_lstwrp li.gnb_first{font-weight:bold;padding-top:0}
.gnb_search_lstwrp li a{display:inline-block;vertical-align:top}
.gnb_banner{height:47px;margin:0;padding:0 18px;background-position:-301px 0;background-repeat:repeat-y}
.gnb_banner .gnb_service_event{display:inline-block;border-top:1px solid #ebebeb}
.gnb_linkwrp{padding:0 4px 4px;background-position:-602px 0}
a.gnb_service_all:hover, a.gnb_service_all:visited, a.gnb_service_all:active, a.gnb_service_all:focus{text-decoration:none}
.gnb_svc_more{display:none;position:absolute;top:4px;right:303px;width:589px;overflow:hidden;zoom:1;z-index:1000}
.gnb_svc_more:after{display:block;clear:both;content:''}
.gnb_response .gnb_svc_more{right:2px}
.gnb_bg_top{height:6px;background:url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) no-repeat}
.gnb_bg_btm{position:relative;height:6px;background:url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) no-repeat -1282px 0}
.gnb_svc_more .gnb_svc_hd{position:relative;padding:0 18px 2px 23px;letter-spacing:-1px;background:url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0}
.gnb_svc_more .gnb_svc_hd .gnb_svc_tit{display:block;padding:12px 0 13px;border-bottom:1px solid #ebebeb;font-size:14px;color:#222}
.gnb_svc_more .gnb_svc_hd .link{position:absolute;top:14px;right:19px;font-size:12px;color:#444}
.gnb_svc_more .gnb_svc_hd .link a{color:#444 !important;line-height:16px !important}
.gnb_svc_more .gnb_svc_lstwrp{position:relative;height:283px;overflow:hidden;padding:15px 15px 0 20px;letter-spacing:-1px;background:url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0;zoom:1}
.gnb_svc_more .gnb_svc_lstwrp:after{display:block;clear:both;content:''}
.gnb_svc_more .gnb_svc_lstwrp li{height:15px;margin-bottom:5px;color:#6b6d70;white-space:nowrap;line-height:15px}
.gnb_svc_more .gnb_svc_lstwrp li.gnb_event label{color:#444;font-weight:bold}
.gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic_gnb_new{display:inline-block;width:11px;height:11px;background-position:-215px 0px;margin:2px 0 0 4px;font-size:0;line-height:0;vertical-align:top}
@media screen and (min-width: 0\0) { .gnb_svc_more .gnb_svc_lstwrp li.gnb_event em.ic{margin-top:3px} }
.gnb_svc_more .gnb_svc_lstwrp .gnb_input_check{width:13px;height:13px;margin:2px 3px 0 3px;padding:0;vertical-align:top;-webkit-appearance:checkbox;}
.gnb_svc_more .gnb_svc_lstwrp label{vertical-align:0px}
.gnb_svc_more .gnb_svc_lstwrp .gnb_disabled strong{color:#a8acb0}
.gnb_svc_more .gnb_svc_lstwrp .gnb_disabled li{color:#cbcbcb}
.gnb_svc_more .gnb_svc_lst1{float:left;width:328px;height:280px}
.gnb_svc_more .gnb_svc_lst1 ul{float:left;width:102px;min-height:260px;padding:5px 0 0 10px;border-left:1px solid #eee}
.gnb_svc_more .gnb_svc_lst1 ul.gnb_first{padding-left:0;border:0}
.gnb_svc_more .svc_lst2{float:left;position:relative;width:221px;border:1px solid #eee;background:#fbfbfb;zoom:1}
.gnb_svc_more .svc_lst2:after{display:block;clear:both;content:''}
.gnb_svc_more .svc_spc{float:left;position:relative;width:100px;min-height:254px;padding:9px 0 0 10px}
.gnb_svc_more .svc_spc.gnb_first{border-right:1px solid #eee}
.gnb_svc_more .svc_spc strong{height:20px;color:#2f3743;line-height:16px}
.gnb_svc_more .svc_spc a:visited{color:#2f3743}
.gnb_svc_more .svc_spc ul{padding:8px 0}
.gnb_svc_more .svc_spc li{margin-bottom:0;padding-bottom:5px;color:#848689}
.gnb_svc_more .svc_stroy{width:89px;margin-top:-5px;padding:12px 0 0;border-top:1px solid #eee}
.gnb_svc_more .svc_btns{position:relative;height:33px;overflow:hidden;padding-top:5px;line-height:normal}
.gnb_svc_more .svc_btnwrp{position:relative;*height:39px;background:url(https://ssl.pstatic.net/static/common/gnb/2014/bg_svclyr1_v2.png) repeat-y -641px 0;padding:0 2px 0 4px}
.gnb_svc_more .svc_btnwrp button{display:inline-block;width:60px;height:25px;border:0;vertical-align:top}
.gnb_svc_more .svc_btnwrp .gnb_save{background-position:0 -160px}
.gnb_svc_more .svc_btnwrp .gnb_close{margin-left:1px;background-position:-65px -160px}
.gnb_svc_more .svc_btnwrp .gnb_return{position:absolute;top:5px;left:15px;background-position:-130px -160px}
.gnb_type2 .gnb_notice_li a.gnb_notice .gnb_icon{background-position:-155px -120px}
.gnb_type2 .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-155px -140px}
.gnb_type2 .gnb_service_li .gnb_service .gnb_icon{background-position:-200px -120px}
.gnb_type2 .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-200px -140px}
.gnb_type2 .mail_li a.gnb_mail .gnb_icon{background-position:-175px -120px}
.gnb_type2 .mail_li a.gnb_mail:hover .gnb_icon{background-position:-175px -140px}
.gnb_dark .gnb_my_li .gnb_my .gnb_name, .gnb_dark .gnb_login_li .gnb_btn_login .gnb_txt{color:#fff}
.gnb_dark .gnb_notice_li a.gnb_notice .gnb_icon{background-position:-220px -140px}
.gnb_dark .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-220px -120px}
.gnb_dark .mail_li a.gnb_mail .gnb_icon{background-position:-238px -141px}
.gnb_dark .mail_li a.gnb_mail:hover .gnb_icon{background-position:-238px -121px}
.gnb_dark .gnb_service_li .gnb_service .gnb_icon{background-position:-261px -140px}
.gnb_dark .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-261px -120px}
.gnb_dark_type2 .gnb_my_li .gnb_my .gnb_name, .gnb_dark_type2 .gnb_login_li .gnb_btn_login .gnb_txt{color:#fff}
.gnb_dark_type2 .gnb_notice_li a.gnb_notice .gnb_icon{background-position:-220px -120px}
.gnb_dark_type2 .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-220px -140px}
.gnb_dark_type2 .mail_li a.gnb_mail .gnb_icon{background-position:-238px -121px}
.gnb_dark_type2 .mail_li a.gnb_mail:hover .gnb_icon{background-position:-238px -141px}
.gnb_dark_type2 .gnb_service_li .gnb_service .gnb_icon{background-position:-261px -120px}
.gnb_dark_type2 .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-261px -140px;}
.gnb_dark .gnb_notice_li a.gnb_notice, .gnb_dark_type2 .gnb_notice_li a.gnb_notice {width: 17px;height: 19px;padding: 6px 8px 3px;}
.gnb_dark .gnb_notice_li a.gnb_notice .gnb_icon, .gnb_dark_type2 .gnb_notice_li a.gnb_notice .gnb_icon {width: 17px;height: 19px;}
.gnb_dark .mail_li a.gnb_mail, .gnb_dark_type2 .mail_li a.gnb_mail {width: 22px;height: 16px;padding: 7px 8px 4px;}
.gnb_dark .mail_li a.gnb_mail .gnb_icon, .gnb_dark_type2 .mail_li a.gnb_mail .gnb_icon {width: 22px;height: 16px;}
.gnb_dark .gnb_service_li a.gnb_service, .gnb_dark_type2 .gnb_service_li a.gnb_service {width: 18px;height: 18px;padding: 6px 8px 4px;}
.gnb_dark .gnb_service_li .gnb_service .gnb_icon, .gnb_dark_type2 .gnb_service_li .gnb_service .gnb_icon {width: 18px;height: 18px;}
#gnb.gnb_one .gnb_my_li .gnb_my .gnb_name, #gnb.gnb_one_small .gnb_my_li .gnb_my .gnb_name, #gnb.gnb_one .gnb_login_li .gnb_btn_login .gnb_txt, #gnb.gnb_one_small .gnb_login_li .gnb_btn_login .gnb_txt{color:#fff}
#gnb.gnb_one .gnb_login_li, #gnb.gnb_one_small .gnb_login_li {height: 28px;}
#gnb.gnb_one .gnb_login_li .gnb_btn_login, #gnb.gnb_one_small .gnb_login_li .gnb_btn_login, #gnb.gnb_one .gnb_login_li .gnb_bg, #gnb.gnb_one_small .gnb_login_li .gnb_bg, #gnb.gnb_one .gnb_login_li .gnb_bdr, #gnb.gnb_one_small .gnb_login_li .gnb_bdr, #gnb.gnb_one .gnb_login_li .gnb_txt, #gnb.gnb_one_small .gnb_login_li .gnb_txt {width: 53px;height: 23px;}
#gnb.gnb_one .gnb_login_li .gnb_btn_login .gnb_txt, #gnb.gnb_one_small .gnb_login_li .gnb_btn_login .gnb_txt {top: -1px;width: 53px;height: 23px;line-height: 28px;font-size: 11px;}
#gnb.gnb_one .gnb_login_li, #gnb.gnb_one_small .gnb_login_li, #gnb.gnb_one .gnb_my_li, #gnb.gnb_one_small .gnb_my_li, #gnb.gnb_one .gnb_notice_li, #gnb.gnb_one_small .gnb_notice_li, #gnb.gnb_one .mail_li, #gnb.gnb_one_small .mail_li, #gnb.gnb_one .gnb_service_li, #gnb.gnb_one_small .gnb_service_li{margin-right: 0;margin-left: 0; background: url(https://ssl.pstatic.net/static/common/gnb/bg_one_line.png) repeat-y right 0;}
#gnb.gnb_one .gnb_login_li a, #gnb.gnb_one_small .gnb_login_li a, #gnb.gnb_one .gnb_my_li a, #gnb.gnb_one_small .gnb_my_li a, #gnb.gnb_one .gnb_notice_li a, #gnb.gnb_one_small .gnb_notice_li a, #gnb.gnb_one .mail_li a, #gnb.gnb_one_small .mail_li a, #gnb.gnb_one .gnb_service_li a, #gnb.gnb_one_small .gnb_service_li a {margin-right: 1px;}
#gnb.gnb_one .gnb_login_li.hover .gnb_service, #gnb.gnb_one_small .gnb_login_li.hover .gnb_service, #gnb.gnb_one .gnb_login_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_login_li.hover .gnb_notice, #gnb.gnb_one .gnb_login_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_login_li.hover .gnb_mail, #gnb.gnb_one .gnb_login_li.hover .gnb_service, #gnb.gnb_one_small .gnb_login_li.hover .gnb_service, #gnb.gnb_one .gnb_my_li.hover .gnb_service, #gnb.gnb_one_small .gnb_my_li.hover .gnb_service, #gnb.gnb_one .gnb_my_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_my_li.hover .gnb_notice, #gnb.gnb_one .gnb_my_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_my_li.hover .gnb_mail, #gnb.gnb_one .gnb_my_li.hover .gnb_service, #gnb.gnb_one_small .gnb_my_li.hover .gnb_service, #gnb.gnb_one .gnb_notice_li.hover .gnb_service, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_service, #gnb.gnb_one .gnb_notice_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_notice, #gnb.gnb_one .gnb_notice_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_mail, #gnb.gnb_one .gnb_notice_li.hover .gnb_service, #gnb.gnb_one_small .gnb_notice_li.hover .gnb_service, #gnb.gnb_one .mail_li.hover .gnb_service, #gnb.gnb_one_small .mail_li.hover .gnb_service, #gnb.gnb_one .mail_li.hover .gnb_notice, #gnb.gnb_one_small .mail_li.hover .gnb_notice, #gnb.gnb_one .mail_li.hover .gnb_mail, #gnb.gnb_one_small .mail_li.hover .gnb_mail, #gnb.gnb_one .mail_li.hover .gnb_service, #gnb.gnb_one_small .mail_li.hover .gnb_service, #gnb.gnb_one .gnb_service_li.hover .gnb_service, #gnb.gnb_one_small .gnb_service_li.hover .gnb_service, #gnb.gnb_one .gnb_service_li.hover .gnb_notice, #gnb.gnb_one_small .gnb_service_li.hover .gnb_notice, #gnb.gnb_one .gnb_service_li.hover .gnb_mail, #gnb.gnb_one_small .gnb_service_li.hover .gnb_mail, #gnb.gnb_one .gnb_service_li.hover .gnb_service, #gnb.gnb_one_small .gnb_service_li.hover .gnb_service {background: url(https://ssl.pstatic.net/static/common/gnb/bg_one_hover.png) repeat 0 0;}
#gnb.gnb_one .gnb_my_li .gnb_my .gnb_name, #gnb.gnb_one_small .gnb_my_li .gnb_my .gnb_name{margin:0 0 0 1px;}
#gnb.gnb_one .gnb_notice_li a.gnb_notice, #gnb.gnb_one_small .gnb_notice_li a.gnb_notice{width:17px;height:19px}
#gnb.gnb_one .gnb_notice_li a.gnb_notice .gnb_icon, #gnb.gnb_one_small .gnb_notice_li a.gnb_notice .gnb_icon{width:17px;height:19px;background-position:-284px -119px}
#gnb.gnb_one .gnb_notice_li a.gnb_notice:hover .gnb_icon, #gnb.gnb_one_small .gnb_notice_li a.gnb_notice:hover .gnb_icon{background-position:-284px -119px}
#gnb.gnb_one .mail_li a.gnb_mail, #gnb.gnb_one_small .mail_li a.gnb_mail{width:21px;height:17px}
#gnb.gnb_one .mail_li a.gnb_mail .gnb_icon, #gnb.gnb_one_small .mail_li a.gnb_mail .gnb_icon{width:21px;height:17px;background-position:-302px -120px}
#gnb.gnb_one .mail_li a.gnb_mail:hover .gnb_icon, #gnb.gnb_one_small .mail_li a.gnb_mail:hover .gnb_icon{background-position:-302px -120px}
#gnb.gnb_one .gnb_service_li .gnb_service, #gnb.gnb_one_small .gnb_service_li .gnb_service{width:17px;height:17px}
#gnb.gnb_one .gnb_service_li .gnb_service .gnb_icon, #gnb.gnb_one_small .gnb_service_li .gnb_service .gnb_icon{width:17px;height:17px;background-position:-324px -120px}
#gnb.gnb_one .gnb_service_li .gnb_service:hover .gnb_icon, #gnb.gnb_one_small .gnb_service_li .gnb_service:hover .gnb_icon{background-position:-324px -120px}
#gnb.gnb_one .gnb_my_lyr, #gnb.gnb_one_small .gnb_my_lyr, #gnb.gnb_one .gnb_notice_lyr, #gnb.gnb_one_small .gnb_notice_lyr, #gnb.gnb_one .gnb_service_lyr, #gnb.gnb_one_small .gnb_service_lyr {right: 7px;}
#gnb.gnb_one .gnb_ico_num, #gnb.gnb_one_small .gnb_ico_num{width:34px;top:10px;right:3px;left:auto;vertical-align:top}
#gnb.gnb_one .gnb_ico_num .gnb_ico_new, #gnb.gnb_one_small .gnb_ico_num .gnb_ico_new{vertical-align:top;height:13px;background-position:-332px -60px;}
#gnb.gnb_one .gnb_ico_num .gnb_count, #gnb.gnb_one_small .gnb_ico_num .gnb_count {height: 13px;padding: 0 6px 0 2px;background-position: 100% -60px;font-size: 10px;font-weight: normal;}
#gnb.gnb_one .gnb_ico_num .plus, #gnb.gnb_one_small .gnb_ico_num .plus{margin:1px 0 0 2px}
#gnb.gnb_one .ico_arrow{top:48px}
#gnb.gnb_one .gnb_my_lyr, #gnb.gnb_one .gnb_notice_lyr{top:47px}
#gnb.gnb_one .gnb_service_lyr{top:48px;}
#gnb.gnb_one .gnb_login_li{padding:16px 21px 10px 1px;}
#gnb.gnb_one .gnb_my_li{padding:12px 20px 12px 2px}
#gnb.gnb_one .gnb_my_li .ico_arrow{top:34px}
#gnb.gnb_one .gnb_notice_li a.gnb_notice{padding:18px 19px 17px 19px}
#gnb.gnb_one .mail_li a.gnb_mail{padding:19px 17px 18px 17px}
#gnb.gnb_one .gnb_service_li .gnb_service{padding:19px 19px 18px 19px}
#gnb.gnb_one_small .ico_arrow{top:33px}
#gnb.gnb_one_small .gnb_my_lyr, #gnb.gnb_one_small .gnb_notice_lyr{top:32px}
#gnb.gnb_one_small .gnb_service_lyr{top:33px}
#gnb.gnb_one_small .gnb_login_li{padding:7px 12px 4px 2px}
#gnb.gnb_one_small .gnb_my_li{padding:5px 20px 4px 2px}
#gnb.gnb_one_small .gnb_my_li .ico_arrow{top:27px}
#gnb.gnb_one_small .gnb_notice_li a.gnb_notice{padding:10px 11px 10px 12px}
#gnb.gnb_one_small .mail_li a.gnb_mail{padding:11px 10px 11px 9px}
#gnb.gnb_one_small .gnb_service_li .gnb_service{padding:11px 12px 11px 11px}
#gnb.gnb_one_small .gnb_ico_num{top:5px;right:6px;width:24px}
#gnb.gnb_one_flat .gnb_login_li,
#gnb.gnb_one_flat .gnb_my_li,
#gnb.gnb_one_flat .gnb_notice_li,
#gnb.gnb_one_flat .mail_li,
#gnb.gnb_one_flat .gnb_service_li {border-color: #e0e0e0;}
#gnb.gnb_one_flat .gnb_notice_li.hover,
#gnb.gnb_one_flat .mail_li.hover,
#gnb.gnb_one_flat .gnb_service_li.hover {background-color: rgba(0, 0, 0, 0.04);}
#gnb.gnb_one_flat .gnb_service_li .gnb_service .gnb_icon,
#gnb.gnb_one_flat .gnb_service_li .gnb_service:hover .gnb_icon {background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);background-position: -84px -24px;background-repeat: no-repeat; width: 16px;height: 16px;vertical-align: top; margin: 0 1px;}
#gnb.gnb_one_flat .mail_li a.gnb_mail .gnb_icon,
#gnb.gnb_one_flat .mail_li a.gnb_mail:hover .gnb_icon {background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);background-position: 0px -42px;background-repeat: no-repeat;width: 20px;height: 16px;vertical-align: top;margin: 0 1px;}
#gnb.gnb_one_flat .gnb_notice_li a.gnb_notice .gnb_icon,
#gnb.gnb_one_flat .gnb_notice_li a.gnb_notice:hover .gnb_icon {background-image: url(https://ssl.pstatic.net/static/common/gnb/one/sp_gnb_4b16e6.png);background-position: -84px 0px;background-repeat: no-repeat;width: 16px;height: 18px;vertical-align: top;margin: 0 1px;}
#gnb.gnb_one_flat .gnb_my_li .gnb_my .gnb_name,
#gnb.gnb_one_flat .gnb_login_li .gnb_btn_login .gnb_txt {color: #666;}

.mymenu > li:hover .submenu { height:250px; transition-duration:1s; }
</style>

<script src="https://ssl.pstatic.net/static.gn/js/clickcrD.js" id="gnb_clickcrD" charset="utf-8"></script>
<script type="text/javascript" src="https://ssl.pstatic.net/static.kin/static/kin-web-pc/20220511163235/js/min/message/MessageManager.js"></script><script>
	
	Array.prototype.forEach||(Array.prototype.forEach=function(r,o){if(null==this)throw new TypeError("Array.prototype.forEach called on null or undefined");var t,n,e=Object(this),a=e.length>>>0;if("function"!=typeof r)throw new TypeError(r+" is not a function");for(arguments.length>1&&(t=o),n=0;n<a;){var f;n in e&&(f=e[n],r.call(t,f,n,e)),n++}});
	Array.from||(Array.from=function(){var r;try{r=Symbol.iterator?Symbol.iterator:"Symbol(Symbol.iterator)"}catch(t){r="Symbol(Symbol.iterator)"}var t=Object.prototype.toString,n=function(r){return"function"==typeof r||"[object Function]"===t.call(r)},o=Math.pow(2,53)-1,e=function(r){var t=function(r){var t=Number(r);return isNaN(t)?0:0!==t&&isFinite(t)?(t>0?1:-1)*Math.floor(Math.abs(t)):t}(r);return Math.min(Math.max(t,0),o)};return function(t){var o=Object(t),a=n(o[r]);if(null==t&&!a)throw new TypeError("Array.from requires an array-like object or iterator - not null or undefined");var i,u=arguments.length>1?arguments[1]:void 0;if(void 0!==u){if(!n(u))throw new TypeError("Array.from: when provided, the second argument must be a function");arguments.length>2&&(i=arguments[2])}var f=e(o.length);return function(r,t,n,o,e,a){for(var i=0;i<n||e;){var u=o(i),f=e?u.value:u;if(e&&u.done)return t;t[i]=a?void 0===r?a(f,i):a.call(r,f,i):f,i+=1}if(e)throw new TypeError("Array.from: provided arrayLike or iterator has length more then 2 ** 52 - 1");return t.length=n,t}(i,n(this)?Object(new this(f)):new Array(f),f,function(t,n){var o=t&&n[r]();return function(r){return t?o.next():n[r]}}(a,o),a,u)}}());
	Object.defineProperty(Element.prototype,"dataset",{get:function(){for(var t=this.attributes,e={},r=0;r<t.length;r++){var n=t[r];if(n&&n.name&&/^data-\w[\w-]*$/.test(n.name)){var a=n.name,i=n.value,u=a.substr(5).replace(/-./g,function(t){return t.charAt(1).toUpperCase()});Object.defineProperty(e,u,{enumerable:!0,get:function(){return this.value}.bind({value:i||""}),set:function(t,e){void 0!==e?this.setAttribute(t,e):this.removeAttribute(t)}.bind(this,a)})}}return e}});

	
	Element.prototype.matches||(Element.prototype.matches=Element.prototype.msMatchesSelector||Element.prototype.webkitMatchesSelector);
	Element.prototype.closest||(Element.prototype.closest=function(e){var t=this;do{if(Element.prototype.matches.call(t,e))return t;t=t.parentElement||t.parentNode}while(null!==t&&1===t.nodeType);return null});
</script><script></script>

</head>


<body>

<div id="wrap" class="wrap wrap_home"> 

<div class="header_wrap">

	
	<div class="header_gnb">
		<div class="header_gnb_inner">
			<div class="header_gnb__cell">
				<h1 class="header_logo">
					<a class="logo_naver" href="http://www.naver.com" title="나의 경쟁력, 네이버" onclick="nhn.Kin.Utility.nClicks('STA.naverlogo', '', '', event);"><span class="logo_kin sp_common">NAVER</span></a>
				</h1>
				<div class="header_search">
					<h2 class="logo_wrap">
						<a href="/" onclick="nhn.Kin.Utility.nClicks('STA.kin', '', '', event);" class="sp_gnb icon_logo_kin">지식iN</a>
						
					</h2>
					<h3 class="blind">검색영역</h3>
					<form name="topSearch" id="topSearch" method="get" action="/search/list.naver" onsubmit="return checkQuery();">
						<fieldset>
							<legend>지식인 검색</legend>
							<div class="search_area">
								
								<input role="combobox" type="text" name="query" onclick="nhn.Kin.Utility.nClicks('STA.search', '', '', event);return false;" class="search_input" accesskey="s" aria-haspopup="listbox" aria-expanded="false" aria-autocomplete="list" aria-controls="atcmpList" title="검색어 입력" maxlength="255" autocomplete="off" id="nx_query" value="">
								<a href="#" class="search_auto"> <!-- 여기에 조건 걸어서 검색한 검색어 띄워주기 -->
									<span class="sp_gnb icon_arrow" id="triangleBtn">자동완성 열기</span>
								</a>
								<div>
									<iframe id="autoFrame" class="auto_complete_box" title="검색어 자동완성" frameborder="0" width="290" height="193px" marginwidth="0" marginheight="0" scrolling="no" src="/static/reatcmp.html?v=4.1" style="display: none;"></iframe>
								</div>
								<a href="#" onclick="return checkQuery();" class="search_btn"><span class="sp_gnb icon_search">지식iN 검색</span></a>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
			<div class="header_gnb__cell">
				<div class="gnb_wrap">
					<div class="gnb_eXpertLogo">
						<a href="https://expert.naver.com" target="_blank" id="bannerLink" class="link" aria-haspopup="true" aria-expanded="true" aria-controls="bannerExpert">
							<span class="logo"><span class="blind">eXpert</span></span>
						</a>
					</div>

					
					<div class="gnb_chat _chatButtonArea">
						<button id="chatButton" type="button" class="button_chat" aria-haspopup="true" aria-expanded="false" aria-pressed="false" aria-controls="chatMenu">
							<span class="blind">상담 목록</span>
							<span class="icon_chat"></span>
							<i class="icon_new" style="display: none"><span class="blind">NEW</span></i>
						</button>
						<div role="menu" id="chatMenu" class="chat_popup" aria-hidden="true">
							<a href="/expert/center/counseling/list" role="menuitem" class="link_chat" target="_blank">
								판매한 상품
								<i class="_counselorNewIcon icon_new" style="display: none"><span class="blind">NEW</span></i>
							</a>
							<a href="/counseling/purchases" role="menuitem" class="link_chat" target="_blank">
								구매한 상품
								<i class="_counseleeNewIcon icon_new" style="display: none"><span class="blind">NEW</span></i>
							</a>
						</div>
					</div>

					
					<div class="gnb_common_area">
						<div id="gnb" class="">
						<strong class="blind">사용자 링크</strong>
						
						<ul class="gnb_lst" class="mymenu" style="display: block;">
							<%if(id == "" || id == null) { %>
							<li class="gnb_login_li" id="gnb_login_layer" style="display: inline-block;">
								<a class="gnb_btn_login" href="/project_6/member/loginForm.jsp" id="gnb_login_button">
									<span class="gnb_bg"></span>
									<span class="gnb_bdr"></span>
									<span class="gnb_txt">로그인</span>
								</a>
							</li>
							<li class="gnb_reg_li" id="gnb_reg_layer" style="display: inline-block;">
								<a class="gnb_btn_reg" href="/project_6/member/agreeForm.jsp" id="gnb_reg_button">
									<span class="gnb_bg2"></span>
									<span class="gnb_bdr2"></span>
									<span class="gnb_txt2">회원가입</span>
								</a>
							</li>
							<%}else { %>
						
						<!-- 로그인 성공 시 보여주는 프로필 이미지와 닉네임	 -->
						<li class="gnb_my_li" id="gnb_my_layer" style="display: inline-block;">
							<div class="gnb_my_namebox" id="gnb_my_namebox">
								<a href="javascript:;" class="gnb_my" onclick="gnbUserLayer.clickToggle(); return false;">
								<!-- 이미지 경로 -->
								<img id="gnb_profile_img" src="#" onerror="this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAMAAAC5zwKfAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAADNQTFRF8PDw5ubm+vr6+/v76enp+Pj47e3t5+fn9/f37Ozs9PT08vLy7+/v6urq9fX15OTk/f39pqwodgAAAQNJREFUeNrs11EOgyAMgOEWUAF19f6n3cMeplJHoSZbsv4H+DIWaCNsNwcGGmiggQZ+D/Q5reuasr8H9ID0CsHfALpA74JTgwPSPnRK0Ac6FrwOXOjcogIdlTkNuDDgogGRAVEBDsQ19IMzC879ILAgGNgAZhbMP3RttonxJs1Lgea/sDYcyreHXjW+oPUHVid2MWC1K+A0sqsDW7CksGmlCNZoFt9pIfjYgY8bwMMexUENQuOtqYCxfHtT7AddYodDcp0gIPEh9IBxous+nBuaTis4Nw/OSLVwloN+JEmjGJR5FyIDRpIWZeAoBkcZGMRgkIEkz0D7GjXQQAMN/GvwKcAAEGGHJh0mmaAAAAAASUVORK5CYII='" width="26" height="26" alt="내 프로필 이미지" style="display: inline-block;">
								<span id="gnb_profile_filter_mask" class="filter_mask" style="display: inline-block;"></span> 
								<%if(session.getAttribute("nickname") == null) {%>
								<span class="gnb_name" id="gnb_name1"><%=session.getAttribute("id") %></span>
								<%}else{ %>
								<span class="gnb_name" id="gnb_name1"><%=session.getAttribute("nickname") %></span>
								<%} %>
								<em class="blind">내정보 보기</em>
								<span class="ico_arrow"></span>
								</a>
								<a href="#" class="gnb_emp" id="gnb_emp" style="display: none;">(임직원혜택)</a>
							</div>
						<%-- <div class="gnb_my_lyr" id="gnb_my_lyr">
							<div class="gnb_my_content">
								<div class="gnb_img_area">
									<span class="gnb_mask"></span>
									<img src="https://phinf.pstatic.net/contact/20210722_202/1626965137370y8IiD_PNG/1385859094559.png?type=s160" onerror="this.src='data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFAAAABQCAMAAAC5zwKfAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAADNQTFRF8PDw5ubm+vr6+/v76enp+Pj47e3t5+fn9/f37Ozs9PT08vLy7+/v6urq9fX15OTk/f39pqwodgAAAQNJREFUeNrs11EOgyAMgOEWUAF19f6n3cMeplJHoSZbsv4H+DIWaCNsNwcGGmiggQZ+D/Q5reuasr8H9ID0CsHfALpA74JTgwPSPnRK0Ac6FrwOXOjcogIdlTkNuDDgogGRAVEBDsQ19IMzC879ILAgGNgAZhbMP3RttonxJs1Lgea/sDYcyreHXjW+oPUHVid2MWC1K+A0sqsDW7CksGmlCNZoFt9pIfjYgY8bwMMexUENQuOtqYCxfHtT7AddYodDcp0gIPEh9IBxous+nBuaTis4Nw/OSLVwloN+JEmjGJR5FyIDRpIWZeAoBkcZGMRgkIEkz0D7GjXQQAMN/GvwKcAAEGGHJh0mmaAAAAAASUVORK5CYII='" width="80" height="80" alt="프로필 이미지">
									<a href="https://nid.naver.com/user2/api/naverProfile?m=checkIdType" class="gnb_change">
									<span class="blind">프로필 사진 변경</span>
									</a>
									</div>
									<div class="gnb_txt_area">
									<p class="gnb_account">
									<span class="gnb_name" id="gnb_name2">
									<a class="gnb_nick" href="https://nid.naver.com/user2/api/naverProfile?m=checkIdType">아몬드</a>님</span>
									<a class="gnb_btn_login" href="https://nid.naver.com/nidlogin.logout?returl=https%3A%2F%2Fnid.naver.com%2Fnidlogin.logout" id="gnb_logout_button">
									<span class="gnb_bg"></span>
									<span class="gnb_bdr"></span>
									<span class="gnb_txt">로그아웃</span>
									</a>
									</p>
									<a href="https://mail.naver.com" class="gnb_mail_address"><%=session.getAttribute("email") %></a>
						
								</div>
							</div>
						</div> --%>
						<ul class="submenu">
							<!-- <li><a href="/project_6/main/profileForm.jsp"><img src="#">프로필</a></li> -->
							<li><a href="/project_6/member/logout.jsp">로그아웃</a></li>
						</ul>
						</li>
						<%} %>
						</ul>
						</div>
					</div>
					
				</div>

				
					<div class="header__rolling rolling-notice">
						<i class="icon_speaker"><span class="blind">실시간 공지사항</span></i>
						<ul id="listNotice" class="rolling-notice__list _rolling_banner">
							
								<li class="rolling-notice__item _rollingItem" data-start-time="2021-10-26 00:00:00" style="display: list-item;">
									<a href="https://expert.naver.com/expert/introduction?tab=guide#join" class="rolling-notice__link" onclick="nhn.Kin.Utility.nClicks('STA.event', '', '', event);">
										<i class="icon_new_red _newMark" style="display:none;"><span class="blind">새소식</span></i>
											<span class="text-color--secondary">전문가라면 엑스퍼트로 모십니다.</span>
									</a>
								</li>
							
						</ul>
					</div>
				
			</div>
		</div>
	</div>
	
	<!-- nav -->
	<div class="nav" role="navigation">
		<div class="nav_inner">
			<h3 class="blind">메인 메뉴</h3>
			
			<ul class="nav_list" id="au_lnb" role="menubar">
				<li class="menu" role="presentation">
					<a href="/project_6/main/main.jsp" role="menuitem" class="item" id="au_lnb_home" tabindex="0" onclick="nhn.Kin.Utility.nClicks('LNB.home', '', '', event);" aria-current="page"><em>홈</em></a>
				</li>
				<li class="menu" role="presentation">
					
					<a href="/qna/list.naver" role="menuitem" class="item" aria-haspopup="true" aria-expanded="false" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.qna', '', '', event);"><em>Q&amp;A</em></a>
					<ul class="nav_sub_list _lnbSubMenu" role="menu">
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=11" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '11', '1', event);">교육, 학문</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=1" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '1', '2', event);">컴퓨터통신</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=2" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '2', '3', event);">게임</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=3" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '3', '4', event);">엔터테인먼트, 예술</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=8" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '8', '5', event);">생활</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=7" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '7', '6', event);">건강</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=6" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '6', '7', event);">사회, 정치</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=4" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '4', '8', event);">경제</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=9" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '9', '9', event);">여행</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=10" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '10', '10', event);">스포츠, 레저</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=5" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.kinlayer', '5', '11', event);">쇼핑</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=13" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.jun', '', '', event);">쥬니버Q&amp;A</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=12" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.loc', '', '', event);">지역&amp;플레이스</a></li>
						<li role="presentation" class="sub_menu"><a href="/qna/list.naver?dirId=20" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.talk', '', '', event);">고민Q&amp;A</a></li>
						<li role="presentation" class="sub_menu"><a href="/opendic/index.naver" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.open', '', '', event);">오픈사전</a></li>
					</ul>
				</li>
				<li class="menu" role="presentation">
					<a href="#" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.answer', '', '', event);"><em>답변하기</em></a>
				</li>
				<li class="menu" role="presentation">
					<a href="#" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.donation', '', '', event);"><em>지식기부</em></a>
				</li>
				<li class="menu" role="presentation">
					<a href="#" role="menuitem" tabindex="-1" class="item" id="peopleLnbBtn" onclick="nhn.Kin.Utility.nClicks('LNB.people', '', '', event);"><em>사람들</em></a>
				</li>
				<li class="menu" role="presentation">
					<a href="#" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.best', '', '', event);"><em>베스트</em></a>
				</li>
				<li class="menu" role="presentation">
					<a href="/project_6/hall/index.jsp" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.honor', '', '', event);"><em>명예의전당</em></a>
				</li>
				<li class="menu" role="presentation">
					<span class="lnb_bar">|</span>
					<a href="/project_6/main/profile.jsp" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.profile', '', '', event);"><em>프로필</em></a>
				</li>
				<li class="menu" role="presentation">
					<a href="#" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.partner', '', '', event);"><em>파트너센터</em></a>
				</li>
				
					<li class="menu" role="presentation">
						<a href="#" role="menuitem" class="item" tabindex="-1" onclick="nhn.Kin.Utility.nClicks('LNB.roulette', '', '', event);"><em>룰렛</em></a>
					</li>
				
				
			</ul>
			
				
				
					
					<a href="#" class="nav__button_question _clickcode:LNB.q"role="button"><span class="btn_inner"><i class="sp_gnb icon_pencil"></i>질문하기</span></a>
					
				
			
		</div>
	</div>
</div>
</div>
</body>
</html>