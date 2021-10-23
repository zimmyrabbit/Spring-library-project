<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

		<section class="breadcrumbs-custom bg-image"
			style="background-image: url(${path}/resources/images/breadcrumbs-bg.jpg);">
			<div class="breadcrumbs-custom-inner">
				<div class="breadcrumbs-custom-container container">
					<div class="breadcrumbs-custom-main">
						<h6 class="breadcrumbs-custom-subtitle title-decorated" style="color:white;">토론 모집</h6>
						<h1 class="breadcrumbs-custom-title" style="color:white;">토론 모집</h1>
					</div>
				</div>
			</div>
		</section>

<div class="container" style="margin-top : 30px;">
<div class="row container-board-padding" style="display: flex; justify-content: center;">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row " > 

<form action="/bookChat/nonfaceDebateCollectWrite" method="post">
		<table class="table table-hover">
		<tr>
			<td colspan="2"> 제목 : ${title} </td>
		</tr>
		<tr>
			<td> <label for="colPers"> 모집인원 : <input type="number" id="colPers" name="colPers" class="form-input form-control-has-validation form-control-last-child"/> </label> </td>
			<td> <label for="fromDate"> 마감일자 : <input type="date" id="fromDate" name="fromDate" class="form-input form-control-has-validation form-control-last-child"/> </label> </td>
		</tr>
		
		<tr>
			<td colspan="2"> <textarea rows="10" cols="80" id="debateCon" name="debateCon" class="form-input form-control-has-validation form-control-last-child"></textarea> </td>
		</tr>
		</table>
		
		<input type="hidden" name=title id="title" value="${title }"/>
		
		<button type="button" id="subBtn" class="button button-primary button-winona" onclick="subCheck()">쓰기</button>
</form>


</div>
</div>
</div>

<script type="text/javascript">

function subCheck() {

	if($("#colPers").val() < 2) {
		alert('최소 모집인원수는 2명 입니다.');
		return false;
	}
	
	if($("#fromDate").val() == "") {
		alert('마감일을 입력해 주세요.')
		return false;
	}
	
	if($("#fromDate").val() < getDate() && $("#fromDate").val() != "") {
		alert('마감일이 현재일자보다 이전일 수 없습니다.')
		return false;
	}
	
}

function getDate() {
	
    var date = new Date();
    var year = date.getFullYear();
    var month = ("0" + (1 + date.getMonth())).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);

    return year + "-" + month + "-" + day;
}
</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>