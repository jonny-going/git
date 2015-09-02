<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="S" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta content="always" name="referrer">
<link rel="dns-prefetch" href="//s1.bdstatic.com">
<link rel="dns-prefetch" href="//t1.baidu.com">
<link rel="dns-prefetch" href="//t2.baidu.com">
<link rel="dns-prefetch" href="//t3.baidu.com">
<link rel="dns-prefetch" href="//t10.baidu.com">
<link rel="dns-prefetch" href="//t11.baidu.com">
<link rel="dns-prefetch" href="//t12.baidu.com">
<link rel="dns-prefetch" href="//b1.bdstatic.com">
<title>GO一下，你就知道</title>
<style index="index" id="css_index">
html,body {
	height: 100%
}

html {
	overflow-y: auto
}

#wrapper {
	position: relative;
	_position:;
	min-height: 100%
}

#head {
	padding-bottom: 100px;
	text-align: center;
	*z-index: 1
}

#ftCon {
	height: 100px;
	position: absolute;
	bottom: 44px;
	text-align: center;
	width: 100%;
	margin: 0 auto;
	z-index: 0;
	overflow: hidden
}

#ftConw {
	width: 720px;
	margin: 0 auto
}

body {
	font: 12px arial;
	text-align:;
	background: #fff
}

body,p,form,ul,li {
	margin: 0;
	padding: 0;
	list-style: none
}

body,form,#fm {
	position: relative
}

td {
	text-align: left
}

img {
	border: 0
}

a {
	color: #00c
}

a:active {
	color: #f60
}

.bg {
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_3bfb8e45.png);
	background-repeat: no-repeat;
	_background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_f72fb1cc.gif)
}

.bg_tuiguang_browser {
	width: 16px;
	height: 16px;
	background-position: -600px 0;
	display: inline-block;
	vertical-align: text-bottom;
	font-style: normal;
	overflow: hidden;
	margin-right: 5px
}

.bg_tuiguang_browser_big {
	width: 56px;
	height: 56px;
	position: absolute;
	left: 10px;
	top: 10px;
	background-position: -600px -24px
}

.bg_tuiguang_weishi {
	width: 56px;
	height: 56px;
	position: absolute;
	left: 10px;
	top: 10px;
	background-position: -672px -24px
}

.c-icon {
	display: inline-block;
	width: 14px;
	height: 14px;
	vertical-align: text-bottom; font-style normal;
	overflow: hidden;
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_3bfb8e45.png)
		no-repeat 0 0;
	_background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_f72fb1cc.gif)
}

.c-icon-triangle-down-blue {
	background-position: -480px -168px
}

.c-icon-chevron-unfold2 {
	background-position: -504px -168px
}

#m {
	width: 720px;
	margin: 0 auto
}

#nv a,#nv b,.btn,#lk {
	font-size: 14px
}

input {
	border: 0;
	padding: 0
}

#nv {
	height: 19px;
	font-size: 16px;
	margin: 0 0 4px;
	text-align: left;
	text-indent: 137px
}

.s_btn {
	width: 95px;
	height: 32px;
	padding-top: 2px\9;
	font-size: 14px;
	background-color: #ddd;
	background-position: 0 -48px;
	cursor: pointer
}

.s_btn_h {
	background-position: -240px -48px
}

.s_btn_wr {
	width: 97px;
	height: 34px;
	display: inline-block;
	background-position: -120px -48px;
	*position: relative;
	z-index: 0;
	vertical-align: top
}

#lk {
	margin: 33px 0
}

#lk span {
	font: 14px "宋体"
}

#lm {
	height: 60px;
	line-height: 15px
}

#lh {
	margin: 16px 0 5px;
	word-spacing: 3px
}

#cp,#cp a {
	color: #666
}

#cp .c-icon-icrlogo {
	width: 14px;
	height: 17px;
	display: inline-block;
	overflow: hidden;
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_3bfb8e45.png)
		no-repeat;
	_background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_f72fb1cc.gif);
	background-position: -600px -96px;
	position: relative;
	top: 3px
}

#shouji {
	margin-right: 14px
}

#u {
	display: none
}

#c-tips-container {
	display: none
}

.bdsug {
	position: absolute;
	width: 418px;
	background: #fff;
	display: none;
	border: 1px solid #817f82
}

.bdsug li {
	width: 402px;
	color: #000;
	font: 14px arial;
	line-height: 25px;
	padding: 0 8px;
	position: relative;
	cursor: default
}

.bdsug li.bdsug-s {
	background: #ebebeb
}

.bdsug-store span,.bdsug-store b {
	color: #7a77c8
}

.bdsug-store-del {
	font-size: 12px;
	color: #666;
	text-decoration: underline;
	position: absolute;
	right: 8px;
	top: 0;
	cursor: pointer;
	display: none
}

.bdsug-s .bdsug-store-del {
	display: inline-block
}

.bdsug-ala {
	display: inline-block;
	border-bottom: 1px solid #e6e6e6
}

.bdsug-ala h3 {
	line-height: 14px;
	background: url(//www.baidu.com/img/sug_bd.png) no-repeat left center;
	margin: 6px 0 4px 0;
	font-size: 12px;
	font-weight: normal;
	color: #7b7b7b;
	padding-left: 20px
}

.bdsug-ala p {
	font-size: 14px;
	font-weight: bold;
	padding-left: 20px
}

#wrapper {
	min-width: 810px;
	height: 100%;
	min-height: 630px
}

#head {
	position: relative;
	padding-bottom: 0;
	height: 100%;
	min-height: 630px
}

#head .head_wrapper {
	height: 100%
}

#m {
	position: relative
}

#fm {
	padding-left: 40px;
	top: -37px
}

#lh a {
	margin: 0 10px
}

#lk {
	position: absolute;
	display: none;
	top: 0;
	right: 0
}

#nv {
	position: absolute;
	display: none;
	top: 0;
	right: 0
}

#lm {
	width: 100%;
	margin-top: 60px;
	position: absolute;
	top: 0;
	left: 0
}

#pad-version {
	line-height: 40px
}

.s_ipt_wr.bg,.s_btn_wr.bg,#su.bg {
	background-image: none
}

.s_btn_wr {
	width: auto;
	height: auto;
	border-bottom: 1px solid transparent;
	*border-bottom: 0
}

.s_btn {
	width: 100px;
	height: 36px;
	color: white;
	font-size: 15px;
	letter-spacing: 1px;
	background: #3385ff;
	border-bottom: 1px solid #2d78f4;
	outline: medium;
	*border-bottom: 0;
	-webkit-appearance: none;
	-webkit-border-radius: 0
}

.s_btn.btnhover {
	background: #317ef3;
	border-bottom: 1px solid #2868c8;
	*border-bottom: 0;
	box-shadow: 1px 1px 1px #ccc
}

.s_btn_h {
	background: #3075dc;
	box-shadow: inset 1px 1px 5px #2964bb;
	-webkit-box-shadow: inset 1px 1px 5px #2964bb;
	-moz-box-shadow: inset 1px 1px 5px #2964bb;
	-o-box-shadow: inset 1px 1px 5px #2964bb
}

#fm .bdsug {
	top: 35px
}

.bdsug {
	width: 538px;
	border-color: #ccc;
	box-shadow: 1px 1px 3px #ededed;
	-webkit-box-shadow: 1px 1px 3px #ededed;
	-moz-box-shadow: 1px 1px 3px #ededed;
	-o-box-shadow: 1px 1px 3px #ededed
}

.bdsug.bdsugbg {
	background-repeat: no-repeat;
	background-position: 100% 100%;
	background-size: 100px 110px;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/sugbg_6a9201c2.png);
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/sugbg_d24a0811.gif)
		\9
}

.bdsug li {
	width: 522px
}

.bdsug li.bdsug-s {
	background: #f0f0f0
}

.bdsug-ala h3 {
	margin: 8px 0 5px 0
}

#result_logo {
	display: none
}

#index_logo img {
	display: inline-block;
	width: 270px;
	height: 129px
}

#s_tab {
	display: none
}

.s_form {
	position: relative;
	top: 38.2%
}

.s_form_wrapper {
	position: relative;
	top: -191px
}

.s_ipt_wr {
	height: 34px
}

#form {
	margin: 22px auto 0;
	width: 641px;
	text-align: left;
	z-index: 100
}

#form .bdsug {
	top: 35px
}

#head .c-icon-bear-round {
	display: none
}

.bdsug .bdsug-direct {
	width: auto;
	padding: 0;
	border-bottom: 1px solid #f1f1f1
}

.bdsug .bdsug-direct p {
	color: #00c;
	font-weight: bold;
	line-height: 34px;
	padding: 0 8px;
	cursor: pointer;
	white-space: nowrap;
	overflow: hidden
}

.bdsug .bdsug-direct p img {
	width: 16px;
	height: 16px;
	margin: 7px 6px 9px 0;
	vertical-align: middle
}

.bdsug .bdsug-direct p span {
	margin-left: 8px
}

.bdsug .bdsug-direct p i {
	font-size: 12px;
	line-height: 100%;
	font-style: normal;
	font-weight: normal;
	color: #fff;
	background-color: #2b99ff;
	display: inline;
	text-align: center;
	padding: 1px 5px;
	*padding: 2px 5px 0 5px;
	margin-left: 8px;
	overflow: hidden
}

.tools {
	position: absolute;
	right: -75px
}

#mHolder {
	width: 62px;
	position: relative;
	z-index: 296;
	display: none
}

#mCon {
	height: 18px;
	line-height: 18px;
	position: absolute;
	cursor: pointer
}

#mCon span {
	color: #00c;
	cursor: default;
	display: block;
	width: 24px
}

#mCon .hw {
	text-decoration: underline;
	cursor: pointer;
	display: inline-block
}

#mCon .pinyin {
	display: inline-block
}

#mCon .c-icon-chevron-unfold2 {
	margin-left: 5px
}

#mMenu a {
	width: 100%;
	height: 100%;
	display: block;
	line-height: 22px;
	text-indent: 6px;
	text-decoration: none;
	filter: none\9
}

#mMenu,#user ul {
	box-shadow: 1px 1px 2px #ccc;
	-moz-box-shadow: 1px 1px 2px #ccc;
	-webkit-box-shadow: 1px 1px 2px #ccc;
	filter: progid:DXImageTransform.Microsoft.Shadow(Strength=2, Direction=135,
		Color="#cccccc") \9
}

#mMenu {
	width: 56px;
	border: 1px solid #9b9b9b;
	list-style: none;
	position: absolute;
	right: 27px;
	top: 28px;
	display: none;
	background: #fff
}

#mMenu a:hover {
	background: #ebebeb
}

#mMenu .ln {
	height: 1px;
	background: #ebebeb;
	overflow: hidden;
	font-size: 1px;
	line-height: 1px;
	margin-top: -1px
}

#u1 a:link,#u1 a:visited {
	color: #666;
	text-decoration: none
}

#u1 a:hover,#u1 a:active {
	text-decoration: underline
}

#u1 a:active {
	color: #00c
}

#u1 {
	z-index: 2;
	color: white;
	position: absolute;
	right: 0;
	top: 0;
	margin: 19px 0 5px 0;
	padding: 0 96px 0 0
}

#u1 .reg {
	display: none
}

#u1 a.pf,#u1 a.pf:visited {
	display: inline-block;
	float: left;
	color: #333;
	line-height: 24px;
	font-size: 13px;
	margin-left: 20px;
	overflow: hidden;
	text-decoration: underline
}

#u1 a.lb,#u1 a.lb:visited,#u1 a.username {
	display: inline-block;
	float: left;
	color: #333;
	font-size: 13px;
	line-height: 24px;
	margin-left: 20px;
	text-decoration: underline
}

#u1 a.bri,#u1 a.bri:visited {
	display: inline-block;
	position: absolute;
	right: 10px;
	width: 60px;
	height: 23px;
	float: left;
	color: white;
	background: #38f;
	line-height: 24px;
	font-size: 13px;
	text-align: center;
	overflow: hidden;
	border-bottom: 1px solid #38f;
	margin-left: 19px;
	margin-right: 2px
}

#u1 a.bri.brihover {
	display: none;
	text-decoration: none;
	color: #333;
	background: 0;
	border-bottom: 1px solid transparent;
	margin-left: 19px
}

#u1 #lm a {
	color: #00c;
	text-decoration: underline
}

#u1 a.mnav,#u1 a.mnav:visited {
	float: left;
	color: #333;
	font-weight: bold;
	line-height: 24px;
	margin-left: 20px;
	font-size: 13px;
	text-decoration: underline
}

#u1 a.pf:hover,#u1 a.lb:hover,#u1 a.mnav:hover {
	color: #00c
}

.briiconsbg {
	background-repeat: no-repeat;
	background-size: 300px 18px;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_c3b33b92.png);
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_0a1fc6ac.gif)
		\9
}

.bdpfmenu {
	border: 1px solid #d1d1d1;
	position: absolute;
	right: 160px;
	width: 68px;
	top: 36px;
	padding: 1px 0;
	margin-top: -1px;
	_margin-top: -3px;
	z-index: 2;
	overflow: hidden;
	box-shadow: 1px 1px 5px #d1d1d1;
	-webkit-box-shadow: 1px 1px 5px #d1d1d1;
	-moz-box-shadow: 1px 1px 5px #d1d1d1;
	-o-box-shadow: 1px 1px 5px #d1d1d1
}

.bdpfmenu a {
	display: block;
	text-align: left;
	margin: 0 !important;
	padding: 0 9px;
	line-height: 26px;
	text-decoration: none
}

#wrapper .bdpfmenu a:link,#wrapper .bdpfmenu a:visited {
	background: white;
	color: #333
}

#wrapper .bdpfmenu a:hover,#wrapper .bdpfmenu a:active {
	background: #38f;
	text-decoration: none;
	color: white
}

