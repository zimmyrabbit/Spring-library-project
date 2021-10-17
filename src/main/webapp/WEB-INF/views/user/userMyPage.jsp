<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
		
		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated">마이페이지</h6>
						<h1 class="breadcrumbs-custom-title">마이페이지</h1>
					</div>
				</div>
			</div>
		</section>
		
		<section class="section section-lg">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-md-9 col-lg-6 col-xl-5">
						<h6>MyPage</h6>
						<!-- Bootstrap tabs -->
						<div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
							<!-- Nav tabs-->
							<ul class="nav nav-tabs">
								<li class="nav-item active" role="presentation"><a
									class="nav-link active" href="#tabs-1-1" data-toggle="tab">개인정보수정</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" href="#tabs-1-2" data-toggle="tab">비밀번호 변경</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" href="#tabs-1-3" data-toggle="tab">참여중인 토론</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" href="<c:url value='/bookReview/reviewList'/>" data-toggle="tab">내가 쓴 리뷰</a></li>	
							</ul>
							<br>
							<br>
							<div class="tab-content">
								<div class="tab-pane fade show active in" id="tabs-1-1">
								<form class="usrUpdateForm" name="usrUpdateForm" id="usrUpdateForm" method="post">
									<label class="form-label-outside">아이디</label>
									<input type="hidden" class="userId_seq_cur" name="userId_seq" value="">
									<input class="form-input form-control-has-validation form-control-last-child" type="text" id="id" name="id" readonly="readonly" value="${ sessionScope.loginSession.userId }"> 
									<span id="idCheck"></span>
									<br>
										
									<label class="form-label-outside">현재 비밀번호</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="password" id="password_cur" name="password_cur" placeholder="현재 비밀번호를 입력해주세요.">
									<br >
									
									<label class="form-label-outside">변경할 이름</label>									
									<input class="form-input form-control-has-validation form-control-last-child" type="text" id="userName" name="userName" placeholder="변경할 이름을 입력해주세요.">
									<span id="nameCheck"></span>									
								</form>
									<div class="button button-sm button-primary button-winona" id="updateBtn">
										<a class="content-original">UPDATE</a>
										<%-- <a href="${path}/joinSuccess.do" class="content-dubbed" id="joinBtn">회원가입</a> --%>
										<a class="content-dubbed">수정하기</a>
									</div>
								</div>
								<div class="tab-pane fade" id="tabs-1-2">
								<form class="usrPasswordForm" name="usrPasswordForm" id="usrPasswordForm" method="post">
									<input type="hidden" class="userId_seq" name="userId_seq" value="">
									<label class="form-label-outside">현재 비밀번호</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="password" id="password2" name="password" placeholder="현재 비밀번호를 입력해주세요."> <br>
									<label class="form-label-outside">변경할 비밀번호</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="password" id="password_update" name="password_update" placeholder="영문자+숫자+특수문자 8~16자리 조합"> <br>
									<label class="form-label-outside">변경할 비밀번호 확인</label>
									<input class="form-input form-control-has-validation form-control-last-child" type="password" id="password_update2" placeholder="변경할 비밀번호를 입력해주세요.">
									<span id="pwCheck"></span>
								</form>	
									<div class="button button-sm button-primary button-winona" id="passwordBtn">
										<a class="content-original">UPDATE</a>
										<a class="content-dubbed">수정하기</a>
									</div>	
								</div>
								<div class="tab-pane fade" id="tabs-1-3">
									<table>
										<tr>
											<th>제목</th>
											<th>참여인원</th>
											<th>방장</th>
											<th>이동하기</th>
										</tr>
										<tr>
											<td>ddd</td>
											<td>2</td>
											<td>test</td>
											<td>버튼</td>
										</tr>
										<tr>
											<td>ddd</td>
											<td>2</td>
											<td>test</td>
											<td>버튼</td>
										</tr>
										<tr>
											<td>ddd</td>
											<td>2</td>
											<td>test</td>
											<td>버튼</td>
										</tr>
									</table>
								</div>								
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
<script type="text/javascript">
$('#updateBtn').click(function(){

	if( $('#password_cur').val() == "" ) {
		alert('비밀번호를 입력해주세요.');
		return false;
	}

	if( $('#userName').val() == "" ) {
		alert('변경할 이름을 입력해주세요.');
		return false;
	}	
	
	$('.userId_seq_cur').val('${sessionScope.loginSession.userSeq}');
	let formData = $("#usrUpdateForm");
	
	$.ajax({
		type : 'POST',
		url : "<c:url value='/user/userUpdate'/>",
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : "json",
		data : formData.serialize(),
		async : false,
		success : function(data) {
			if(data.proc == "success") {
				alert('정상적으로 변경되었습니다.');
			}else {
				alert('비밀번호가 틀렸습니다.');
			}
		},
		error : function(xhr, status, error) {
			alert('예기치 못한 에러 발생');
		}
	});
});	


$('#passwordBtn').click(function(){

	pwFlag = false;

	if( $('#password2').val() == "" ) {
		alert('비밀번호를 입력해주세요.');
		return false;
	}

	if( $('#password_update').val() == "" ) {
		alert('변경할 비밀번호를 입력해주세요.');
		return false;
	}	
	if( $('#password_update2').val() == "" ) {
		alert('변경할 비밀번호를 입력해주세요.');
		return false;
	}	

	let regexPwPatternCheck = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;	//영문자+숫자+특수문자 8자리이상
	let password = $('#password_update').val();
	let passwordCheck = $('#password_update2').val();

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

	if( !pwFlag) {
		return false;
	}else {
	
		$('.userId_seq').val('${sessionScope.loginSession.userSeq}');
		let formData = $("#usrPasswordForm");

		$.ajax({
			type : 'POST',
			url : "<c:url value='/user/userPassWDupdate'/>",
			contentType : "application/x-www-form-urlencoded; charset=UTF-8",
			dataType : "json",
			data : formData.serialize(),
			async : false,
			success : function(data) {
				if(data.proc == "success") {
					alert('정상적으로 변경되었습니다.');
				}else {
					alert('비밀번호가 틀렸습니다.');
				}
			},
			error : function(xhr, status, error) {
				alert('예기치 못한 에러 발생');
			}
		});
	}
	
});	


</script>		
<%@ include file="/WEB-INF/views/layout/footer.jsp" %>