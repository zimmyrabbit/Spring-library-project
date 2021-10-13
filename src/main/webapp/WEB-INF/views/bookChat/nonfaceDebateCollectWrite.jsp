<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<div class="container" style="margin-top : 30px;">
<div class="row container-board-padding">
<div class="col-sm-12 col-md-12 col-lg-12  col-xl-9 table-responsive wow fadeIn row "> 

<form action="/bookChat/nonfaceDebateCollectWrite" method="post">
		<table>
		<tr>
			<td colspan="2"> <label for="title"> 제목 : <input type="text" id="debateTitle" name="debateTitle" /> </label> </td>
		</tr>
		<tr>
			<td> <label for="colPers"> 모집인원 : <input type="number" id="colPers" name="colPers" /> </label> </td>
			<td> <label for="fromDate"> 마감일자 : <input type="date" id="fromDate" name="fromDate" /> </label> </td>
		</tr>
		
		<tr>
			<td colspan="2"> <textarea rows="10" cols="40" id="debateCon" name="debateCon"></textarea> </td>
		</tr>
		</table>
		
		<input type="submit" id="subBtn" value="쓰기" />
</form>


</div>
</div>
</div>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>