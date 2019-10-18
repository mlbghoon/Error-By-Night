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
	.hidefornow {											
		display:none!important;									
	}
	
	.half-input {
		float: left;
		max-width: 45%;
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
	.bg-cl-dark{
		background-color: #5b5b5b;
	}
	.logo {
		display: inline-block;
	}
	.text-align-center {
		text-align: center;
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
	
	html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, dl, dt, dd, ol, nav ul, nav li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video {
	  margin: 0;
	  padding: 0;
	  border: 0;
	  font-size: 100%;
	  font: inherit;
	  vertical-align: baseline;
	}
	
	article, aside, details, figcaption, figure, footer, header, hgroup, menu, nav, section {
	  display: block;
	}
	
	ol, ul {
	  list-style: none;
	  margin: 0px;
	  padding: 0px;
	}
	
	/*-- start editing from here --*/
	a {
	  text-decoration: none;
	}
	
	
	/* float left */
	.clear {
	  clear: both;
	}
	
	
	
	/*-- end reset --*/
	body {
	  background: #dadbd8;
	  background-size: cover;
	}
	
	h1 {
		font-size: 2.6em;
	  text-align: center;
	  color: #665757;
	  font-weight: 800;
	  letter-spacing: 4px;
	  font-family: 'Roboto', sans-serif;
	}
	
	/*-- main --*/
	.main-w3layouts {
	  padding: 3em 0 1em;
	}
	
	.main-agileinfo {
	  width: 40em;
	  margin: 3em auto;
	  background: rgba(0, 0, 0, 0.18);
	  background-size: cover;
	  border-radius: .35rem;
	}
	
	.agileits-top {
	  padding: 2.7em;
	}
	
	.terms_box {
		overflow:auto; 
		width: 97%;
		height: 4rem; 
		padding: 2px; 
		margin: 4px;
		font-size: 0.70rem;
		background-color: #ececec;
	}
		
	input[type="text"], input[type="tel"], input[type="email"], input[type="password"] {
	  font-size: 0.9em;
	  font-weight: 100;
	  width: 94.5%;
	  display: block;
	  padding: 0.8em;
	  border: solid 1px #7d24245e;
	  border-radius: 0.5em;
	  background: #ffffffb8;
	  color: #272420;
	  font-family: 'Roboto', sans-serif;
	  margin: 0.5em;
	  
	}

	
	input::placeholder {
		color: #27242070;
		font-style: italic;
	}
	
	
	input.email, input.text.w3lpass {
	  margin: 2em 0;
	}
	
	.text:focus, .text:valid {
	  box-shadow: none;
	  outline: none;
	  background-position: 0 0;
	}
	
	.text:focus::-webkit-input-placeholder, .text:valid::-webkit-input-placeholder {
	  color: rgba(255, 255, 255, 0.7);
	  font-size: .9em;
	  -webkit-transform: translateY(-30px);
	  -moz-transform: translateY(-30px);
	  -o-transform: translateY(-30px);
	  -ms-transform: translateY(-30px);
	  transform: translateY(-30px);
	  visibility: visible !important;
	}
	
	::-webkit-input-placeholder {
	  color: #fff;
	  font-weight: 100;
	}
	
	:-moz-placeholder {
	  /* Firefox 18- */
	  color: #fff;
	}
	
	::-moz-placeholder {
	  /* Firefox 19+ */
	  color: #fff;
	}
	
	:-ms-input-placeholder {
	  color: #fff;
	}
	*, *::before, *::after {
	    -webkit-box-sizing: border-box;
	    box-sizing: border-box;
	}
	

	
	.submit {
	  font-size: .9em;
	  color: #7a027d;
	  background: #b4c4b7;
	  outline: none;
	  border: 1px solid #fff;
	  cursor: pointer;
	  padding: 0.9em;
	  -webkit-appearance: none;
	  width: 100%;
	  margin: 2em 0;
	  letter-spacing: 4px;
	}
	.half-buttom {
		font-size: .9em;
		color: #7a027d;
		background: #b4c4b7;
		outline: none;
		border: 1px solid #fff;
		cursor: pointer;
		padding: 0.7em;
		-webkit-appearance: none;
		width: 45%;
		margin: 0.5em;
		letter-spacing: 4px;
		float: left;
	}
	
	.submit:hover {
	  -webkit-transition: .5s all;
	  -moz-transition: .5s all;
	  -o-transition: .5s all;
	  -ms-transition: .5s all;
	  transition: .5s all;
	  background: #83938e;
	}
	
	.agileits-top p {
	  font-size: 1em;
	  color: #fff;
	  text-align: center;
	  letter-spacing: 1px;
	  font-weight: 300;
	}
	
	.agileits-top p a {
	  color: #fff;
	  -webkit-transition: .5s all;
	  -moz-transition: .5s all;
	  transition: .5s all;
	  font-weight: 400;
	}
	
	.agileits-top p a:hover {
	  color: #76b852;
	}
	
	/*-- //main --*/
	/*-- checkbox --*/
	.wthree-text label {
	  font-size: 0.9em;
	  color: #fff;
	  font-weight: 200;
	  cursor: pointer;
	  position: relative;
	}
	
	input.checkbox {
	  background: #d7c5a8;
	  cursor: pointer;
	  width: 1.2em;
	  height: 1.2em;
	}
	
	input.checkbox:before {
	  content: "";
	  position: absolute;
	  width: 1.2em;
	  height: 1.2em;
	  background: inherit;
	  cursor: pointer;
	}
	
	input.checkbox:after {
	  content: "";
	  position: absolute;
	  top: 0px;
	  left: 0;
	  z-index: 1;
	  width: 1.2em;
	  height: 1.2em;
	  border: 1px solid #665858;
	  -webkit-transition: .4s ease-in-out;
	  -moz-transition: .4s ease-in-out;
	  -o-transition: .4s ease-in-out;
	  transition: .4s ease-in-out;
	}
	
	input.checkbox:checked:after {
	  -webkit-transform: rotate(-45deg);
	  -moz-transform: rotate(-45deg);
	  -o-transform: rotate(-45deg);
	  -ms-transform: rotate(-45deg);
	  transform: rotate(-45deg);
	  height: .5rem;
	  border-color: #665858;
	  border-top-color: transparent;
	  border-right-color: transparent;
	}
	
	.anim input.checkbox:checked:after {
	  -webkit-transform: rotate(-45deg);
	  -moz-transform: rotate(-45deg);
	  -o-transform: rotate(-45deg);
	  -ms-transform: rotate(-45deg);
	  transform: rotate(-45deg);
	  height: .5rem;
	  border-color: transparent;
	  border-right-color: transparent;
	  animation: .4s rippling .4s ease;
	  animation-fill-mode: forwards;
	}
	
	@keyframes rippling {
	  50% {
	    border-left-color: #fff;
	  }
	
	  100% {
	    border-bottom-color: #fff;
	    border-left-color: #fff;
	  }
	}
	
	/*-- //checkbox --*/
	/*-- copyright --*/
	.colorlibcopy-agile {
	  margin: 2em 0 1em;
	  text-align: center;
	}
	
	.colorlibcopy-agile p {
	  font-size: .9em;
	  color: #fff;
	  line-height: 1.8em;
	  letter-spacing: 1px;
	  font-weight: 100;
	}
	
	.colorlibcopy-agile p a {
	  color: #fff;
	  transition: 0.5s all;
	  -webkit-transition: 0.5s all;
	  -moz-transition: 0.5s all;
	  -o-transition: 0.5s all;
	  -ms-transition: 0.5s all;
	}
	
	.colorlibcopy-agile p a:hover {
	  color: #000;
	}
	
	/*-- //copyright --*/
	.wrapper {
	  position: relative;
	  overflow: hidden;
	}
	
	@-webkit-keyframes square {
	  0% {
	    -webkit-transform: translateY(0);
	    -moz-transform: translateY(0);
	    -o-transform: translateY(0);
	    -ms-transform: translateY(0);
	    transform: translateY(0);
	  }
	
	  100% {
	    -webkit-transform: translateY(-700px) rotate(600deg);
	    -moz-transform: translateY(-700px) rotate(600deg);
	    -o-transform: translateY(-700px) rotate(600deg);
	    -ms-transform: translateY(-700px) rotate(600deg);
	    transform: translateY(-700px) rotate(600deg);
	  }
	}
	
	@keyframes square {
	  0% {
	    -webkit-transform: translateY(0);
	    -moz-transform: translateY(0);
	    -o-transform: translateY(0);
	    -ms-transform: translateY(0);
	    transform: translateY(0);
	  }
	
	  100% {
	    -webkit-transform: translateY(-700px) rotate(600deg);
	    -moz-transform: translateY(-700px) rotate(600deg);
	    -o-transform: translateY(-700px) rotate(600deg);
	    -ms-transform: translateY(-700px) rotate(600deg);
	    transform: translateY(-700px) rotate(600deg);
	  }
	}
	
	/*-- responsive-design --*/
	@media(max-width:1440px) {
	  input[type="text"], input[type="tel"], input[type="email"], input[type="password"] {
	    width: 94%;
	  }
	}
	
	@media(max-width:1366px) {
	  h1 {
	    font-size: 2.6em;
	  }
	
	  .agileits-top {
	    padding: 2em;
	  }
	
	  .main-agileinfo {
	    margin: 2em auto;
	  }
	
	  .main-agileinfo {
	    width: 36%;
	  }
	}
	
	@media(max-width:1280px) {
	  .main-agileinfo {
	    width: 40%;
	  }
	}
	
	@media(max-width:1080px) {
	  .main-agileinfo {
	    width: 46%;
	  }
	}
	
	@media(max-width:1024px) {
	  .main-agileinfo {
	    width: 49%;
	  }
	}
	
	@media(max-width:991px) {
	  h1 {
	    font-size: 2.4em;
	  }
	
	  .main-w3layouts {
	    padding: 2em 0 1em;
	  }
	}
	
	@media(max-width:900px) {
	  .main-agileinfo {
	    width: 58%;
	  }
	
	  input[type="text"], input[type="tel"], input[type="email"], input[type="password"] {
	    width: 93%;
	  }
	}
	
	@media(max-width:800px) {
	  h1 {
	    font-size: 2.2em;
	  }
	}
	
	@media(max-width:736px) {
	  .main-agileinfo {
	    width: 62%;
	  }
	}
	
	@media(max-width:667px) {
	  .main-agileinfo {
	    width: 67%;
	  }
	}
	
	@media(max-width:600px) {
	  .agileits-top {
	    padding: 1.5em;
	  }
	
	  input.email, input.text.w3lpass {
	    margin: 1.5em 0;
	  }
	
	  .submit {
	    margin: 2em 0;
	  }
	
	  h1 {
	    font-size: 2em;
	    letter-spacing: 3px;
	  }
	}
	
	@media(max-width:568px) {
	  .main-agileinfo {
	    width: 75%;
	  }
	
	  .colorlibcopy-agile p {
	    padding: 0 2em;
	  }
	}
	
	@media(max-width:480px) {
	  h1 {
	    font-size: 1.8em;
	    letter-spacing: 3px;
	  }
	
	  .agileits-top {
	    padding: 1.44em;
	  }
	
	  input[type="text"], input[type="tel"], input[type="email"], input[type="password"] {
	    width: 91%;
	  }
	
	  .agileits-top p {
	    font-size: 0.9em;
	}
	
	@media(max-width:414px) {
	  h1 {
	    font-size: 1.8em;
	    letter-spacing: 2px;
	  }
	
	  .main-agileinfo {
	    width: 85%;
	    margin: 1.5em auto;
	  }
	
	  .text:focus, .text:valid {
	    background-position: 0 0px;
	  }
	
	  .wthree-text ul li, .wthree-text ul li:nth-child(2) {
	    display: block;
	    float: none;
	  }
	
	  .wthree-text ul li:nth-child(2) {
	    margin-top: 1.5em;
	  }
	
	  .submit {
	    margin: 2em 0 1.5em;
	    letter-spacing: 3px;
	  }
	
	  .submit {
	    margin: 2em 0 1.5em;
	  }
	
	  .colorlibcopy-agile {
	    margin: 1em 0 1em;
	  }
	}
	
	@media(max-width:384px) {
	  .main-agileinfo {
	    width: 88%;
	  }
	
	  .colorlibcopy-agile p {
	    padding: 0 1em;
	  }
	}
	
	@media(max-width:375px) {
	  .agileits-top p {
	    letter-spacing: 0px;
	  }
	}
	
	@media(max-width:320px) {
	  .main-w3layouts {
	    padding: 1.5em 0 0;
	  }
	
	  .agileits-top {
	    padding: 0.96em;
	  }
	
	  .colorlibcopy-agile {
	    margin: 0 0 1em;
	  }
	
	  input[type="text"], input[type="tel"], input[type="email"], input[type="password"] {
	    width: 89.5%;
	    font-size: 0.85em;
	  }
	
	  h1 {
	    font-size: 1.7em;
	    letter-spacing: 0px;
	  }
	
	  .main-agileinfo {
	    width: 92%;
	    margin: 1em auto;
	  }
	
	  .text:focus, .text:valid {
	    background-position: 0 0px;
	  }
	
	  .submit {
	    margin: 1.5em 0;
	    padding: 0.8em;
	    font-size: .85em;
	  }
	
	  .colorlibcopy-agile p {
	    font-size: .85em;
	  }
	
	  .wthree-text label {
	    font-size: 0.85em;
	  }
	
	  .main-w3layouts {
	    padding: 1em 0 0;
	  }
	}

	
</style>
