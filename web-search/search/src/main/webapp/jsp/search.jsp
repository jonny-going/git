<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>jsp_百度搜索</title>
<style data-for="debug">
#debug {
	display: none !important;
}
</style>
<style data-for="s_indexoff">
#head>* {
	display: none;
}

#head .s-isindex-wrap {
	display: none;
}

#nv {
	display: none !important;
}

body #s_tab,body #wrapper_wrapper,body #u,body #result_logo {
	display: block;
}

body #wrapper,body #head,#head #head_wrapper,body #s_fm,body #s_form_wrapper,body #form,body #wrapper_wrapper,body #u,body #s_tab,body #result_logo img,#u div,#u div a,#head .bdsug ul
	{
	display: block;
}

body #result_logo,#u *,#head .bdsug ul li b {
	display: inline;
}

body #s_tab *,body #s_kw_wrap,body #kw,body #su,body #s_btn_wr,body #about_is,#u .c-icon
	{
	display: inline-block;
}

#head .bdsug ul li {
	display: list-item;
}

#head .head_wrapper {
	padding-top: 0px !important;
}

.s-bottom-ctner {
	display: none !important;
}
</style>
<style data-for="result" id="css_newi_result">
body {
	color: #333;
	background: #fff;
	padding: 6px 0 0;
	margin: 0;
	position: relative;
	min-width: 900px
}

body,th,td,.p1,.p2 {
	font-family: arial
}

p,form,ol,ul,li,dl,dt,dd,h3 {
	margin: 0;
	padding: 0;
	list-style: none
}

input {
	padding-top: 0;
	padding-bottom: 0;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box
}

table,img {
	border: 0
}

td {
	font-size: 9pt;
	line-height: 18px
}

em {
	font-style: normal;
	color: #c00
}

a em {
	text-decoration: underline
}

cite {
	font-style: normal;
	color: #008000
}

.m,a.m {
	color: #666
}

a.m:visited {
	color: #606
}

.g,a.g {
	color: #008000
}

.c {
	color: #77c
}

.f14 {
	font-size: 14px
}

.f10 {
	font-size: 10.5pt
}

.f16 {
	font-size: 16px
}

.f13 {
	font-size: 13px
}

.bg {
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_3bfb8e45.png);
	background-repeat: no-repeat;
	_background-image:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_f72fb1cc.gif);
	background-repeat: no-repeat
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

#u,#head,#tool,#search,#foot {
	font-size: 12px
}

.logo {
	width: 117px;
	height: 38px;
	cursor: pointer
}

.p1 {
	line-height: 120%;
	margin-left: -12pt
}

.p2 {
	width: 100%;
	line-height: 120%;
	margin-left: -12pt
}

#wrapper {
	_zoom: 1
}

#container {
	word-break: break-all;
	word-wrap: break-word
}

.container_s {
	width: 1002px
}

.container_l {
	width: 1222px
}

#content_left {
	width: 636px;
	float: left;
	padding-left: 35px
}

#content_right {
	border-left: 1px solid #e1e1e1;
	float: right
}

.container_s #content_right {
	width: 271px
}

.container_l #content_right {
	width: 434px
}

.content_none {
	padding-left: 35px
}

#u {
	color: #999;
	white-space: nowrap;
	position: absolute;
	right: 10px;
	top: 4px;
	z-index: 299
}

#u a {
	color: #00c;
	margin: 0 5px
}

#u .reg {
	margin: 0
}

#u .last {
	margin-right: 0
}

#u .un {
	font-weight: bold;
	margin-right: 5px
}

#u ul {
	width: 100%;
	background: #fff;
	border: 1px solid #9b9b9b
}

#u li {
	height: 25px
}

#u li a {
	width: 100%;
	height: 25px;
	line-height: 25px;
	display: block;
	text-align: left;
	text-decoration: none;
	text-indent: 6px;
	margin: 0;
	filter: none\9
}

#u li a:hover {
	background: #ebebeb
}

#u li.nl {
	border-top: 1px solid #ebebeb
}

#user {
	display: inline-block
}

#user_center {
	position: relative;
	display: inline-block
}

#user_center .user_center_btn {
	margin-right: 5px
}

.userMenu {
	width: 64px;
	position: absolute;
	right: 7px;
	_right: 2px;
	top: 15px;
	top: 14px\9;
	*top: 15px;
	padding-top: 4px;
	display: none;
	*background: #fff
}

#head {
	padding-left: 35px;
	margin-bottom: 20px;
	width: 900px
}

.fm {
	clear: both;
	position: relative;
	z-index: 297
}

.nv a,.nv b,.btn,#page,#more {
	font-size: 14px
}

.s_nav {
	height: 45px
}

.s_nav .s_logo {
	margin-right: 20px;
	float: left
}

.s_nav .s_logo img {
	border: 0;
	display: block
}

.s_tab {
	line-height: 18px;
	padding: 20px 0 0;
	float: left
}

.s_nav a {
	color: #00c;
	font-size: 14px
}

.s_nav b {
	font-size: 14px
}

.s_ipt_wr {
	width: 536px;
	height: 30px;
	display: inline-block;
	margin-right: 5px;
	background-position: 0 -96px;
	border: 1px solid #b6b6b6;
	border-color: #7b7b7b #b6b6b6 #b6b6b6 #7b7b7b;
	vertical-align: top
}

.s_ipt {
	width: 523px;
	height: 22px;
	font: 16px/18px arial;
	line-height: 22px\9;
	margin: 5px 0 0 7px;
	padding: 0;
	background: #fff;
	border: 0;
	outline: 0;
	-webkit-appearance: none
}

.s_btn {
	width: 95px;
	height: 32px;
	padding-top: 2px\9;
	font-size: 14px;
	padding: 0;
	background-color: #ddd;
	background-position: 0 -48px;
	border: 0;
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

.sethf {
	padding: 0;
	margin: 0;
	font-size: 14px
}

.set_h {
	display: none;
	behavior: url(#default#homepage)
}

.set_f {
	display: none
}

.shouji {
	margin-left: 19px
}

.shouji a {
	text-decoration: none
}

.bdsug {
	position: absolute;
	width: 536px;
	background: #fff;
	display: none;
	border: 1px solid #817f82
}

.bdsug li {
	width: 520px;
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

#head .bdsug {
	top: 31px
}

#search form {
	position: relative
}

#search form .bdsug {
	bottom: 33px
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

.bdsug .bdsug-direct p span {
	margin-left: 8px
}

.bdsug .bdsug-direct p img {
	width: 16px;
	height: 16px;
	margin: 7px 6px 9px 0;
	vertical-align: middle
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

#tb_mr {
	color: #00c;
	cursor: pointer;
	position: relative;
	z-index: 298
}

#tb_mr b {
	font-weight: normal;
	text-decoration: underline
}

#tb_mr small {
	font-size: 11px
}

#page {
	font: 14px arial;
	white-space: nowrap;
	padding-left: 35px
}

#page a,#page strong {
	display: inline-block;
	vertical-align: text-bottom;
	height: 66px;
	text-align: center;
	line-height: 34px;
	text-decoration: none;
	overflow: hidden;
	margin-right: 9px;
	background: white
}

#page a {
	cursor: pointer
}

#page a:hover {
	background: 0
}

#page .n:hover,#page a:hover .pc {
	background: #f2f8ff;
	border: 1px solid #38f
}

#page .n {
	height: 34px;
	padding: 0 18px;
	border: 1px solid #e1e2e3
}

#page span {
	display: block
}

#page .pc {
	width: 34px;
	height: 34px;
	border: 1px solid #e1e2e3;
	cursor: pointer
}

#page .fk {
	width: 24px;
	height: 24px;
	margin-bottom: 6px;
	margin-left: 6px;
	cursor: pointer
}

#page strong .fk,#page strong .pc {
	cursor: auto
}

#page .fk .c-icon-bear-pn {
	top: -3px;
	position: relative
}

#page .fkd .c-icon-bear-pn {
	top: 3px;
	position: relative
}

#page .fk_cur .c-icon-bear-p {
	top: -2px;
	position: relative
}

#page strong .pc {
	border: 0;
	width: 36px;
	height: 36px;
	line-height: 36px
}

#page .nums {
	display: inline-block;
	vertical-align: text-bottom;
	height: 36px;
	line-height: 36px;
	margin-left: 10px
}

#rs {
	width: 900px;
	background: #fff;
	padding: 8px 0;
	margin: 20px 0 0 15px
}

#rs td {
	width: 5%
}

#rs th {
	font-size: 14px;
	font-weight: normal;
	line-height: 19px;
	white-space: nowrap;
	text-align: left;
	vertical-align: top
}

#rs .tt {
	font-weight: bold;
	padding: 0 10px 0 20px
}

#rs_top {
	font-size: 14px;
	margin-bottom: 22px
}

#rs_top a {
	margin-right: 18px
}

#content_left .rs {
	margin: 30px 0;
	padding: 5px 0;
	font-size: 14px;
	width: 540px;
	background-color: #f9f9f9;
	padding-left: 121px;
	margin-left: -121px;
	position: relative
}

#content_left .rs table {
	width: 540px
}

#content_left .rs td {
	width: 5px
}

#content_left .rs th {
	font-size: 14px;
	font-weight: normal;
	white-space: nowrap;
	text-align: left;
	vertical-align: top;
	width: 175px;
	line-height: 22px
}

#content_left .rs .tt {
	font-weight: bold;
	padding: 0 10px 0 20px;
	padding: 0;
	line-height: 30px;
	font-size: 160px
}

.c-tip-con .c-tip-menu-b ul {
	width: 100px
}

.c-tip-con .c-tip-menu-b ul {
	text-align: center
}

.c-tip-con .c-tip-menu-b li a {
	display: block;
	text-decoration: none;
	cursor: pointer;
	background-color: #fff;
	padding: 3px 0;
	color: #666
}

.c-tip-con .c-tip-menu-b li a:hover {
	display: block;
	background-color: #ebebeb
}

#search {
	width: 900px;
	padding: 35px 0 16px 35px
}

#search .s_help {
	position: relative;
	top: 10px
}

#foot {
	height: 20px;
	line-height: 20px;
	color: #77c;
	background: #e6e6e6;
	text-align: center
}

#foot span {
	color: #666
}

.site_tip {
	font-size: 12px;
	margin-bottom: 20px
}

.site_tip_icon {
	width: 56px;
	height: 56px;
	background: url(//www.baidu.com/aladdin/img/tools/tools-3.png) -288px 0
		no-repeat
}

.to_zhidao,.to_tieba,.to_zhidao_bottom {
	font-size: 16px;
	line-height: 24px;
	margin: 20px 0 0 35px
}

.to_tieba .c-icon-tieba {
	float: left
}

.f {
	line-height: 115%;
	*line-height: 120%;
	font-size: 100%;
	width: 33.7em;
	word-break: break-all;
	word-wrap: break-word
}

.h {
	margin-left: 8px;
	width: 100%
}

.r {
	word-break: break-all;
	cursor: hand;
	width: 238px
}

.t {
	font-weight: normal;
	font-size: medium;
	margin-bottom: 1px
}

.pl {
	padding-left: 3px;
	height: 8px;
	padding-right: 2px;
	font-size: 14px
}

.mo,a.mo:link,a.mo:visited {
	color: #666;
	font-size: 100%;
	line-height: 10px
}

.htb {
	margin-bottom: 5px
}

.jc a {
	color: #c00
}

a font[size="3"] font,font[size="3"] a font {
	text-decoration: underline
}

div.blog,div.bbs {
	color: #707070;
	padding-top: 2px;
	font-size: 13px
}

.result {
	width: 33.7em;
	table-layout: fixed
}

.result-op .f {
	word-wrap: normal
}

.nums {
	font-size: 12px;
	color: #999
}

.tools {
	position: absolute;
	top: 10px;
	white-space: nowrap
}

#mHolder {
	width: 62px;
	position: relative;
	z-index: 296;
	top: -18px;
	margin-left: 9px;
	margin-right: -12px;
	display: none
}

#mCon {
	height: 18px;
	position: absolute;
	top: 3px;
	top: 6px\9;
	cursor: pointer;
	line-height: 18px
}

.wrapper_l #mCon {
	right: 7px
}

#mCon span {
	color: #00c;
	cursor: default;
	display: block
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

#mMenu {
	width: 56px;
	border: 1px solid #9b9b9b;
	position: absolute;
	right: 7px;
	top: 23px;
	display: none;
	background: #fff
}

