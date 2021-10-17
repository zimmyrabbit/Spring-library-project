<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
  <head>
  
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width height=device-height initial-scale=1.0 maximum-scale=1.0 user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="/resources/images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Work+Sans:300,700,800%7COswald:300,400,500">
    <link rel="stylesheet" href="/resources/css/style.css">
    <style>.ie-panel{display: none;background: #212121;padding: 10px 0;box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3);clear: both;text-align:center;position: relative;z-index: 1;} html.ie-10 .ie-panel, html.lt-ie-10 .ie-panel {display: block;}</style>
  </head>
  
  <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
  <body>
    <div class="ie-panel"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="/resources/images/ie8-panel/warning_bar_0000_us.jpg" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <div class="preloader">
      <div class="preloader-logo"><img src="https://www.snlib.go.kr/include/image/bd/common/logo.png" alt="" width="83" height="22"/>
      </div>
      <div class="preloader-body">
        <div id="loadingProgressG">
          <div class="loadingProgressG" id="loadingProgressG_1"></div>
        </div>
      </div>
    </div>
    <div class="page">
      <!-- Page Header-->
      <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-corporate" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="118px" data-xl-stick-up-offset="118px" data-xxl-stick-up-offset="118px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-aside-outer">
              <div class="rd-navbar-aside">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle="#rd-navbar-nav-wrap"><span></span></button>
                  <!-- RD Navbar Brand--><a class="rd-navbar-brand" href="/">
                  <img src="https://www.snlib.go.kr/include/image/bd/common/logo.png" alt="" width="83" height="22"/></a>
                </div>
                <div class="rd-navbar-collapse">
                  <button class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle="#rd-navbar-collapse-content"><span></span></button>
                  <div class="rd-navbar-collapse-content" id="rd-navbar-collapse-content">
                  <c:if test="${empty loginSession }">
       		           <a class="button button-primary-outline button-winona" href="<c:url value='/user/userReg'/>?btn=login">로그인</a>
             		   <a class="button button-primary button-winona" href="<c:url value='/user/userReg'/>?btn=join">회원가입</a>
                  </c:if>
                  <c:if test="${not empty loginSession }">
       		           <a class="button button-primary-outline button-winona" href="<c:url value='/user/userMyPage'/>">마이페이지</a>
             		   <a class="button button-primary button-winona" href="<c:url value='/user/logout.do'/>">로그아웃</a>
                  </c:if>
                  </div>
                </div>
              </div>
            </div>
            <div class="rd-navbar-main-outer">
              <div class="rd-navbar-main">
                <div class="rd-navbar-nav-wrap" id="rd-navbar-nav-wrap">
                  <!-- RD Navbar Search-->
                  <div class="rd-navbar-search" id="rd-navbar-search">
                    <button class="rd-navbar-search-toggle" data-rd-navbar-toggle="#rd-navbar-search"><span></span></button>
                    <form class="rd-search" action="search-results.html" data-search-live="rd-search-results-live" method="GET">
                      <div class="form-wrap">
                        <label class="form-label" for="rd-navbar-search-form-input">Search...</label>
                        <input class="form-input rd-navbar-search-form-input" id="rd-navbar-search-form-input" type="text" name="s" autocomplete="off">
                        <div class="rd-search-results-live" id="rd-search-results-live"></div>
                      </div>
                      <button class="rd-search-form-submit fa-search" type="submit"></button>
                    </form>
                  </div>
                  <ul class="rd-navbar-nav">
                    <li class="rd-nav-item active"><a class="rd-nav-link" href="/">홈</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">도서관 정보</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item">
                        <a class="rd-dropdown-link" href="<c:url value='/libraryInfo/libraryMap'/>">
                        도서관 정보
                        </a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="services.html">도서 리뷰</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="<c:url value='/bookReview/reviewList'/>">도서 리뷰</a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">도서 정보</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item">
                        <a class="rd-dropdown-link" href="<c:url value='/bookSearch/bookSearch'/>">
                        	도서 검색
                        </a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">랭킹 이벤트</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="/bookReview/reviewRank">랭킹 이벤트</a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">토론모임</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item">
                        <a class="rd-dropdown-link" href="<c:url value='/bookChat/nonfaceDebateCollect'/>">
                        오픈 토론방
                        </a>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>