#wrapper .bdnuarrow {
	width: 24px;
	height: 13px;
	position: absolute;
	z-index: 3;
	top: 24px;
	right: 183px;
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_c3b33b92.png)
		no-repeat -90px -1px;
	background-size: 300px 21px;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_0a1fc6ac.gif)
		\9
}

#wrapper .bdnuarrow.bdbriarrow {
	right: 104px;
	display: none !important
}

#wrapper .bdbri {
	width: 85px;
	min-height: 100px;
	border-left: 1px solid #e7e7e7;
	position: absolute;
	background-color: #f9f9f9;
	overflow: hidden;
	z-index: 2;
	right: 0;
	top: 0
}

#prefpanel {
	background: #fafafa;
	display: none;
	opacity: 0;
	position: fixed;
	_position: absolute;
	top: -359px;
	z-index: 1000;
	width: 100%;
	min-width: 960px;
	border-bottom: 1px solid #ebebeb
}

#prefpanel form {
	_width: 850px
}

#wrapper .bdbriimgtitle {
	color: #333;
	text-align: center;
	width: 66px;
	height: 43px;
	line-height: 43px;
	padding-top: 9px;
	margin: 0 auto;
	border-bottom: #f0f0f0 1px solid;
	font-size: 13px;
	cursor: default
}

#wrapper .briscrollwrapper {
	overflow: hidden
}

#wrapper .briscrollwrapperContainer {
	position: relative
}

#wrapper .bdbri.bdbriimg .bdmainlink a,#wrapper .bdbri.bdbriimg .bdothlink a
	{
	display: block;
	text-align: center;
	width: 66px;
	height: 76px;
	margin: 0 auto;
	border-bottom: #f0f0f0 1px solid;
	color: #666;
	text-decoration: none;
	overflow: hidden
}

#wrapper .bdbri.bdbriimg .bdmainlink a:visited,#wrapper .bdbri.bdbriimg .bdothlink a:visited
	{
	color: #666
}

#wrapper .bdbri.bdbriimg .bdmainlink a:hover,#wrapper .bdbri.bdbriimg .bdothlink a:hover
	{
	color: #666;
	text-decoration: underline
}

#wrapper .bdbri.bdbriimg .bdmainlink a:active,#wrapper .bdbri.bdbriimg .bdothlink a:active
	{
	color: #00c;
	text-decoration: underline
}

#wrapper .bdbri.bdbriimg span {
	width: 36px;
	height: 36px;
	display: block;
	margin: 10px auto 5px;
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/logos/bdbri_icons_737be4e5.png)
		no-repeat;
	cursor: pointer
}

#wrapper .bdbri.bdbriimg .bdbrimore,#wrapper .bdbri.bdbriimg .bdbrievenmore
	{
	clear: both;
	text-align: center
}

#wrapper .bdbri.bdbriimg .bdbrievenmore {
	margin-top: 15px;
	height: 30px;
	width: 85px;
	overflow: hidden
}

#wrapper .bdbri.bdbriimg span.bdbriimgitem_1 {
	background-position: 0 0
}

#wrapper .bdbri.bdbriimg span.bdbriimgitem_2 {
	background-position: -36px 0
}

#wrapper .bdbri.bdbriimg span.bdbriimgitem_3 {
	width: 40px;
	background-position: -72px 0
}

#wrapper .bdbri.bdbriimg span.bdbriimgitem_4 {
	background-position: -112px 0
}

#wrapper .bdbri.bdbriimg span.bdbriimgitem_5 {
	background-position: -148px 0
}

#wrapper .bdbri.bdbriimg span.bdbriimgitem_6 {
	background-position: -184px 0
}

#wrapper .bdbri.bdbriimg span.bdbriimgitem_7 {
	background-position: -220px 0
}

#wrapper .bdbri.bdbriimg .bdbrievenmore a:link,#wrapper .bdbri.bdbriimg .bdbrievenmore a:visited
	{
	color: #666;
	text-decoration: underline
}

#wrapper .bdbri.bdbriimg .bdbrievenmore a:hover {
	color: #666;
	text-decoration: underline
}

#wrapper .bdbri.bdbriimg .bdbrievenmore a:active {
	color: #00c
}

.bdbriscroll-ctrl-scroll {
	position: absolute;
	top: 10px;
	right: 1px;
	width: 8px;
	border-top: 1px solid #e4e4e4;
	border-left: 1px solid #e4e4e4;
	cursor: default;
	-webkit-user-select: none;
	-moz-user-select: none
}

.bdbriscroll-ctrl-scroll .bdbriscroll-axis {
	width: 8px;
	left: 0;
	z-index: 0;
	position: absolute;
	background: #f2f2f2
}

.bdbriscroll-ctrl-scroll-touch .bdbriscroll-axis {
	width: 7px;
	background: #f2f2f2
}

.bdbriscroll-ctrl-scroll-hover .bdbriscroll-axis {
	background: #f2f2f2
}

.bdbriscroll-ctrl-scroll .bdbriscroll-slider {
	overflow: hidden;
	width: 7px;
	height: 14px;
	position: absolute;
	left: 0;
	z-index: 10;
	display: none;
	background: #d9d9d9;
	margin-top: -1px;
	margin-left: -1px;
	border-right: 1px solid #cecece;
	border-bottom: 1px solid #cecece;
	cursor: default
}

.bdbriscroll-ctrl-scroll-touch .bdbriscroll-slider,.bdbriscroll-ctrl-scroll-hover .bdbriscroll-slider
	{
	background: #b8b8b8;
	border-right: 1px solid #afafaf;
	border-bottom: 1px solid #afafaf
}
</style>
<!--[if lte IE 8]><style index="index" >#head{height:630px}.s_form{top:260px}</style><![endif]-->
<!--[if IE 8]><style index="index" >#u1 a.mnav,#u1 a.mnav:visited,#u1 a.lb,#u1 a.lb:visited,#u1 a.pf,#u1 a.pf:visited,#u1 a.bri,#u1 a.bri:visited{font-family:simsun}</style><![endif]-->
<style data-for="debug">
#debug {
	display: none !important
}
</style>
<style data-for="result" id="css_index_result">
#seth {
	display: none;
	behavior: url(#default#homepage)
}

#setf {
	display: none
}

#sekj {
	margin-left: 14px
}

#st,#sekj {
	display: none
}

.s_ipt_wr {
	border: 1px solid #b6b6b6;
	border-color: #7b7b7b #b6b6b6 #b6b6b6 #7b7b7b;
	background: #fff;
	display: inline-block;
	vertical-align: top;
	width: 539px;
	margin-right: 0;
	border-right-width: 0;
	border-color: #b8b8b8 transparent #ccc #b8b8b8;
	overflow: hidden
}

.wrapper_s .s_ipt_wr {
	width: 439px
}

.wrapper_s .s_ipt {
	width: 434px
}

.wrapper_s .s_ipt_tip {
	width: 434px
}

.s_ipt_wr:hover,.s_ipt_wr.ipthover {
	border-color: #999 transparent #b3b3b3 #999
}

.s_ipt_wr.iptfocus {
	border-color: #4791ff transparent #4791ff #4791ff
}

.s_ipt_tip {
	color: #aaa;
	position: absolute;
	z-index: -10;
	font: 16px/22px arial;
	height: 32px;
	line-height: 32px;
	padding-left: 7px;
	overflow: hidden;
	width: 526px
}

.s_ipt {
	width: 526px;
	height: 22px;
	font: 16px/18px arial;
	line-height: 22px\9;
	margin: 6px 0 0 7px;
	padding: 0;
	background: transparent;
	border: 0;
	outline: 0;
	-webkit-appearance: none
}

#kw {
	position: relative
}

#u .username i {
	background-position: -408px -144px
}

.bdpfmenu,.usermenu {
	border: 1px solid #d1d1d1;
	position: absolute;
	width: 105px;
	top: 36px;
	padding: 1px 0;
	z-index: 302;
	overflow: hidden;
	box-shadow: 1px 1px 5px #d1d1d1;
	-webkit-box-shadow: 1px 1px 5px #d1d1d1;
	-moz-box-shadow: 1px 1px 5px #d1d1d1;
	-o-box-shadow: 1px 1px 5px #d1d1d1
}

.bdpfmenu {
	font-size: 12px
}

.bdpfmenu a,.usermenu a {
	display: block;
	text-align: left;
	margin: 0 !important;
	padding: 0 9px;
	line-height: 26px;
	text-decoration: none
}

.briiconsbg {
	background-repeat: no-repeat;
	background-size: 300px 18px;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_c3b33b92.png);
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_0a1fc6ac.gif)
		\9
}

#u {
	z-index: 301;
	position: absolute;
	right: 0;
	top: 0;
	margin: 21px 9px 5px 0;
	padding: 0
}

.wrapper_s #u {
	margin-right: 3px
}

#u a {
	text-decoration: underline;
	color: #333;
	margin: 0 7px
}

.wrapper_s #u a {
	margin-right: 0 6px
}

#u div a {
	text-decoration: none
}

#u a:hover {
	text-decoration: underline
}

#u .back_org {
	color: #666;
	float: left;
	display: inline-block;
	height: 24px;
	line-height: 24px
}

#u .bri {
	display: inline-block;
	width: 24px;
	height: 24px;
	float: left;
	line-height: 24px;
	color: transparent;
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_c3b33b92.png)
		no-repeat 4px 3px;
	background-size: 300px 18px;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_0a1fc6ac.gif)
		\9;
	overflow: hidden
}

#u .bri:hover,#u .bri.brihover {
	background-position: -18px 3px
}

#mCon #imeSIcon {
	background-position: -408px -144px;
	margin-left: 0
}

#mCon span {
	color: #333
}

.bdpfmenu a:link,.bdpfmenu a:visited,#u .usermenu a:link,#u .usermenu a:visited
	{
	background: white;
	color: #333
}

.bdpfmenu a:hover,.bdpfmenu a:active,#u .usermenu a:hover,#u .usermenu a:active
	{
	background: #38f;
	text-decoration: none;
	color: white
}

.bdpfmenu {
	width: 70px
}

.usermenu {
	width: 68px;
	right: 8px
}

#wrapper .bdnuarrow {
	width: 24px;
	height: 13px;
	position: absolute;
	z-index: 303;
	top: 24px;
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_c3b33b92.png)
		no-repeat -90px -1px;
	background-size: 300px 21px;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/home/img/icons_0a1fc6ac.gif)
		\9
}

#prefpanel {
	background: #fafafa;
	display: none;
	opacity: 0;
	position: fixed;
	_position: absolute;
	top: -359px;
	z-index: 500;
	width: 100%;
	min-width: 960px;
	border-bottom: 1px solid #ebebeb
}

#prefpanel form {
	_width: 850px
}

#kw_tip {
	cursor: default;
	display: none;
	margin-top: 1px
}

#bds-message-wrapper {
	top: 43px
}

.quickdelete-wrap {
	position: relative;
	width: 100%;
	height: 100%
}

.quickdelete-wrap input {
	width: 500px
}

.wrapper_l .quickdelete-wrap input {
	width: 500px
}

.wrapper_s .quickdelete-wrap input {
	width: 402px
}

input::-ms-clear {
	display: none
}

.quickdelete {
	width: 32px;
	height: 32px;
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/quickdelete_9c14b01a.png)
		no-repeat;
	background-position: 10px 10px;
	position: absolute;
	display: block
}

.quickdelete:hover {
	background-position: 10px -24px
}
</style>
<script>function h(obj){obj.style.behavior='url(#default#homepage)';var a = obj.setHomePage('//www.baidu.com/');}</script>
<noscript>&lt;meta http-equiv="refresh" content="0;
	url=/baidu.html?from=noscript"/&gt;</noscript>
<script>window._ASYNC_START=new Date().getTime();</script>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort() + path ;
	pageContext.setAttribute("basePath", basePath);
