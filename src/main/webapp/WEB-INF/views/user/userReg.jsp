<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
		
		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated">제목 미정</h6>
						<h1 class="breadcrumbs-custom-title">제목 미정</h1>
					</div>
				</div>
			</div>
		</section>


<section class="section section-lg">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-md-9 col-lg-6 col-xl-5">
						<h6>sign up & sign in</h6>
						<!-- Bootstrap tabs -->
						<div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
							<!-- Nav tabs-->
							<ul class="nav nav-tabs">
								<li class="nav-item active" role="presentation"><a
									class="nav-link active" href="#tabs-1-1" data-toggle="tab">회원가입</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" href="#tabs-1-2" data-toggle="tab">로그인</a></li>
							</ul>
							<br>
							<br>
							<div class="tab-content">
								<div class="tab-pane fade show active in" id="tabs-1-1">
								<form class="usrJoinForm" name="usrJoinForm" id="usrJoinForm" method="post">
									<label class="form-label-outside">아이디</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="text" id="id" name="id" placeholder="영문자 또는 숫자 6~20자리 조합"> 
									<span id="idCheck"></span>
									<br>
										
									<label class="form-label-outside">비밀번호</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="password" id="password" name="password" placeholder="영문자+숫자+특수문자 8~16자리 조합">
									<span id="pwCheck"></span>
									<br >
									
									<label class="form-label-outside">비밀번호 확인</label> 
									<input class="form-input form-control-has-validation form-control-last-child" type="password" id="passwordCheck" name="passwordCheck" placeholder="비밀번호를 확인해주세요."> <br>
									
									<label class="form-label-outside">이름</label>									
									<input class="form-input form-control-has-validation form-control-last-child" type="text" id="userName" name="userName" placeholder="이름을 입력해주세요.">
									<span id="nameCheck"></span>									
								</form>
									<div class="button button-sm button-primary button-winona" id="joinBtn">
										<a class="content-original">SIGN UP</a>
										<%-- <a href="${path}/joinSuccess.do" class="content-dubbed" id="joinBtn">회원가입</a> --%>
										<a class="content-dubbed">회원가입</a>
									</div>
								</div>
								<div class="tab-pane fade" id="tabs-1-2">
								<form class="usrLoginForm" name="usrLoginForm" id="usrLoginForm" method="post">
									<label class="form-label-outside">아이디</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="text" id="id" name="id" placeholder="로그인 아이디를 입력해주세요."> <br>
									
									<label class="form-label-outside">비밀번호</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="password" id="password" name="password" placeholder="비밀번호를 입력해주세요."> <br>
								</form>	
									<div class="button button-sm button-primary button-winona" onclick="javascript:userFunction.userLogin();">
										<a class="content-original">SIGN IN</a>
										<a class="content-dubbed">로그인</a>
									</div>	
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

<script>

$(document).ready(function() {

	userFunction = new userFunction(); 

	$('#id').blur(function(){
		userFunction.userIdCheck();
	});	

	$('#passwordCheck').blur(function() {
		userFunction.userPwCheck();
	});
	
	$('#userName').blur(function() {
		userFunction.userNameCheck();
	});
		
	$('#joinBtn').click(function(){
		userFunction.userFinalCheck();
	});	
	
});