#mMenu a {
	width: 100%;
	height: 100%;
	color: #00c;
	display: block;
	line-height: 22px;
	text-indent: 6px;
	text-decoration: none;
	filter: none\9
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

.op_LAMP {
	background: url("/cache/global/img/aladdinIcon-1.0.gif") no-repeat 0 2px;
	color: #77C;
	display: inline-block;
	font-size: 13px;
	height: 12px;
	*height: 14px;
	width: 16px;
	text-decoration: none;
	zoom: 1
}

.EC_mr15 {
	margin-left: 0
}

.pd15 {
	padding-left: 0
}

.map_1 {
	width: 30em;
	font-size: 80%;
	line-height: 145%
}

.map_2 {
	width: 25em;
	font-size: 80%;
	line-height: 145%
}

.favurl {
	background-repeat: no-repeat;
	background-position: 0 1px;
	padding-left: 20px
}

.dan_tip {
	font-size: 12px;
	margin-top: 4px
}

.dan_tip a {
	color: #b95b07
}

#more,#u ul,#mMenu,.msg_holder {
	box-shadow: 1px 1px 2px #ccc;
	-moz-box-shadow: 1px 1px 2px #ccc;
	-webkit-box-shadow: 1px 1px 2px #ccc;
	filter: progid:DXImageTransform.Microsoft.Shadow(Strength=2, Direction=135,
		Color="#cccccc") \9
}

.hit_top {
	line-height: 18px;
	margin: 0 15px 10px 0;
	width: 516px
}

.hit_top .c-icon-bear {
	height: 18px;
	margin-right: 4px
}

#rs_top_new,.hit_top_new {
	width: 538px;
	font-size: 13px;
	line-height: 1.54;
	word-wrap: break-word;
	word-break: break-all;
	margin: 0 0 14px 0
}

.zhannei-si {
	margin: 0 0 10px 121px
}

.zhannei-si-none {
	margin: 10px 0 -10px 121px
}

.zhannei-search {
	margin: 10px 0 0 121px;
	color: #999;
	font-size: 14px
}

.f a font[size="3"] font,.f font[size="-1"] a font {
	text-decoration: underline
}

h3 a font {
	text-decoration: underline
}

.c-title {
	font-weight: normal;
	font-size: 16px
}

.c-title-size {
	font-size: 16px
}

.c-abstract {
	font-size: 13px
}

.c-abstract-size {
	font-size: 13px
}

.c-showurl {
	color: #008000;
	font-size: 13px
}

.c-showurl-color {
	color: #008000
}

.c-cache-color {
	color: #666
}

.c-lightblue {
	color: #77C
}

.c-highlight-color {
	color: #C00
}

.c-clearfix:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden
}

.c-clearfix {
	zoom: 1
}

.c-wrap {
	word-break: break-all;
	word-wrap: break-word
}

.c-icons-outer {
	overflow: hidden;
	display: inline-block;
	vertical-align: bottom;
	*vertical-align: -1px;
	_vertical-align: bottom
}

.c-icons-inner {
	margin-left: -4px
}

.c-container table.result,.c-container table.result-op {
	width: 100%
}

.c-container td.f {
	font-size: 13px;
	line-height: 1.54;
	width: auto
}

.c-container .vd_newest_main {
	width: auto
}

.c-customicon {
	display: inline-block;
	width: 16px;
	height: 16px;
	vertical-align: text-bottom;
	font-style: normal;
	overflow: hidden
}

.c-tip-icon i {
	display: inline-block;
	cursor: pointer
}

.c-tip-con {
	position: absolute;
	z-index: 1;
	top: 22px;
	left: -35px;
	background: #fff;
	border: 1px solid #dcdcdc;
	border: 1px solid rgba(0, 0, 0, 0.2);
	-webkit-transition: opacity .218s;
	transition: opacity .218s;
	-webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	padding: 5px 0 5px 0;
	display: none;
	font-size: 12px;
	line-height: 20px
}

.c-tip-arrow {
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	display: block;
	position: absolute;
	top: -16px
}

.c-tip-arrow-down {
	top: auto;
	bottom: 0
}

.c-tip-arrow em,.c-tip-arrow ins {
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	display: block;
	position: absolute;
	border: 8px solid transparent;
	border-style: dashed dashed solid dashed
}

.c-tip-arrow em {
	border-bottom-color: #d8d8d8
}

.c-tip-arrow ins {
	border-bottom-color: #fff;
	top: 2px
}

.c-tip-arrow-down em,.c-tip-arrow-down ins {
	border-style: solid dashed dashed dashed;
	border-color: transparent
}

.c-tip-arrow-down em {
	border-top-color: #d8d8d8
}

.c-tip-arrow-down ins {
	border-top-color: #fff;
	top: -2px
}

.c-tip-con h3 {
	font-size: 12px
}

.c-tip-con .c-tip-title {
	margin: 0 10px;
	display: inline-block;
	width: 239px
}

.c-tip-con .c-tip-info {
	color: #666;
	margin: 0 10px 1px 10px;
	width: 239px
}

.c-tip-con .c-tip-cer {
	width: 354px;
	color: #666;
	margin: 0 10px 1px 10px
}

.c-tip-con .c-tip-title {
	width: auto;
	_width: 354px
}

.c-tip-con .c-tip-item-i {
	padding: 3px 0 3px 20px;
	line-height: 14px
}

.c-tip-con .c-tip-item-i .c-tip-item-icon {
	margin-left: -20px
}

.c-tip-con .c-tip-menu ul {
	width: 74px
}

.c-tip-con .c-tip-menu ul {
	text-align: center
}

.c-tip-con .c-tip-menu li a {
	display: block;
	text-decoration: none;
	cursor: pointer;
	background-color: #fff;
	padding: 3px 0;
	color: #0000d0
}

.c-tip-con .c-tip-menu li a:hover {
	display: block;
	background-color: #ebebeb
}

.c-tip-con .c-tip-notice {
	width: 239px;
	padding: 0 10px
}

.c-tip-con .c-tip-notice .c-tip-notice-succ {
	color: #4cbd37
}

.c-tip-con .c-tip-notice .c-tip-notice-fail {
	color: #f13f40
}

.c-tip-con .c-tip-notice .c-tip-item-succ {
	color: #444
}

.c-tip-con .c-tip-notice .c-tip-item-fail {
	color: #aaa
}

.c-tip-con .c-tip-notice .c-tip-item-fail a {
	color: #aaa
}

.c-tip-close {
	right: 10px;
	position: absolute;
	cursor: pointer
}

.ecard {
	height: 86px;
	overflow: hidden
}

.c-tools {
	display: inline
}

.c-tools-share {
	width: 239px;
	padding: 0 10px
}

.icp_info {
	color: #666;
	margin-top: 2px;
	font-size: 13px
}

.icon-gw,.icon-unsafe-icon {
	background: #2c99ff;
	vertical-align: text-bottom;
	*vertical-align: baseline;
	height: 16px;
	padding-top: 0;
	padding-bottom: 0;
	padding-left: 6px;
	padding-right: 6px;
	line-height: 16px;
	_padding-top: 2px;
	_height: 14px;
	_line-height: 14px;
	font-size: 12px;
	font-family: simsun;
	margin-left: 10px;
	overflow: hidden;
	display: inline-block;
	-moz-border-radius: 1px;
	-webkit-border-radius: 1px;
	border-radius: 1px;
	color: #fff
}

a.icon-gw {
	color: #fff;
	background: #2196ff;
	text-decoration: none;
	cursor: pointer
}

a.icon-gw:hover {
	background: #1e87ef
}

a.icon-gw:active {
	height: 15px;
	_height: 13px;
	line-height: 15px;
	_line-height: 13px;
	padding-left: 5px;
	background: #1c80d9;
	border-left: 1px solid #145997;
	border-top: 1px solid #145997
}

.icon-unsafe-icon {
	background: #e54d4b
}

#con-at {
	margin-bottom: 11px;
	padding-left: 121px;
	border-bottom: 1px #ebebeb solid
}

#con-at .result-op {
	font-size: 13px;
	line-height: 1.52em
}

.wrapper_l #con-at .result-op {
	width: 1074px
}

.wrapper_s #con-at .result-op {
	width: 854px
}

#con-ar {
	margin-bottom: 40px
}

#con-ar .result-op {
	margin-bottom: 28px;
	font-size: 13px;
	line-height: 1.52em
}

.result_hidden {
	position: absolute;
	top: -10000px;
	left: -10000px
}

#content_left .result-op,#content_left .result {
	margin-bottom: 14px;
	border-collapse: collapse
}

#content_left .c-border .result-op,#content_left .c-border .result {
	margin-bottom: 25px
}

#content_left .c-border .result-op:last-child,#content_left .c-border .result:last-child
	{
	margin-bottom: 12px
}

#content_left .result .f,#content_left .result-op .f {
	padding: 0
}

.subLink_factory {
	border-collapse: collapse
}

.subLink_factory td {
	padding: 0
}

.subLink_factory td.middle,.subLink_factory td.last {
	color: #666
}

.subLink_factory td a {
	text-decoration: underline
}

.subLink_factory td.rightTd {
	text-align: right
}

.subLink_factory_right {
	width: 100%
}

.subLink_factory_left td {
	padding-right: 26px
}

.subLink_factory_left td.last {
	padding: 0
}

.subLink_factory_left td.first {
	padding-right: 75px
}

.subLink_factory_right td {
	width: 90px
}

.subLink_factory_right td.first {
	width: auto
}

.general_image_pic a {
	background: #fff no-repeat center center;
	text-decoration: none;
	display: block;
	overflow: hidden;
	text-align: left
}

.res_top_banner {
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

.res_top_banner span {
	_zoom: 1
}

.res_top_banner .res_top_banner_icon {
	background-position: 0 -216px;
	width: 18px;
	height: 18px;
	margin: 9px 10px 0 0
}

.res_top_banner .res_top_banner_icon_baiduapp {
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/baiduappLogo_7db5fd3c.png)
		no-repeat 0 0;
	width: 24px;
	height: 24px;
	margin: 3px 10px 0 0;
	position: relative;
	top: 3px
}

.res_top_banner .res_top_banner_download {
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

.res_top_banner .res_top_banner_download:hover {
	border: 1px solid #38f
}

.res_top_banner .res_top_banner_download:active {
	background: #f0f0f0;
	border: 1px solid #b4b6b8
}

.res_top_banner .res_top_banner_close {
	background-position: -672px -144px;
	cursor: pointer;
	position: absolute;
	right: 10px;
	top: 10px
}

.res-gap-right16 {
	margin-right: 16px
}

.res-border-top {
	border-top: 1px solid #f3f3f3
}

.res-border-bottom {
	border-bottom: 1px solid #f3f3f3
}

.res-queryext-pos {
	position: relative;
	top: 1px;
	_top: 0
}

.c-trust-ecard {
	height: 86px;
	_height: 97px;
	overflow: hidden
}

@
-moz-document url-prefix       (){ . result,.f {
	width: 538px
}

}
body {
	min-width: 1000px
}

#ftCon {
	display: none
}

#pad-version {
	display: none
}

#index_guide {
	display: none
}

#index_logo {
	display: none
}

#u1 {
	display: none
}

.s_ipt_wr {
	height: 32px
}

body {
	padding: 0
}

.s_form:after,.s_tab:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden
}

.s_form {
	zoom: 1;
	height: 55px;
	padding: 0 0 0 10px
}

#result_logo {
	float: left;
	margin: 7px 0 0
}

#result_logo img {
	width: 101px
}

#head {
	padding: 0;
	margin: 0;
	width: 100%;
	position: absolute;
	z-index: 301;
	min-width: 1000px;
	background: #fff;
	border-bottom: 1px solid #ebebeb;
	position: fixed;
	_position: absolute;
	-webkit-transform: translateZ(0)
}

#head .head_wrapper {
	_width: 1000px
}

#head.s_down {
	box-shadow: 0 0 5px #888
}

.fm {
	clear: none;
	float: left;
	margin: 11px 0 0 10px
}

#s_tab {
	background: #f8f8f8;
	line-height: 36px;
	height: 38px;
	padding: 55px 0 0 121px;
	float: none;
	zoom: 1
}

#s_tab a,#s_tab b {
	width: 54px;
	display: inline-block;
	text-decoration: none;
	text-align: center;
	color: #666;
	font-size: 14px
}

