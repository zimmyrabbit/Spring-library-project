
	<%@ include file="/WEB-INF/views/layout/header.jsp" %>

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
                      <div class="button-outer"><a class="button button-lg button-primary button-winona" href="<c:url value='/bookChat/nonfaceDebateCollect'/>">Discussion</a></div>
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
                      <div class="button-outer"><a class="button button-lg button-primary button-winona" href="<c:url value='/bookReview/reviewList'/>">Free Review</a></div>
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

      <%@ include file="/WEB-INF/views/layout/footer.jsp" %>