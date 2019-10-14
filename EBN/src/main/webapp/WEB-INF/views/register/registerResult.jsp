<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
 
	var pageSubmitFn = function(menu) {
		location.href = menu + ".do?pageName=" + menu;
	}
		
</script>
<div class="container">
	<div class="card card-login mx-auto mt-5">
		<div class="card-header">회원가입</div>
		<div class="card-body">
			<div class="text-center">
				<h4>가입 성공 하셧습니다.</h4>
				<a class="d-block small" href="#" onclick="pageSubmitFn('login')">로그인</a>
				<a class="d-block small" href="#" onclick="pageSubmitFn('main')" >메인 화면</a>
			</div>
		</div>
	</div>
</div> 
     