#s_tab b {
	border-bottom: 2px solid #38f;
	font-weight: bold;
	color: #323232
}

#s_tab a:hover {
	color: #323232
}

#content_left {
	width: 540px;
	padding-left: 121px;
	padding-top: 5px
}

#content_right {
	margin-top: 45px
}

#page {
	padding: 0 0 0 121px;
	margin: 30px 0 40px 0
}

.to_tieba,.to_zhidao_bottom {
	margin: 10px 0 0 121px
}

.nums {
	margin: 0 0 0 121px;
	height: 42px;
	line-height: 42px
}

#rs {
	padding: 0;
	margin: 6px 0 0 121px;
	width: 600px
}

#rs th {
	width: 175px;
	line-height: 22px
}

#rs .tt {
	padding: 0;
	line-height: 30px
}

#rs td {
	width: 5px
}

#rs table {
	width: 540px
}

#help {
	background: #f5f6f5;
	zoom: 1;
	padding: 0 0 0 50px;
	float: right
}

#help a {
	color: #777;
	padding: 0 15px;
	text-decoration: none
}

#help a:hover {
	color: #333
}

#foot {
	background: #f5f6f5;
	border-top: 1px solid #ebebeb;
	text-align: left;
	height: 42px;
	line-height: 42px;
	margin-top: 40px;
	*margin-top: 0
}

#foot .foot_c {
	float: left;
	padding: 0 0 0 121px
}

.content_none {
	padding: 45px 0 0 121px
}

.nors p {
	font-size: 18px;
	font-family: microsoft yahei;
	color: #000
}

.nors p em {
	color: #c00
}

.nors .tip_head {
	color: #666;
	font-size: 13px;
	line-height: 28px
}

.nors li {
	color: #333;
	line-height: 28px;
	font-size: 13px;
	font-family: '宋体';
	padding-left: 30px;
	list-style-position: inside;
	list-style-type: disc
}

#mCon {
	top: 5px
}

.s_ipt_wr.bg,.s_btn_wr.bg,#su.bg {
	background-image: none
}

.s_ipt_wr.bg {
	background: 0
}

.s_btn_wr {
	width: auto;
	height: auto;
	border-bottom: 1px solid transparent;
	*border-bottom: 0
}

.s_btn {
	width: 100px;
	height: 34px;
	color: white;
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
	box-shadow: inset 1px 1px 3px #2964bb;
	-webkit-box-shadow: inset 1px 1px 3px #2964bb;
	-moz-box-shadow: inset 1px 1px 3px #2964bb;
	-o-box-shadow: inset 1px 1px 3px #2964bb
}

#head .bdsug {
	top: 33px
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
	width: 522px;
	line-height: 22px
}

.bdsug li.bdsug-s {
	background: #f0f0f0
}

.bdsug-ala h3 {
	margin: 8px 0 5px 0
}

#wrapper_wrapper .container_l .EC_ppim_top,#wrapper_wrapper .container_xl .EC_ppim_top
	{
	width: 640px
}

#wrapper_wrapper .container_s .EC_ppim_top {
	width: 570px
}

#head .c-icon-bear-round {
	display: none
}

.container_l #content_right {
	width: 384px
}

.container_l {
	width: 1212px
}

.container_xl #content_right {
	width: 384px
}

.container_xl {
	width: 1257px
}

.index_tab_top {
	display: none
}

.index_tab_bottom {
	display: none
}

#lg {
	display: none
}

#m {
	display: none
}

#ftCon {
	display: none
}

#ent_sug {
	position: absolute;
	margin: 141px 0 0 130px;
	font-size: 13px;
	color: #666
}

.foot_fixed_bottom {
	position: fixed;
	bottom: 0;
	width: 100%;
	_position: absolute;
	_bottom: auto
}

