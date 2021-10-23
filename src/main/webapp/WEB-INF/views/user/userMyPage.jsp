<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/title.png);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated">
						<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
							운영관리
						</c:if>
						<c:if test="${sessionScope.loginSession.userId ne 'adminmaster' }">
							마이페이지
						</c:if>
						</h6>
						<h1 class="breadcrumbs-custom-title">
						<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
							운영관리
						</c:if>
						<c:if test="${sessionScope.loginSession.userId ne 'adminmaster' }">
							마이페이지
						</c:if>						
						</h1>
					</div>
				</div>
			</div>
		</section>
		
		<section class="section section-lg">
			<div class="container">
				<div class="row">
					<div class="col-sm-10 col-md-9 col-lg-6 col-xl-5">
						<h6>
						<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
							User management
						</c:if>
						<c:if test="${sessionScope.loginSession.userId ne 'adminmaster' }">
							MyPage
						</c:if>			
						</h6>
						<!-- Bootstrap tabs -->
						<div class="tabs-custom tabs-horizontal tabs-line" id="tabs-1">
							<!-- Nav tabs-->
							<ul class="nav nav-tabs">
								<li class="nav-item active" role="presentation"><a
									class="nav-link active" href="#tabs-1-1" data-toggle="tab" id="nav_first">개인정보수정</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" href="#tabs-1-2" data-toggle="tab">비밀번호 변경</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" href="#tabs-1-3" data-toggle="tab">
									<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
										회원 관리
									</c:if>
									<c:if test="${sessionScope.loginSession.userId ne 'adminmaster' }">
										참여중인 토론
									</c:if>
									</a>
								</li>
								<li class="nav-item" role="presentation">
									<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
										<a class="nav-link" href="#tabs-1-4" data-toggle="tab" id="nav_bbs">
											모든 게시글 보기
										</a>	
									</c:if>
									<c:if test="${sessionScope.loginSession.userId ne 'adminmaster' }">
										<a class="nav-link" href="#tabs-1-4" data-toggle="tab">
											내가 쓴 리뷰
										</a>
									</c:if>
								</li>	
								<li class="nav-item" role="presentation">
									<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
										<a class="nav-link" href="#tabs-1-5" data-toggle="tab" onclick="getChart()">
											통계보기
										</a>	
									</c:if>
								</li>
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
								<c:if test="${sessionScope.loginSession.userId ne 'adminmaster' }">
									<table class="table table-hover table-job-positions text-center">
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>참여인원</th>
											<th>방장</th>
											<th>이동하기</th>
										</tr>
										<c:forEach items="${chatList }" var="item" varStatus="status">
										<tr>
											<td>${ item.debatecolSeq }</td>
											<td><a href="/bookChat/nonfaceDebateCollectDetail?no=${item.debatecolSeq}">${item.debateTitle }</a></td>
											<td>${item.partPers } / ${item.colPers }</td>
											<td>${item.userId }</td>
											<td>
											<div class="button button-sm button-primary button-winona" onclick="location.href='/bookChat/chat?id=${ item.debatecolSeq }'">
												<a class="content-original">이동하기</a>
												<a class="content-dubbed">이동하기</a>
											</div>	
											</td>
										</tr>
										</c:forEach>


									</table>
							 	</c:if>	
								<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
									<table class="table table-hover table-job-positions text-center">
										<thead>
											<tr>
												<th>id</th>
												<th>회원 아이디</th>
												<th>회원 상태</th>
												<th>변경할 비밀번호</th>
												<th>수정</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${list}" var="info">	
											<tr>
												<td>${ info.userSeq }</td>
												<td>${ info.userId }</td>
												<td>${ info.status }</td>
												<td><input type="text" id="${ info.userSeq }" class="form-input form-control-has-validation form-control-last-child"></td>
												<td>
													<div class="button button-sm button-primary button-winona" onclick="password_admin(${info.userSeq})">
														<a class="content-original">변경</a>
														<a class="content-dubbed">변경</a>
													</div>	
												</td>
											</tr>
										</c:forEach>	
										</tbody>
									</table>
							 	</c:if>								 	
								</div>	
								
								<div class="tab-pane fade" id="tabs-1-4">
								<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
									<table class="table table-hover table-job-positions text-center">
										<thead>
											<tr>
												<th>No.</th>
												<th>게시판</th>
												<th>글 제목</th>
												<th>작성자</th>
												<th>작성일</th>
												<th>삭제</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${bbsList}" var="bbs">	
											<tr>
												<td>${ bbs.id }</td>
												<td>${bbs.table_nm eq 'bookreview' ? '리뷰게시판' : '토론모임글'}</td>
												<td>${ bbs.title }</td>
												<td>${ bbs.userId }</td>
												<td>${ bbs.createDate }</td>
												<td>
													<div class="button button-sm button-primary button-winona" onclick="bbs_admin('${bbs.id}', '${bbs.table_nm }')">
														<a class="content-original">삭제</a>
														<a class="content-dubbed">삭제</a>
													</div>	
												</td>
											</tr>
										</c:forEach>	
										</tbody>
									</table>
							 	</c:if>	
							 	<c:if test="${sessionScope.loginSession.userId ne 'adminmaster' }">
									<table class="table table-hover table-job-positions text-center">
										<thead>
											<tr>
												<th>No.</th>
												<th>제목</th>
												<th>작성자</th>
												<th>작성일</th>
												<th>추천수</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${reviewList}" var="review">	
											<tr>
												<td>${review.reviewSeq }</td>
												<td><a href="/bookReview/reviewDetail?reviewSeq=${review.reviewSeq }">${review.bookName }</a></td>
												<td>${review.userId }</td>
												<td><fmt:formatDate value="${review.enrollDate }" type="date" /></td>
												<td>${review.cnt }</td>
											</tr>
										</c:forEach>	
										</tbody>
									</table>							 	
							 	</c:if>							 	
								</div>	
								
								<!-- 통계 tab -->
								<c:if test="${sessionScope.loginSession.userId eq 'adminmaster' }">
									<div class="tab-pane fade" id="tabs-1-5">
									<canvas id="userChart"></canvas>
									<canvas id="revChart"></canvas>
									</div>			
								</c:if>		
											
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>		
<script type="text/javascript">
window.onload = function(){

	let login = '${ bbs_admin }';
	if( login == "Y") {
		$('#tabs-1-1').removeClass('show active in');
		$('#nav_first').removeClass('active');
		$('#tabs-1-4').addClass('show active in');
		$('#nav_bbs').addClass('active show');
	}
}



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