%>
</head>
<body link="#0000cc">
	<script>if (/Chrome\/37.0.2062.94/i.test(navigator.userAgent) && (/(windows 7)|(windows nt 6.1)/i.test(navigator.userAgent))) {var _chrome_37_fix = document.createElement("style"); _chrome_37_fix.type="text/css";_chrome_37_fix.setAttribute("data-for","result");_chrome_37_fix.innerHTML = ".t,.f16,#kw,.s_ipt,.c-title,.c-title-size,.to_zhidao,.to_tieba,.to_zhidao_bottom{font-size:15px;} .ec-hospital-info-main h2,.ad-widget-gx_sck-ylzx-doctor-info h2,.ec-card-main h2,.ad-widget-h1 h2,.ad-widget-title h2,.ad-widget-small-head h2,.ad-widget-small-head h2 a,.ad-widget-header .ec-figcaption h2{font-size: 15px !important;}";document.getElementsByTagName("head")[0].appendChild(_chrome_37_fix); }</script>
	<div id="wrapper" style="display: block;">
		<div id="debug"
			style="display: block; position: absolute; top: 30px; right: 30px; border: 1px solid; padding: 5px 10px;">
			<pre id="isDebugInfo"></pre>
		</div>
		<script>if(window.bds&&bds.util&&bds.util.setContainerWidth){bds.util.setContainerWidth();}</script>
		<div id="head">
			<div class="head_wrapper">
				<div class="s_form">
					<div class="s_form_wrapper">
						<div id="lg" style="position: relative; width: 100%;">
							<img hidefocus="true"
								src="${pageScope.basePath}/res/images/baner.jpg"
								width="270" height="129" title="元旦快乐">
							<div style="position: absolute; top: 0px; left: 50%; width: 270px; height: 129px; margin-left: -135px; cursor: pointer; background: url(${pageScope.basePath}/res/images/baner.jpg) -5940px 0px no-repeat;"></div>
						</div>
						<a href="/" id="result_logo"
							onmousedown="return c({'fm':'tab','tab':'logo'})"><img
							src="//www.baidu.com/img/baidu_jgylogo3.gif" alt="到百度首页"
							title="到百度首页"></a>
						<form id="form" name="f" action="/search/search.action" method="post" class="fm">
							<input type="hidden" name="ie" value="utf-8"><input
								type="hidden" name="f" value="8"><input type="hidden"
								name="rsv_bp" value="1"><input type="hidden"
								name="rsv_idx" value="1"><input type="hidden" name="ch"
								value=""><input type="hidden" name="tn"
								value="97519170_hao_pg"><input type="hidden" name="bar"
								value=""><span class="bg s_ipt_wr"><input id="kw"
								name="keyword" class="s_ipt" value="" maxlength="100"
								autocomplete="off"></span><span class="bg s_btn_wr"><input
								type="submit" id="su" value="GO" class="bg s_btn"></span><span
								class="tools"><span id="mHolder">
									<ul id="mMenu">
										<li><a href="javascript:;" name="ime_hw">手写</a></li>
										<li><a href="javascript:;" name="ime_py">拼音</a></li>
										<li class="ln"></li>
										<li><a href="javascript:;" name="ime_cl">关闭</a></li>
									</ul>
							</span></span><input type="hidden" name="rn" value=""><input
								type="hidden" name="rsv_pq" value="aa2bf5f7000de10d"><input
								type="hidden" name="rsv_t"
								value="652dr2mRLnQlu+Q684QlPEGhpe1lVzduiQnTCemPnomIdSUy/YtF5YvEUD4nsYzAxbEKq8VL"><input
								type="hidden" name="rsv_enter" value="0"><input
								type="hidden" name="rsv_sug3" value="1"><input
								type="hidden" name="rsv_sug9" value="eb"><input
								type="hidden" name="rsv_sug4" value="26">
						</form>
						<div id="m"></div>
					</div>
				</div>
				<div id="u">
					<a class="toindex" href="/">百度首页</a><span class="toindex">|</span><a
						href="javascript:;" name="tj_settingicon" class="pf">设置<i
						class="c-icon c-icon-triangle-down"></i></a>|<a
						href="https://passport.baidu.com/v2/?login&amp;tpl=mn&amp;u=http%3A%2F%2Fwww.baidu.com%2F"
						name="tj_login" class="lb" onclick="return false;">登录</a>
				</div>
			</div>
		</div>
		<div id="wrapper_wrapper"></div>
	</div>
	<div class="c-tips-container" id="c-tips-container"></div>
	<script>window.__async_strategy=2;</script>
	<script>var bds={se:{},su:{urdata:[],urSendClick:function(){}},util:{},use:{},comm : {domain:"http://www.baidu.com",ubsurl : "http://sclick.baidu.com/union.gif",tn:"97519170_hao_pg",queryEnc:"",queryId:"",inter:"",templateName:"baidulm",sugHost : "http://suggestion.baidu.com/su",query : "",qid : "aa2bf5f7000de10d",cid : "0",sid : "1430_9992_10489_10874_10496_10753_10795_10218_10783_10356_10667_10096_10658_10443_9950_10618",indexSid : "1430_9992_10489_10874_10496_10753_10795_10218_10783_10356_10667_10096_10658_10443_9950_10618",stoken : "",serverTime : "1420083818",user : "",username : "",userid : "0",isBaixiaoduOn : "",loginAction : [],useFavo : "",pinyin : "",favoOn : "",cookie : {"H_PS_BABANNER":"5","BDRCVFR":{"HJiCjw-Lhin":"I67x6TjHwwYf0","feWj1Vr5u3D":"I67x6TjHwwYf0","RebfEQPnxLt":"ddONZc2bo5mfAF9pywdpAqVuNqsus"},"BAIDUID":"492F14A5B17C685C322FBF4A41251BD6:FG=1","BAIDUPSID":"492F14A5B17C685C322FBF4A41251BD6","H_PS_645EC":"b3d16NPOADujLUGF4ybVkAhiE2eJHbgjiBI6q1g\/6UxtxZdXdFTYehCA4v+o4vPhemZA","BD_CK_SAM":"1","BD_HOME":"1","H_PS_PSSID":"1430_9992_10489_10874_10496_10753_10795_10218_10783_10356_10667_10096_10658_10443_9950_10618","sug":"3","sugstore":"1","ORIGIN":"2","bdime":"0","BD_UPN":"12314353"},curResultNum:"0",rightResultExist:false,protectNum:0,zxlNum:0,pageNum:1,pageSize:10,newindex:0,async:2,maxPreloadThread:5,maxPreloadTimes:10,preloadMouseMoveDistance:5,switchAddMask:false,isDebug:false,ishome : 1,encTn:'652dr2mRLnQlu+Q684QlPEGhpe1lVzduiQnTCemPnomIdSUy/YtF5YvEUD4nsYzAxbEKq8VL'}};var name,navigate,al_arr=[];var selfOpen = window.open;eval("var open = selfOpen;");var isIE=navigator.userAgent.indexOf("MSIE")!=-1&&!window.opera;var E = bds.ecom= {};bds.se.mon = {'loadedItems':[],'load':function(){},'srvt':-1};try {bds.se.mon.srvt = parseInt(document.cookie.match(new RegExp("(^| )BDSVRTM=([^;]*)(;|$)"))[2]);document.cookie="BDSVRTM=;expires=Sat, 01 Jan 2000 00:00:00 GMT"; }catch(e){}var bdUser = bds.comm.user?bds.comm.user:null,bdQuery = bds.comm.query,bdUseFavo = bds.comm.useFavo,bdFavoOn = bds.comm.favoOn,bdCid = bds.comm.cid,bdSid = bds.comm.sid,bdServerTime = bds.comm.serverTime,bdQid = bds.comm.queryId,bdstoken = bds.comm.stoken,login_success = [];bds.util.domain = (function(){var list = {"lcr.open.baidu.com":"http://lcr.open.baidu.com","kankan.baidu.com":"http://kankan.baidu.com","xapp.baidu.com":"http://xapp.baidu.com","dr.dh.baidu.com":"http://dr.dh.baidu.com","xiaodu.baidu.com":"http://xiaodu.baidu.com","s1.bdstatic.com":"http://s1.bdstatic.com","olime.baidu.com":"http://olime.baidu.com","app.baidu.com":"http://app.baidu.com","i.baidu.com":"http://i.baidu.com","c.baidu.com":"http://c.baidu.com","sclick.baidu.com":"http://sclick.baidu.com","nsclick.baidu.com":"http://nsclick.baidu.com","eclick.baidu.com":"http://eclick.baidu.com","api.map.baidu.com":"http://api.map.baidu.com","ecma.bdimg.com":"http://ecma.bdimg.com","t10.baidu.com":"http://t10.baidu.com","t11.baidu.com":"http://t11.baidu.com","t12.baidu.com":"http://t12.baidu.com","i7.baidu.com":"http://i7.baidu.com","i8.baidu.com":"http://i8.baidu.com","i9.baidu.com":"http://i9.baidu.com","b1.bdstatic.com":"http://b1.bdstatic.com","su.bdimg.com":"http://su.bdimg.com","opendata.baidu.com":"http://opendata.baidu.com","api.open.baidu.com":"http://api.open.baidu.com","tag.baidu.com":"http://tag.baidu.com","f3.baidu.com":"http://f3.baidu.com","s.share.baidu.com":"http://s.share.baidu.com","bdimg.share.baidu.com":"http://bdimg.share.baidu.com"};var get = function(url) {if(location.protocol === "http") {return url;}var reg = /^(http[s]?:\/\/)?([^\/]+)(.*)/,matches = url.match(reg);url = list.hasOwnProperty(matches[2])&&(list[matches[2]] + matches[3]) || url;return url;},set = function(kdomain,vdomain) {list[kdomain] = vdomain;}; return {get : get,set : set}})();</script>
	<script>if(!location.hash.match(/[^a-zA-Z0-9]wd=/)){document.getElementById("wrapper").style.display='block';setTimeout(function(){try{var kw=document.getElementById("kw");kw.focus();if(kw.parentNode.className.indexOf("quickdelete") != -1){kw.parentNode.parentNode.className="bg s_ipt_wr iptfocus";}else{kw.parentNode.className="bg s_ipt_wr iptfocus";}}catch(e){}},0);}</script>
	<script type="text/javascript"
		src="http://s1.bdstatic.com/r/www/cache/static/jquery/jquery-1.10.2.min_f2fb5194.js"></script>
	<script>(function(){var result_common_css="<style data-for=\"result\"  id=\"css_result\">body{color:#333;background:#fff;padding:6px 0 0;margin:0;position:relative;min-width:900px}body,th,td,.p1,.p2{font-family:arial}p,form,ol,ul,li,dl,dt,dd,h3{margin:0;padding:0;list-style:none}input{padding-top:0;padding-bottom:0;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box}table,img{border:0}td{font-size:9pt;line-height:18px}em{font-style:normal;color:#c00}a em{text-decoration:underline}cite{font-style:normal;color:#008000}.m,a.m{color:#666}a.m:visited{color:#606}.g,a.g{color:#008000}.c{color:#77c}.f14{font-size:14px}.f10{font-size:10.5pt}.f16{font-size:16px}.f13{font-size:13px}.bg{background-image:url(http:\/\/s1.bdstatic.com\/r\/www\/cache\/static\/global\/img\/icons_3bfb8e45.png);background-repeat:no-repeat;_background-image:url(http:\/\/s1.bdstatic.com\/r\/www\/cache\/static\/global\/img\/icons_f72fb1cc.gif);background-repeat:no-repeat}.bg_tuiguang_browser{width:16px;height:16px;background-position:-600px 0;display:inline-block;vertical-align:text-bottom;font-style:normal;overflow:hidden;margin-right:5px}.bg_tuiguang_browser_big{width:56px;height:56px;position:absolute;left:10px;top:10px;background-position:-600px -24px}.bg_tuiguang_weishi{width:56px;height:56px;position:absolute;left:10px;top:10px;background-position:-672px -24px}#u,#head,#tool,#search,#foot{font-size:12px}.logo{width:117px;height:38px;cursor:pointer}.p1{line-height:120%;margin-left:-12pt}.p2{width:100%;line-height:120%;margin-left:-12pt}#wrapper{_zoom:1}#container{word-break:break-all;word-wrap:break-word}.container_s{width:1002px}.container_l{width:1222px}#content_left{width:636px;float:left;padding-left:35px}#content_right{border-left:1px solid #e1e1e1;float:right}.container_s #content_right{width:271px}.container_l #content_right{width:434px}.content_none{padding-left:35px}#u{color:#999;white-space:nowrap;position:absolute;right:10px;top:4px;z-index:299}#u a{color:#00c;margin:0 5px}#u .reg{margin:0}#u .last{margin-right:0}#u .un{font-weight:bold;margin-right:5px}#u ul{width:100%;background:#fff;border:1px solid #9b9b9b}#u li{height:25px}#u li a{width:100%;height:25px;line-height:25px;display:block;text-align:left;text-decoration:none;text-indent:6px;margin:0;filter:none\\9}#u li a:hover{background:#ebebeb}#u li.nl{border-top:1px solid #ebebeb}#user{display:inline-block}#user_center{position:relative;display:inline-block}#user_center .user_center_btn{margin-right:5px}.userMenu{width:64px;position:absolute;right:7px;_right:2px;top:15px;top:14px\\9;*top:15px;padding-top:4px;display:none;*background:#fff}#head{padding-left:35px;margin-bottom:20px;width:900px}.fm{clear:both;position:relative;z-index:297}.nv a,.nv b,.btn,#page,#more{font-size:14px}.s_nav{height:45px}.s_nav .s_logo{margin-right:20px;float:left}.s_nav .s_logo img{border:0;display:block}.s_tab{line-height:18px;padding:20px 0 0;float:left}.s_nav a{color:#00c;font-size:14px}.s_nav b{font-size:14px}.s_ipt_wr{width:536px;height:30px;display:inline-block;margin-right:5px;background-position:0 -96px;border:1px solid #b6b6b6;border-color:#7b7b7b #b6b6b6 #b6b6b6 #7b7b7b;vertical-align:top}.s_ipt{width:523px;height:22px;font:16px\/18px arial;line-height:22px\\9;margin:5px 0 0 7px;padding:0;background:#fff;border:0;outline:0;-webkit-appearance:none}.s_btn{width:95px;height:32px;padding-top:2px\\9;font-size:14px;padding:0;background-color:#ddd;background-position:0 -48px;border:0;cursor:pointer}.s_btn_h{background-position:-240px -48px}.s_btn_wr{width:97px;height:34px;display:inline-block;background-position:-120px -48px;*position:relative;z-index:0;vertical-align:top}.sethf{padding:0;margin:0;font-size:14px}.set_h{display:none;behavior:url(#default#homepage)}.set_f{display:none}.shouji{margin-left:19px}.shouji a{text-decoration:none}.bdsug{position:absolute;width:536px;background:#fff;display:none;border:1px solid #817f82}.bdsug li{width:520px;color:#000;font:14px arial;line-height:25px;padding:0 8px;position:relative;cursor:default}.bdsug li.bdsug-s{background:#ebebeb}#head .bdsug{top:31px}#search form{position:relative}#search form .bdsug{bottom:33px}.bdsug-store span,.bdsug-store b{color:#7a77c8}.bdsug-store-del{font-size:12px;color:#666;text-decoration:underline;position:absolute;right:8px;top:0;cursor:pointer;display:none}.bdsug-s .bdsug-store-del{display:inline-block}.bdsug-ala{display:inline-block;border-bottom:1px solid #e6e6e6}.bdsug-ala h3{line-height:14px;background:url(\/\/www.baidu.com\/img\/sug_bd.png) no-repeat left center;margin:6px 0 4px 0;font-size:12px;font-weight:normal;color:#7b7b7b;padding-left:20px}.bdsug-ala p{font-size:14px;font-weight:bold;padding-left:20px}.bdsug .bdsug-direct{width:auto;padding:0;border-bottom:1px solid #f1f1f1}.bdsug .bdsug-direct p{color:#00c;font-weight:bold;line-height:34px;padding:0 8px;cursor:pointer;white-space:nowrap;overflow:hidden}.bdsug .bdsug-direct p span{margin-left:8px}.bdsug .bdsug-direct p img{width:16px;height:16px;margin:7px 6px 9px 0;vertical-align:middle}.bdsug .bdsug-direct p i{font-size:12px;line-height:100%;font-style:normal;font-weight:normal;color:#fff;background-color:#2b99ff;display:inline;text-align:center;padding:1px 5px;*padding:2px 5px 0 5px;margin-left:8px;overflow:hidden}#tb_mr{color:#00c;cursor:pointer;position:relative;z-index:298}#tb_mr b{font-weight:normal;text-decoration:underline}#tb_mr small{font-size:11px}#page{font:14px arial;white-space:nowrap;padding-left:35px}#page a,#page strong{display:inline-block;vertical-align:text-bottom;height:66px;text-align:center;line-height:34px;text-decoration:none;overflow:hidden;margin-right:9px;background:white}#page a{cursor:pointer}#page a:hover{background:0}#page .n:hover,#page a:hover .pc{background:#f2f8ff;border:1px solid #38f}#page .n{height:34px;padding:0 18px;border:1px solid #e1e2e3}#page span{display:block}#page .pc{width:34px;height:34px;border:1px solid #e1e2e3;cursor:pointer}#page .fk{width:24px;height:24px;margin-bottom:6px;margin-left:6px;cursor:pointer}#page strong .fk,#page strong .pc{cursor:auto}#page .fk .c-icon-bear-pn{top:-3px;position:relative}#page .fkd .c-icon-bear-pn{top:3px;position:relative}#page .fk_cur .c-icon-bear-p{top:-2px;position:relative}#page strong .pc{border:0;width:36px;height:36px;line-height:36px}#page .nums{display:inline-block;vertical-align:text-bottom;height:36px;line-height:36px;margin-left:10px}#rs{width:900px;background:#fff;padding:8px 0;margin:20px 0 0 15px}#rs td{width:5%}#rs th{font-size:14px;font-weight:normal;line-height:19px;white-space:nowrap;text-align:left;vertical-align:top}#rs .tt{font-weight:bold;padding:0 10px 0 20px}#rs_top{font-size:14px;margin-bottom:22px}#rs_top a{margin-right:18px}#content_left .rs{margin:30px 0;padding:5px 0;font-size:14px;width:540px;background-color:#f9f9f9;padding-left:121px;margin-left:-121px;position:relative}#content_left .rs table{width:540px}#content_left .rs td{width:5px}#content_left .rs th{font-size:14px;font-weight:normal;white-space:nowrap;text-align:left;vertical-align:top;width:175px;line-height:22px}#content_left .rs .tt{font-weight:bold;padding:0 10px 0 20px;padding:0;line-height:30px;font-size:160px}.c-tip-con .c-tip-menu-b ul{width:100px}.c-tip-con .c-tip-menu-b ul{text-align:center}.c-tip-con .c-tip-menu-b li a{display:block;text-decoration:none;cursor:pointer;background-color:#fff;padding:3px 0;color:#666}.c-tip-con .c-tip-menu-b li a:hover{display:block;background-color:#ebebeb}#search{width:900px;padding:35px 0 16px 35px}#search .s_help{position:relative;top:10px}#foot{height:20px;line-height:20px;color:#77c;background:#e6e6e6;text-align:center}#foot span{color:#666}.site_tip{font-size:12px;margin-bottom:20px}.site_tip_icon{width:56px;height:56px;background:url(\/\/www.baidu.com\/aladdin\/img\/tools\/tools-3.png) -288px 0 no-repeat}.to_zhidao,.to_tieba,.to_zhidao_bottom{font-size:16px;line-height:24px;margin:20px 0 0 35px}.to_tieba .c-icon-tieba{float:left}.f{line-height:115%;*line-height:120%;font-size:100%;width:33.7em;word-break:break-all;word-wrap:break-word}.h{margin-left:8px;width:100%}.r{word-break:break-all;cursor:hand;width:238px}.t{font-weight:normal;font-size:medium;margin-bottom:1px}.pl{padding-left:3px;height:8px;padding-right:2px;font-size:14px}.mo,a.mo:link,a.mo:visited{color:#666;font-size:100%;line-height:10px}.htb{margin-bottom:5px}.jc a{color:#c00}a font[size=\"3\"] font,font[size=\"3\"] a font{text-decoration:underline}div.blog,div.bbs{color:#707070;padding-top:2px;font-size:13px}.result{width:33.7em;table-layout:fixed}.result-op .f{word-wrap:normal}.nums{font-size:12px;color:#999}.tools{position:absolute;top:10px;white-space:nowrap}#mHolder{width:62px;position:relative;z-index:296;top:-18px;margin-left:9px;margin-right:-12px;display:none}#mCon{height:18px;position:absolute;top:3px;top:6px\\9;cursor:pointer;line-height:18px}.wrapper_l #mCon{right:7px}#mCon span{color:#00c;cursor:default;display:block}#mCon .hw{text-decoration:underline;cursor:pointer;display:inline-block}#mCon .pinyin{display:inline-block}#mCon .c-icon-chevron-unfold2{margin-left:5px}#mMenu{width:56px;border:1px solid #9b9b9b;position:absolute;right:7px;top:23px;display:none;background:#fff}#mMenu a{width:100%;height:100%;color:#00c;display:block;line-height:22px;text-indent:6px;text-decoration:none;filter:none\\9}#mMenu a:hover{background:#ebebeb}#mMenu .ln{height:1px;background:#ebebeb;overflow:hidden;font-size:1px;line-height:1px;margin-top:-1px}.op_LAMP{background:url(\"\/cache\/global\/img\/aladdinIcon-1.0.gif\") no-repeat 0 2px;color:#77C;display:inline-block;font-size:13px;height:12px;*height:14px;width:16px;text-decoration:none;zoom:1}.EC_mr15{margin-left:0}.pd15{padding-left:0}.map_1{width:30em;font-size:80%;line-height:145%}.map_2{width:25em;font-size:80%;line-height:145%}.favurl{background-repeat:no-repeat;background-position:0 1px;padding-left:20px}.dan_tip{font-size:12px;margin-top:4px}.dan_tip a{color:#b95b07}#more,#u ul,#mMenu,.msg_holder{box-shadow:1px 1px 2px #ccc;-moz-box-shadow:1px 1px 2px #ccc;-webkit-box-shadow:1px 1px 2px #ccc;filter:progid:DXImageTransform.Microsoft.Shadow(Strength=2,Direction=135,Color=\"#cccccc\")\\9}.hit_top{line-height:18px;margin:0 15px 10px 0;width:516px}.hit_top .c-icon-bear{height:18px;margin-right:4px}#rs_top_new,.hit_top_new{width:538px;font-size:13px;line-height:1.54;word-wrap:break-word;word-break:break-all;margin:0 0 14px 0}.zhannei-si{margin:0 0 10px 121px}.zhannei-si-none{margin:10px 0 -10px 121px}.zhannei-search{margin:10px 0 0 121px;color:#999;font-size:14px}.f a font[size=\"3\"] font,.f font[size=\"-1\"] a font{text-decoration:underline}h3 a font{text-decoration:underline}.c-title{font-weight:normal;font-size:16px}.c-title-size{font-size:16px}.c-abstract{font-size:13px}.c-abstract-size{font-size:13px}.c-showurl{color:#008000;font-size:13px}.c-showurl-color{color:#008000}.c-cache-color{color:#666}.c-lightblue{color:#77C}.c-highlight-color{color:#C00}.c-clearfix:after{content:\".\";display:block;height:0;clear:both;visibility:hidden}.c-clearfix{zoom:1}.c-wrap{word-break:break-all;word-wrap:break-word}.c-icons-outer{overflow:hidden;display:inline-block;vertical-align:bottom;*vertical-align:-1px;_vertical-align:bottom}.c-icons-inner{margin-left:-4px}.c-container table.result,.c-container table.result-op{width:100%}.c-container td.f{font-size:13px;line-height:1.54;width:auto}.c-container .vd_newest_main{width:auto}.c-customicon{display:inline-block;width:16px;height:16px;vertical-align:text-bottom;font-style:normal;overflow:hidden}.c-tip-icon i{display:inline-block;cursor:pointer}.c-tip-con{position:absolute;z-index:1;top:22px;left:-35px;background:#fff;border:1px solid #dcdcdc;border:1px solid rgba(0,0,0,0.2);-webkit-transition:opacity .218s;transition:opacity .218s;-webkit-box-shadow:0 2px 4px rgba(0,0,0,0.2);box-shadow:0 2px 4px rgba(0,0,0,0.2);padding:5px 0 5px 0;display:none;font-size:12px;line-height:20px}.c-tip-arrow{width:0;height:0;font-size:0;line-height:0;display:block;position:absolute;top:-16px}.c-tip-arrow-down{top:auto;bottom:0}.c-tip-arrow em,.c-tip-arrow ins{width:0;height:0;font-size:0;line-height:0;display:block;position:absolute;border:8px solid transparent;border-style:dashed dashed solid dashed}.c-tip-arrow em{border-bottom-color:#d8d8d8}.c-tip-arrow ins{border-bottom-color:#fff;top:2px}.c-tip-arrow-down em,.c-tip-arrow-down ins{border-style:solid dashed dashed dashed;border-color:transparent}.c-tip-arrow-down em{border-top-color:#d8d8d8}.c-tip-arrow-down ins{border-top-color:#fff;top:-2px}.c-tip-con h3{font-size:12px}.c-tip-con .c-tip-title{margin:0 10px;display:inline-block;width:239px}.c-tip-con .c-tip-info{color:#666;margin:0 10px 1px 10px;width:239px}.c-tip-con .c-tip-cer{width:354px;color:#666;margin:0 10px 1px 10px}.c-tip-con .c-tip-title{width:auto;_width:354px}.c-tip-con .c-tip-item-i{padding:3px 0 3px 20px;line-height:14px}.c-tip-con .c-tip-item-i .c-tip-item-icon{margin-left:-20px}.c-tip-con .c-tip-menu ul{width:74px}.c-tip-con .c-tip-menu ul{text-align:center}.c-tip-con .c-tip-menu li a{display:block;text-decoration:none;cursor:pointer;background-color:#fff;padding:3px 0;color:#0000d0}.c-tip-con .c-tip-menu li a:hover{display:block;background-color:#ebebeb}.c-tip-con .c-tip-notice{width:239px;padding:0 10px}.c-tip-con .c-tip-notice .c-tip-notice-succ{color:#4cbd37}.c-tip-con .c-tip-notice .c-tip-notice-fail{color:#f13f40}.c-tip-con .c-tip-notice .c-tip-item-succ{color:#444}.c-tip-con .c-tip-notice .c-tip-item-fail{color:#aaa}.c-tip-con .c-tip-notice .c-tip-item-fail a{color:#aaa}.c-tip-close{right:10px;position:absolute;cursor:pointer}.ecard{height:86px;overflow:hidden}.c-tools{display:inline}.c-tools-share{width:239px;padding:0 10px}.icp_info{color:#666;margin-top:2px;font-size:13px}.icon-gw,.icon-unsafe-icon{background:#2c99ff;vertical-align:text-bottom;*vertical-align:baseline;height:16px;padding-top:0;padding-bottom:0;padding-left:6px;padding-right:6px;line-height:16px;_padding-top:2px;_height:14px;_line-height:14px;font-size:12px;font-family:simsun;margin-left:10px;overflow:hidden;display:inline-block;-moz-border-radius:1px;-webkit-border-radius:1px;border-radius:1px;color:#fff}a.icon-gw{color:#fff;background:#2196ff;text-decoration:none;cursor:pointer}a.icon-gw:hover{background:#1e87ef}a.icon-gw:active{height:15px;_height:13px;line-height:15px;_line-height:13px;padding-left:5px;background:#1c80d9;border-left:1px solid #145997;border-top:1px solid #145997}.icon-unsafe-icon{background:#e54d4b}#con-at{margin-bottom:11px;padding-left:121px;border-bottom:1px #ebebeb solid}#con-at .result-op{font-size:13px;line-height:1.52em}.wrapper_l #con-at .result-op{width:1074px}.wrapper_s #con-at .result-op{width:854px}#con-ar{margin-bottom:40px}#con-ar .result-op{margin-bottom:28px;font-size:13px;line-height:1.52em}.result_hidden{position:absolute;top:-10000px;left:-10000px}#content_left .result-op,#content_left .result{margin-bottom:14px;border-collapse:collapse}#content_left .c-border .result-op,#content_left .c-border .result{margin-bottom:25px}#content_left .c-border .result-op:last-child,#content_left .c-border .result:last-child{margin-bottom:12px}#content_left .result .f,#content_left .result-op .f{padding:0}.subLink_factory{border-collapse:collapse}.subLink_factory td{padding:0}.subLink_factory td.middle,.subLink_factory td.last{color:#666}.subLink_factory td a{text-decoration:underline}.subLink_factory td.rightTd{text-align:right}.subLink_factory_right{width:100%}.subLink_factory_left td{padding-right:26px}.subLink_factory_left td.last{padding:0}.subLink_factory_left td.first{padding-right:75px}.subLink_factory_right td{width:90px}.subLink_factory_right td.first{width:auto}.general_image_pic a{background:#fff no-repeat center center;text-decoration:none;display:block;overflow:hidden;text-align:left}.res_top_banner{height:36px;text-align:left;border-bottom:1px solid #e3e3e3;background:#f7f7f7;font-size:13px;padding-left:8px;color:#333;position:relative;z-index:302}.res_top_banner span{_zoom:1}.res_top_banner .res_top_banner_icon{background-position:0 -216px;width:18px;height:18px;margin:9px 10px 0 0}.res_top_banner .res_top_banner_icon_baiduapp{background:url(http:\/\/s1.bdstatic.com\/r\/www\/cache\/static\/global\/img\/baiduappLogo_7db5fd3c.png) no-repeat 0 0;width:24px;height:24px;margin:3px 10px 0 0;position:relative;top:3px}.res_top_banner .res_top_banner_download{display:inline-block;width:65px;line-height:21px;_padding-top:1px;margin:0 0 0 10px;color:#333;background:#fbfbfb;border:1px solid #b4b6b8;text-align:center;text-decoration:none}.res_top_banner .res_top_banner_download:hover{border:1px solid #38f}.res_top_banner .res_top_banner_download:active{background:#f0f0f0;border:1px solid #b4b6b8}.res_top_banner .res_top_banner_close{background-position:-672px -144px;cursor:pointer;position:absolute;right:10px;top:10px}.res-gap-right16{margin-right:16px}.res-border-top{border-top:1px solid #f3f3f3}.res-border-bottom{border-bottom:1px solid #f3f3f3}.res-queryext-pos{position:relative;top:1px;_top:0}.c-trust-ecard{height:86px;_height:97px;overflow:hidden}@-moz-document url-prefix(){.result,.f{width:538px}}body{min-width:1000px}#ftCon{display:none}#pad-version{display:none}#index_guide{display:none}#index_logo{display:none}#u1{display:none}.s_ipt_wr{height:32px}body{padding:0}.s_form:after,.s_tab:after{content:\".\";display:block;height:0;clear:both;visibility:hidden}.s_form{zoom:1;height:55px;padding:0 0 0 10px}#result_logo{float:left;margin:7px 0 0}#result_logo img{width:101px}#head{padding:0;margin:0;width:100%;position:absolute;z-index:301;min-width:1000px;background:#fff;border-bottom:1px solid #ebebeb;position:fixed;_position:absolute;-webkit-transform:translateZ(0)}#head .head_wrapper{_width:1000px}#head.s_down{box-shadow:0 0 5px #888}.fm{clear:none;float:left;margin:11px 0 0 10px}#s_tab{background:#f8f8f8;line-height:36px;height:38px;padding:55px 0 0 121px;float:none;zoom:1}#s_tab a,#s_tab b{width:54px;display:inline-block;text-decoration:none;text-align:center;color:#666;font-size:14px}#s_tab b{border-bottom:2px solid #38f;font-weight:bold;color:#323232}#s_tab a:hover{color:#323232}#content_left{width:540px;padding-left:121px;padding-top:5px}#content_right{margin-top:45px}#page{padding:0 0 0 121px;margin:30px 0 40px 0}.to_tieba,.to_zhidao_bottom{margin:10px 0 0 121px}.nums{margin:0 0 0 121px;height:42px;line-height:42px}#rs{padding:0;margin:6px 0 0 121px;width:600px}#rs th{width:175px;line-height:22px}#rs .tt{padding:0;line-height:30px}#rs td{width:5px}#rs table{width:540px}#help{background:#f5f6f5;zoom:1;padding:0 0 0 50px;float:right}#help a{color:#777;padding:0 15px;text-decoration:none}#help a:hover{color:#333}#foot{background:#f5f6f5;border-top:1px solid #ebebeb;text-align:left;height:42px;line-height:42px;margin-top:40px;*margin-top:0}#foot .foot_c{float:left;padding:0 0 0 121px}.content_none{padding:45px 0 0 121px}.nors p{font-size:18px;font-family:microsoft yahei;color:#000}.nors p em{color:#c00}.nors .tip_head{color:#666;font-size:13px;line-height:28px}.nors li{color:#333;line-height:28px;font-size:13px;font-family:'\u5b8b\u4f53';padding-left:30px;list-style-position:inside;list-style-type:disc}#mCon{top:5px}.s_ipt_wr.bg,.s_btn_wr.bg,#su.bg{background-image:none}.s_ipt_wr.bg{background:0}.s_btn_wr{width:auto;height:auto;border-bottom:1px solid transparent;*border-bottom:0}.s_btn{width:100px;height:34px;color:white;letter-spacing:1px;background:#3385ff;border-bottom:1px solid #2d78f4;outline:medium;*border-bottom:0;-webkit-appearance:none;-webkit-border-radius:0}.s_btn.btnhover{background:#317ef3;border-bottom:1px solid #2868c8;*border-bottom:0;box-shadow:1px 1px 1px #ccc}.s_btn_h{background:#3075dc;box-shadow:inset 1px 1px 3px #2964bb;-webkit-box-shadow:inset 1px 1px 3px #2964bb;-moz-box-shadow:inset 1px 1px 3px #2964bb;-o-box-shadow:inset 1px 1px 3px #2964bb}#head .bdsug{top:33px}.bdsug{width:538px;border-color:#ccc;box-shadow:1px 1px 3px #ededed;-webkit-box-shadow:1px 1px 3px #ededed;-moz-box-shadow:1px 1px 3px #ededed;-o-box-shadow:1px 1px 3px #ededed}.bdsug.bdsugbg{background-repeat:no-repeat;background-position:100% 100%;background-size:100px 110px;background-image:url(http:\/\/s1.bdstatic.com\/r\/www\/cache\/static\/home\/img\/sugbg_6a9201c2.png);background-image:url(http:\/\/s1.bdstatic.com\/r\/www\/cache\/static\/home\/img\/sugbg_d24a0811.gif)\\9}.bdsug li{width:522px;line-height:22px}.bdsug li.bdsug-s{background:#f0f0f0}.bdsug-ala h3{margin:8px 0 5px 0}#wrapper_wrapper .container_l .EC_ppim_top,#wrapper_wrapper .container_xl .EC_ppim_top{width:640px}#wrapper_wrapper .container_s .EC_ppim_top{width:570px}#head .c-icon-bear-round{display:none}.container_l #content_right{width:384px}.container_l{width:1212px}.container_xl #content_right{width:384px}.container_xl{width:1257px}.index_tab_top{display:none}.index_tab_bottom{display:none}#lg{display:none}#m{display:none}#ftCon{display:none}#ent_sug{position:absolute;margin:141px 0 0 130px;font-size:13px;color:#666}.foot_fixed_bottom{position:fixed;bottom:0;width:100%;_position:absolute;_bottom:auto}.c-icon{background:url(http:\/\/s1.bdstatic.com\/r\/www\/cache\/static\/global\/img\/icons_3bfb8e45.png) no-repeat 0 0;_background-image:url(\"http:\/\/s1.bdstatic.com\/r\/www\/cache\/static\/global\/img\/icons_f72fb1cc.gif\")}.c-frame{margin-bottom:18px}.c-offset{padding-left:10px}.c-gray{color:#666}.c-gap-top-small{margin-top:5px}.c-gap-top{margin-top:10px}.c-gap-bottom-small{margin-bottom:5px}.c-gap-bottom{margin-bottom:10px}.c-gap-left{margin-left:12px}.c-gap-left-small{margin-left:6px}.c-gap-right{margin-right:12px}.c-gap-right-small{margin-right:6px}.c-gap-right-large{margin-right:16px}.c-gap-left-large{margin-left:16px}.c-gap-icon-right-small{margin-right:5px}.c-gap-icon-right{margin-right:10px}.c-gap-icon-left-small{margin-left:5px}.c-gap-icon-left{margin-left:10px}.c-container{width:538px;font-size:13px;line-height:1.54;word-wrap:break-word;word-break:break-all}.c-container .c-container{width:auto}.c-container table{border-collapse:collapse;border-spacing:0}.c-container td{font-size:13px;line-height:1.54}.c-default{font-size:13px;line-height:1.54;word-wrap:break-word;word-break:break-all}.c-container .t,.c-default .t{line-height:1.54}.c-default .t{margin-bottom:0}.cr-content{width:259px;font-size:13px;line-height:1.54;color:#333;word-wrap:break-word;word-break:normal}.cr-content table{border-collapse:collapse;border-spacing:0}.cr-content td{font-size:13px;line-height:1.54;vertical-align:top}.cr-offset{padding-left:17px}.cr-title{font-size:14px;line-height:1.29;font-weight:bold}.cr-title-sub{float:right;font-size:13px;font-weight:normal}.c-row{*zoom:1}.c-row:after{display:block;height:0;content:\"\";clear:both;visibility:hidden}.c-span2{width:29px}.c-span3{width:52px}.c-span4{width:75px}.c-span5{width:98px}.c-span6{width:121px}.c-span7{width:144px}.c-span8{width:167px}.c-span9{width:190px}.c-span10{width:213px}.c-span11{width:236px}.c-span12{width:259px}.c-span13{width:282px}.c-span14{width:305px}.c-span15{width:328px}.c-span16{width:351px}.c-span17{width:374px}.c-span18{width:397px}.c-span19{width:420px}.c-span20{width:443px}.c-span21{width:466px}.c-span22{width:489px}.c-span23{width:512px}.c-span24{width:535px}.c-span2,.c-span3,.c-span4,.c-span5,.c-span6,.c-span7,.c-span8,.c-span9,.c-span10,.c-span11,.c-span12,.c-span13,.c-span14,.c-span15,.c-span16,.c-span17,.c-span18,.c-span19,.c-span20,.c-span21,.c-span22,.c-span23,.c-span24{float:left;_display:inline;margin-right:17px;list-style:none}.c-span-last{margin-right:0}.c-span-last-s{margin-right:0}.container_l .cr-content{width:351px}.container_l .cr-content .c-span-last-s{margin-right:17px}.container_l .cr-content-narrow{width:259px}.container_l .cr-content-narrow .c-span-last-s{margin-right:0}.c-border{width:518px;padding:9px;border:1px solid #e3e3e3;border-bottom-color:#e0e0e0;border-right-color:#ececec;box-shadow:1px 2px 1px rgba(0,0,0,0.072);-webkit-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-moz-box-shadow:1px 2px 1px rgba(0,0,0,0.072);-o-box-shadow:1px 2px 1px rgba(0,0,0,0.072)}.c-border .c-gap-left{margin-left:10px}.c-border .c-gap-left-small{margin-left:5px}.c-border .c-gap-right{margin-right:10px}.c-border .c-gap-right-small{margin-right:5px}.c-border .c-border{width:auto;padding:0;border:0;box-shadow:none;-webkit-box-shadow:none;-moz-box-shadow:none;-o-box-shadow:none}.c-border .c-span2{width:34px}.c-border .c-span3{width:56px}.c-border .c-span4{width:78px}.c-border .c-span5{width:100px}.c-border .c-span6{width:122px}.c-border .c-span7{width:144px}.c-border .c-span8{width:166px}.c-border .c-span9{width:188px}.c-border .c-span10{width:210px}.c-border .c-span11{width:232px}.c-border .c-span12{width:254px}.c-border .c-span13{width:276px}.c-border .c-span14{width:298px}.c-border .c-span15{width:320px}.c-border .c-span16{width:342px}.c-border .c-span17{width:364px}.c-border .c-span18{width:386px}.c-border .c-span19{width:408px}.c-border .c-span20{width:430px}.c-border .c-span21{width:452px}.c-border .c-span22{width:474px}.c-border .c-span23{width:496px}.c-border .c-span24{width:518px}.c-border .c-span2,.c-border .c-span3,.c-border .c-span4,.c-border .c-span5,.c-border .c-span6,.c-border .c-span7,.c-border .c-span8,.c-border .c-span9,.c-border .c-span10,.c-border .c-span11,.c-border .c-span12,.c-border .c-span13,.c-border .c-span14,.c-border .c-span15,.c-border .c-span16,.c-border .c-span17,.c-border .c-span18,.c-border .c-span19,.c-border .c-span20,.c-border .c-span21,.c-border .c-span22,.c-border .c-span23,.c-border .c-span24{margin-right:10px}.c-border .c-span-last{margin-right:0}.c-loading{display:block;width:50px;height:50px;background:url(\"\/\/www.baidu.com\/aladdin\/img\/tools\/loading.gif\") no-repeat 0 0}.c-vline{display:inline-block;margin:0 3px;border-left:1px solid #ddd;width:0;height:12px;_vertical-align:middle;_overflow:hidden}.c-icon{display:inline-block;width:14px;height:14px;vertical-align:text-bottom;font-style:normal;overflow:hidden}.c-icon-unfold,.c-icon-fold,.c-icon-chevron-unfold,.c-icon-chevron-fold{width:12px;height:12px}.c-icon-star,.c-icon-star-gray{width:60px}.c-icon-qa-empty,.c-icon-safeguard,.c-icon-register-empty,.c-icon-zan,.c-icon-music,.c-icon-location,.c-icon-warning,.c-icon-doc,.c-icon-xls,.c-icon-ppt,.c-icon-pdf,.c-icon-txt,.c-icon-play-black,.c-icon-gift,.c-icon-baidu-share,.c-icon-bear,.c-icon-sfda,.c-icon-bear-border,.c-icon-location-blue,.c-icon-hotAirBall,.c-icon-moon,.c-icon-streetMap,.c-icon-mv,.c-icon-zhidao-s,.c-icon-shopping{width:16px;height:16px}.c-icon-bear-circle,.c-icon-warning-circle,.c-icon-warning-triangle,.c-icon-warning-circle-gray{width:18px;height:18px}.c-icon-tieba,.c-icon-zhidao,.c-icon-bear-p,.c-icon-bear-pn{width:24px;height:24px}.c-icon-ball-blue,.c-icon-ball-red{width:38px;height:38px}.c-icon-unfold:hover,.c-icon-fold:hover,.c-icon-chevron-unfold:hover,.c-icon-chevron-fold:hover,.c-icon-download:hover,.c-icon-lyric:hover,.c-icon-v:hover,.c-icon-hui:hover,.c-icon-bao:hover,.c-icon-person:hover,.c-icon-high-v:hover,.c-icon-phone:hover,.c-icon-nuo:hover,.c-icon-med:hover,.c-icon-air:hover,.c-icon-share2:hover,.c-icon-v1:hover,.c-icon-v2:hover,.c-icon-v3:hover,.c-icon-write:hover{border-color:#388bff}.c-icon-unfold:active,.c-icon-fold:active,.c-icon-chevron-unfold:active,.c-icon-chevron-fold:active,.c-icon-download:active,.c-icon-lyric:active,.c-icon-v:active,.c-icon-hui:active,.c-icon-bao:active,.c-icon-person:active,.c-icon-high-v:active,.c-icon-phone:active,.c-icon-nuo:active,.c-icon-med:active,.c-icon-air:active,.c-icon-share2:active,.c-icon-v1:active,.c-icon-v2:active,.c-icon-v3:active,.c-icon-write:active{border-color:#a2a6ab;background-color:#f0f0f0;box-shadow:inset 1px 1px 1px #c7c7c7;-webkit-box-shadow:inset 1px 1px 1px #c7c7c7;-moz-box-shadow:inset 1px 1px 1px #c7c7c7;-o-box-shadow:inset 1px 1px 1px #c7c7c7}.c-icon-unfold,.c-icon-fold,.c-icon-chevron-unfold,.c-icon-chevron-fold,.c-icon-download,.c-icon-lyric{border:1px solid #d8d8d8;cursor:pointer}.c-icon-v,.c-icon-hui,.c-icon-bao,.c-icon-person,.c-icon-high-v,.c-icon-phone,.c-icon-nuo,.c-icon-med,.c-icon-air,.c-icon-share2,.c-icon-v1,.c-icon-v2,.c-icon-v3,.c-icon-write{border:1px solid #d8d8d8;cursor:pointer;border-color:transparent;_border-color:tomato;_filter:chroma(color=#ff6347)}.c-icon-v1,.c-icon-v2,.c-icon-v3,.c-icon-v1-noborder,.c-icon-v2-noborder,.c-icon-v3-noborder,.c-icon-v1-noborder-disable,.c-icon-v2-noborder-disable,.c-icon-v3-noborder-disable{width:19px}.c-icon-download,.c-icon-lyric{width:16px;height:16px}.c-icon-play-circle,.c-icon-stop-circle{width:18px;height:18px}.c-icon-play-circle-middle,.c-icon-stop-circle-middle{width:24px;height:24px}.c-icon-play-black-large,.c-icon-stop-black-large{width:36px;height:36px}.c-icon-play-black-larger,.c-icon-stop-black-larger{width:52px;height:52px}.c-icon-flag{background-position:0 -144px}.c-icon-bus{background-position:-24px -144px}.c-icon-calendar{background-position:-48px -144px}.c-icon-street{background-position:-72px -144px}.c-icon-map{background-position:-96px -144px}.c-icon-bag{background-position:-120px -144px}.c-icon-money{background-position:-144px -144px}.c-icon-game{background-position:-168px -144px}.c-icon-user{background-position:-192px -144px}.c-icon-globe{background-position:-216px -144px}.c-icon-lock{background-position:-240px -144px}.c-icon-plane{background-position:-264px -144px}.c-icon-list{background-position:-288px -144px}.c-icon-star-gray{background-position:-312px -144px}.c-icon-circle-gray{background-position:-384px -144px}.c-icon-triangle-down{background-position:-408px -144px}.c-icon-triangle-up{background-position:-432px -144px}.c-icon-triangle-up-empty{background-position:-456px -144px}.c-icon-sort-gray{background-position:-480px -144px}.c-icon-sort-up{background-position:-504px -144px}.c-icon-sort-down{background-position:-528px -144px}.c-icon-down-gray{background-position:-552px -144px}.c-icon-up-gray{background-position:-576px -144px}.c-icon-download-noborder{background-position:-600px -144px}.c-icon-lyric-noborder{background-position:-624px -144px}.c-icon-download-white{background-position:-648px -144px}.c-icon-close{background-position:-672px -144px}.c-icon-fail{background-position:-696px -144px}.c-icon-success{background-position:-720px -144px}.c-icon-triangle-down-g{background-position:-744px -144px}.c-icon-refresh{background-position:-768px -144px}.c-icon-chevron-left-gray{background-position:-816px -144px}.c-icon-chevron-right-gray{background-position:-840px -144px}.c-icon-fullscreen{background-position:0 -168px}.c-icon-safe{background-position:-24px -168px}.c-icon-exchange{background-position:-48px -168px}.c-icon-chevron-bottom{background-position:-72px -168px}.c-icon-chevron-top{background-position:-96px -168px}.c-icon-unfold{background-position:-120px -168px}.c-icon-fold{background-position:-144px -168px}.c-icon-chevron-unfold{background-position:-168px -168px}.c-icon-qa{background-position:-192px -168px}.c-icon-register{background-position:-216px -168px}.c-icon-star{background-position:-240px -168px}.c-icon-star-gray{position:relative}.c-icon-star-gray .c-icon-star{position:absolute;top:0;left:0}.c-icon-play-blue{background-position:-312px -168px}.c-icon-pic{width:16px;background-position:-336px -168px}.c-icon-chevron-fold{background-position:-360px -168px}.c-icon-video{width:18px;background-position:-384px -168px}.c-icon-circle-blue{background-position:-408px -168px}.c-icon-circle-yellow{background-position:-432px -168px}.c-icon-play-white{background-position:-456px -168px}.c-icon-triangle-down-blue{background-position:-480px -168px}.c-icon-chevron-unfold2{background-position:-504px -168px}.c-icon-right{background-position:-528px -168px}.c-icon-right-empty{background-position:-552px -168px}.c-icon-new-corner{width:15px;background-position:-576px -168px}.c-icon-horn{background-position:-600px -168px}.c-icon-right-large{width:18px;background-position:-624px -168px}.c-icon-wrong-large{background-position:-648px -168px}.c-icon-circle-blue-s{background-position:-672px -168px}.c-icon-play-gray{background-position:-696px -168px}.c-icon-up{background-position:-720px -168px}.c-icon-down{background-position:-744px -168px}.c-icon-stable{background-position:-768px -168px}.c-icon-calendar-blue{background-position:-792px -168px}.c-icon-triangle-down-blue2{background-position:-816px -168px}.c-icon-triangle-up-blue2{background-position:-840px -168px}.c-icon-down-blue{background-position:-864px -168px}.c-icon-up-blue{background-position:-888px -168px}.c-icon-ting{background-position:-912px -168px}.c-icon-piao{background-position:-936px -168px}.c-icon-wrong-empty{background-position:-960px -168px}.c-icon-warning-circle-s{background-position:-984px -168px}.c-icon-chevron-left{background-position:-1008px -168px}.c-icon-chevron-right{background-position:-1032px -168px}.c-icon-circle-gray-s{background-position:-1056px -168px}.c-icon-v,.c-icon-v-noborder{background-position:0 -192px}.c-icon-hui{background-position:-24px -192px}.c-icon-bao{background-position:-48px -192px}.c-icon-phone{background-position:-72px -192px}.c-icon-qa-empty{background-position:-96px -192px}.c-icon-safeguard{background-position:-120px -192px}.c-icon-register-empty{background-position:-144px -192px}.c-icon-zan{background-position:-168px -192px}.c-icon-music{background-position:-192px -192px}.c-icon-location{background-position:-240px -192px}.c-icon-warning{background-position:-264px -192px}.c-icon-doc{background-position:-288px -192px}.c-icon-xls{background-position:-312px -192px}.c-icon-ppt{background-position:-336px -192px}.c-icon-pdf{background-position:-360px -192px}.c-icon-txt{background-position:-384px -192px}.c-icon-play-black{background-position:-408px -192px}.c-icon-play-black:hover{background-position:-432px -192px}.c-icon-gift{background-position:-456px -192px}.c-icon-baidu-share{background-position:-480px -192px}.c-icon-bear{background-position:-504px -192px}.c-icon-sfda{width:31px;background-position:-528px -192px}.c-icon-bear-border{background-position:-576px -192px}.c-icon-person,.c-icon-person-noborder{background-position:-600px -192px}.c-icon-location-blue{background-position:-624px -192px}.c-icon-hotAirBall{background-position:-648px -192px}.c-icon-moon{background-position:-672px -192px}.c-icon-streetMap{background-position:-696px -192px}.c-icon-high-v,.c-icon-high-v-noborder{background-position:-720px -192px}.c-icon-nuo{background-position:-744px -192px}.c-icon-mv{background-position:-768px -192px}.c-icon-med{background-position:-816px -192px}.c-icon-air{background-position:-840px -192px}.c-icon-share2{background-position:-864px -192px}.c-icon-v1,.c-icon-v1-noborder{background-position:-888px -192px}.c-icon-v2,.c-icon-v2-noborder{background-position:-912px -192px}.c-icon-v3,.c-icon-v3-noborder{background-position:-936px -192px}.c-icon-v1-noborder-disable{background-position:-960px -192px}.c-icon-v2-noborder-disable{background-position:-984px -192px}.c-icon-v3-noborder-disable{background-position:-1008px -192px}.c-icon-write{background-position:-1032px -192px}.c-icon-zhidao-s{background-position:-1056px -192px}.c-icon-shopping{background-position:-1080px -192px}.c-icon-bear-circle{background-position:0 -216px}.c-icon-warning-circle{background-position:-24px -216px}.c-icon-warning-triangle{width:24px;background-position:-48px -216px}.c-icon-warning-circle-gray{background-position:-72px -216px}.c-icon-ball-red{background-position:0 -240px}.c-icon-ball-blue{background-position:-48px -240px}.c-icon-tieba{background-position:0 -288px}.c-icon-zhidao{background-position:-48px -288px}.c-icon-bear-p{background-position:-96px -288px}.c-icon-bear-pn{background-position:-144px -288px}.c-icon-download{background-position:0 -336px}.c-icon-lyric{background-position:-24px -336px}.c-icon-play-circle{background-position:-48px -336px}.c-icon-play-circle:hover{background-position:-72px -336px}.c-icon-stop-circle{background-position:-96px -336px}.c-icon-stop-circle:hover{background-position:-120px -336px}.c-icon-play-circle-middle{background-position:0 -360px}.c-icon-play-circle-middle:hover{background-position:-48px -360px}.c-icon-stop-circle-middle{background-position:-96px -360px}.c-icon-stop-circle-middle:hover{background-position:-144px -360px}.c-icon-play-black-large{background-position:0 -408px}.c-icon-play-black-large:hover{background-position:-48px -408px}.c-icon-stop-black-large{background-position:-96px -408px}.c-icon-stop-black-large:hover{background-position:-144px -408px}.c-icon-play-black-larger{background-position:0 -456px}.c-icon-play-black-larger:hover{background-position:-72px -456px}.c-icon-stop-black-larger{background-position:-144px -456px}.c-icon-stop-black-larger:hover{background-position:-216px -456px}.c-recommend{font-size:0;padding:5px 0;border:1px solid #f3f3f3;border-left:none;border-right:0}.c-recommend .c-icon{margin-bottom:-4px}.c-recommend .c-gray,.c-recommend a{font-size:13px}.c-recommend-notopline{padding-top:0;border-top:0}.c-recommend-vline{display:inline-block;margin:0 10px -2px;border-left:1px solid #d8d8d8;width:0;height:12px;_vertical-align:middle;_overflow:hidden}.c-text{display:inline-block;padding:2px;text-align:center;vertical-align:text-bottom;font-size:12px;line-height:100%;font-style:normal;font-weight:normal;color:#fff;overflow:hidden}a.c-text{text-decoration:none}.c-text-new{background-color:#f13f40}.c-text-info{padding-left:0;padding-right:0;font-weight:bold;color:#2b99ff;*vertical-align:baseline;_position:relative;_top:2px}.c-text-info b{_position:relative;_top:-1px}.c-text-info span{padding:0 2px;font-weight:normal}.c-text-important{background-color:#1cb7fd}.c-text-public{background-color:#2b99ff}.c-text-warning{background-color:#ff830f}.c-text-prompt{background-color:#f5c537}.c-text-danger{background-color:#f13f40}.c-text-safe{background-color:#52c277}.c-text-empty{padding-top:1px;padding-bottom:1px;border:1px solid #d8d8d8;cursor:pointer;color:#23b9fd;background-color:#fff}.c-text-empty:hover{border-color:#388bff}.c-text-empty:active{border-color:#a2a6ab;background-color:#f0f0f0;box-shadow:inset 1px 1px 1px #c7c7c7;-webkit-box-shadow:inset 1px 1px 1px #c7c7c7;-moz-box-shadow:inset 1px 1px 1px #c7c7c7;-o-box-shadow:inset 1px 1px 1px #c7c7c7}.c-text-mult{padding-left:5px;padding-right:5px}.c-text-gray{background-color:#666}.c-btn,.c-btn:visited{color:#333!important}.c-btn{display:inline-block;padding:0 14px;margin:0;height:24px;line-height:25px;font-size:13px;filter:chroma(color=#000000);*zoom:1;border:1px solid #d8d8d8;cursor:pointer;font-family:inherit;font-weight:normal;text-align:center;vertical-align:middle;background-color:#f9f9f9;overflow:hidden;outline:0}.c-btn:hover{border-color:#388bff}.c-btn:active{border-color:#a2a6ab;background-color:#f0f0f0;box-shadow:inset 1px 1px 1px #c7c7c7;-webkit-box-shadow:inset 1px 1px 1px #c7c7c7;-moz-box-shadow:inset 1px 1px 1px #c7c7c7;-o-box-shadow:inset 1px 1px 1px #c7c7c7}a.c-btn{text-decoration:none}button.c-btn{height:26px;_line-height:18px;*overflow:visible}button.c-btn::-moz-focus-inner{padding:0;border:0}.c-btn .c-icon{margin-top:5px}.c-btn-disable{color:#999!important}.c-btn-disable:visited{color:#999!important}.c-btn-disable:hover{border:1px solid #d8d8d8;cursor:default}.c-btn-disable:active{border-color:#d8d8d8;background-color:#f9f9f9;box-shadow:none;-webkit-box-shadow:none;-moz-box-shadow:none;-o-box-shadow:none}.c-btn-mini{padding-left:5px;padding-right:5px;height:18px;line-height:18px;font-size:12px}button.c-btn-mini{height:20px;_height:18px;_line-height:14px}.c-btn-mini .c-icon{margin-top:2px}.c-btn-large{height:28px;line-height:28px;font-size:14px;font-family:\"\u5fae\u8f6f\u96c5\u9ed1\",\"\u9ed1\u4f53\"}button.c-btn-large{height:30px;_line-height:24px}.c-btn-large .c-icon{margin-top:7px;_margin-top:6px}.c-btn-primary,.c-btn-primary:visited{color:#fff!important}.c-btn-primary{background-color:#388bff;border-color:#3c8dff #408ffe #3680e6}.c-btn-primary:hover{border-color:#2678ec #2575e7 #1c6fe2 #2677e7;background-color:#388bff;background-image:url(data:image\/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAMAAACuX0YVAAAABlBMVEVnpv85i\/9PO5r4AAAAD0lEQVR42gEEAPv\/AAAAAQAFAAIros7PAAAAAElFTkSuQmCC);background-repeat:repeat-x;box-shadow:1px 1px 1px rgba(0,0,0,0.4);-webkit-box-shadow:1px 1px 1px rgba(0,0,0,0.4);-moz-box-shadow:1px 1px 1px rgba(0,0,0,0.4);-o-box-shadow:1px 1px 1px rgba(0,0,0,0.4)}.c-btn-primary:active{border-color:#178ee3 #1784d0 #177bbf #1780ca;background-color:#388bff;background-image:none;box-shadow:inset 1px 1px 1px rgba(0,0,0,0.15);-webkit-box-shadow:inset 1px 1px 1px rgba(0,0,0,0.15);-moz-box-shadow:inset 1px 1px 1px rgba(0,0,0,0.15);-o-box-shadow:inset 1px 1px 1px rgba(0,0,0,0.15)}.c-btn .c-icon{float:left}.c-dropdown2{position:relative;display:inline-block;width:100%;height:26px;line-height:26px;font-size:13px;vertical-align:middle;outline:0;_font-family:SimSun;background-color:#fff;word-wrap:normal;word-break:normal}.c-dropdown2 .c-dropdown2-btn-group{position:relative;height:24px;border:1px solid #999;border-bottom-color:#d8d8d8;border-right-color:#d8d8d8;-moz-user-select:none;-webkit-user-select:none;user-select:none}.c-dropdown2:hover .c-dropdown2-btn-group,.c-dropdown2-hover .c-dropdown2-btn-group{box-shadow:inset 1px 1px 0 0 #d8d8d8;-webkit-box-shadow:inset 1px 1px 0 0 #d8d8d8;-moz-box-shadow:inset 1px 1px 0 0 #d8d8d8;-o-box-shadow:inset 1px 1px 0 0 #d8d8d8}.c-dropdown2:hover .c-dropdown2-btn-icon,.c-dropdown2-hover .c-dropdown2-btn-icon{box-shadow:inset 0 1px 0 0 #d8d8d8;-webkit-box-shadow:inset 0 1px 0 0 #d8d8d8;-moz-box-shadow:inset 0 1px 0 0 #d8d8d8;-o-box-shadow:inset 0 1px 0 0 #d8d8d8}.c-dropdown2:hover .c-dropdown2-btn-icon-border,.c-dropdown2-hover .c-dropdown2-btn-icon-border{background-color:#f2f2f2}.c-dropdown2 .c-dropdown2-btn{height:24px;padding-left:10px;padding-right:10px;cursor:default;overflow:hidden;white-space:nowrap}.c-dropdown2 .c-dropdown2-btn-icon{position:absolute;top:0;right:0;width:23px;height:24px;line-height:24px;background-color:#fff;padding:0 1px 0 10px}.c-dropdown2 .c-dropdown2-btn-icon-border{height:24px;width:23px;border-left:1px solid #d9d9d9;text-align:center;zoom:1}.c-dropdown2 .c-icon-triangle-down{*margin-top:5px;_margin-left:2px}.c-dropdown2 .c-dropdown2-menu{position:absolute;left:0;top:100%;_margin-top:0;width:100%;overflow:hidden;border:1px solid #bbb;background:#fff;visibility:hidden}.c-dropdown2 .c-dropdown2-menu-inner{overflow:hidden}.c-dropdown2 .c-dropdown2-option{background-color:#fff;cursor:pointer}.c-dropdown2 .c-dropdown2-selected{background-color:#f5f5f5}.c-dropdown2-common ul,.c-dropdown2-common li{margin:0;padding:0;list-style:none}.c-dropdown2-common .c-dropdown2-option{height:26px;line-height:26px;font-size:12px;color:#333;white-space:nowrap;cursor:pointer;padding-left:10px}.c-dropdown2-common .c-dropdown2-selected{background-color:#f5f5f5}.c-dropdown2-common .c-dropdown2-menu-group .c-dropdown2-group{padding-left:10px;font-weight:bold;cursor:default}.c-dropdown2-common .c-dropdown2-menu-group .c-dropdown2-option{padding-left:20px}.c-img{display:block;min-height:1px;border:none 0}.c-img3{width:52px}.c-img4{width:75px}.c-img6{width:121px}.c-img7{width:144px}.c-img12{width:259px}.c-img15{width:328px}.c-img18{width:397px}.c-border .c-img3{width:56px}.c-border .c-img4{width:78px}.c-border .c-img7{width:144px}.c-border .c-img12{width:254px}.c-border .c-img15{width:320px}.c-border .c-img18{width:386px}.c-index{display:inline-block;padding:1px 0;color:#fff;width:14px;line-height:100%;font-size:12px;text-align:center;background-color:#8eb9f5}.c-index-hot,.c-index-hot1{background-color:#f54545}.c-index-hot2{background-color:#ff8547}.c-index-hot3{background-color:#ffac38}.c-input{display:inline-block;padding:0 4px;height:24px;line-height:24px\\9;font-size:13px;border:1px solid #999;border-bottom-color:#d8d8d8;border-right-color:#d8d8d8;outline:0;box-sizing:content-box;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;vertical-align:top;overflow:hidden}.c-input:hover{box-shadow:inset 1px 1px 1px 0 #d8d8d8;-webkit-box-shadow:inset 1px 1px 1px 0 #d8d8d8;-moz-box-shadow:inset 1px 1px 1px 0 #d8d8d8;-o-box-shadow:inset 1px 1px 1px 0 #d8d8d8}.c-input .c-icon{float:right;margin-top:6px}.c-input .c-icon-left{float:left;margin-right:4px}.c-input input{float:left;height:22px;*padding-top:4px;margin-top:2px;font-size:13px;border:0;outline:0}.c-input{width:180px}.c-input input{width:162px}.c-input-xmini{width:65px}.c-input-xmini input{width:47px}.c-input-mini{width:88px}.c-input-mini input{width:70px}.c-input-small{width:157px}.c-input-small input{width:139px}.c-input-large{width:203px}.c-input-large input{width:185px}.c-input-xlarge{width:341px}.c-input-xlarge input{width:323px}.c-input12{width:249px}.c-input12 input{width:231px}.c-input20{width:433px}.c-input20 input{width:415px}.c-border .c-input{width:178px}.c-border .c-input input{width:160px}.c-border .c-input-xmini{width:68px}.c-border .c-input-xmini input{width:50px}.c-border .c-input-mini{width:90px}.c-border .c-input-mini input{width:72px}.c-border .c-input-small{width:156px}.c-border .c-input-small input{width:138px}.c-border .c-input-large{width:200px}.c-border .c-input-large input{width:182px}.c-border .c-input-xlarge{width:332px}.c-border .c-input-xlarge input{width:314px}.c-border .c-input12{width:244px}.c-border .c-input12 input{width:226px}.c-border .c-input20{width:420px}.c-border .c-input20 input{width:402px}.c-numberset{*zoom:1}.c-numberset:after{display:block;height:0;content:\"\";clear:both;visibility:hidden}.c-numberset li{float:left;margin-right:17px;list-style:none}.c-numberset .c-numberset-last{margin-right:0}.c-numberset a{display:block;width:50px;text-decoration:none;text-align:center;border:1px solid #d8d8d8;cursor:pointer}.c-numberset a:hover{border-color:#388bff}.c-border .c-numberset li{margin-right:10px}.c-border .c-numberset .c-numberset-last{margin-right:0}.c-border .c-numberset a{width:54px}.c-table{width:100%;border-collapse:collapse;border-spacing:0}.c-table th,.c-table td{padding-left:10px;line-height:1.54;font-size:13px;border-bottom:1px solid #f3f3f3;text-align:left}.cr-content .c-table th:first-child,.cr-content .c-table td:first-child{padding-left:0}.c-table th{padding-top:4px;padding-bottom:4px;font-weight:normal;color:#666;border-color:#f0f0f0;white-space:nowrap;background-color:#fafafa}.c-table td{padding-top:6.5px;padding-bottom:6.5px}.c-table-hasimg td{padding-top:10px;padding-bottom:10px}.c-table a,.c-table em{text-decoration:none}.c-table a:hover,.c-table a:hover em{text-decoration:underline}.c-table a.c-icon:hover{text-decoration:none}.c-table .c-btn:hover,.c-table .c-btn:hover em{text-decoration:none}.c-table-nohihead th{background-color:transparent}.c-table-noborder td{border-bottom:0}.c-tabs-nav-movetop{margin:-10px -9px 0 -10px;position:relative}.c-tabs-nav{_width:538px;border-bottom:1px solid #d9d9d9;background-color:#fafafa;line-height:1.54;font-size:0;*zoom:1;_overflow-x:hidden;_position:relative}.c-tabs-nav:after{display:block;height:0;content:\"\";clear:both;visibility:hidden}.c-tabs-nav .c-tabs-nav-btn{float:right;_position:absolute;_top:0;_right:0;_z-index:1;background:#fafafa}.c-tabs-nav .c-tabs-nav-btn .c-tabs-nav-btn-prev,.c-tabs-nav .c-tabs-nav-btn .c-tabs-nav-btn-next{float:left;padding:6px 2px;cursor:pointer}.c-tabs-nav .c-tabs-nav-btn .c-tabs-nav-btn-disable{cursor:default}.c-tabs-nav .c-tabs-nav-view{_position:relative;overflow:hidden;*zoom:1;margin-bottom:-1px}.c-tabs-nav .c-tabs-nav-view .c-tabs-nav-li{margin-bottom:0}.c-tabs-nav .c-tabs-nav-more{float:left;white-space:nowrap}.c-tabs-nav li,.c-tabs-nav a{color:#666;font-size:13px;*zoom:1}.c-tabs-nav li{display:inline-block;margin-bottom:-1px;*display:inline;padding:3px 15px;vertical-align:bottom;border-style:solid;border-width:2px 1px 0 1px;border-color:transparent;_border-color:tomato;_filter:chroma(color=#ff6347);list-style:none;cursor:pointer;white-space:nowrap;overflow:hidden}.c-tabs-nav a{text-decoration:none}.c-tabs-nav .c-tabs-nav-sep{height:16px;width:0;padding:0;margin-bottom:4px;border-style:solid;border-width:0 1px 0;border-color:transparent #fff transparent #dedede}.c-tabs-nav .c-tabs-nav-selected{_position:relative;border-color:#2c99ff #e4e4e4 #fff #dedede;background-color:#fff;color:#000;cursor:default}.c-tabs-nav-one .c-tabs-nav-selected{border-color:transparent;_border-color:tomato;_filter:chroma(color=#ff6347);background-color:transparent;color:#666}.c-tabs .c-tabs .c-tabs-nav{padding:10px 0 5px;border:none 0;background-color:#fff}.c-tabs .c-tabs .c-tabs-nav li,.c-tabs .c-tabs .c-tabs-nav a{color:#00c}.c-tabs .c-tabs .c-tabs-nav li{padding:0 5px;position:static;margin:0 10px;border:none 0;cursor:pointer;white-space:nowrap}.c-tabs .c-tabs .c-tabs-nav .c-tabs-nav-sep{height:11px;width:0;padding:0;margin:0 0 4px 0;border:none 0;border-left:1px solid #d8d8d8}.c-tabs .c-tabs .c-tabs-nav .c-tabs-nav-selected{background-color:#2c99ff;color:#fff;cursor:default}.c-tag{padding-top:3px;margin-bottom:3px;height:1.7em;font-size:13px;line-height:1.4em;transition:height .3s ease-in;-webkit-transition:height .3s ease-in;-moz-transition:height .3s ease-in;-ms-transition:height .3s ease-in;-o-transition:height .3s ease-in;*zoom:1;overflow:hidden}.c-tag:after{display:block;height:0;content:\"\";clear:both;visibility:hidden}.c-tag-cont{overflow:hidden;*zoom:1}.c-tag-type,.c-tag-li,.c-tag-more,.c-tag-cont span{margin:2px 0}.c-tag-type,.c-tag-li,.c-tag-cont span{float:left}.c-tag-type,.c-tag-more{color:#666}.c-tag-li,.c-tag-cont span{padding:0 4px;display:inline-block;margin-right:12px;white-space:nowrap;cursor:pointer;color:#00c}.c-tag .c-tag-selected{background:#388bff;color:#fff}.c-tag-more{float:right;background:#fff;cursor:pointer;*height:18px}.c-tool{display:inline-block;width:56px;height:56px;background:url(\"\/\/www.baidu.com\/aladdin\/img\/tools\/tools-5.png\") no-repeat}.c-tool-region{background-position:0 0}.c-tool-calendar{background-position:-72px 0}.c-tool-city{background-position:-144px 0}.c-tool-phone-pos{background-position:-216px 0}.c-tool-other{background-position:-288px 0}.c-tool-midnight{background-position:-360px 0}.c-tool-kefu{width:121px;background-position:-432px 0}.c-tool-phone{background-position:-576px 0}.c-tool-car{background-position:-648px 0}.c-tool-station{background-position:0 -72px}.c-tool-cheat{background-position:-72px -72px}.c-tool-counter{background-position:-144px -72px}.c-tool-time{background-position:-216px -72px}.c-tool-zip{background-position:-288px -72px}.c-tool-warning{background-position:-360px -72px}.c-tool-ip{background-position:0 -144px}.c-tool-unit{background-position:-72px -144px}.c-tool-rate{background-position:-144px -144px}.c-tool-conversion{background-position:-288px -144px}.c-tool-ads{background-position:-360px -144px}<\/style>";result_common_css=$(result_common_css);result_common_css.attr("data-for","result");var index_css= $('head [index]');var wrapper=$("#wrapper");window.index_on=function(){index_css.insertAfter("meta:eq(0)");result_common_css.remove();wrapper.show();if(bds.su&&bds.su.U&&bds.su.U.homeInit){bds.su.U.homeInit();}};window.index_off=function(){result_common_css.insertAfter("meta:eq(0)");wrapper.show();index_css.remove();};})();$(window).on("load",function() {if(window.performance && performance.timing) {var getPerfData = function() {var navigation = getTimingData("navigation"),dns = getTimingData("domainLookup"),connect = getTimingData("connect"),ssl = getTimingData("secureConnection"),redirect = getTimingData("redirect"),request = getTimingData("request"),response = getTimingData("response"),dom = {"start" : performance.timing.domLoading,"end" : performance.timing.domComplete},loadEvent = getTimingData("loadEvent");return {"navigation" : connect.start - navigation.start, "dns" : dns.value, "tcp" : connect.value, "ssl" : ssl.start > 0 ? connect.end - ssl.start : 0, "request" : response.start - request.start, "response" : response.value, "dom" : dom.end - dom.start, "loadEvent" : loadEvent.end - navigation.start }};var ssl_bsi = Cookie.get("__bsi");var getTimingData = function(tag) {var timing = performance.timing,start = timing[tag + "Start"] ? timing[tag + "Start"] : 0,end = timing[tag + "End"] ? timing[tag + "End"] : 0;return {"start" : start,"end" : end,"value" : end - start > 0 ? end - start : 0 }};var sendLog = function() {var logArr = [],logData = getPerfData();for(var i in logData) {logArr.push(i + "=" + logData[i]);}logArr.push("protocol=" + encodeURIComponent(location.protocol));var baseUrl = "//www.baidu.com/nocache/fesplg/s.gif?log_type=hm&type=timing&",queryString = "";queryString += logArr.join("&");if(ssl_bsi) {queryString += "bsi=" + ssl_bsi;}var url=baseUrl+queryString,img = new Image(),img_rand="_LOG_"+new Date().getTime();img.onload=function(){delete window[img_rand];};window[img_rand]=img;img.src=url;};if(location.protocol == 'https:' || /9999/.test(bds.comm.indexSid)) {setTimeout(sendLog,500); }}});</script>
	<script type="text/javascript">
		var Cookie = {
			set : function(c, e, d, f, a, b) {
				document.cookie = c + "=" + (b ? e : escape(e))
						+ ((a) ? "; expires=" + a.toGMTString() : "")
						+ ((f) ? "; path=" + f : "; path=/")
						+ ((d) ? "; domain=" + d : "")
			},
			get : function(c, b) {
				var a = document.cookie.match(new RegExp("(^| )" + c
						+ "=([^;]*)(;|$)"));
				if (a != null) {
					return unescape(a[2])
				}
				return b
			},
			clear : function(a, c, b) {
				if (this.get(a)) {
					document.cookie = a + "="
							+ ((c) ? "; path=" + c : "; path=/")
							+ ((b) ? "; domain=" + b : "")
							+ ";expires=Fri, 02-Jan-1970 00:00:00 GMT"
				}
			}
		};
		(function() {
			var defaultOptions = {
				sugSet : 1,
				sugStoreSet : 1,
				isSwitch : 1,
				imeSwitch : 0,
				resultNum : 10,
				skinOpen : 1,
				resultLang : 0
			}, options = {}, tmpName;
			var expire30y = new Date();
			expire30y.setTime(expire30y.getTime() + 30 * 365 * 86400000);
			try {
				if (bds && bds.comm && bds.comm.personalData) {
					if (typeof bds.comm.personalData == "string") {
						bds.comm.personalData = eval("("
								+ bds.comm.personalData + ")")
					}
					if (!bds.comm.personalData) {
						return
					}
					for (tmpName in bds.comm.personalData) {
						if (defaultOptions.hasOwnProperty(tmpName)
								&& bds.comm.personalData
										.hasOwnProperty(tmpName)) {
							if (bds.comm.personalData[tmpName].ErrMsg == "SUCCESS") {
								options[tmpName] = bds.comm.personalData[tmpName].value
							}
						}
					}
				}
				try {
					if (!parseInt(options.resultNum)) {
						delete (options.resultNum)
					}
					if (!parseInt(options.resultLang)
							&& options.resultLang != "0") {
						delete (options.resultLang)
					}
				} catch (e) {
				}
				writeCookie();
				if (!("sugSet" in options)) {
					options.sugSet = (Cookie.get("sug", 3) != 3 ? 0 : 1)
				}
				if (!("sugStoreSet" in options)) {
					options.sugStoreSet = Cookie.get("sugstore", 1)
				}
				var BAIDUID = Cookie.get("BAIDUID");
				if (!("resultNum" in options)) {
					if (/NR=(\d+)/.test(BAIDUID)) {
						options.resultNum = RegExp.$1 ? parseInt(RegExp.$1)
								: 10
					} else {
						options.resultNum = 10
					}
				}
				if (!("resultLang" in options)) {
					if (/SL=(\d+)/.test(BAIDUID)) {
						options.resultLang = RegExp.$1 ? parseInt(RegExp.$1)
								: 0
					} else {
						options.resultLang = 0
					}
				}
				if (!("isSwitch" in options)) {
					options.isSwitch = (Cookie.get("ORIGIN", 0) == 2 ? 0
							: (Cookie.get("ORIGIN", 0) == 1 ? 2 : 1))
				}
				if (!("imeSwitch" in options)) {
					options.imeSwitch = Cookie.get("bdime", 0)
				}
			} catch (e) {
			}
			function save(callback) {
				var optionsStr = [];
				for (tmpName in options) {
					if (options.hasOwnProperty(tmpName)) {
						optionsStr.push('"' + tmpName + '":"'
								+ options[tmpName] + '"')
					}
				}
				var str = "{" + optionsStr.join(",") + "}";
				if (bds.comm.personalData) {
					$
							.ajax({
								url : "//www.baidu.com/ups/submit/addtips/?product=ps&tips="
										+ encodeURIComponent(str)
										+ "&_r="
										+ new Date().getTime(),
								success : function() {
									writeCookie();
									if (typeof callback == "function") {
										callback()
									}
								}
							})
				} else {
					writeCookie();
					if (typeof callback == "function") {
						setTimeout(callback, 0)
					}
				}
			}
			function set(optionName, value) {
				options[optionName] = value
			}
			function get(optionName) {
				return options[optionName]
			}
			function writeCookie() {
				if (options.hasOwnProperty("sugSet")) {
					var value = options.sugSet == "0" ? "0" : "3";
					clearCookie("sug");
					Cookie.set("sug", value, document.domain, "/", expire30y)
				}
				if (options.hasOwnProperty("sugStoreSet")) {
					var value = options.sugStoreSet == 0 ? "0" : "1";
					clearCookie("sugstore");
					Cookie.set("sugstore", value, document.domain, "/",
							expire30y)
				}
				if (options.hasOwnProperty("isSwitch")) {
					var ORINGIN_MAP = {
						0 : "2",
						1 : "0",
						2 : "1"
					};
					var value = ORINGIN_MAP[options.isSwitch];
					clearCookie("ORIGIN");
					Cookie
							.set("ORIGIN", value, document.domain, "/",
									expire30y)
				}
				if (options.hasOwnProperty("imeSwitch")) {
					var value = options.imeSwitch;
					clearCookie("bdime");
					Cookie.set("bdime", value, document.domain, "/", expire30y)
				}
			}
			function writeBAIDUID() {
				var BAIDUID = Cookie.get("BAIDUID"), NR, FG, SL;
				if (/FG=(\d+)/.test(BAIDUID)) {
					FG = RegExp.$1
				}
				if (/SL=(\d+)/.test(BAIDUID)) {
					SL = RegExp.$1
				}
				if (/NR=(\d+)/.test(BAIDUID)) {
					NR = RegExp.$1
				}
				if (options.hasOwnProperty("resultNum")) {
					NR = options.resultNum
				}
				if (options.hasOwnProperty("resultLang")) {
					SL = options.resultLang
				}
				Cookie.set("BAIDUID", BAIDUID.replace(/:.*$/, "")
						+ (typeof SL != "undefined" ? ":SL=" + SL : "")
						+ (typeof NR != "undefined" ? ":NR=" + NR : "")
						+ (typeof FG != "undefined" ? ":FG=" + FG : ""),
						".baidu.com", "/", expire30y, true)
			}
			function clearCookie(name) {
				Cookie.clear(name, "/");
				Cookie.clear(name, "/", document.domain);
				Cookie.clear(name, "/", "." + document.domain);
				Cookie.clear(name, "/", ".baidu.com")
			}
			function reset(callback) {
				options = defaultOptions;
				save(callback)
			}
			window.UPS = {
				writeBAIDUID : writeBAIDUID,
				reset : reset,
				get : get,
				set : set,
				save : save
			}
		})();
		(function() {
			var c = (navigator && navigator.userAgent) ? navigator.userAgent
					: "";
			var b = (document && document.cookie) ? document.cookie : "";
			var a = !!(c.match(/(msie [2-8])/i)
					|| (c.match(/windows.*safari/i) && !c.match(/chrome/i))
					|| c.match(/(linux.*firefox)/i) || c.match(/Chrome\/29/i)
					|| c.match(/mac os x.*firefox/i) || b.match(/\bISSW=1/) || UPS
					.get("isSwitch") == 0);
			if (bds && bds.comm) {
				bds.comm.supportis = !a;
				bds.comm.isui = true
			}
			window.__restart_confirm_timeout = true;
			window.__confirm_timeout = 8000;
			window.__disable_is_guide = true;
			window.__disable_swap_to_empty = true;
			window.__switch_add_mask = true;
			if (bds.comm.newindex) {
				$(window)
						.on(
								"index_off",
								function() {
									$(
											'<div class="c-tips-container" id="c-tips-container"></div>')
											.insertAfter("#wrapper");
									if (window.__sample_dynamic_tab) {
										$("#s_tab").remove()
									}
								})
			}
		})();
	</script>
	<script>
		if (bds.comm.supportis) {
			window.__restart_confirm_timeout = true;
			window.__confirm_timeout = 8000;
			window.__disable_is_guide = true;
			window.__disable_swap_to_empty = true;
		}
	</script>
	<script>
		if (navigator.cookieEnabled) {
			document.cookie = "NOJS=;expires=Sat, 01 Jan 2000 00:00:00 GMT";
		}
	</script>
	<div id="inc_baiduapp_banner">
		<style>
