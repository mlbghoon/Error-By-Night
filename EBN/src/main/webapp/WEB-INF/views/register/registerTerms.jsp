<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>													/* 작성자 : 권세훈 */
	.hidefornow {										/* 기존암호와 동일한 암호로 바꾸려 하거나 */		
		display:none;									/* 변경하려고 하는 암호의 재확인 실패시 */
	}													/* submit을 못하기 위해 버튼 자체를 display를 안하기 위한 스타일 */		
	.terms_box {
		overflow: scroll; 
		width: 90%; 
		height: 150px; 
		padding: 10px; 
		background-color: darkGray;
	}
	
	
</style>												<!-- 다른 페이지에서도 중복적으로 사용함, css쪽으로 추후 이동 요망 -->					

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
	    $("#chk_all").click(function() {		/* chk_all이 클릭 됬을떄 */
	         setTerms();						/* setTerm 실행 */
	         checkTerms();						/* checkTerm 실행 */
	    })
	
	     $("#termsService").click(function() {	/* termService 클릭 됫을떄 */
             viewTerms();						/* viewTerms 실행 */
            
        })
         $("#termsInfo").click(function() {		/* termService 클릭 됫을떄 */
             viewTerms();						/* viewTerms 실행 */
        })
         $("#termsEmail").click(function() {	/* termService 클릭 됫을떄 */
             viewTerms();						/* viewTerms 실행 */
        })
	    
	});
	
	function setTerms() {								/* setTerm */
	    if ($("#chk_all").is(":checked")) {				/* 체크올이 체크 되어 있냐 아니냐에 따라 */
	        $("#termsService").prop("checked",true);	/* 나머지 체크 박스도 모두 동일하게 바꿈 */
	        $("#termsInfo").prop("checked",true);		/* setTerm은 chk_all을 클릭시에만 작동 */
	        $("#termsEmail").prop("checked",true);		/* 즉 모두 선택을 눌러 바꿀떄만 모두 바낌 */
	    } else {
	        $("#termsService").prop("checked",false);
	        $("#termsInfo").prop("checked",false);
	        $("#termsEmail").prop("checked",false);
	    }
	    
	    return true;
	}
	
	function viewTerms() {							/* viewTerms */
													/* 한가지의 체크 박스라도 체크 풀릴 전체 체크박스의 체크가 풀리도록 설계 */	
													/* 세가지의 체크 박스가 모두 체크 될 떄 전체 체크박스의 체크가 되도록 설계 */
	    if( !$("#termsService").is(":checked") || !$("#termsInfo").is(":checked") || !$("#termsEmail").is(":checked")) {
	        $("#chk_all").prop("checked",false);
	    }
	
	    if( $("#termsService").is(":checked") && $("#termsInfo").is(":checked") && $("#termsEmail").is(":checked")) {
	        $("#chk_all").prop("checked",true);
	    }
	    checkTerms();								/* checkTerms 실행 */
	}
	
	function checkTerms() {									/* checkTerms */
	   if ($("#termsService").is(":checked") == false) {	/* checkTerms은 필수 항목이 체크 되어야지만 다음페이지로 이동할수  */
		   	$("#beforChk").removeClass("hidefornow");		/* 있는 버튼을 보이게함 */
	        $("#afterChk").addClass("hidefornow"); 
	    } else {
	    	$("#afterChk").removeClass("hidefornow");
        	$("#beforChk").addClass("hidefornow");
	    	 
	    }
	}
</script>

		<!-- 현제 약관은 다음페이지로 넘어가는거 제외하 고는 어떠한 기능도 데이터 저장도 없음 -->
		<!-- 추후에 동의한 약관은 어떤건지 언제 약관에 동의 하였는지에 대한 각 사용자의 DB데이터가 필요함-->
		<!-- 법적인 문제 임 -->