.c-icon {
	background:
		url(http://s1.bdstatic.com/r/www/cache/static/global/img/icons_3bfb8e45.png)
		no-repeat 0 0;
	_background-image:
		url("http://s1.bdstatic.com/r/www/cache/static/global/img/icons_f72fb1cc.gif")
}

.c-frame {
	margin-bottom: 18px
}

.c-offset {
	padding-left: 10px
}

.c-gray {
	color: #666
}

.c-gap-top-small {
	margin-top: 5px
}

.c-gap-top {
	margin-top: 10px
}

.c-gap-bottom-small {
	margin-bottom: 5px
}

.c-gap-bottom {
	margin-bottom: 10px
}

.c-gap-left {
	margin-left: 12px
}

.c-gap-left-small {
	margin-left: 6px
}

.c-gap-right {
	margin-right: 12px
}

.c-gap-right-small {
	margin-right: 6px
}

.c-gap-right-large {
	margin-right: 16px
}

.c-gap-left-large {
	margin-left: 16px
}

.c-gap-icon-right-small {
	margin-right: 5px
}

.c-gap-icon-right {
	margin-right: 10px
}

.c-gap-icon-left-small {
	margin-left: 5px
}

.c-gap-icon-left {
	margin-left: 10px
}

.c-container {
	width: 538px;
	font-size: 13px;
	line-height: 1.54;
	word-wrap: break-word;
	word-break: break-all
}

.c-container .c-container {
	width: auto
}

.c-container table {
	border-collapse: collapse;
	border-spacing: 0
}

.c-container td {
	font-size: 13px;
	line-height: 1.54
}

.c-default {
	font-size: 13px;
	line-height: 1.54;
	word-wrap: break-word;
	word-break: break-all
}

.c-container .t,.c-default .t {
	line-height: 1.54
}

.c-default .t {
	margin-bottom: 0
}

.cr-content {
	width: 259px;
	font-size: 13px;
	line-height: 1.54;
	color: #333;
	word-wrap: break-word;
	word-break: normal
}

.cr-content table {
	border-collapse: collapse;
	border-spacing: 0
}

.cr-content td {
	font-size: 13px;
	line-height: 1.54;
	vertical-align: top
}

.cr-offset {
	padding-left: 17px
}

.cr-title {
	font-size: 14px;
	line-height: 1.29;
	font-weight: bold
}

.cr-title-sub {
	float: right;
	font-size: 13px;
	font-weight: normal
}

.c-row {
	*zoom: 1
}

.c-row:after {
	display: block;
	height: 0;
	content: "";
	clear: both;
	visibility: hidden
}

.c-span2 {
	width: 29px
}

.c-span3 {
	width: 52px
}

.c-span4 {
	width: 75px
}

.c-span5 {
	width: 98px
}

.c-span6 {
	width: 121px
}

.c-span7 {
	width: 144px
}

.c-span8 {
	width: 167px
}

.c-span9 {
	width: 190px
}

.c-span10 {
	width: 213px
}

.c-span11 {
	width: 236px
}

.c-span12 {
	width: 259px
}

.c-span13 {
	width: 282px
}

.c-span14 {
	width: 305px
}

.c-span15 {
	width: 328px
}

.c-span16 {
	width: 351px
}

.c-span17 {
	width: 374px
}

.c-span18 {
	width: 397px
}

.c-span19 {
	width: 420px
}

.c-span20 {
	width: 443px
}

.c-span21 {
	width: 466px
}

.c-span22 {
	width: 489px
}

.c-span23 {
	width: 512px
}

.c-span24 {
	width: 535px
}

.c-span2,.c-span3,.c-span4,.c-span5,.c-span6,.c-span7,.c-span8,.c-span9,.c-span10,.c-span11,.c-span12,.c-span13,.c-span14,.c-span15,.c-span16,.c-span17,.c-span18,.c-span19,.c-span20,.c-span21,.c-span22,.c-span23,.c-span24
	{
	float: left;
	_display: inline;
	margin-right: 17px;
	list-style: none
}

.c-span-last {
	margin-right: 0
}

.c-span-last-s {
	margin-right: 0
}

.container_l .cr-content {
	width: 351px
}

.container_l .cr-content .c-span-last-s {
	margin-right: 17px
}

.container_l .cr-content-narrow {
	width: 259px
}

.container_l .cr-content-narrow .c-span-last-s {
	margin-right: 0
}

.c-border {
	width: 518px;
	padding: 9px;
	border: 1px solid #e3e3e3;
	border-bottom-color: #e0e0e0;
	border-right-color: #ececec;
	box-shadow: 1px 2px 1px rgba(0, 0, 0, 0.072);
	-webkit-box-shadow: 1px 2px 1px rgba(0, 0, 0, 0.072);
	-moz-box-shadow: 1px 2px 1px rgba(0, 0, 0, 0.072);
	-o-box-shadow: 1px 2px 1px rgba(0, 0, 0, 0.072)
}

.c-border .c-gap-left {
	margin-left: 10px
}

.c-border .c-gap-left-small {
	margin-left: 5px
}

.c-border .c-gap-right {
	margin-right: 10px
}

.c-border .c-gap-right-small {
	margin-right: 5px
}

.c-border .c-border {
	width: auto;
	padding: 0;
	border: 0;
	box-shadow: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	-o-box-shadow: none
}

.c-border .c-span2 {
	width: 34px
}

.c-border .c-span3 {
	width: 56px
}

.c-border .c-span4 {
	width: 78px
}

.c-border .c-span5 {
	width: 100px
}

.c-border .c-span6 {
	width: 122px
}

.c-border .c-span7 {
	width: 144px
}

.c-border .c-span8 {
	width: 166px
}

.c-border .c-span9 {
	width: 188px
}

.c-border .c-span10 {
	width: 210px
}

.c-border .c-span11 {
	width: 232px
}

.c-border .c-span12 {
	width: 254px
}

.c-border .c-span13 {
	width: 276px
}

.c-border .c-span14 {
	width: 298px
}

.c-border .c-span15 {
	width: 320px
}

.c-border .c-span16 {
	width: 342px
}

.c-border .c-span17 {
	width: 364px
}

.c-border .c-span18 {
	width: 386px
}

.c-border .c-span19 {
	width: 408px
}

.c-border .c-span20 {
	width: 430px
}

.c-border .c-span21 {
	width: 452px
}

.c-border .c-span22 {
	width: 474px
}

.c-border .c-span23 {
	width: 496px
}

.c-border .c-span24 {
	width: 518px
}

.c-border .c-span2,.c-border .c-span3,.c-border .c-span4,.c-border .c-span5,.c-border .c-span6,.c-border .c-span7,.c-border .c-span8,.c-border .c-span9,.c-border .c-span10,.c-border .c-span11,.c-border .c-span12,.c-border .c-span13,.c-border .c-span14,.c-border .c-span15,.c-border .c-span16,.c-border .c-span17,.c-border .c-span18,.c-border .c-span19,.c-border .c-span20,.c-border .c-span21,.c-border .c-span22,.c-border .c-span23,.c-border .c-span24
	{
	margin-right: 10px
}

.c-border .c-span-last {
	margin-right: 0
}

.c-loading {
	display: block;
	width: 50px;
	height: 50px;
	background: url("//www.baidu.com/aladdin/img/tools/loading.gif")
		no-repeat 0 0
}

.c-vline {
	display: inline-block;
	margin: 0 3px;
	border-left: 1px solid #ddd;
	width: 0;
	height: 12px;
	_vertical-align: middle;
	_overflow: hidden
}

.c-icon {
	display: inline-block;
	width: 14px;
	height: 14px;
	vertical-align: text-bottom;
	font-style: normal;
	overflow: hidden
}

.c-icon-unfold,.c-icon-fold,.c-icon-chevron-unfold,.c-icon-chevron-fold
	{
	width: 12px;
	height: 12px
}

.c-icon-star,.c-icon-star-gray {
	width: 60px
}

.c-icon-qa-empty,.c-icon-safeguard,.c-icon-register-empty,.c-icon-zan,.c-icon-music,.c-icon-location,.c-icon-warning,.c-icon-doc,.c-icon-xls,.c-icon-ppt,.c-icon-pdf,.c-icon-txt,.c-icon-play-black,.c-icon-gift,.c-icon-baidu-share,.c-icon-bear,.c-icon-sfda,.c-icon-bear-border,.c-icon-location-blue,.c-icon-hotAirBall,.c-icon-moon,.c-icon-streetMap,.c-icon-mv,.c-icon-zhidao-s,.c-icon-shopping
	{
	width: 16px;
	height: 16px
}

.c-icon-bear-circle,.c-icon-warning-circle,.c-icon-warning-triangle,.c-icon-warning-circle-gray
	{
	width: 18px;
	height: 18px
}

.c-icon-tieba,.c-icon-zhidao,.c-icon-bear-p,.c-icon-bear-pn {
	width: 24px;
	height: 24px
}

.c-icon-ball-blue,.c-icon-ball-red {
	width: 38px;
	height: 38px
}

.c-icon-unfold:hover,.c-icon-fold:hover,.c-icon-chevron-unfold:hover,.c-icon-chevron-fold:hover,.c-icon-download:hover,.c-icon-lyric:hover,.c-icon-v:hover,.c-icon-hui:hover,.c-icon-bao:hover,.c-icon-person:hover,.c-icon-high-v:hover,.c-icon-phone:hover,.c-icon-nuo:hover,.c-icon-med:hover,.c-icon-air:hover,.c-icon-share2:hover,.c-icon-v1:hover,.c-icon-v2:hover,.c-icon-v3:hover,.c-icon-write:hover
	{
	border-color: #388bff
}

.c-icon-unfold:active,.c-icon-fold:active,.c-icon-chevron-unfold:active,.c-icon-chevron-fold:active,.c-icon-download:active,.c-icon-lyric:active,.c-icon-v:active,.c-icon-hui:active,.c-icon-bao:active,.c-icon-person:active,.c-icon-high-v:active,.c-icon-phone:active,.c-icon-nuo:active,.c-icon-med:active,.c-icon-air:active,.c-icon-share2:active,.c-icon-v1:active,.c-icon-v2:active,.c-icon-v3:active,.c-icon-write:active
	{
	border-color: #a2a6ab;
	background-color: #f0f0f0;
	box-shadow: inset 1px 1px 1px #c7c7c7;
	-webkit-box-shadow: inset 1px 1px 1px #c7c7c7;
	-moz-box-shadow: inset 1px 1px 1px #c7c7c7;
	-o-box-shadow: inset 1px 1px 1px #c7c7c7
}

.c-icon-unfold,.c-icon-fold,.c-icon-chevron-unfold,.c-icon-chevron-fold,.c-icon-download,.c-icon-lyric
	{
	border: 1px solid #d8d8d8;
	cursor: pointer
}

.c-icon-v,.c-icon-hui,.c-icon-bao,.c-icon-person,.c-icon-high-v,.c-icon-phone,.c-icon-nuo,.c-icon-med,.c-icon-air,.c-icon-share2,.c-icon-v1,.c-icon-v2,.c-icon-v3,.c-icon-write
	{
	border: 1px solid #d8d8d8;
	cursor: pointer;
	border-color: transparent;
	_border-color: tomato;
	_filter: chroma(color =             #ff6347)
}

.c-icon-v1,.c-icon-v2,.c-icon-v3,.c-icon-v1-noborder,.c-icon-v2-noborder,.c-icon-v3-noborder,.c-icon-v1-noborder-disable,.c-icon-v2-noborder-disable,.c-icon-v3-noborder-disable
	{
	width: 19px
}

.c-icon-download,.c-icon-lyric {
	width: 16px;
	height: 16px
}

.c-icon-play-circle,.c-icon-stop-circle {
	width: 18px;
	height: 18px
}

.c-icon-play-circle-middle,.c-icon-stop-circle-middle {
	width: 24px;
	height: 24px
}

.c-icon-play-black-large,.c-icon-stop-black-large {
	width: 36px;
	height: 36px
}

.c-icon-play-black-larger,.c-icon-stop-black-larger {
	width: 52px;
	height: 52px
}

.c-icon-flag {
	background-position: 0 -144px
}

.c-icon-bus {
	background-position: -24px -144px
}

.c-icon-calendar {
	background-position: -48px -144px
}

.c-icon-street {
	background-position: -72px -144px
}

.c-icon-map {
	background-position: -96px -144px
}

.c-icon-bag {
	background-position: -120px -144px
}

.c-icon-money {
	background-position: -144px -144px
}

.c-icon-game {
	background-position: -168px -144px
}

.c-icon-user {
	background-position: -192px -144px
}

.c-icon-globe {
	background-position: -216px -144px
}

.c-icon-lock {
	background-position: -240px -144px
}

.c-icon-plane {
	background-position: -264px -144px
}

.c-icon-list {
	background-position: -288px -144px
}

.c-icon-star-gray {
	background-position: -312px -144px
}

.c-icon-circle-gray {
	background-position: -384px -144px
}

.c-icon-triangle-down {
	background-position: -408px -144px
}

.c-icon-triangle-up {
	background-position: -432px -144px
}

.c-icon-triangle-up-empty {
	background-position: -456px -144px
}

.c-icon-sort-gray {
	background-position: -480px -144px
}

.c-icon-sort-up {
	background-position: -504px -144px
}

.c-icon-sort-down {
	background-position: -528px -144px
}

.c-icon-down-gray {
	background-position: -552px -144px
}

.c-icon-up-gray {
	background-position: -576px -144px
}

.c-icon-download-noborder {
	background-position: -600px -144px
}

.c-icon-lyric-noborder {
	background-position: -624px -144px
}

.c-icon-download-white {
	background-position: -648px -144px
}

.c-icon-close {
	background-position: -672px -144px
}

.c-icon-fail {
	background-position: -696px -144px
}

.c-icon-success {
	background-position: -720px -144px
}

.c-icon-triangle-down-g {
	background-position: -744px -144px
}

.c-icon-refresh {
	background-position: -768px -144px
}

.c-icon-chevron-left-gray {
	background-position: -816px -144px
}

.c-icon-chevron-right-gray {
	background-position: -840px -144px
}

.c-icon-fullscreen {
	background-position: 0 -168px
}

.c-icon-safe {
	background-position: -24px -168px
}

.c-icon-exchange {
	background-position: -48px -168px
}

.c-icon-chevron-bottom {
	background-position: -72px -168px
}

.c-icon-chevron-top {
	background-position: -96px -168px
}

.c-icon-unfold {
	background-position: -120px -168px
}

.c-icon-fold {
	background-position: -144px -168px
}

.c-icon-chevron-unfold {
	background-position: -168px -168px
}

.c-icon-qa {
	background-position: -192px -168px
}

.c-icon-register {
	background-position: -216px -168px
}

.c-icon-star {
	background-position: -240px -168px
}

.c-icon-star-gray {
	position: relative
}

.c-icon-star-gray .c-icon-star {
	position: absolute;
	top: 0;
	left: 0
}

.c-icon-play-blue {
	background-position: -312px -168px
}

.c-icon-pic {
	width: 16px;
	background-position: -336px -168px
}

.c-icon-chevron-fold {
	background-position: -360px -168px
}

.c-icon-video {
	width: 18px;
	background-position: -384px -168px
}

.c-icon-circle-blue {
	background-position: -408px -168px
}

.c-icon-circle-yellow {
	background-position: -432px -168px
}

.c-icon-play-white {
	background-position: -456px -168px
}

.c-icon-triangle-down-blue {
	background-position: -480px -168px
}

.c-icon-chevron-unfold2 {
	background-position: -504px -168px
}

.c-icon-right {
	background-position: -528px -168px
}

.c-icon-right-empty {
	background-position: -552px -168px
}

.c-icon-new-corner {
	width: 15px;
	background-position: -576px -168px
}

.c-icon-horn {
	background-position: -600px -168px
}

.c-icon-right-large {
	width: 18px;
	background-position: -624px -168px
}

.c-icon-wrong-large {
	background-position: -648px -168px
}

.c-icon-circle-blue-s {
	background-position: -672px -168px
}

.c-icon-play-gray {
	background-position: -696px -168px
}

.c-icon-up {
	background-position: -720px -168px
}

.c-icon-down {
	background-position: -744px -168px
}

.c-icon-stable {
	background-position: -768px -168px
}

.c-icon-calendar-blue {
	background-position: -792px -168px
}

.c-icon-triangle-down-blue2 {
	background-position: -816px -168px
}

.c-icon-triangle-up-blue2 {
	background-position: -840px -168px
}

.c-icon-down-blue {
	background-position: -864px -168px
}

.c-icon-up-blue {
	background-position: -888px -168px
}

.c-icon-ting {
	background-position: -912px -168px
}

.c-icon-piao {
	background-position: -936px -168px
}

.c-icon-wrong-empty {
	background-position: -960px -168px
}

.c-icon-warning-circle-s {
	background-position: -984px -168px
}

.c-icon-chevron-left {
	background-position: -1008px -168px
}

.c-icon-chevron-right {
	background-position: -1032px -168px
}

.c-icon-circle-gray-s {
	background-position: -1056px -168px
}

.c-icon-v,.c-icon-v-noborder {
	background-position: 0 -192px
}

.c-icon-hui {
	background-position: -24px -192px
}

.c-icon-bao {
	background-position: -48px -192px
}

.c-icon-phone {
	background-position: -72px -192px
}

.c-icon-qa-empty {
	background-position: -96px -192px
}

.c-icon-safeguard {
	background-position: -120px -192px
}

.c-icon-register-empty {
	background-position: -144px -192px
}

.c-icon-zan {
	background-position: -168px -192px
}

.c-icon-music {
	background-position: -192px -192px
}

.c-icon-location {
	background-position: -240px -192px
}

.c-icon-warning {
	background-position: -264px -192px
}

.c-icon-doc {
	background-position: -288px -192px
}

.c-icon-xls {
	background-position: -312px -192px
}

.c-icon-ppt {
	background-position: -336px -192px
}

.c-icon-pdf {
	background-position: -360px -192px
}

.c-icon-txt {
	background-position: -384px -192px
}

.c-icon-play-black {
	background-position: -408px -192px
}

.c-icon-play-black:hover {
	background-position: -432px -192px
}

.c-icon-gift {
	background-position: -456px -192px
}

.c-icon-baidu-share {
	background-position: -480px -192px
}

.c-icon-bear {
	background-position: -504px -192px
}

.c-icon-sfda {
	width: 31px;
	background-position: -528px -192px
}

.c-icon-bear-border {
	background-position: -576px -192px
}

.c-icon-person,.c-icon-person-noborder {
	background-position: -600px -192px
}

.c-icon-location-blue {
	background-position: -624px -192px
}

.c-icon-hotAirBall {
	background-position: -648px -192px
}

.c-icon-moon {
	background-position: -672px -192px
}

.c-icon-streetMap {
	background-position: -696px -192px
}

.c-icon-high-v,.c-icon-high-v-noborder {
	background-position: -720px -192px
}

.c-icon-nuo {
	background-position: -744px -192px
}

.c-icon-mv {
	background-position: -768px -192px
}

.c-icon-med {
	background-position: -816px -192px
}

.c-icon-air {
	background-position: -840px -192px
}

.c-icon-share2 {
	background-position: -864px -192px
}

.c-icon-v1,.c-icon-v1-noborder {
	background-position: -888px -192px
}

.c-icon-v2,.c-icon-v2-noborder {
	background-position: -912px -192px
}

.c-icon-v3,.c-icon-v3-noborder {
	background-position: -936px -192px
}

.c-icon-v1-noborder-disable {
	background-position: -960px -192px
}

.c-icon-v2-noborder-disable {
	background-position: -984px -192px
}

.c-icon-v3-noborder-disable {
	background-position: -1008px -192px
}

.c-icon-write {
	background-position: -1032px -192px
}

.c-icon-zhidao-s {
	background-position: -1056px -192px
}

.c-icon-shopping {
	background-position: -1080px -192px
}

.c-icon-bear-circle {
	background-position: 0 -216px
}

.c-icon-warning-circle {
	background-position: -24px -216px
}

.c-icon-warning-triangle {
	width: 24px;
	background-position: -48px -216px
}

.c-icon-warning-circle-gray {
	background-position: -72px -216px
}

.c-icon-ball-red {
	background-position: 0 -240px
}

.c-icon-ball-blue {
	background-position: -48px -240px
}

.c-icon-tieba {
	background-position: 0 -288px
}

.c-icon-zhidao {
	background-position: -48px -288px
}

.c-icon-bear-p {
	background-position: -96px -288px
}

.c-icon-bear-pn {
	background-position: -144px -288px
}

.c-icon-download {
	background-position: 0 -336px
}

.c-icon-lyric {
	background-position: -24px -336px
}

.c-icon-play-circle {
	background-position: -48px -336px
}

.c-icon-play-circle:hover {
	background-position: -72px -336px
}

.c-icon-stop-circle {
	background-position: -96px -336px
}

.c-icon-stop-circle:hover {
	background-position: -120px -336px
}

.c-icon-play-circle-middle {
	background-position: 0 -360px
}

.c-icon-play-circle-middle:hover {
	background-position: -48px -360px
}

.c-icon-stop-circle-middle {
	background-position: -96px -360px
}

.c-icon-stop-circle-middle:hover {
	background-position: -144px -360px
}

.c-icon-play-black-large {
	background-position: 0 -408px
}

.c-icon-play-black-large:hover {
	background-position: -48px -408px
}

.c-icon-stop-black-large {
	background-position: -96px -408px
}

.c-icon-stop-black-large:hover {
	background-position: -144px -408px
}

.c-icon-play-black-larger {
	background-position: 0 -456px
}

.c-icon-play-black-larger:hover {
	background-position: -72px -456px
}

.c-icon-stop-black-larger {
	background-position: -144px -456px
}

.c-icon-stop-black-larger:hover {
	background-position: -216px -456px
}

.c-recommend {
	font-size: 0;
	padding: 5px 0;
	border: 1px solid #f3f3f3;
	border-left: none;
	border-right: 0
}

.c-recommend .c-icon {
	margin-bottom: -4px
}

.c-recommend .c-gray,.c-recommend a {
	font-size: 13px
}

.c-recommend-notopline {
	padding-top: 0;
	border-top: 0
}

.c-recommend-vline {
	display: inline-block;
	margin: 0 10px -2px;
	border-left: 1px solid #d8d8d8;
	width: 0;
	height: 12px;
	_vertical-align: middle;
	_overflow: hidden
}

.c-text {
	display: inline-block;
	padding: 2px;
	text-align: center;
	vertical-align: text-bottom;
	font-size: 12px;
	line-height: 100%;
	font-style: normal;
	font-weight: normal;
	color: #fff;
	overflow: hidden
}

a.c-text {
	text-decoration: none
}

.c-text-new {
	background-color: #f13f40
}

.c-text-info {
	padding-left: 0;
	padding-right: 0;
	font-weight: bold;
	color: #2b99ff;
	*vertical-align: baseline;
	_position: relative;
	_top: 2px
}

.c-text-info b {
	_position: relative;
	_top: -1px
}

.c-text-info span {
	padding: 0 2px;
	font-weight: normal
}

.c-text-important {
	background-color: #1cb7fd
}

.c-text-public {
	background-color: #2b99ff
}

.c-text-warning {
	background-color: #ff830f
}

.c-text-prompt {
	background-color: #f5c537
}

.c-text-danger {
	background-color: #f13f40
}

.c-text-safe {
	background-color: #52c277
}

.c-text-empty {
	padding-top: 1px;
	padding-bottom: 1px;
	border: 1px solid #d8d8d8;
	cursor: pointer;
	color: #23b9fd;
	background-color: #fff
}

.c-text-empty:hover {
	border-color: #388bff
}

.c-text-empty:active {
	border-color: #a2a6ab;
	background-color: #f0f0f0;
	box-shadow: inset 1px 1px 1px #c7c7c7;
	-webkit-box-shadow: inset 1px 1px 1px #c7c7c7;
	-moz-box-shadow: inset 1px 1px 1px #c7c7c7;
	-o-box-shadow: inset 1px 1px 1px #c7c7c7
}

.c-text-mult {
	padding-left: 5px;
	padding-right: 5px
}

.c-text-gray {
	background-color: #666
}

.c-btn,.c-btn:visited {
	color: #333 !important
}

.c-btn {
	display: inline-block;
	padding: 0 14px;
	margin: 0;
	height: 24px;
	line-height: 25px;
	font-size: 13px;
	filter: chroma(color =             #000000);
	*zoom: 1;
	border: 1px solid #d8d8d8;
	cursor: pointer;
	font-family: inherit;
	font-weight: normal;
	text-align: center;
	vertical-align: middle;
	background-color: #f9f9f9;
	overflow: hidden;
	outline: 0
}

.c-btn:hover {
	border-color: #388bff
}

.c-btn:active {
	border-color: #a2a6ab;
	background-color: #f0f0f0;
	box-shadow: inset 1px 1px 1px #c7c7c7;
	-webkit-box-shadow: inset 1px 1px 1px #c7c7c7;
	-moz-box-shadow: inset 1px 1px 1px #c7c7c7;
	-o-box-shadow: inset 1px 1px 1px #c7c7c7
}

a.c-btn {
	text-decoration: none
}

button.c-btn {
	height: 26px;
	_line-height: 18px;
	*overflow: visible
}

button.c-btn::-moz-focus-inner {
	padding: 0;
	border: 0
}

.c-btn .c-icon {
	margin-top: 5px
}

.c-btn-disable {
	color: #999 !important
}

.c-btn-disable:visited {
	color: #999 !important
}

.c-btn-disable:hover {
	border: 1px solid #d8d8d8;
	cursor: default
}

.c-btn-disable:active {
	border-color: #d8d8d8;
	background-color: #f9f9f9;
	box-shadow: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	-o-box-shadow: none
}

.c-btn-mini {
	padding-left: 5px;
	padding-right: 5px;
	height: 18px;
	line-height: 18px;
	font-size: 12px
}

button.c-btn-mini {
	height: 20px;
	_height: 18px;
	_line-height: 14px
}

.c-btn-mini .c-icon {
	margin-top: 2px
}

.c-btn-large {
	height: 28px;
	line-height: 28px;
	font-size: 14px;
	font-family: "微软雅黑", "黑体"
}

button.c-btn-large {
	height: 30px;
	_line-height: 24px
}

.c-btn-large .c-icon {
	margin-top: 7px;
	_margin-top: 6px
}

.c-btn-primary,.c-btn-primary:visited {
	color: #fff !important
}

.c-btn-primary {
	background-color: #388bff;
	border-color: #3c8dff #408ffe #3680e6
}

.c-btn-primary:hover {
	border-color: #2678ec #2575e7 #1c6fe2 #2677e7;
	background-color: #388bff;
	background-image:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAACCAMAAACuX0YVAAAABlBMVEVnpv85i/9PO5r4AAAAD0lEQVR42gEEAPv/AAAAAQAFAAIros7PAAAAAElFTkSuQmCC);
	background-repeat: repeat-x;
	box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
	-webkit-box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
	-moz-box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
	-o-box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4)
}

.c-btn-primary:active {
	border-color: #178ee3 #1784d0 #177bbf #1780ca;
	background-color: #388bff;
	background-image: none;
	box-shadow: inset 1px 1px 1px rgba(0, 0, 0, 0.15);
	-webkit-box-shadow: inset 1px 1px 1px rgba(0, 0, 0, 0.15);
	-moz-box-shadow: inset 1px 1px 1px rgba(0, 0, 0, 0.15);
	-o-box-shadow: inset 1px 1px 1px rgba(0, 0, 0, 0.15)
}

.c-btn .c-icon {
	float: left
}

.c-dropdown2 {
	position: relative;
	display: inline-block;
	width: 100%;
	height: 26px;
	line-height: 26px;
	font-size: 13px;
	vertical-align: middle;
	outline: 0;
	_font-family: SimSun;
	background-color: #fff;
	word-wrap: normal;
	word-break: normal
}

.c-dropdown2 .c-dropdown2-btn-group {
	position: relative;
	height: 24px;
	border: 1px solid #999;
	border-bottom-color: #d8d8d8;
	border-right-color: #d8d8d8;
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none
}

.c-dropdown2:hover .c-dropdown2-btn-group,.c-dropdown2-hover .c-dropdown2-btn-group
	{
	box-shadow: inset 1px 1px 0 0 #d8d8d8;
	-webkit-box-shadow: inset 1px 1px 0 0 #d8d8d8;
	-moz-box-shadow: inset 1px 1px 0 0 #d8d8d8;
	-o-box-shadow: inset 1px 1px 0 0 #d8d8d8
}

.c-dropdown2:hover .c-dropdown2-btn-icon,.c-dropdown2-hover .c-dropdown2-btn-icon
	{
	box-shadow: inset 0 1px 0 0 #d8d8d8;
	-webkit-box-shadow: inset 0 1px 0 0 #d8d8d8;
	-moz-box-shadow: inset 0 1px 0 0 #d8d8d8;
	-o-box-shadow: inset 0 1px 0 0 #d8d8d8
}

.c-dropdown2:hover .c-dropdown2-btn-icon-border,.c-dropdown2-hover .c-dropdown2-btn-icon-border
	{
	background-color: #f2f2f2
}

.c-dropdown2 .c-dropdown2-btn {
	height: 24px;
	padding-left: 10px;
	padding-right: 10px;
	cursor: default;
	overflow: hidden;
	white-space: nowrap
}

.c-dropdown2 .c-dropdown2-btn-icon {
	position: absolute;
	top: 0;
	right: 0;
	width: 23px;
	height: 24px;
	line-height: 24px;
	background-color: #fff;
	padding: 0 1px 0 10px
}

.c-dropdown2 .c-dropdown2-btn-icon-border {
	height: 24px;
	width: 23px;
	border-left: 1px solid #d9d9d9;
	text-align: center;
	zoom: 1
}

.c-dropdown2 .c-icon-triangle-down {
	*margin-top: 5px;
	_margin-left: 2px
}

.c-dropdown2 .c-dropdown2-menu {
	position: absolute;
	left: 0;
	top: 100%;
	_margin-top: 0;
	width: 100%;
	overflow: hidden;
	border: 1px solid #bbb;
	background: #fff;
	visibility: hidden
}

.c-dropdown2 .c-dropdown2-menu-inner {
	overflow: hidden
}

.c-dropdown2 .c-dropdown2-option {
	background-color: #fff;
	cursor: pointer
}

.c-dropdown2 .c-dropdown2-selected {
	background-color: #f5f5f5
}

.c-dropdown2-common ul,.c-dropdown2-common li {
	margin: 0;
	padding: 0;
	list-style: none
}

.c-dropdown2-common .c-dropdown2-option {
	height: 26px;
	line-height: 26px;
	font-size: 12px;
	color: #333;
	white-space: nowrap;
	cursor: pointer;
	padding-left: 10px
}

.c-dropdown2-common .c-dropdown2-selected {
	background-color: #f5f5f5
}

.c-dropdown2-common .c-dropdown2-menu-group .c-dropdown2-group {
	padding-left: 10px;
	font-weight: bold;
	cursor: default
}

.c-dropdown2-common .c-dropdown2-menu-group .c-dropdown2-option {
	padding-left: 20px
}

.c-img {
	display: block;
	min-height: 1px;
	border: none 0
}

.c-img3 {
	width: 52px
}

.c-img4 {
	width: 75px
}

.c-img6 {
	width: 121px
}

.c-img7 {
	width: 144px
}

.c-img12 {
	width: 259px
}

.c-img15 {
	width: 328px
}

.c-img18 {
	width: 397px
}

.c-border .c-img3 {
	width: 56px
}

.c-border .c-img4 {
	width: 78px
}

.c-border .c-img7 {
	width: 144px
}

.c-border .c-img12 {
	width: 254px
}

.c-border .c-img15 {
	width: 320px
}

.c-border .c-img18 {
	width: 386px
}

.c-index {
	display: inline-block;
	padding: 1px 0;
	color: #fff;
	width: 14px;
	line-height: 100%;
	font-size: 12px;
	text-align: center;
	background-color: #8eb9f5
}

.c-index-hot,.c-index-hot1 {
	background-color: #f54545
}

.c-index-hot2 {
	background-color: #ff8547
}

.c-index-hot3 {
	background-color: #ffac38
}

.c-input {
	display: inline-block;
	padding: 0 4px;
	height: 24px;
	line-height: 24px\9;
	font-size: 13px;
	border: 1px solid #999;
	border-bottom-color: #d8d8d8;
	border-right-color: #d8d8d8;
	outline: 0;
	box-sizing: content-box;
	-webkit-box-sizing: content-box;
	-moz-box-sizing: content-box;
	vertical-align: top;
	overflow: hidden
}

.c-input:hover {
	box-shadow: inset 1px 1px 1px 0 #d8d8d8;
	-webkit-box-shadow: inset 1px 1px 1px 0 #d8d8d8;
	-moz-box-shadow: inset 1px 1px 1px 0 #d8d8d8;
	-o-box-shadow: inset 1px 1px 1px 0 #d8d8d8
}

.c-input .c-icon {
	float: right;
	margin-top: 6px
}

.c-input .c-icon-left {
	float: left;
	margin-right: 4px
}

.c-input input {
	float: left;
	height: 22px;
	*padding-top: 4px;
	margin-top: 2px;
	font-size: 13px;
	border: 0;
	outline: 0
}

.c-input {
	width: 180px
}

.c-input input {
	width: 162px
}

.c-input-xmini {
	width: 65px
}

.c-input-xmini input {
	width: 47px
}

.c-input-mini {
	width: 88px
}

.c-input-mini input {
	width: 70px
}

.c-input-small {
	width: 157px
}

.c-input-small input {
	width: 139px
}

.c-input-large {
	width: 203px
}

.c-input-large input {
	width: 185px
}

.c-input-xlarge {
	width: 341px
}

.c-input-xlarge input {
	width: 323px
}

.c-input12 {
	width: 249px
}

.c-input12 input {
	width: 231px
}

.c-input20 {
	width: 433px
}

.c-input20 input {
	width: 415px
}

.c-border .c-input {
	width: 178px
}

.c-border .c-input input {
	width: 160px
}

.c-border .c-input-xmini {
	width: 68px
}

.c-border .c-input-xmini input {
	width: 50px
}

.c-border .c-input-mini {
	width: 90px
}

.c-border .c-input-mini input {
	width: 72px
}

.c-border .c-input-small {
	width: 156px
}

.c-border .c-input-small input {
	width: 138px
}

.c-border .c-input-large {
	width: 200px
}

.c-border .c-input-large input {
	width: 182px
}

.c-border .c-input-xlarge {
	width: 332px
}

.c-border .c-input-xlarge input {
	width: 314px
}

.c-border .c-input12 {
	width: 244px
}

.c-border .c-input12 input {
	width: 226px
}

.c-border .c-input20 {
	width: 420px
}

.c-border .c-input20 input {
	width: 402px
}

.c-numberset {
	*zoom: 1
}

.c-numberset:after {
	display: block;
	height: 0;
	content: "";
	clear: both;
	visibility: hidden
}

.c-numberset li {
	float: left;
	margin-right: 17px;
	list-style: none
}

.c-numberset .c-numberset-last {
	margin-right: 0
}

.c-numberset a {
	display: block;
	width: 50px;
	text-decoration: none;
	text-align: center;
	border: 1px solid #d8d8d8;
	cursor: pointer
}

.c-numberset a:hover {
	border-color: #388bff
}

.c-border .c-numberset li {
	margin-right: 10px
}

.c-border .c-numberset .c-numberset-last {
	margin-right: 0
}

.c-border .c-numberset a {
	width: 54px
}

.c-table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0
}

