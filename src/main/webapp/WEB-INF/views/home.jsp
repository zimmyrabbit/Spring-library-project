<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
                  <a class="button button-primary-outline button-winona" href="#">로그인</a>
                  <a class="button button-primary button-winona" href="#">회원가입</a>
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
                    <li class="rd-nav-item active"><a class="rd-nav-link" href="index.html">홈</a>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">도서관 정보</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="typography.html">Typography</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="buttons.html">Buttons</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="forms.html">Forms</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="progress-bars.html">Progress bars</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="tabs.html">Tabs</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="tables.html">Tables</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="accordions.html">Accordions</a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="services.html">도서 리뷰</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="single-service.html">Single Service</a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">도서 정보</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="grid-blog.html">Grid Blog</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="sidebar-blog.html">Sidebar Blog</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="single-blog-post.html">Single Blog Post</a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">랭킹 이벤트</a>
                      <ul class="rd-menu rd-navbar-dropdown">
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="grid-gallery.html">Grid Gallery</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="masonry-gallery.html">Masonry Gallery</a>
                        </li>
                        <li class="rd-dropdown-item"><a class="rd-dropdown-link" href="modern-gallery.html">Modern Gallery</a>
                        </li>
                      </ul>
                    </li>
                    <li class="rd-nav-item"><a class="rd-nav-link" href="#">토론모임</a>
                      <ul class="rd-menu rd-navbar-megamenu">
                        <li class="rd-megamenu-item">
                          <div class="banner" style="background-image: url(/resources/images/megamenu-banner-1-570x368.jpg);"><a class="button button-sm button-primary button-winona" href="#">Buy Theme</a>
                          </div>
                        </li>
                        <li class="rd-megamenu-item">
                          <ul class="rd-megamenu-list">
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="404-page.html">404 Page</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="503-page.html">503 Page</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="coming-soon.html">Coming Soon</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="under-construction.html">Under Construction</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="about-us.html">About Us</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="about-me.html">About Me</a></li>
                          </ul>
                        </li>
                        <li class="rd-megamenu-item">
                          <ul class="rd-megamenu-list">
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="careers.html">Careers</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="search-results.html">Search results</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="services.html">Services</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="single-service.html">Single Service</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="single-job.html">Single Job</a></li>
                            <li class="rd-megamenu-list-item"><a class="rd-megamenu-list-link" href="privacy-policy.html">Privacy policy</a></li>
                          </ul>
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
      <!-- Slider Light-->
      <section class="swiper-container swiper-slider swiper-slider-light bg-image-1" data-loop="false" data-autoplay="false" data-simulate-touch="false" data-custom-slide-effect="inter-leave-effect" data-inter-leave-offset="-.5">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="slide-inner">
              <div class="container">
                <div class="swiper-slide-caption">
                  <div class="row row-30">
                    <div class="col-lg-6 text-center text-lg-left">
                      <h1><span class="font-weight-light"><span></span></span><span class="font-weight-bold"><span>Look Their Best</span></span></h1>
                      <div class="button-outer"><a class="button button-lg button-primary button-winona" href="#">Discussion</a></div>
                    </div>
                    <div class="col-lg-6 position-static">
                      <div class="floating-image" style="background-image: url(/resources/images/main/main.png);"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="slide-inner">
              <div class="container">
                <div class="swiper-slide-caption">
                  <div class="row row-30">
                    <div class="col-lg-6 text-center text-lg-left">
                      <h1><span class="font-weight-light"><span></span></span><span class="font-weight-bold"><span>For Your Sensibility</span></span></h1>
                      <div class="button-outer"><a class="button button-lg button-primary button-winona" href="#">Free Review</a></div>
                    </div>
                    <div class="col-lg-6 position-static">
                      <div class="floating-image" style="background-image: url(/resources/images/main/main2.png);"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="swiper-pagination-outer container">
          <div class="swiper-pagination swiper-pagination-modern swiper-pagination-marked" data-index-bullet="true"></div>
        </div>
      </section>
      <!-- Page Footer-->
            <footer class="section footer-advanced bg-gray-dark">
              <div class="footer-advanced-aside">
                <div class="container">
                  <div class="footer-advanced-layout">
                    <div>
                      <ul class="list-nav"> 
                        <li><a href="/">홈</a></li>
                        <li><a href="">도서관 정보</a></li>
                        <li><a href="">도서리뷰</a></li>
                        <li><a href="">도서정보</a></li>
                        <li><a href="">랭킹보기</a></li>
                        <li><a href="">토론모임</a></li>
                      </ul>
                    </div>
                    <div>
                      <ul class="list-inline list-inline-md">
                        <li><a class="icon icon-sm link-gray-light mdi mdi-facebook" href="#"></a></li>
                        <li><a class="icon icon-sm link-gray-light mdi mdi-twitter" href="#"></a></li>
                        <li><a class="icon icon-sm link-gray-light mdi mdi-instagram" href="#"></a></li>
                        <li><a class="icon icon-sm link-gray-light mdi mdi-google" href="#"></a></li>
                        <li><a class="icon icon-sm link-gray-light mdi mdi-linkedin" href="#"></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              <div class="container">
                <hr>
              </div>
              <div class="footer-advanced-aside">
                <div class="container">
                  <div class="footer-advanced-layout"><a class="brand" href="index.html"><img src="https://www.snlib.go.kr/include/image/bd/common/logo.png" alt="" width="167" height="44"/></a>
                    <!-- Rights-->
                    <p class="rights"><span>&copy;&nbsp;</span><span class="copyright-year"></span><span>&nbsp;</span><span>All Rights Reserved.</span><span>&nbsp;</span><br class="d-sm-none"/><a href="privacy-policy.html">Privacy Policy</a></p>
                  </div>
                </div>
              </div>
            </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="/resources/js/core.min.js"></script>
    <script src="/resources/js/script.js"></script>
  </body>
</html>