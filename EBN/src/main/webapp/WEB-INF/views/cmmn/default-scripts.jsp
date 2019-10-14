<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
jQuery(function ($) {
	$(".sidebar-dropdown > a").click(function() {		
		if ($(this).parent().hasClass("active")) {
			$(this).next(".sidebar-submenu").slideUp(200);
			$(this).parent().removeClass("active");
			$(this).children(".fas").removeClass("fa-arrow-up");
			$(this).children(".fas").addClass("fa-arrow-down");
			
		} else {
			$(this).next(".sidebar-submenu").slideDown(200);
			$(this).parent().addClass("active");
			$(this).children(".fas").removeClass("fa-arrow-down");
			$(this).children(".fas").addClass("fa-arrow-up");
		}
	});
	$("#hide-sidebar").click(function() {
		$(document.getElementById("left-bar")).animate({width: 'toggle'});
		$("#show-sidebar").removeClass("no-display");
		var x = document.getElementById("content");
	    x.style.left = "0px";  
	});
	
	$("#show-sidebar").click(function() {
		$(document.getElementById("left-bar")).animate({width: 'toggle'});
		$("#show-sidebar").addClass("no-display");
		var x = document.getElementById("content");
	    x.style.left = "200px"; 
	});

});
$( document ).ready( function() {
	var msg = "${msg}";										
	if (msg != null && msg != "") {							
		alert(msg);
		$("#userid").val("${userid}");
		$("#chk_userid").prop("checked",true);
		$("#name").val("${name}");
		$("#email").val("${email}");
		$("#email_chk").val("${email_chk}");
		$("#chk_email").prop("checked",true);
		$("#email_chk").removeAttr("disabled");
			$("#email").attr("readonly", "readonly");
			check();
	}
	
	$("#phone").keyup(function(event){						/* id가 phone 인 input 타겟 잡아 keyup될 떄마다 실행 */
															/* 0~9를 제외한 모든 문자를 ''->(내용 없이)로 replace */
		$(this).val($(this).val().replace(/[^0-9]/gi,''));		/* 여러군데서 중복적으로 사용 함, 추후 default-script로 옮기기 */
	});
															/* 작성자 : 권세훈 */
	$("#userid").keyup(function(event){						/* id가 userid 인 input 타겟 잡아 keyup될 떄마다 실행 */
															/* 0~9, a~z A~Z를 제외한 모든 문자를 ''->(내용 없이)로 replace */
		$(this).val($(this).val().replace(/[^a-zA-Z0-9]/gi,'')); /* 여러군데서 중복적으로 사용 함, 추후 default-script로 옮기기 */	
	});	
	
	
	$("#email").keyup(function(event){						/* id가 email 인 input 타겟 잡아 keyup될 떄마다 실행 */
															/* 0~9, a~z A~Z를 제외한 모든 문자를 ''->(내용 없이)로 replace */
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) ); /* 여러군데서 중복적으로 사용 함, 추후 default-script로 옮기기 */	
	});	
	
	$("#userid").on("propertychange change keyup paste input", function() {	/* userid input 이 병경 될 떄마다 작동 */
		var currentVal = $(this).val();										/* currentVal : userid input의 value */
		var oldVal;															/* oldval     : 내용이 변경 되기전 userid input의 value */
		if(oldVal == null) {					  							/* 최초에는 값이 없어 null 이라 코드 실행시 오류 */
			oldval = "";													/* ""으로 초기화(null이 아님) */
		}
		
		if(currentVal == oldVal) {											/* currentVal 과 oldVal의 값이 같을떄 즉. 변화가 없을떄 */
			return;															/* 예를 들어 마지막 글자만 드래그해서 동일한 글자로 적으면 변화가 없고 */
		}																	/* 그럼 바로 return 되어 함수 종료 되어 뒷부분 작동 안함 */	
															/* 변경이 됬을때 여기가 작동됨 */
		oldVal = currentVal;								/* oldVal을 currentVal의 값으로 만듬 */
		$("#beforChk").removeClass("hidefornow");			/* beforChk 버튼을 보기기 */
		$("#afterChk").addClass("hidefornow");				/* afterChk 버튼을 숨기기(클릭할 못하도록) */
		
		$("#chk_userid").prop("checked",false);
	});
	
	$("#email").on("propertychange change keyup paste input", function() {	/* email input 이 병경 될 떄마다 작동 */
		var currentVal = $(this).val();										/* currentVal : userid input의 value */
		var oldVal;															/* oldval     : 내용이 변경 되기전 email input의 value */
		if(oldVal == null) {					  							/* 최초에는 값이 없어 null 이라 코드 실행시 오류 */
			oldval = "";													/* ""으로 초기화(null이 아님) */
		}
		
		if(currentVal == oldVal) {											/* currentVal 과 oldVal의 값이 같을떄 즉. 변화가 없을떄 */
			return;															/* 예를 들어 마지막 글자만 드래그해서 동일한 글자로 적으면 변화가 없고 */
		}																	/* 그럼 바로 return 되어 함수 종료 되어 뒷부분 작동 안함 */	
															/* 변경이 됬을때 여기가 작동됨 */
		oldVal = currentVal;								/* oldVal을 currentVal의 값으로 만듬 */
		$("#beforChk").removeClass("hidefornow");			/* beforChk 버튼을 보기기 */
		$("#afterChk").addClass("hidefornow");				/* afterChk 버튼을 숨기기(클릭할 못하도록) */
		
	});
	  
	$("#phone").keyup(function(event){
		var inputVal = $(this).val();					/* 핸드폰 번호 input에 글자를 입력할경우 작동 */
														/* inputVal : input의 value */
		$(this).val(inputVal.replace(/[^0-9]/gi,''));	/* 0~9를 제외한 문자 모두 지워버리기 */
	});
	
	$("#email_chk").keyup(function(event){
		var inputVal = $(this).val();					
		var code = $("#code").val();
		
		$(this).val(inputVal.replace(/[^0-9]/gi,''));
		
		if (code == null || code == ""){
			
			return;
		} else {
			if (inputVal == code){
				$("#chk_email").prop("checked",true);
				
			} else {
				$("#chk_email").prop("checked",false);
				
			}
		}
		check()
	});
	
	
	$(".password_chk").keyup(function(event){			/* form-control 클래스에 keyup이 될떄 작동(모든 input은 form-control 클래스가 있음) */
		var pwchk = $("#pwchk").val();					/* pwchk : 암호 재확인 input value */
		var newpw = $("#newpw").val();					/* newpw : 신규 암호 input value */
		
		if(pwchk != newpw){								 	/* 신규 암호와 암호 재확인 input이 같지 않을 경우 */
			$("#alert").empty();						 	/* alert라는 아이디를 가진 div의 내용을 지운다 */
			$("#alert").append("동일한 암호를 다시 입력해 주세요"); 	/* alert라는 div에  경고 메세지 표시*/

		
		} else {											/* 신규 암호와 암호 재확인 input이 같을 경우 */	
			$("#alert").empty();							/* alert라는 아이디를 가진 div의 내용을 지운다 */	

		}
		check();
	});
	
});

function check() {															
	if (!$("#chk_email").is(":checked") || !$("#chk_userid").is(":checked")) {	/* 이메일 변경, 전화번호 변경 둘중 하나라고 체크가 되있을경우 */
		
		$("#beforChk").removeClass("hidefornow");								/* afterChk 버튼이 보이고 */
		$("#afterChk").addClass("hidefornow");									/* beforChk 버튼 숨기기 */	
		
	}
	if ($("#chk_email").is(":checked") && $("#chk_userid").is(":checked")){		/* 이메일 변경, 전화 번호 병경 둘다 모두 체크가 안되있을경우 */
		$("#afterChk").removeClass("hidefornow");								/* beforChk 버튼 보이고 */	
		$("#beforChk").addClass("hidefornow");									/* afterChk 버튼 숨기기 */
		
	}
}

  
  
 
};

</script>