.c-table th,.c-table td {
	padding-left: 10px;
	line-height: 1.54;
	font-size: 13px;
	border-bottom: 1px solid #f3f3f3;
	text-align: left
}

.cr-content .c-table th:first-child,.cr-content .c-table td:first-child
	{
	padding-left: 0
}

.c-table th {
	padding-top: 4px;
	padding-bottom: 4px;
	font-weight: normal;
	color: #666;
	border-color: #f0f0f0;
	white-space: nowrap;
	background-color: #fafafa
}

.c-table td {
	padding-top: 6.5px;
	padding-bottom: 6.5px
}

.c-table-hasimg td {
	padding-top: 10px;
	padding-bottom: 10px
}

.c-table a,.c-table em {
	text-decoration: none
}

.c-table a:hover,.c-table a:hover em {
	text-decoration: underline
}

.c-table a.c-icon:hover {
	text-decoration: none
}

.c-table .c-btn:hover,.c-table .c-btn:hover em {
	text-decoration: none
}

.c-table-nohihead th {
	background-color: transparent
}

.c-table-noborder td {
	border-bottom: 0
}

.c-tabs-nav-movetop {
	margin: -10px -9px 0 -10px;
	position: relative
}

.c-tabs-nav {
	_width: 538px;
	border-bottom: 1px solid #d9d9d9;
	background-color: #fafafa;
	line-height: 1.54;
	font-size: 0;
	*zoom: 1;
	_overflow-x: hidden;
	_position: relative
}

