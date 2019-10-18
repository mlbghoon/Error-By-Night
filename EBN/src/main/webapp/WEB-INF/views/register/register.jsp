<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="main-w3layouts wrapper">
	<h1>Register an Account</h1>
	<div class="main-agileinfo">
		<div class="agileits-top">
			<form action="./register" method="post">
				<div class="wthree-text">
					<div class="">
						<input type="text" 		id="name" 		name="name" 	  class="half-input text" minlength="2" maxlength="20" required="required"  placeholder="name">
						<input type="tel" 		id="phone" 		name="phone" 	  class="half-input" pattern="(010)\d{7,8}" maxlength="11" required="required" placeholder="010으로 시작하는 핸드폰 번호 '-'없이">
					</div>
					<div class="aaa">
						<input type="email" 	id="email" 		name="email" 	  class="half-input" minlength="2" maxlength="20" required="required" placeholder="E-mail">
						<button type="button" class="btn half-buttom" onclick="mailSender()">이메일 인증</button>
					</div>
					<input type="text" 		id="code" 		name="code" 	  class="hidefornow">
					<input type="checkbox"  id="chk_email" 	name="chk_email"  class="hidefornow">
					<div class="aaa">
						<input type="text" 		id="email_chk" 	name="email_chk"  disabled="disabled" required="required" placeholder="인증 번호를 입력하세요">
					</div>
					<div class="aaa">
						<input type="text" 		id="userid"		name="userid" 	  class="half-input" minlength="5" maxlength="12" required="required" placeholder="ID">
						<input type="checkbox" 	id="chk_userid" name="chk_userid" class="hidefornow">
						<button type="button" class="btn half-buttom" onclick="fnIDChk()">아이디 중복확인</button>
					</div>
					
					<input type="password" 	id="newpw" 		name="newpw" 	  minlength="6" maxlength="20" class="password_chk" required="required" placeholder="6~10자리 암호">
					<input type="password" 	id="pwchk" 		name="pwchk" 	  minlength="6" maxlength="20" class="password_chk" required="required" placeholder="암호 재확인">
				</div>
					<!-- sumit버튼은 항목이 모두 정상적이여야  hide가 풀리고 -->
					<!-- button은 항목이 비정상적일 경우만 보이도록 만들어놈 -->
                    <input id="afterChk" type="submit" class="btn submit hidefornow" value="회원가입">
					<button id="beforChk" type="button" class="btn submit">모든 항목을 정확히 입력해 주세요</button>
				     
            </form>
			<p>
				<a class="block" href="#" onclick="pageSubmitFn('login')">로그인</a>
				<a class="block" href="#" onclick="pageSubmitFn('main')" >메인 화면</a>
			</p>
		</div>
	</div>
</div>