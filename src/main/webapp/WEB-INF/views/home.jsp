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
      <div class="preloader-logo"><img src="" alt="" width="83" height="22"/>
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
                  <!-- RD Navbar Brand--><a class="rd-navbar-brand" href="/"> <!-- 로고 사진 --><img src="" alt="" width="83" height="22"/></a>
                </div>
                <div class="rd-navbar-collapse">
                  <button class="rd-navbar-collapse-toggle rd-navbar-fixed-element-1" data-rd-navbar-toggle="#rd-navbar-collapse-content"><span></span></button>
                  <div class="rd-navbar-collapse-content" id="rd-navbar-collapse-content">
                    <article class="unit align-items-center">
                      <div class="unit-left"><span class="icon icon-md icon-modern mdi mdi-phone"></span></div>
                      <div class="unit-body">
                        <ul class="list-0">
                          <li><a class="link-default" href="tel:#">1-800-1234-567</a></li>
                          <li><a class="link-default" href="tel:#">1-800-8763-765</a></li>
                        </ul>
                      </div>
                    </article>
                    <article class="unit align-items-center">
                      <div class="unit-left"><span class="icon icon-md icon-modern mdi mdi-map-marker"></span></div>
                      <div class="unit-body"><a class="link-default text-nowrap" href="#">2130 Fulton Street <br> San Diego, CA 94117-1080</a></div>
                    </article><a class="button button-primary-outline button-winona" href="#">Request a call</a>
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
                      <h1><span class="font-weight-light"><span>Make Your Dogs</span></span><span class="font-weight-bold"><span>Look Their Best</span></span></h1>
                      <div class="button-outer"><a class="button button-lg button-primary button-winona" href="#">Free consultation</a></div>
                    </div>
                    <div class="col-lg-6 position-static">
                      <div class="floating-image" style="background-image: url(/resources/images/swiper-image-1-960x776.jpg);"></div>
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
                      <h1><span class="font-weight-light"><span>Royal Services</span></span><span class="font-weight-bold"><span>For Your Dog</span></span></h1>
                      <div class="button-outer"><a class="button button-lg button-primary button-winona" href="#">Free consultation</a></div>
                    </div>
                    <div class="col-lg-6 position-static">
                      <div class="floating-image" style="background-image: url(/resources/images/swiper-image-2-960x776.jpg);"></div>
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
                      <h1><span class="font-weight-light"><span>Exceptional</span></span><span class="font-weight-bold"><span>Dog Grooming</span></span></h1>
                      <div class="button-outer"><a class="button button-lg button-primary button-winona" href="#">Free consultation</a></div>
                    </div>
                    <div class="col-lg-6 position-static">
                      <div class="floating-image" style="background-image: url(/resources/images/swiper-image-3-960x776.jpg);"></div>
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
      <!-- A Few Words About Us-->
      <section class="section section-decorated-1">
        <div class="decor-1"><img src="/resources/images/bubbles-219x209.png" alt="" width="219" height="209"/>
        </div>
        <div class="decor-2"><img src="/resources/images/bubbles-224x306.png" alt="" width="224" height="306"/>
        </div>
        <div class="container">
          <div class="row row-50 justify-content-center justify-content-lg-between flex-lg-row-reverse align-items-center">
            <div class="col-md-10 col-lg-6 col-xl-5">
              <h3 class="wow-outer"><span class="wow slideInDown">A Few Words About Us</span></h3>
              <p class="wow-outer"><span class="wow slideInDown" data-wow-delay=".05s">SpaDog is a pet salon established in 1999 with the main goal of giving your pets the full furry body treatment so that they can look their very best every day.</span></p>
              <p class="wow-outer"><span class="wow slideInDown" data-wow-delay=".1s">Our salon offers a complete line of fine grooming services to bring out the best of appearance and personality in your pet. Our groomers work carefully, never rush, and do not overbook appointments.</span></p>
              <div class="wow-outer button-outer"><a class="button button-lg button-primary button-winona" data-wow-delay=".1s" href="about-us.html">Learn more</a></div>
            </div>
            <div class="col-md-10 col-lg-6 wow-outer"><img class="img-responsive wow slideInLeft" src="/resources/images/about-501-526.jpg" alt=""/>
            </div>
          </div>
        </div>
      </section>
      <!-- Small Features-->
      <section class="section section-md bg-gray-light">
        <div class="container">
          <div class="row row-40 align-items-center">
            <div class="col-xl-8">
              <div class="row row-xl-60">
                <div class="col-sm-6 wow-outer">
                  <!-- Box Minimal-->
                  <article class="box-minimal">
                    <div class="box-minimal-icon linearicons-star wow fadeIn"></div>
                    <div class="box-minimal-main wow-outer">
                      <h4 class="box-minimal-title wow slideInDown">V.I.P. Service</h4>
                      <p class="wow fadeInUpSmall">Our team provides grooming services of the highest quality to not only make your dog look amazing but also make them feel special.</p>
                    </div>
                  </article>
                </div>
                <div class="col-sm-6 wow-outer">
                  <!-- Box Minimal-->
                  <article class="box-minimal">
                    <div class="box-minimal-icon linearicons-heart wow fadeIn" data-wow-delay=".1s"></div>
                    <div class="box-minimal-main wow-outer">
                      <h4 class="box-minimal-title wow slideInDown" data-wow-delay=".1s">We Love Every Pet</h4>
                      <p class="wow fadeInUpSmall" data-wow-delay=".1s">Every pet we work with receives the same level of love and care when being treated by our specialists. That’s why pet owners trust us.</p>
                    </div>
                  </article>
                </div>
                <div class="col-sm-6 wow-outer">
                  <!-- Box Minimal-->
                  <article class="box-minimal">
                    <div class="box-minimal-icon linearicons-scissors wow fadeIn" data-wow-delay=".2s"></div>
                    <div class="box-minimal-main wow-outer">
                      <h4 class="box-minimal-title wow slideInDown" data-wow-delay=".2s">Top Groomers</h4>
                      <p class="wow fadeInUpSmall" data-wow-delay=".2s">Our team consists of more than 20 qualified and experienced groomers, aimed at providing stellar results for our customers.</p>
                    </div>
                  </article>
                </div>
                <div class="col-sm-6 wow-outer">
                  <!-- Box Minimal-->
                  <article class="box-minimal">
                    <div class="box-minimal-icon linearicons-trophy2 wow fadeIn" data-wow-delay=".2s"></div>
                    <div class="box-minimal-main wow-outer">
                      <h4 class="box-minimal-title wow slideInDown" data-wow-delay=".2s">Best Level of Service</h4>
                      <p class="wow fadeInUpSmall" data-wow-delay=".2s">At SpaDog, we provide top-notch customer service and support to everyone who enters our salon, from pets to their owners.</p>
                    </div>
                  </article>
                </div>
              </div>
            </div>
            <div class="col-xl-4">
              <div class="offset-negative-70"><img src="/resources/images/home-2-386x503.jpg" alt="" width="386" height="503"/>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Thin CTA-->
      <section class="section section-xs bg-primary-darker text-center section-decorated-2">
        <div class="decor-1"><img src="/resources/images/bubbles-225x463.png" alt="" width="225" height="463"/>
        </div>
        <div class="decor-2"><img src="/resources/images/bubbles-83x127.png" alt="" width="83" height="127"/>
        </div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-10 col-md-12">
              <div class="box-cta-thin">
                <h4 class="wow-outer"><span class="wow slideInRight">Qualified Personal Care For Your Pets</span></h4>
                <div class="wow-outer button-outer"><a class="button button-primary button-winona wow slideInLeft" href="pricing.html">View all pricing</a></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Services-->
      <section class="section-lg text-center">
        <div class="container">
          <h3 class="wow-outer"><span class="wow slideInUp">Services</span></h3>
          <p class="wow-outer"><span class="wow slideInDown text-width-1">We offer a variety of grooming services for dogs of all breeds and ages. We use only high-quality products that suit the needs of your pet. Discover our most popular services below.</span></p>
          <div class="row row-30 offset-top-2">
            <div class="col-sm-6 col-lg-3 wow-outer">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light wow slideInLeft"><a class="thumbnail-light-media" href="single-service.html"><img class="thumbnail-light-image" src="/resources/images/service-thumbnail-1-270x200.jpg" alt="" width="270" height="200"/></a>
                <h5 class="thumbnail-light-title"><a href="single-service.html">Styling</a></h5>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3 wow-outer">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light wow slideInLeft" data-wow-delay=".05s"><a class="thumbnail-light-media" href="single-service.html"><img class="thumbnail-light-image" src="/resources/images/service-thumbnail-2-270x200.jpg" alt="" width="270" height="200"/></a>
                <h5 class="thumbnail-light-title"><a href="single-service.html">Full Grooming</a></h5>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3 wow-outer">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light wow slideInLeft" data-wow-delay=".1s"><a class="thumbnail-light-media" href="single-service.html"><img class="thumbnail-light-image" src="/resources/images/service-thumbnail-3-270x200.jpg" alt="" width="270" height="200"/></a>
                <h5 class="thumbnail-light-title"><a href="single-service.html">Bath & Tidy Up</a></h5>
              </article>
            </div>
            <div class="col-sm-6 col-lg-3 wow-outer">
              <!-- Thumbnail Light-->
              <article class="thumbnail-light wow slideInLeft" data-wow-delay=".15s"><a class="thumbnail-light-media" href="single-service.html"><img class="thumbnail-light-image" src="/resources/images/service-thumbnail-4-270x200.jpg" alt="" width="270" height="200"/></a>
                <h5 class="thumbnail-light-title"><a href="single-service.html">Deluxe Bath</a></h5>
              </article>
            </div>
          </div>
        </div>
        <div class="wow-outer button-outer offset-top-2"><a class="button button-primary-outline button-winona offset-top-2 wow slideInUp" href="services.html">View all services</a></div>
      </section>
      <!-- Pricing-->
      <section class="section section-lg bg-gray-light section-decorated-7">
        <div class="decor-1"><img src="/resources/images/bubbles-171x230.png" alt="" width="171" height="230"/>
        </div>
        <div class="container">
          <h3 class="wow-outer text-center"><span class="wow slideInDown">Pricing</span></h3>
          <div class="row row-30">
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Pricing Minimal-->
              <article class="pricing-minimal wow slideInRight">
                <h5 class="pricing-minimal-title"><a href="single-service.html">Basic Package</a></h5>
                <p class="pricing-minimal-price"><span class="pricing-minimal-price-currency">$</span>49.00</p>
                <div class="pricing-minimal-divider"></div>
                <p>Our basic package is an important part of dog grooming as it offers affordable bathing and brushing for dogs of any breed.</p><a class="button button-primary button-winona" href="single-service.html">Order now</a>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Pricing Minimal-->
              <article class="pricing-minimal wow slideInRight" data-wow-delay=".05s">
                <h5 class="pricing-minimal-title"><a href="single-service.html">Advanced Package</a></h5>
                <p class="pricing-minimal-price"><span class="pricing-minimal-price-currency">$</span>67.00</p>
                <div class="pricing-minimal-divider"></div>
                <p>Our upgraded package is designed for dogs who need a little extra TLC by keeping skin moisturized, using a specialized shampoo & conditioner.</p><a class="button button-primary button-winona" href="single-service.html">Order now</a>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 wow-outer">
              <!-- Pricing Minimal-->
              <article class="pricing-minimal wow slideInRight" data-wow-delay=".1s">
                <h5 class="pricing-minimal-title"><a href="single-service.html">Pro Package</a></h5>
                <p class="pricing-minimal-price"><span class="pricing-minimal-price-currency">$</span>86.00</p>
                <div class="pricing-minimal-divider"></div>
                <p>This ultimate spa package is featured for the spoiled pup who needs the works and wants to enjoy a day of relaxation and beauty.</p><a class="button button-primary button-winona" href="single-service.html">Order now</a>
              </article>
            </div>
          </div>
        </div>
      </section>
      <!-- Testimonials-->
      <section class="section section-lg text-center">
        <div class="container">
          <h3 class="wow-outer"><span class="wow slideInDown">Testimonials</span></h3>
          <!-- Owl Carousel-->
          <div class="owl-carousel wow fadeIn" data-items="1" data-md-items="2" data-lg-items="3" data-dots="true" data-nav="false" data-loop="true" data-margin="30" data-stage-padding="0" data-mouse-drag="false">
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="/resources/images/testimonials-person-1-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Kelly McMillan</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>My dog is 10 this year. She has been going to this grooming salon every day for the past five years. Thanks to the care and special shampoos used at SpaDog, she is now in very good health again.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="/resources/images/testimonials-person-2-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Harold Barnett</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>I bring my Westie “Dougie” to SpaDog for the past 4 years. Their groomers are fantastic, always do an amazing job and are always so nice and cheerful. Would recommend them to every dog owner!</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="/resources/images/testimonials-person-3-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Albert Webb</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>My Yorkie ‘Toby’ has been coming to this grooming studio for over 8 years and always looks beautiful afterward. Having tried other grooming salons before, I wouldn’t bring him anywhere else.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="/resources/images/testimonials-person-4-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Samantha Lee</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>I really feel comfortable leaving my Max at SpaDog. He always comes homes happy and relaxed and the groomers there are warm, friendly and welcoming. They always do what you ask.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="/resources/images/testimonials-person-5-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Bill Warner</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>We are in the area for a few months and my 2 furry boys needed grooming. SpaDog team was very friendly and the boys liked it there. They did not have to spend a lot of time there like so many places.</p>
              </div>
            </blockquote>
            <blockquote class="quote-classic">
              <div class="quote-classic-meta">
                <div class="quote-classic-avatar"><img src="/resources/images/testimonials-person-6-96x96.jpg" alt="" width="96" height="96"/>
                </div>
                <div class="quote-classic-info">
                  <cite class="quote-classic-cite">Adam Smith</cite>
                  <p class="quote-classic-caption">Regular Client</p>
                </div>
              </div>
              <div class="quote-classic-text">
                <p>Thank you for making my dog look so fantastic! He was a smelly matted mess and now he looks so handsome! I will surely recommend your grooming salon to my friends and colleagues.</p>
              </div>
            </blockquote>
          </div>
        </div>
      </section>
      <!-- Centered CTA-->
      <section class="section section-1 bg-primary-darker text-center section-decorated-3">
        <div class="decor-1"><img src="/resources/images/bubbles-187x131.png" alt="" width="187" height="131"/>
        </div>
        <div class="decor-2"><img src="/resources/images/bubbles-295x474.png" alt="" width="295" height="474"/>
        </div>
        <div class="decor-3"><img src="/resources/images/home-3-359x546.png" alt="" width="359" height="546"/>
        </div>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-10 col-lg-7 col-xl-6">
              <h3 class="wow-outer"><span class="wow slideInDown">Best Grooming Services for Your Furry Friend</span></h3>
              <p class="wow-outer offset-top-3"><span class="wow slideInDown" data-wow-delay=".05s">Our dog grooming salon is always ready to offer the best services for your pets. Schedule an appointment to make your dog look awesome!</span></p>
              <div class="wow-outer button-outer"><a class="button button-primary button-winona wow slideInDown" href="#" data-wow-delay=".1s">Free consultation</a></div>
            </div>
          </div>
        </div>
      </section>
      <!-- Latest Blog Posts-->
      <section class="section section-lg text-center section-decorated-4">
        <div class="decor-1"><img src="/resources/images/bubbles-187x131.png" alt="" width="187" height="131"/>
        </div>
        <div class="container">
          <h3 class="wow-outer text-center"><span class="wow slideInDown">Latest Blog Posts</span></h3>
          <div class="row row-50">
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="single-blog-post.html"><img src="/resources/images/grid-blog-1-570x353.jpg" alt="" width="570" height="353"/></a>
                <h4 class="post-modern-title"><a href="single-blog-post.html">How To Keep Your Dog Cool In Summer</a></h4>
                <ul class="post-modern-meta">
                  <li>by Theresa Barnes</li>
                  <li>
                    <time datetime="2020">Apr 21, 2020 at 12:05 pm</time>
                  </li>
                  <li><a class="button-winona" href="#">News</a></li>
                </ul>
                <p>With summer upon us, it’s natural for us to all want to get out and enjoy the sunshine. However, if you’re a dog owner, extra care and consideration need to be taken during the warmer months. Sun...</p>
              </article>
            </div>
            <div class="col-md-6 wow-outer">
              <!-- Post Modern-->
              <article class="post-modern wow slideInLeft"><a class="post-modern-media" href="single-blog-post.html"><img src="/resources/images/grid-blog-2-570x353.jpg" alt="" width="570" height="353"/></a>
                <h4 class="post-modern-title"><a href="single-blog-post.html">Tips for Grooming an Unruly Doodle Coat</a></h4>
                <ul class="post-modern-meta">
                  <li>by Theresa Barnes</li>
                  <li>
                    <time datetime="2020">Apr 21, 2020 at 12:05 pm</time>
                  </li>
                  <li><a class="button-winona" href="#">News</a></li>
                </ul>
                <p>Doodle breeds have taken the world by storm in recent years. We’ve fallen head over heels in love with Labradoodles, Cockapoos, Cavapoos and Poochons. But with all that wavy fluff comes a...</p>
              </article>
            </div>
          </div>
          <div class="wow-outer button-outer"><a class="button button-primary-outline button-winona wow slideInUp" href="grid-blog.html">View all Blog posts</a></div>
        </div>
      </section>
      <!-- Contacts-->
      <section class="section bg-gray-100">
        <div class="range justify-content-xl-between">
          <div class="cell-xl-6 align-self-center container">
            <div class="row">
              <div class="col-lg-9 cell-inner">
                <div class="section-lg">
                  <h3 class="wow-outer"><span class="wow slideInDown">Contact Us</span></h3>
                  <!-- RD Mailform-->
                  <form class="rd-form rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="/resources/bat/rd-mailform.php">
                    <div class="row row-10">
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-first-name">First Name</label>
                          <input class="form-input" id="contact-first-name" type="text" name="name" data-constraints="@Required">
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-last-name">Last Name</label>
                          <input class="form-input" id="contact-last-name" type="text" name="name" data-constraints="@Required">
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-email">E-mail</label>
                          <input class="form-input" id="contact-email" type="email" name="email" data-constraints="@Required @Email">
                        </div>
                      </div>
                      <div class="col-md-6 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-phone">Phone</label>
                          <input class="form-input" id="contact-phone" type="text" name="phone" data-constraints="@Required @PhoneNumber">
                        </div>
                      </div>
                      <div class="col-12 wow-outer">
                        <div class="form-wrap wow fadeSlideInUp">
                          <label class="form-label-outside" for="contact-message">Your Message</label>
                          <textarea class="form-input" id="contact-message" name="message" data-constraints="@Required"></textarea>
                        </div>
                      </div>
                    </div>
                    <div class="group group-middle">
                      <div class="wow-outer"> 
                        <button class="button button-primary button-winona wow slideInRight" type="submit">Send Message</button>
                      </div>
                      <p>or use</p>
                      <div class="wow-outer"><a class="button button-primary-outline button-icon button-icon-left button-winona wow slideInLeft" href="#"><span class="icon text-primary mdi mdi-facebook-messenger"></span>Messenger</a></div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
          <div class="cell-xl-5 height-fill wow fadeIn">
            <div class="google-map-container" data-marker="/resources/images/gmap_marker.png" data-marker-active="/resources/images/gmap_marker_active.png" data-styles="[{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#e9e9e9&quot;},{&quot;lightness&quot;:17}]},{&quot;featureType&quot;:&quot;landscape&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f5f5f5&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:17}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:29},{&quot;weight&quot;:0.2}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:18}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:16}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f5f5f5&quot;},{&quot;lightness&quot;:21}]},{&quot;featureType&quot;:&quot;poi.park&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#dedede&quot;},{&quot;lightness&quot;:21}]},{&quot;elementType&quot;:&quot;labels.text.stroke&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;color&quot;:&quot;#ffffff&quot;},{&quot;lightness&quot;:16}]},{&quot;elementType&quot;:&quot;labels.text.fill&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:36},{&quot;color&quot;:&quot;#333333&quot;},{&quot;lightness&quot;:40}]},{&quot;elementType&quot;:&quot;labels.icon&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#f2f2f2&quot;},{&quot;lightness&quot;:19}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.fill&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#fefefe&quot;},{&quot;lightness&quot;:20}]},{&quot;featureType&quot;:&quot;administrative&quot;,&quot;elementType&quot;:&quot;geometry.stroke&quot;,&quot;stylers&quot;:[{&quot;color&quot;:&quot;#fefefe&quot;},{&quot;lightness&quot;:17},{&quot;weight&quot;:1.2}]}]" data-zoom="5" data-x="-73.9874068" data-y="40.643180">
              <div class="google-map"></div>
              <ul class="google-map-markers">
                <li data-location="9870 St Vincent Place, Glasgow, DC 45 Fr 45." data-description="9870 St Vincent Place, Glasgow"></li>
              </ul>
            </div>
          </div>
        </div>
      </section>
      <!-- Contact Info-->
      <section class="section section-sm section-decorated-5">
        <div class="decor-1"><img src="/resources/images/bubbles-201x215.png" alt="" width="201" height="215"/>
        </div>
        <div class="container">
          <div class="layout-bordered">
            <div class="layout-bordered-item wow-outer">
              <div class="layout-bordered-item-inner wow slideInUp">
                <div class="icon icon-lg mdi mdi-phone text-primary"></div>
                <ul class="list-0">
                  <li><a class="link-deep-blue" href="tel:#">1-800-1234-678</a></li>
                  <li><a class="link-deep-blue" href="tel:#">1-800-9876-098</a></li>
                </ul>
              </div>
            </div>
            <div class="layout-bordered-item wow-outer">
              <div class="layout-bordered-item-inner wow slideInUp">
                <div class="icon icon-lg mdi mdi-email text-primary"></div>
                <div><a class="link-deep-blue" href="mailto:#">info@demolink.org</a></div>
              </div>
            </div>
            <div class="layout-bordered-item wow-outer">
              <div class="layout-bordered-item-inner wow slideInUp">
                <div class="icon icon-lg mdi mdi-map-marker text-primary"></div>
                <div><a class="link-deep-blue" href="#">2130 Fulton Street San Diego, CA 94117-1080 USA</a></div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Page Footer-->
            <footer class="section footer-advanced bg-gray-dark">
              <div class="footer-advanced-main">
                <div class="container">
                  <div class="row row-50">
                    <div class="col-lg-4">
                      <h4>About Us</h4>
                      <p class="footer-advanced-text">SpaDog is the nation’s leading grooming studio with multiple salons located throughout the USA. Since our establishment in 1999, we have been providing quality dog grooming, bathing, and care services to make dogs happy &amp; clean. We care for pets as for the members of our family and not just dogs.</p>
                    </div>
                    <div class="col-sm-6 col-lg-4">
                      <h4>Recent Blog Posts</h4>
                      <!-- Post Inline-->
                      <article class="post-inline">
                        <p class="post-inline-title"><a href="single-blog-post.html">The Ultimate Dog Grooming Guide: How To Groom 6 Different Types Of Dog Coat</a></p>
                        <ul class="post-inline-meta">
                          <li>by Theresa Barnes</li>
                          <li><a href="single-blog-post.html">2 days ago</a></li>
                        </ul>
                      </article>
                      <!-- Post Inline-->
                      <article class="post-inline">
                        <p class="post-inline-title"><a href="single-blog-post.html">Coat Prep Tips For An Outstanding Dog Grooming Finish</a></p>
                        <ul class="post-inline-meta"> 
                          <li>by Theresa Barnes</li>
                          <li><a href="single-blog-post.html">2 days ago</a></li>
                        </ul>
                      </article>
                    </div>
                    <div class="col-sm-6 col-lg-4 block-1">
                      <h4>Our Gallery</h4>
                      <div class="row row-x-10" data-lightgallery="group">
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-1-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-1-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-2-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-2-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-3-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-3-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-4-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-4-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-5-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-5-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-6-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-6-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"> </div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-7-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-7-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"></div></a></div>
                        <div class="col-3 col-sm-4 col-md-3"><a class="thumbnail-minimal" href="/resources/images/gallery-original-8-1200x800.jpg" data-lightgallery="item"><img class="thumbnail-minimal-image" src="/resources/images/footer-gallery-8-85x85.jpg" alt="" width="85" height="85"/>
                            <div class="thumbnail-minimal-caption"></div></a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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
                  <div class="footer-advanced-layout"><a class="brand" href="index.html"><img src="/resources/images/logo-inverse-334x88.png" alt="" width="167" height="44"/></a>
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