.c-tabs-nav:after {
	display: block;
	height: 0;
	content: "";
	clear: both;
	visibility: hidden
}

.c-tabs-nav .c-tabs-nav-btn {
	float: right;
	_position: absolute;
	_top: 0;
	_right: 0;
	_z-index: 1;
	background: #fafafa
}

.c-tabs-nav .c-tabs-nav-btn .c-tabs-nav-btn-prev,.c-tabs-nav .c-tabs-nav-btn .c-tabs-nav-btn-next
	{
	float: left;
	padding: 6px 2px;
	cursor: pointer
}

.c-tabs-nav .c-tabs-nav-btn .c-tabs-nav-btn-disable {
	cursor: default
}

.c-tabs-nav .c-tabs-nav-view {
	_position: relative;
	overflow: hidden;
	*zoom: 1;
	margin-bottom: -1px
}

.c-tabs-nav .c-tabs-nav-view .c-tabs-nav-li {
	margin-bottom: 0
}

.c-tabs-nav .c-tabs-nav-more {
	float: left;
	white-space: nowrap
}

.c-tabs-nav li,.c-tabs-nav a {
	color: #666;
	font-size: 13px;
	*zoom: 1
}

.c-tabs-nav li {
	display: inline-block;
	margin-bottom: -1px;
	*display: inline;
	padding: 3px 15px;
	vertical-align: bottom;
	border-style: solid;
	border-width: 2px 1px 0 1px;
	border-color: transparent;
	_border-color: tomato;
	_filter: chroma(color =             #ff6347);
	list-style: none;
	cursor: pointer;
	white-space: nowrap;
	overflow: hidden
}

.c-tabs-nav a {
	text-decoration: none
}

.c-tabs-nav .c-tabs-nav-sep {
	height: 16px;
	width: 0;
	padding: 0;
	margin-bottom: 4px;
	border-style: solid;
	border-width: 0 1px 0;
	border-color: transparent #fff transparent #dedede
}

.c-tabs-nav .c-tabs-nav-selected {
	_position: relative;
	border-color: #2c99ff #e4e4e4 #fff #dedede;
	background-color: #fff;
	color: #000;
	cursor: default
}

.c-tabs-nav-one .c-tabs-nav-selected {
	border-color: transparent;
	_border-color: tomato;
	_filter: chroma(color =             #ff6347);
	background-color: transparent;
	color: #666
}

.c-tabs .c-tabs .c-tabs-nav {
	padding: 10px 0 5px;
	border: none 0;
	background-color: #fff
}

.c-tabs .c-tabs .c-tabs-nav li,.c-tabs .c-tabs .c-tabs-nav a {
	color: #00c
}

.c-tabs .c-tabs .c-tabs-nav li {
	padding: 0 5px;
	position: static;
	margin: 0 10px;
	border: none 0;
	cursor: pointer;
	white-space: nowrap
}

.c-tabs .c-tabs .c-tabs-nav .c-tabs-nav-sep {
	height: 11px;
	width: 0;
	padding: 0;
	margin: 0 0 4px 0;
	border: none 0;
	border-left: 1px solid #d8d8d8
}

.c-tabs .c-tabs .c-tabs-nav .c-tabs-nav-selected {
	background-color: #2c99ff;
	color: #fff;
	cursor: default
}

.c-tag {
	padding-top: 3px;
	margin-bottom: 3px;
	height: 1.7em;
	font-size: 13px;
	line-height: 1.4em;
	transition: height .3s ease-in;
	-webkit-transition: height .3s ease-in;
	-moz-transition: height .3s ease-in;
	-ms-transition: height .3s ease-in;
	-o-transition: height .3s ease-in;
	*zoom: 1;
	overflow: hidden
}

.c-tag:after {
	display: block;
	height: 0;
	content: "";
	clear: both;
	visibility: hidden
}

.c-tag-cont {
	overflow: hidden;
	*zoom: 1
}

.c-tag-type,.c-tag-li,.c-tag-more,.c-tag-cont span {
	margin: 2px 0
}

.c-tag-type,.c-tag-li,.c-tag-cont span {
	float: left
}

.c-tag-type,.c-tag-more {
	color: #666
}

.c-tag-li,.c-tag-cont span {
	padding: 0 4px;
	display: inline-block;
	margin-right: 12px;
	white-space: nowrap;
	cursor: pointer;
	color: #00c
}

.c-tag .c-tag-selected {
	background: #388bff;
	color: #fff
}

.c-tag-more {
	float: right;
	background: #fff;
	cursor: pointer;
	*height: 18px
}

.c-tool {
	display: inline-block;
	width: 56px;
	height: 56px;
	background: url("//www.baidu.com/aladdin/img/tools/tools-5.png")
		no-repeat
}

.c-tool-region {
	background-position: 0 0
}

.c-tool-calendar {
	background-position: -72px 0
}

.c-tool-city {
	background-position: -144px 0
}

.c-tool-phone-pos {
	background-position: -216px 0
}

.c-tool-other {
	background-position: -288px 0
}

.c-tool-midnight {
	background-position: -360px 0
}

.c-tool-kefu {
	width: 121px;
	background-position: -432px 0
}

.c-tool-phone {
	background-position: -576px 0
}

.c-tool-car {
	background-position: -648px 0
}

.c-tool-station {
	background-position: 0 -72px
}

.c-tool-cheat {
	background-position: -72px -72px
}

.c-tool-counter {
	background-position: -144px -72px
}

.c-tool-time {
	background-position: -216px -72px
}

.c-tool-zip {
	background-position: -288px -72px
}

.c-tool-warning {
	background-position: -360px -72px
}

.c-tool-ip {
	background-position: 0 -144px
}

.c-tool-unit {
	background-position: -72px -144px
}

.c-tool-rate {
	background-position: -144px -144px
}

.c-tool-conversion {
	background-position: -288px -144px
}

.c-tool-ads {
	background-position: -360px -144px
}

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
<style>
.UTSncm_tg {
	line-height: 24px;
	margin: 0 0 4px 0;
	font-size: 12px;
}

.UTSncm_tg a {
	color: #666;
}

.mCcOXa {
	word-break: break-all;
	cursor: hand;
	width: 270px;
	font-size: medium;
	line-height: 1.15em;
}

.UTSncm .tmCLYE {
	font-size: 1em;
}

.UTSncm .tmCLYE font {
	text-decoration: underline;
}

.EC_pic a {
	text-decoration: none;
}

.UTSncm {
	margin-bottom: 1em;
}

.UTSncm .JjXwmv {
	color: #080;
}

#ec_im_container .EC_idea1009 {
	position: relative;
}

.UTSncm .dBbFam,.UTSncm .JjXwmv {
	text-decoration: none;
	font-size: small;
}

.UTSncm .dBbFam {
	color: #000;
}

.icons {
	display: inline-block;
	line-height: 12px;
}

.icon {
	display: inline-block;
	width: 16px;
	height: 16px;
	line-height: 16px;
	vertical-align: text-top;
	background-image: url(http://a.baidu.com/xianzhi/wholeIconNew.gif);
	background-repeat: no-repeat;
	margin: 0 5px 0 0;
}

.tmCLYEip {
	display: none;
	white-space: nowrap;
	background: white;
	border: 1px solid #CCC;
	color: #575757;
	font-size: 12px;
	line-height: 16px;
	padding: 5px 9px;
	width: auto !important;
	*width: 140px;
	position: absolute;
	text-align: left;
	box-shadow: 1px 1px 1px #DFDFDF;
	z-index: 9;
}

.tmCLYEip_content {
	font-size: 12px;
	maring: 0;
	padding: 0;
	line-height: 16px;
	white-space: nowrap;
	vertical-align: middle;
	zoom: 1;
}

.tmCLYEip_dir {
	background: url(http://a.baidu.com/xianzhi/tmCLYEip_dir.png) no-repeat
		5px 5px;
	background-position: 5px 7px\9;
	*background-position: 5px 5px;
	width: 50px;
	height: 14px;
	position: absolute;
	top: -11px;
	top: -16px\9;
	*top: -12px;
	left: 0;
}

.tmCLYEip_title {
	font-size: 12px;
	display: inline-block;
	height: 14px;
	line-height: 14px;
	margin-bottom: 8px;
	color: #575757;
}

.EC_fix_cover {
	display: inline-block;
}

.icon {
	display: inline-block;
	width: 16px;
	height: 16px;
	line-height: 16px;
	vertical-align: text-top;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/biz/ecom/common/api/tip0624/wholeIconNew.gif);
	background-repeat: no-repeat;
	margin: 0 5px 0 0;
}

.icon-coupon {
	background-position: 0 0;
}

.icon-tel {
	background-position: 0 -32px;
}

.icon-yiliao {
	background-position: 2px -94px;
}

.icon-vshenfen {
	background-position: 0 -117px;
}

.ec_vshenfen_level {
	margin-left: 5px;
	padding-right: 59px;
	background-image:
		url(http://s1.bdstatic.com/r/www/cache/biz/ecom/common/api/tip0624/wholeIconNew.gif);
	background-repeat: no-repeat;
	display: none;
}

.ec_vshenfen_level1 {
	background-position: 76px -570px;
	display: inline;
	padding-right: 15px;
}

.ec_vshenfen_level2 {
	background-position: 76px -610px;
	display: inline;
	padding-right: 27px;
}

.ec_vshenfen_level3 {
	background-position: 76px -650px;
	display: inline;
	padding-right: 38px;
}

.ec_vshenfen_level4 {
	background-position: 76px -690px;
	display: inline;
	padding-right: 48px;
}

.ec_vshenfen_level5 {
	background-position: 76px -730px;
	display: inline;
	padding-right: 59px;
}

.EC_certify_tip .icon {
	margin-right: 5px;
}

.tmCLYEip {
	display: none;
	white-space: nowrap;
	background: white;
	border: 1px solid #CCC;
	color: #575757;
	font-size: 12px;
	line-height: 16px;
	padding: 5px 9px;
	width: auto !important;
	*width: 140px;
	position: absolute;
	text-align: left;
	box-shadow: 1px 1px 1px #DFDFDF;
	z-index: 9;
}

.tmCLYEip_content {
	font-size: 12px;
	maring: 0;
	padding: 0;
	line-height: 16px;
	white-space: nowrap;
	vertical-align: middle;
	zoom: 1;
}

.EC_certify_tip li {
	height: 18px;
	line-height: 18px;
	font-size: 12px;
}

.EC_certify_tip li img {
	vertical-align: top;
}

.EC_certify_tip_logo,.EC_safeguard_tip_logo {
	margin-right: 5px;
}

.tmCLYEip_dir {
	background: url(http://a.baidu.com/xianzhi/tmCLYEip_dir.png) no-repeat
		5px 5px;
	background-position: 5px 7px\9;
	*background-position: 5px 5px;
	width: 50px;
	height: 14px;
	position: absolute;
	top: -11px;
	top: -16px\9;
	*top: -12px;
	left: 0;
}

.tmCLYEip_title {
	font-size: 12px;
	display: inline-block;
	height: 14px;
	line-height: 14px;
	margin-bottom: 8px;
	color: #575757;
}
</style>
<style>
.op-bk-polysemy-bold {
	font-weight: 700
}

.op-bk-polysemy-other span {
	display: block
}

.op-bk-polysemy-space {
	white-space: nowrap
}

.op-bk-polysemy-oneother .op-bk-polysemy-move,.op-bk-polysemy-oneother span
	{
	margin-left: 0
}

.op-bk-polysemy-focus {
	height: 22px;
	_height: 24px;
	line-height: 1.69em;
	margin-bottom: 2px;
	overflow: hidden
}

.op-bk-polysemy-focustext {
	float: left;
	display: inline-block;
	height: 22px;
	padding: 0 8px 0 30px;
	background: url(//www.baidu.com/aladdin/img/bk_polysemy/bk_polyicon.png)
		5px 0 no-repeat #3288ff;
	_background:
		url(//www.baidu.com/aladdin/img/bk_polysemy/bk_polyicon1.gif) 5px
		center no-repeat #3288ff;
	color: #fff
}

.op-bk-polysemy-focus a {
	display: inline-block;
	height: 22px;
	line-height: 1.69em;
	float: left;
	border-right: 2px solid #fff;
	background: #f5f5f5;
	padding: 0 8px;
	text-decoration: none;
	color: #333
}

.op-bk-polysemy-focus a.op-bk-polysemy_focusafirst {
	background: url(//www.baidu.com/aladdin/img/bk_polysemy/bk_polyicon.png)
		0 -22px no-repeat #f5f5f5
}

.op-bk-polysemy-focusf {
	height: 23px;
	_height: 25px;
	line-height: 1.69em;
	margin-bottom: 2px;
	overflow: hidden
}

.op-bk-polysemy-focusleft {
	float: left;
	display: inline-block;
	height: 21px;
	border: 1px solid #38f
}

.op-bk-polysemy-focusrightf,.op-bk-polysemy-focustextf {
	border-top: 1px solid #f0f0f0;
	border-bottom: 1px solid #f0f0f0
}

.op-bk-polysemy-focustextf {
	float: left;
	display: inline-block;
	height: 21px;
	padding-left: 10px
}

.op-bk-polysemy-focustextf span {
	color: #38f
}

.op-bk-polysemy-focusrightf {
	float: left;
	display: inline-block;
	height: 21px;
	border-right: 1px solid #f0f0f0
}

.op-bk-polysemy-focusrightf span {
	display: inline-block;
	float: left;
	color: #ccc
}

.op-bk-polysemy-focusrightf a {
	display: inline-block;
	height: 21px;
	line-height: 1.54em;
	text-decoration: underline;
	border: none;
	background: #fff;
	float: left;
	padding: 0 8px;
	color: #00c
}

.op-bk-polysemy-focusrightf a.op-bk-polysemy_focusrfirst {
	padding-left: 4px;
	background: #fff;
	color: #00c
}

.op-bk-polysemy-album {
	position: relative;
	width: 100%;
	display: block
}

.op-bk-polysemy-albumPr {
	position: relative
}

.op-bk-polysemy-albumMore {
	display: block;
	width: 100%;
	height: 18px;
	line-height: 18px;
	background: #525252;
	background: rgba(82, 82, 82, .6);
	color: #fff;
	position: absolute;
	bottom: 0;
	left: 0;
	text-align: center;
	filter: alpha(opacity =             60)
}

.op-bk-polysemy-albumBorder {
	width: 99%;
	height: 99%;
	position: absolute;
	border-right: 1px solid #bfbfbf;
	border-bottom: 1px solid #bfbfbf;
	right: -2px;
	bottom: -2px;
	overflow: hidden;
	z-index: 59;
	_right: -3px
}

.op-bk-polysemy-albumBorderSec {
	right: -4px;
	bottom: -4px;
	_right: -5px
}

.op_jingyan_list {
	position: relative
}

.op_jingyan_list .op_jingyan_index {
	position: absolute;
	top: 74px;
	left: 0;
	width: 20px;
	height: 20px padding:1px 0;
	filter: progid:DXImageTransform.Microsoft.gradient(enabled='true',
		startColorstr='#99000000', endColorstr='#99000000');
	background-color: rgba(0, 0, 0, .6);
	font-size: 12px;
	color: #ddd;
	text-align: center
}

:root .op_jingyan_list .op_jingyan_index {
	filter: none;
	background-color: rgba(0, 0, 0, .6)
}

.op_jingyan_list a {
	text-decoration: none;
	color: #333;
	font-size: 12px
}

.op_jingyan_list img {
	height: 92px
}

.op_jingyan_list_hide,.op_jingyan_list_showmore {
	border-top: 1px solid #f3f3f3;
	text-align: center;
	padding-top: 5px
}

.op_jingyan_list_hide span,.op_jingyan_list_showmore span {
	cursor: pointer
}

.op_jingyan_list2,.op_jingyan_list_hide,.op_jingyan_pager {
	display: none
}

.op_jingyan_pager {
	text-align: center;
	overflow: hidden;
	padding: 4px 0
}

.op_jingyan_pager span {
	display: inline-block;
	_display: inline;
	border: 1px solid #d5d5d5;
	overflow: hidden;
	padding: 3px 7px;
	margin: 0 1px;
	color: #00c;
	text-decoration: none;
	line-height: 18px;
	font: 400 12px Arial, Helvetica, sans-serif;
	text-align: center;
	vertical-align: middle
}

.op_jingyan_pager .op_jingyan_pager_current,.op_jingyan_pager .op_jingyan_pager_loading,.op_jingyan_pager .op_jingyan_pager_seperator
	{
	border: none;
	padding: 4px 8px;
	color: #666
}

.op_jingyan_pager .op_jingyan_pager_current {
	color: #000
}

.op_jingyan_pager .op_jingyan_pager_item {
	cursor: pointer
}

.op_tieba2_container td {
	color: #666;
	padding: 2px 0
}

.op_tieba2_tablinks_container {
	padding-bottom: 6px;
	border-bottom: 1px solid #efefef
}

.opr-recommends-merge-title {
	text-decoration: none
}

.opr-recommends-merge-title:hover {
	text-decoration: underline
}

.opr-recommends-merge-imgtext {
	display: block
}

.opr-recommends-merge-hide {
	display: none
}

.opr-recommends-merge-p {
	position: relative;
	_zoom: 1
}

.opr-recommends-merge-item {
	text-align: center
}

.opr-recommends-merge-mask {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	_background: 0 0;
	background: -webkit-radial-gradient(center, closest-side, rgba(255, 255, 255, 0),
		rgba(0, 0, 0, .03));
	background: -moz-radial-gradient(center, closest-side, rgba(255, 255, 255, 0),
		rgba(0, 0, 0, .03));
	background: -o-radial-gradient(center, closest-side, rgba(255, 255, 255, 0),
		rgba(0, 0, 0, .03));
	background: -ms-radial-gradient(center, closest-side, rgba(255, 255, 255, 0),
		rgba(0, 0, 0, .03))
}

.opr-recommends-merge-more-btn i {
	cursor: pointer
}

.opr-recommends-merge-layerbtn {
	position: absolute;
	right: 0;
	bottom: 0;
	width: 1.23em;
	height: 1.23em;
	background:
		url(//www.baidu.com/aladdin/img/right_recommends/layericon.png)
		no-repeat;
	_background-image:
		url(//www.baidu.com/aladdin/img/right_recommends/layericon.gif)
}

.opr-recommends-merge-layerbtn1,.opr-recommends-merge-layerbtn2 {
	background-position: -48px 0
}

.opr-recommends-merge-layerbtn1,.opr-recommends-merge-layerbtn3 {
	background-color: #999
}

.opr-recommends-merge-layerbtn1:hover,.opr-recommends-merge-layerbtn2,.opr-recommends-merge-layerbtn3:hover,.opr-recommends-merge-layerbtn4
	{
	background-color: #38f
}

.opr-recommends-merge-layerbtn3:hover,.opr-recommends-merge-layerbtn4:hover
	{
	background-position: -24px 0
}

.opr-recommends-merge-layer {
	padding: 4px 9px;
	width: 350px
}

.opr-recommends-merge-layer table {
	border-collapse: collapse;
	border-padding: 0
}

.opr-recommends-merge-layer td {
	font-size: 1em;
	line-height: 1.67;
	vertical-align: top
}

.opr-recommends-merge-lastspan {
	display: none
}

.opr-recommends-merge-mbGap {
	margin-bottom: 28px
}

.container_l .opr-recommends-merge-lastspan {
	display: block
}

.container_l .cr-content-narrow .opr-recommends-merge-lastspan {
	display: none
}

.opr-toplist-table .opr-toplist-right {
	text-align: right;
	white-space: nowrap
}

.opr-toplist-info {
	color: #666;
	text-align: right
}

.opr-toplist-info a {
	color: #666
}

.opr-toplist-st {
	margin-bottom: 2px
}

.container_s .op-ad-img-big {
	width: 259px;
	_height: 70px
}

.container_l .op-ad-img-big {
	_width: 351px;
	_height: 95px
}
</style>
<link rel="stylesheet" type="text/css"
	href="http://su.bdimg.com/static/message/css/message_33dce38c.css">
<script type="text/javascript"
	src="http://eiv.baidu.com/mapm2/logClick/logClick5.js"></script>
<style data-for="ur">
#ur_wrap {
	position: fixed;
	_position: absolute;
	bottom: 33%;
	left: 50%;
	width: 360px;
	height: 68px;
	margin-left: -180px;
	overflow: hidden;
	z-index: 9999;
	font-size: 14px
}

#ur_wrap .ur-content {
	position: absolute;
	left: 0;
	padding-top: 10px;
	width: 100%
}

#ur_wrap .ur-item-wrap {
	text-align: left;
	position: relative;
	width: 100%;
	height: 76px
}

#ur_wrap .ur-item-wrap .ur-item-mask {
	position: absolute;
	top: -10px;
	left: 0;
	width: 100%;
	height: 86px
}

#ur_wrap .ur-item {
	background-color: #F3FEEF;
	text-decoration: none;
	box-shadow: 1px 1px 4px #CCC;
	-moz-box-shadow: 1px 1px 4px #ccc;
	-webkit-box-shadow: 1px 1px 4px #CCC;
	padding: 6px 6px;
	cursor: pointer;
	position: relative;
	display: block;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	width: 335px;
	height: 54px;
	margin-bottom: 10px;
	margin-left: 6px;
	z-index: 9999;
	background:
		url(http://su.bdimg.com/static/ur/css/../img/ur/ur_sprite_e850c52d.gif)
		no-repeat 0 -66px;
	overflow: hidden
}

#ur_wrap .ur-item:hover {
	background-position: 0 0;
	overflow: hidden
}

#ur_wrap .ur-item .ie-flash-em {
	position: absolute;
	display: block;
	width: 68px;
	height: 68px;
	top: 0;
	left: -68px;
	background:
		url(http://su.bdimg.com/static/ur/css/../img/ur/ur_le_flash_1fd0df63.png)
		no-repeat 0 0
}

#ur_wrap .ur-item .ur-img {
	width: 54px;
	height: 54px;
	overflow: hidden;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	background-color: rgba(204, 204, 204, 0);
	-webkit-box-shadow: 1px 1px 2px rgba(153, 153, 153, .75);
	-moz-box-shadow: 1px 1px 2px rgba(153, 153, 153, .75);
	box-shadow: 1px 1px 2px rgba(153, 153, 153, .75)
}

#ur_wrap .ur-item .ur-g-img {
	background:
		url(http://su.bdimg.com/static/ur/css/../img/ur/ur_grade_up_6cd2b6f4.png)
		no-repeat 0 0
}

#ur_wrap .ur-item .ur-img,#ur_wrap .ur-item .ur-item-content {
	font-family: 'Microsoft Yahei', Î¢ÈíÑÅºÚ, \5b8b\4f53, Tahoma, Arial,
		Helvetica, STHeiti;
	float: left
}

#ur_wrap .ur-item .ur-item-content {
	height: 54px;
	width: 230px;
	text-align: center
}

#ur_wrap .ur-item .ur-item-content .ur-title,#ur_wrap .ur-item .ur-item-content .ur-g-intro
	{
	height: 20px;
	line-height: 20px;
	color: #000
}

#ur_wrap .ur-item .ur-item-content .ur-g-intro {
	line-height: 25px;
	height: 25px
}

