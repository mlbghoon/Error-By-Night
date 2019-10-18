<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="main-w3layouts wrapper">
	<h1>Terms and Conditions</h1>
	<div class="main-agileinfo">
		<div class="agileits-top">
			<form action="./register" method="post">
				<div class="wthree-text">
					<label class="anim">
						<input class="checkbox" type="checkbox" id="chk_all">
						<span>이용약관에 모두 동의합니다.</span>
					</label>
					<div class="clear"> </div>
				</div>
			
						<div class="wthree-text">
							<label class="anim">
								<input class="checkbox" type="checkbox" id="termsService">
								<span>싸이트 이용약관(필수)</span>
							</label>
							<div class="clear"> </div>
						</div>
                        <div class="terms_box" tabindex="0" id="divService">
                            <h5>여러분을 환영합니다.</h5>
							
							         	서비스를 이용해 주셔서 감사합니다.
							
						    <h6>약관 1 </h6>
						    
						    	약관 1-1
						    	샘플 텍스트    
						    
							        약관 1-2
							        샘플 텍스트
						    
						    <ul>
						        <li class="article__text__list">공지 일자: 2018년 3월 30일</li>
						        <li class="article__text__list">적용 일자: 2018년 5월 1일</li>
						    </ul>
						</div> 
						<div class="wthree-text">
							<label class="anim">
								<input class="checkbox" type="checkbox" id="termsInfo">
								<span>개인정보 수집(선택)</span>
							</label>
							<div class="clear"> </div>
						</div>
					    <div class="terms_box" tabindex="0" id="divInfo">
                            <h5>일체 정보 수집 없습니다.</h5>
						    <ul>
						        <li class="article__text__list">공지 일자: 2018년 3월 30일</li>
						        <li class="article__text__list">적용 일자: 2018년 5월 1일</li>
						    </ul>
						</div> 
					
						<div class="wthree-text">
							<label class="anim">
								<input class="checkbox" type="checkbox" id="termsEmail">
								<span>메일 수신(선택)</span>
							</label>
							<div class="clear"> </div>
						</div>
						<div class="terms_box" tabindex="0" id="divEmail">
                            <h5>회원 가입, 임시 비밀번호 받으실 떄만 메일 보냅니다.</h5>
							<h6>약관 1 </h6>
						    	약관 1-1
						    	샘플 텍스트    
						    <ul>
						        <li class="article__text__list">공지 일자: 2018년 3월 30일</li>
						        <li class="article__text__list">적용 일자: 2018년 5월 1일</li>
						    </ul>
						</div> 
					
               	<div>
					<!-- sumit버튼은 항목이 모두 정상적이여야  hide가 풀리고 -->
					<!-- button은 항목이 비정상적일 경우만 보이도록 만들어놈 -->
                    <input type="submit" id="afterChk" class="submit hidefornow btn" value="확인">
					<button id="beforChk" type="button" class="submit btn">(필수)이용약관을 동의해주세요.</button>
				</div>     
               </form>
			<p><a class="block" href="#" onclick="pageSubmitFn('/')">메인 화면</a></p>
		</div>
	</div>
</div>