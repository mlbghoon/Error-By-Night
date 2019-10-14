<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container">
	<div class="card card-register mx-auto mt-5">
		<div class="card-header">Register an Account</div>
		<div class="card-body">
			<form id="registerForm" action="./registerChk.do" method="post">
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 작성자 : 권세훈 -->
								<!-- 영문이름 고려 최대 20글자 최소 2글자의 이름 name -->
								<input type="text" minlength="2" maxlength="20" name="name" id="name" class="form-control" required="required" autofocus="autofocus">
								<label for="name">이름</label>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 작성자 : 권세훈 -->
								<!-- 패턴 지정 010으로 시작하는 전화 번호 10 ~ 11 자리 숫자 -->
								<!-- 도큐먼트 레디에 있는 키업 이벤트로 숫자만 입력 가능토록 구현 -->
								<input type="tel" pattern="(010)\d{7,8}" name="phone" maxlength="11" id="phone" class="form-control" required="required">
								<label for="phone">010으로 시작하는 핸드폰 번호 '-'없이</label>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 작성자 : 권세훈 -->
								<!-- type email로 얼추 유효성 검사가 되기는 하는데  "aaa@a" 같이 형식이 허용되어서 좀더 조사 해보아야함 -->
								<!-- 이메일 입력시 한글은 아예 입력이 되지 않게 keyup 이벤트를 추가해야함 -->
								<input type="email" name="email" id="email" class="form-control" required="required">
								<input type="text" id="code" name="code" class="hidefornow">
								<input type="checkbox" id="chk_email" name="chk_email" class="hidefornow">
								<label for="email">메일 주소</label>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 아이디 중복 확인 버튼 -->
								<button type="button" class="btn btn-primary btn-block" onclick="mailSender()">이메일 인증 번호 받기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-12">
							<div class="form-label-group">
								<!-- 아이디 중복 확인 버튼 -->
								<input type="text" name="email_chk" id="email_chk" class="form-control" disabled="disabled" required="required">
								<label for="email_chk">인증 번호를 입력하세요</label>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 작성자 : 권세훈 -->
								<!-- 12글자 최소 5글자의 아이디 ID. 도큐먼트 레디 키업 이벤트로 숫자와 영문만 입력 가능 하도록 함 -->
								<input minlength="5" maxlength="12" type="text" name="userid" id="userid" class="form-control" required="required">
								<input type="checkbox" id="chk_userid" name="chk_userid" class="hidefornow">
								<label for="userid">ID</label>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 아이디 중복 확인 버튼 -->
								<button type="button" class="btn btn-primary btn-block" onclick="fnIDChk()">아이디 중복확인</button>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="form-row">
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 작성자 : 권세훈 -->
								<!-- 최대 20 글자 최소 6 글자의 암호 ID -->
								<!-- 특수문자 대문자 소문자 숫자 모두 사용하도록 하는 코드를 찾아보고 추후에 추가 -->
								<input minlength="6" maxlength="20" type="password" name="newpw" id="newpw" class="form-control password_chk" required="required">
								<label for="newpw">암호</label>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-label-group">
								<!-- 작성자 : 권세훈 -->
								<!-- 최대 20 글자 최소 6 글자의 암호 ID -->
								<!-- 특수문자 대문자 소문자 숫자 모두 사용하도록 하는 코드를 찾아보고 추후에 추가 -->
								<input minlength="6" maxlength="20" type="password" name="pwchk" id="pwchk" class="form-control password_chk" required="required">
								<label for="pwchk">암호 재확인</label>
							</div>
						</div>
					</div>
				</div>
				<div id="alert"></div>
				<!-- sumit버튼은 항목이 모두 정상적이여야  hide가 풀리고 -->
				<!-- button은 항목이 비정상적일 경우만 보이도록 만들어놈 -->
				<input id="afterChk" type="submit" class="btn btn-primary btn-block hidefornow" value="회원가입">
				<button id="beforChk" type="button" class="btn btn-primary btn-block">모든 항목을 정확히 입력해 주세요</button>
			</form>
			<div class="text-center">
				<a class="d-block small" href="#" onclick="pageSubmitFn('login')">로그인</a>
				<a class="d-block small" href="#" onclick="pageSubmitFn('main')" >메인 화면</a>
			</div>
		</div>
	</div>
</div>