#wrapper .baiduapp_banner {
	height: 36px;
	text-align: left;
	border-bottom: 1px solid #e3e3e3;
	background: #f7f7f7;
	font-size: 13px;
	padding-left: 8px;
	color: #333;
	position: relative;
	z-index: 302
}

#wrapper .baiduapp_banner span {
	_zoom: 1
}

#wrapper .baiduapp_banner .baiduapp_banner_icon {
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/baiduappLogo_7db5fd3c.png)
		no-repeat 0 0;
	width: 24px;
	height: 24px;
	margin: 3px 10px 0 0;
	position: relative;
	top: 3px
}

#wrapper .baiduapp_banner .baiduapp_banner_download {
	display: inline-block;
	width: 65px;
	line-height: 21px;
	_padding-top: 1px;
	margin: 0 0 0 10px;
	color: #333;
	background: #fbfbfb;
	border: 1px solid #b4b6b8;
	text-align: center;
	text-decoration: none
}

#wrapper .baiduapp_banner .baiduapp_banner_download:hover {
	border: 1px solid #38f
}

#wrapper .baiduapp_banner .baiduapp_banner_download:active {
	background: #f0f0f0;
	border: 1px solid #b4b6b8
}

#wrapper .baiduapp_close {
	background-position: -672px -144px;
	cursor: pointer;
	position: absolute;
	right: 10px;
	top: 10px
}

.index_body_hasbanner #u1 {
	top: 30px
}

.index_body_hasbanner .bdmainlink {
	margin-top: 30px
}
</style>
	</div>
	<script>
		if (window.bds && bds.se && bds.se.yuandan2015) {
			bds.se.yuandan2015()
		}
	</script>
	<script
		src="http://isphijack.baidu.com/index.php?cb=isp_hijack&amp;urls=http%3A%2F%2Fwww.baidu.com%2F%3Ftn%3D93588004_hao_pg&amp;t=1420083821522"></script>
</body>
</html>