<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="css/all.css" rel="stylesheet"> <!--load all styles -->
<script src="js/jQuery.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Home</title>
<style>
	html, body {
		margin: 0;
		padding: 0;
		width: 100%;
		height: 100%;
		font-size: 14px;
		box-sizing: border-box;	
		min-height: 100%;
	}
	a {
		text-decoration:none;
	}
	ul {
		padding-inline-start: 20px!important;
	}
	ul li {
		list-style: none;
	}
	select { 
		width: 200px; /* 원하는 너비설정 */ 
		padding: .8em .5em; /* 여백으로 높이 설정 */ 
		font-family: inherit; /* 폰트 상속 */ 
		background: url(img/select_arrow.png) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
		border: 1px solid #999; 
		border-radius: 5px; /* iOS 둥근모서리 제거 */ 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		-moz-appearance: none; 
		appearance: none; 
	}
	.input-text{
	    -webkit-appearance: none;
	    width: 100%;
	    border: 0;
	    font-family: Avenir;
	    padding: 12px 0;
	    height: 22px;
	    font-size: 16px;
	    font-weight: 500;
	    border-bottom: 2px solid #C8CCD4;
    }
   
	.hidefornow {											
		display:none;									
	}
	.input_chk{
		margin-bottom: 0.5rem;
		margin-left: 1rem;
	}
	.terms_bx {
		margin-top: 0.5rem;
	}
	.terms_box {
		overflow: auto; 
		width: 90%; 
		height: 120px; 
		padding: 10px; 
		background-color: #eafff2;
	}
	.content {
		background-color: #f8f9fc;
		position: absolute;
		width: auto;
		height: auto;
		top: 70px;
		right: 0px;
		left: 200px;
		bottom: 0px;
	}
	.card {
		position: relative;
	    display: flex;
	    flex-direction: column;
	    word-wrap: break-word;
	    background-color: #fff;
	    border: 1px solid #e3e6f0;
	    border-radius: .35rem;
	    margin: 5px;
	}
	.card-header {
	    padding: 0.5rem;
		position: relative;
	    background-color: #c9d3c4;
	    border-bottom: #5fb930;
	    height: 2rem;
	    text-align: left;
	    vertical-align: middle;
	    font-size: 1.5rem;
	}
	.card-oh {
		width: 50%;
		height: 50%;
	}
	.border-bottom {
		border-bottom: 1px solid #03b07f;
	}
	
	.inline-block{
		display: inline-block;
		vertical-align: middle;
	}
	#left-bar{
		width: 200px;
		height: 100%;
		background-image:url("img/left_back.png");
		background-repeat: repeat-y;
		
	}

	.btn {
		white-space: nowrap;
		vertical-align: middle;
		user-select: none;
		padding: 0.375rem 0.75rem;
		font-size: 1rem;
		line-height: 1.5;
		border-radius: 0.25rem;
		transition: color 0.15s ease-in-out, background-color 0.15s ease-in-out, border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
	}
	.btn-comfirm {
		width: 90%;
		margin-left: 20px;
		background-color: #03b07f;
		
	}
	.flex-box {
		display: flex;
		box-sizing: border-box;
	}
	.ma-auto {
		margin: auto !important;
	}
	.ma-1 {
		margin: 0.25rem !important;
	}
	.ma-2 {
		margin: 0.5rem !important;
	}
	.ma-3 {
		margin: 1rem !important;
	}
	.ma-4 {
		margin: 2rem !important;
	}
	.mv-auto {
		margin-top: auto !important;
		margin-bottom: auto !important;
	}
	.mv-1 {
		margin-top: 1rem !important;
		margin-bottom: 1rem !important;
	}
	.mv-2 {
		margin-top: 2rem !important;
		margin-bottom: 2rem !important;
	}
	.mv-3 {
		margin-top: 3rem !important;
		margin-bottom: 3rem !important;
	}
	.mv-4 {
		margin-top: 4rem !important;
		margin-bottom: 4rem !important;
	}
	.bg-cl-dark{
		background-color: #5b5b5b;
	}
	.logo {
		display: inline-block;
	}
	.text-align-center {
		text-align: center;
	}
	.block{
		display: block!important;
	}
	.text-align-left {
		text-align: left!important;
	}
	.text-color-sh {
	  	color: #03b07f;
	}
	.text-color-dark{
		color: #1b2522;
	}
	.text-color-white {
		color: #fff;
	}
	.text-color-gray {
		color: #d1d1d1;
	}
	.font-size-1 {
		font-size: 0.5rem;
	}
	.font-size-2 {
		font-size: 1rem;
	}
	.font-size-3 {
		font-size: 1.5rem;
	}
	.font-size-4 {
		font-size: 2rem;
	}
	.font-weight-light {
		font-weight: 300;
	}
	
	.font-weight-normal {
		font-weight: 400;
	}
	
	.font-weight-bold {
		font-weight: 700;
	}
	.no-display{
		display: none;
	}
</style>