<div class="container">
	<div class="card card-register mx-auto mt-5">
		<div class="card-header">Terms and Conditions</div>
		<div class="card-body">
		  	<form id="join_form" action="./register.do" method="post">
			  	<div class="form-group">
					<p class="form-label-group">
						<span class="input_chk">
							<!-- 체크박스 전체 선택 -->
							<input type="checkbox" id="chk_all" name="chk_all">
							<label for="chk_all"><span>이용약관, 개인정보 수집(선택), 메일 수신(선택)에 모두 동의합니다.</span></label>
	                	</span>
	                </p>
					<ul class="form-label-group">
						<li class="terms_bx">
							<span class="input_chk">
								<!-- 필수 약관 -->
								<input type="checkbox" id="termsService" name="termsService" class="chk">
								<label for="termsService">싸이트 이용약관(필수)</label>
							</span>
	                        <div class="terms_box" tabindex="0" id="divService">
	                            <div class="article">
								    <h5 class="article__title">여러분을 환영합니다.</h5>
								    <p class="article__text">
								         	서비스를 이용해 주셔서 감사합니다.
								    </p>
								</div>
							    <h6 class="article__title">약관 1 </h6>
							    <p class="article__text">
							    	약관 1-1
							    	샘플 텍스트    
							    </p>
							    <p class="article__text">
								        약관 1-2
								        샘플 텍스트
							    </p>
							    <ul class="article__text">
							        <li class="article__text__list">공지 일자: 2018년 3월 30일</li>
							        <li class="article__text__list">적용 일자: 2018년 5월 1일</li>
							    </ul>
							</div> 
						</li>
						<li class="terms_bx">
							<span class="input_chk">
								<!-- 선택 약관 -->
								<input type="checkbox" id="termsInfo" name="termsInfo" class="chk">
								<label for="termsInfo">개인정보 수집(선택)</label>
							</span>
	                        <div class="terms_box" tabindex="0" id="divInfo">
	                            <div class="article">
								    <h5 class="article__title">일체 정보 수집 없습니다.</h5>
								    <p class="article__text">
								         	
								    </p>
								</div>
							    
							    <ul class="article__text">
							        <li class="article__text__list">공지 일자: 2018년 3월 30일</li>
							        <li class="article__text__list">적용 일자: 2018년 5월 1일</li>
							    </ul>
							</div> 
						</li>
						<li class="terms_bx">
							<span class="input_chk">
								<!-- 선택 약관 -->
								<input type="checkbox" id="termsEmail" name="termsEmail" class="chk">
								<label for="termsEmail">메일 수신(선택)</label>
							</span>
	                        <div class="terms_box" tabindex="0" id="divEmail">
	                            <div class="article">
								    <h5 class="article__title">회원 가입, 임시 비밀번호 받으실 떄만 메일 보냅니다.</h5>
								    <p class="article__text">
								         	셈플 텍스트
								    </p>
								</div>
							
							    <h6 class="article__title">약관 1 </h6>
							    <p class="article__text">
							    	약관 1-1
							    	샘플 텍스트    
							    </p>
							    <ul class="article__text">
							        <li class="article__text__list">공지 일자: 2018년 3월 30일</li>
							        <li class="article__text__list">적용 일자: 2018년 5월 1일</li>
							    </ul>
							</div> 
						</li>
	                 </ul>
	                </div> 
					<div>
						<!-- sumit버튼은 항목이 모두 정상적이여야  hide가 풀리고 -->
						<!-- button은 항목이 비정상적일 경우만 보이도록 만들어놈 -->
	                    <input type="submit" id="afterChk" class="hidefornow btn btn-primary btn-block" value="확인">
						<button id="beforChk" type="button" class="btn btn-primary btn-block">(필수)이용약관을 동의해주세요.</button>
					</div>   
                </form>    
                <div class=text-center>
					<a class="d-block small" href="#" onclick="pageSubmitFn('main')"		>메인 화면</a>
				</div>                   
			</div>
		</div>
</div>