#ur_wrap .ur-item .ur-item-content .ur-intro,#ur_wrap .ur-item .ur-item-content .ur-g-title
	{
	margin-top: 5px;
	font-size: 20px;
	height: 30px;
	line-height: 30px;
	color: #ED6732
}

#ur_wrap .ur-item .ur-item-content .ur-g-title {
	line-height: 25px;
	height: 25px
}

#ur_wrap .ur-item .ur-expnum {
	position: absolute;
	width: 49px;
	height: 38px;
	font-family: arial;
	font-size: 16px;
	right: 1px;
	_right: 0;
	bottom: 1px;
	background:
		url(http://su.bdimg.com/static/ur/css/../img/ur/ur_sprite_e850c52d.gif)
		no-repeat -27px -134px
}

#ur_wrap .ur-item:hover .ur-expnum {
	background-position: -84px -135px
}

#ur_wrap .ur-item .ur-expnum .ur-num {
	width: 26px;
	height: 20px;
	bottom: 2px;
	right: 5px;
	position: absolute;
	line-height: 20px;
	text-align: center;
	color: #FFF
}

#ur_wrap .ur-item .ur-expnum .ur-numcopy {
	transition: 1s;
	-moz-transition: 1s;
	-o-transition: 1s;
	-webkit-transition: 1s
}