function password_admin(seq) {

	let password = $('#'+ seq).val();
	if(password == "") {
		alert('변경할 비밀번호를 입력해주세요.');
		return false;
	}
	let userId_seq = seq;

	$.ajax({
		type : 'POST',
		url : "<c:url value='/user/adminPasswd'/>",
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : "json",
		data : {'userId_seq': userId_seq, 'password_update': password, 'password': 'admin'},
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

function bbs_admin(board_id , table_nm) {
	
	$.ajax({
		type : 'POST',
		url : "<c:url value='/user/bbsRemove'/>",
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		dataType : "json",
		data : {'board_id': board_id, 'table_nm': table_nm},
		success : function(data) {
			if(data.proc == "success") {
				let bbs_admin = "Y"
				location.href="<c:url value='/user/userMyPage'/>?bbs_admin=" + bbs_admin;
			}else {
				alert("삭제를 실패했습니다.");
			}
		},
		error : function(xhr, status, error) {
			alert('예기치 못한 에러 발생');
		}
	});
}

function getChart() {
	
	$.ajax({
		method : "GET"
		, url : '<c:url value="/user/chartData"/>'
		, dataType : "json"
		, success : function(data) {
			
			var date = new Date();
			var date = ("0" + date.getDate()).slice(-2);
			
            var context = document
            .getElementById('userChart')
            .getContext('2d');
        	var myChart = new Chart(context, {
            type: 'bar',
            data: { 
                labels: [
                    date + '일', date-1 + '일', date-2 + '일', date-3 + '일', date-4 + '일',date-5 + '일',date-6 + '일'
                ],
                datasets: [
                    { 
                        label: '일주일간 가입자 수', 
                        fill: false,
                        data: [
                            data.user['0'],data.user['1'],data.user['2'],data.user['3'],data.user['4'],data.user['5'],data.user['6']
                        ],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)',
                            'rgba(0, 0, 0, 1)'
                        ],
                        borderWidth: 1
                    }
                ]
            },
            options: {
                scales: {
                    yAxes: [
                        {
                            ticks: {
                                beginAtZero: true
                            }
                        }
                    ]
                }
            }
        });
        	
            var context = document
            .getElementById('revChart')
            .getContext('2d');
        	var myChart = new Chart(context, {
            type: 'bar',
            data: { 
                labels: [
                    date + '일', date-1 + '일', date-2 + '일', date-3 + '일', date-4 + '일',date-5 + '일',date-6 + '일'
                ],
                datasets: [
                    { 
                        label: '일주일간 리뷰 작성 수', 
                        fill: false,
                        data: [
                            data.rev['0'],data.rev['1'],data.rev['2'],data.rev['3'],data.rev['4'],data.rev['5'],data.rev['6']
                        ],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)',
                            'rgba(0, 0, 0, 1)'
                        ],
                        borderWidth: 1
                    }
                ]
            },
            options: {
                scales: {
                    yAxes: [
                        {
                            ticks: {
                                beginAtZero: true
                            }
                        }
                    ]
                }
            }
        });
			
		}
	})
}


</script>		

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>