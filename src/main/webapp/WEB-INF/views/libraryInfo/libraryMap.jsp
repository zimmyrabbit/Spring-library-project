<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>

<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=9qbj4wcua8&submodules=geocoder"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<div id="map" style="width:1000px;height:500px;"></div>

<script>

var mapDiv = document.getElementById('map');

var map = new naver.maps.Map(mapDiv);

</script>

<%@ include file="/WEB-INF/views/layout/footer.jsp" %>