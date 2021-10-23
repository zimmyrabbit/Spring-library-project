<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

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
		
		<input type="submit" id="subBtn" value="쓰기" class="button button-primary button-winona" />
</form>


</div>
</div>
</div>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>