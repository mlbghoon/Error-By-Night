<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<!-- 03b07f 000 -->
<style>
/* Small device(landscape phones, 576px and up) */
@media (min-width: 576px) {

}
/* Medium device(tablets, 768px and up) */
@media (max-width: 768px) {
	.no-disply-until-medium {
		display: none !important;
	}
}
/* Large device(desktops, 992px and up) */
@media (min-width: 992px) {

}
/* Extra large device(large desktops, 1200px and up) */
@media (min-width: 1200px) {

}
.navbar-brand{
	color: #000;
}
.navbar{position:fixed!important; width:100%; }
.always-top{
	z-index:100;
}
.center {
	display: inline-block;
  	margin: auto;
}
.logsign{
	display: inline-block;
	padding-top: 0.3125rem;
  	padding-bottom: 0.3125rem;
  	margin-right: 1rem;
  	font-size: 1.25rem;
  	line-height: inherit;
  	white-space: nowrap;
  	color: #03b07f!important;
}
.sehoon {
	margin-left: auto !important;
}
</style>

<nav class="navbar navbar-expand navbar-white bg-white always-top">
	<a class="navbar-brand mr-1 text-dark" href="#">
		<img src="img/output-onlinepngtools.png" class="logo_small">
	</a>
	
	<button class="btn btn-link btn-sm text-dark d-md-none ml-auto mr-0 mr-md-3 my-2 my-md-0" id="sidebarToggle" href="#">
		<i class="fas fa-bars"></i>
	</button>
	
	<a class="nav-link dropdown-toggle d-md-none" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fas fa-user-circle fa-fw"></i>
	</a>
	<div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
		<a class="dropdown-item" href="#">LogIn</a>
		<a class="dropdown-item" href="#">SignUp</a>  
		<a class="dropdown-item" href="#">비밀번호 찾기</a>  
		<a class="dropdown-item" href="#">아이디 찾기</a>  
		<a class="dropdown-item" href="#">MyPage</a> 
		<a class="dropdown-item" href="#">암호 재설정</a>
		<div class="dropdown-divider"></div>
		<a class="dropdown-item" href="#">로그아웃</a>
	</div>
	
	
	<!-- 
	<a class="navbar-brand text-dark no-disply-until-medium center" href="#">
		Menu 1
	</a>
	<a class="navbar-brand text-dark no-disply-until-medium center" href="#">
		Menu 2
	</a>
	<a class="navbar-brand text-dark no-disply-until-medium center" href="#">
		Menu 3
	</a>
	<a class="navbar-brand text-dark no-disply-until-medium center" href="#">
		Menu 4
	</a>
	 -->
	<a class="no-disply-until-medium logsign sehoon" href="#">
		<i class="fas fa-sign-in-alt"> 로그인 </i>
	</a>
	<a class="no-disply-until-medium logsign" href="#">
		<i class="fas fa-sign-in-alt"> 회원가입 </i>
	</a>
</nav>