#ur_wrap .ur-item .ur-closeBtn {
	position: absolute;
	display: block;
	height: 10px;
	width: 10px;
	right: 8px;
	top: 8px;
	overflow: hidden;
	background:
		url(http://su.bdimg.com/static/ur/css/../img/ur/ur_sprite_e850c52d.gif)
		no-repeat 0 -144px
}

#ur_wrap .ur-item .ur-closeBtn:hover {
	background-position: 0 -163px
}

#ur_wrap .ur-item .ur-closeBtn_hover {
	background-position: 0 -163px
}

#ur_wrap.ur-new-style {
	width: 364px
}

#ur_wrap.ur-new-style .ur-item-wrap {
	height: 103px;
	overflow: hidden
}

#ur_wrap.ur-new-style .ur-stamp {
	position: absolute;
	width: 113px;
	height: 60px;
	top: 0;
	right: 15px;
	background: no-repeat
}

#ur_wrap.ur-new-style .ur-item-mask {
	top: 0;
	left: 0;
	background:
		url(http://su.bdimg.com/static/ur/css/../img/test_bg_19f87213.png)
		no-repeat;
	_background: none;
	_filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://su.bdimg.com/static/ur/img/test_bg_19f87213.png');
	height: 103px
}

#ur_wrap.ur-new-style .ur-item {
	background: none;
	border-radius: 0;
	-moz-border-radius: 0;
	-webkit-border-radius: 0;
	width: auto;
	height: 94px;
	box-shadow: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	cursor: default;
	padding-bottom: 0;
	margin-bottom: 0
}

#ur_wrap.ur-new-style .ur-item .ie-flash-em {
	height: 103px
}

#ur_wrap.ur-new-style .ur-item .ur-img {
	margin: 20px 0 0 12px;
	_margin-left: 6px
}

#ur_wrap.ur-new-style .ur-item .ur-item-content {
	margin-top: 15px;
	margin-left: 10px;
	text-align: left;
	width: 260px;
	height: 70px
}

#ur_wrap.ur-new-style .ur-item .ur-expnum {
	background: none;
	bottom: auto;
	top: 0
}

#ur_wrap.ur-new-style .ur-item .ur-item-content .ur-title a {
	color: #079
}

#ur_wrap.ur-new-style .ur-item .ur-item-content .ur-intro {
	color: #222;
	font-size: 16px;
	margin-top: 0
}

#ur_wrap.ur-new-style .ur-item .ur-item-content .ur-intro span {
	font-weight: bold
}

#ur_wrap.ur-new-style .ur-item .ur-link {
	float: right;
	text-decoration: underline;
	color: #079
}

#ur_wrap.ur-test-7 {
	bottom: auto;
	left: auto;
	top: 20px;
	right: 60px
}

.ur-msg-tip {
	width: 232px
}

.ur-msg-icon {
	float: left;
	margin: 0 8px 8px 0
}

.ur-msg-title {
	margin: -2px;
	font-weight: bold
}

.ur-msg-content {
	margin-top: 5px;
	color: #333
}

.ur-msg-bottom {
	clear: both;
	text-align: right;
	margin-top: 10px
}

.ur-msg-content a {
	color: blue
}

.ur-msg-homelink {
	color: blue
}

.ur-msg-never {
	color: #666
}

a {
	text-decoration: none;
}

#ur_wrap .ur-item,#ur_wrap .ur-item .ur-img,#ur_wrap.ur-new-style .ur-item
	{
	-moz-background-clip: padding;
	-webkit-background-clip: padding-box;
	background-clip: padding-box
}
</style>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path;
	pageContext.setAttribute("basePath", basePath);
%>
</head>
<body style="margin: 0px; overflow-x: hidden; overflow-y: hidden;">
	<div id="head_wrapper" class="s-isindex-wrap head_wrapper s-title-img ">
		<div id="s_fm" class="s_form">
			<div class="s_form_wrapper" id="s_form_wrapper">
				<a href="/" id="result_logo"
					onmousedown="return c({'fm':'tab','tab':'logo'})"> <img
					src="${pageScope.basePath}/res/images/baner.jpg" alt="到百度首页"
					title="到百度首页">
				</a>
				<form name="f" id="form" action="/search/search.action" method="post" class="fm"
					onsubmit="javascript:F.call('ps/sug','pssubmit');">
					<span id="s_kw_wrap" class="bg s_ipt_wr"><input type="text"
						class="s_ipt" value='<s:property value="keyword"/>' name="keyword"
						id="kw" maxlength="100" autocomplete="off"></span><input
						type="hidden" name="rsv_spt" value="1"><input
						type="hidden" name="issp" value="1"><input type="hidden"
						name="f" value="8"><input type="hidden" name="rsv_bp"
						value="0"><input type="hidden" name="rsv_idx" value="2"><input
						type="hidden" name="ie" value="utf-8"><input type="hidden"
						name="tn" value="94186154_hao_pg"><span
						class="btn_wr s_btn_wr bg s_btn_wr_h" id="s_btn_wr"><input
						type="submit" value="GO" id="su"
						class="btn self-btn bg s_btn btn_h btnhover"></span><span
						class="tools"><span id="mHolder"><div id="mCon">
								<span>输入法</span>
							</div>
							<ul id="mMenu">
								<li><a href="javascript:;" name="ime_hw">手写</a></li>
								<li><a href="javascript:;" name="ime_py">拼音</a></li>
								<li class="ln"></li>
								<li><a href="javascript:;" name="ime_cl">关闭</a></li>
							</ul></span><span class="bd_bear_home"></span></span><input type="hidden"
						name="rsv_enter" value="0"><input type="hidden"
						name="inputT" value="6221"><input type="hidden"
						name="rsv_pq" value="a5350b61000daf66"><input
						type="hidden" name="rsv_t"
						value="a701rqZjuqd2bzkwo5pVUwmDPJAUFPuRQXo56ZcKob9j7tA38vpjrR2wYltZ+aiSh9/Ip6Eb"><input
						type="hidden" name="rsv_sug3" value="7">
				</form>
			</div>
		</div>
	</div>
	<div class="" style="margin-top: 20px; margin-left: 120px">
		<s:bean name="org.apache.struts2.util.Counter" id="counter">
			<s:param name="first" value="1" />
			<s:param name="last" value="10" />
			<s:iterator id="rec" value="#request.resultList">
				<div style="margin-top: 30px">
					<div><a href="${rec.url }"><font style="font-size:120%;">${rec.title }</font></a></div>
					<div style="width: 75%"><font style="font-family:verdana;font-size:80%;color:green">${rec.content }</font></div>
					<div><font style="font-family:verdana;font-size:80%;color:orange">作者: ${rec.author } 时间： ${rec.time }</font></div>
				</div>
			</s:iterator>
		</s:bean>
	</div>
	<div class="" style="margin-top: 20px; margin-left: 120px" nowrap>
		<c:choose>
			<c:when test="${currentPage==0}">
				<div style="display: inline; margin-right: 20px">
					<font style="font-family:verdana;font-size:120%;">首页</font>
				</div>
			</c:when>
			<c:otherwise>
				<div style="display: inline; margin-right: 20px">
					<a href="${pageScope.basePath }/search.action?currentPage=0">
						<font style="font-family:verdana;font-size:120%;">首页</font>
					</a>
				</div>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${currentPage==0}">
				<div style="display: inline; margin-right: 20px">
					<font style="font-family:verdana;font-size:120%;">上一页</font>
				</div>
			</c:when>
			<c:otherwise>
				<div style="display: inline; margin-right: 20px">
					<a href="${pageScope.basePath }/search.action?currentPage=<c:out value="${currentPage-1}"/>">
						<font style="font-family:verdana;font-size:120%;">上一页</font>
					</a>
				</div>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${currentPage+1<totalPage}">
				<div style="display: inline; margin-right: 20px">
					<a href="${pageScope.basePath }/search.action?currentPage=<c:out value="${currentPage+1}"/>">
						<font style="font-family:verdana;font-size:120%;">下一页</font>
					</a>
				</div>
			</c:when>
			<c:otherwise>
				<div style="display: inline; margin-right: 20px">
					<font style="font-family:verdana;font-size:120%;">下一页</font>
				</div>
			</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${currentPage+1<totalPage}">
				<div style="display: inline; margin-right: 20px">
					<a href="${pageScope.basePath }/search.action?currentPage=<c:out value="${totalPage}"/>">
						<font style="font-family:verdana;font-size:120%;">末页</font>
					</a>
				</div>
			</c:when>
			<c:otherwise>
				<div style="display: inline; margin-right: 20px">
					<font style="font-family:verdana;font-size:120%;">末页</font>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>