function userFunction() {
	var idFlag = false;
	var pwFlag = false;

	this.userJoin = function() {

		let url = "<c:url value='/user/joinSuccess.do'/>";
		let formData = $("#usrJoinForm");
		
		$.ajax({
			type : 'POST',
			url : url,
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			dataType : "json",
			data : formData.serialize(),
			async : false,
			success : function(data) {
				alert('가입된 계정으로 로그인을 해주세요.');
				location.replace("<c:url value='/user/userReg'/>"); 
 			},
			error : function(xhr, status, error) {
				alert('예기치 못한 에러 발생');
			}
		});
	};

	
	// 아이디 정규식, 중복확인
	this.userIdCheck = function() {

		let url = "<c:url value='${path}/user/joinIdCheck.do'/>";
		let regexIdPatternCheck = /^[a-zA-Z0-9]{6,20}$/;
		let id = $('#id').val();
		
		if(!regexIdPatternCheck.test(id) ) {
            document.getElementById('idCheck').innerHTML='영문 또는 숫자 6~20자 조합<br>'
	        document.getElementById('idCheck').style.color='red';
	        return false;		
		}
	        $.ajax({
		     type:"POST",
		     url:url,
			 contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			 dataType : "json",		     
		     data:{
		            "id" : id
		     },
		     success:function(data){	
		            if(data.data == "SUCCESS" && $('#id').val() != ''){
	                    document.getElementById('idCheck').innerHTML='사용가능한 아이디입니다.<br>'
	                    document.getElementById('idCheck').style.color='blue';
	                    idFlag = true;
		               } else if(data.data == "EXIST" && $('#id').val() != ''){
		                  document.getElementById('idCheck').innerHTML='중복된 아이디입니다.<br>'
			              document.getElementById('idCheck').style.color='red';	
		                  $('#id').val('');
		                  $('#id').focus();
		                  idFlag = false;
		            }
		     	}
		    });
		};
	
	// 비밀번호 확인 , 정규식
	this.userPwCheck = function() {

		let regexPwPatternCheck = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;	//영문자+숫자+특수문자 8자리이상
		let password = $('#password').val();
		let passwordCheck = $('#passwordCheck').val();

		if(password.length < 7 || password == passwordCheck) {
			if(!regexPwPatternCheck.test(passwordCheck)) {
                document.getElementById('pwCheck').innerHTML='영문자+숫자+특수문자 8~16자 조합<br>'
		        document.getElementById('pwCheck').style.color='red';
		        pwFlag = false;

			}else {
                document.getElementById('pwCheck').innerHTML='사용가능한 비밀번호입니다.<br>'
    		    document.getElementById('pwCheck').style.color='blue';
    		    pwFlag = true;
			}	
		}else {
            document.getElementById('pwCheck').innerHTML='영문자+숫자+특수문자 8~16자 조합<br>'
		    document.getElementById('pwCheck').style.color='red';
            pwFlag = false;
		}
	};

	//전체 체크
	this.userFinalCheck = function() {
		
		let frmArr = ["id", "password", "passwordCheck", "userName"];
		let regexIdPatternCheck = /^[a-zA-Z0-9]{6,20}$/;
		let regexPwPatternCheck = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;	//영문자+숫자+특수문자 8자리이상
		let id = $('#id').val();
		let password = $('#password').val();
		let passwordCheck = $('#passwordCheck').val();
		let userName = $('#userName').val();
		//입력 값 널 체크
		for(var i=0;i<frmArr.length;i++){
			//alert(arr[i]);
			if($.trim($('#'+frmArr[i]).val()) == ''){
				alert('빈 칸을 모두 입력해 주세요.');
				$('#'+frmArr[i]).focus();
				return false;
			}
		}
		
		if(!regexIdPatternCheck.test(id) || !idFlag) {
            alert('아이디를 확인해주세요.');
            $('#id').focus();
	        return false;		
		}
		if(password != passwordCheck || !regexPwPatternCheck.test(passwordCheck) || !pwFlag) {
			alert('비밀번호를 확인해주세요.');
			$('#password').focus();
			return false;
		}
		if(userName.length > 20) {
			alert('이름을 확인해주세요.');
			$('#userName').focus();
			return false;
		}
		userFunction.userJoin();
	};	

	this.userLogin = function() {

		let url = "<c:url value='/user/loginSuccess.do'/>";
		let formData = $("#usrLoginForm");
		
		$.ajax({
			type : 'POST',
			url : url,
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			data : formData.serialize(), 
			success : function(data) {
				if(data.data == "SUCCESS") {
					location.href = "/";
				}else if(data.data == "FAIL"){
					alert('계정 정보가 없습니다');
				}
			},
			error : function(xhr, status, error) {
				alert('예기치 못한 에러 발생:고객센터 문의');
			}
		});
	};		
}


</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>